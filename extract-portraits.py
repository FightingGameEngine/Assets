#!/usr/bin/env python3
"""
extract-portraits.py — Extract character portraits into the portraits/ tree

USAGE:
    python extract-portraits.py [--repo /path/to/Assets] [--force]
                                [--only id1,id2,...] [--nearest]

WHAT IT DOES:
    1. Scans EVERY character source folder at the repo root (chars/,
       charsMARVEL/, charsDC/, ...) — same discovery rules as
       update-manifest.py.
    2. For each character folder, finds the sprite (.sff) file referenced
       in the .def's [Files] section (falls back to <folder>.sff).
    3. Parses the SFF (v1 AND v2, byte-compatible with Ikemen-GO's
       src/image.go) and decodes the character's big portrait:
         - sprite group 9000, image 1 (versus-screen portrait) preferred
         - falls back to group 9000, image 0 (select-screen portrait)
       Linked sprites (size 0) are followed to their base sprite.
    4. Renders it on a 256x256 transparent canvas (scaled to fill the
       height, centered — matches the existing portraits/ tree), and
       writes portraits/<source>/<id>.png.
    5. Prints a summary: extracted / skipped (already present, use
       --force to redo) / no portrait found.

AFTER RUNNING:
    Run update-manifest.py — it stamps the "portrait" field into
    manifest.json for every PNG it finds in portraits/<source>/<id>.png
    (the web frontend shows it on the match-prep / VS screen).

FORMAT SUPPORT:
    SFF v1 (PCX RLE, shared palettes, linked sprites)
    SFF v2 (raw 8-bit, RLE8, RLE5, LZ5, embedded PNG (paletted + RGBA),
            palette table with links, linked sprites)

REQUIREMENTS:
    Python 3.6+ (standard library only — no pip install needed)
"""

import argparse
import struct
import sys
import zlib
from pathlib import Path

# =============================================================================
# Configuration (mirrors update-manifest.py)
# =============================================================================

DEFAULT_SOURCE = "chars"
PORTRAIT_SIZE = 256

EXCLUDE_FOLDERS = {".git"}

# Files that are never the character definition
NOT_DEF_HINTS = ("select", "train")


# =============================================================================
# Small helpers
# =============================================================================

def _adv(i, n):
    """Ikemen-GO's RLE stream advance: never step past the last byte."""
    return i + 1 if i < n - 1 else i


# =============================================================================
# PNG writer (stdlib only)
# =============================================================================

def write_png(path, w, h, rgba):
    def chunk(tag, payload):
        return (struct.pack(">I", len(payload)) + tag + payload +
                struct.pack(">I", zlib.crc32(tag + payload) & 0xFFFFFFFF))

    ihdr = struct.pack(">IIBBBBB", w, h, 8, 6, 0, 0, 0)  # 8-bit RGBA
    stride = w * 4
    raw = b"".join(b"\x00" + rgba[y * stride:(y + 1) * stride] for y in range(h))
    data = (b"\x89PNG\r\n\x1a\n" +
            chunk(b"IHDR", ihdr) +
            chunk(b"IDAT", zlib.compress(bytes(raw), 9)) +
            chunk(b"IEND", b""))
    with open(path, "wb") as f:
        f.write(data)


# =============================================================================
# PNG decoder (stdlib only — for SFFv2 sprites stored as embedded PNGs)
# =============================================================================

def _paeth(a, b, c):
    p = a + b - c
    pa, pb, pc = abs(p - a), abs(p - b), abs(p - c)
    if pa <= pb and pa <= pc:
        return a
    if pb <= pc:
        return b
    return c


def decode_png(data):
    """Decode an 8-bit PNG. Returns (w, h, mode, pixels, palette, trns)
    mode: 'RGBA' | 'RGB' | 'GRAY' | 'P' (palette indices in pixels)."""
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError("not a PNG")
    pos, idat = 8, b""
    w = h = 0
    palette, trns, color, depth = None, None, None, None
    while pos + 8 <= len(data):
        (ln,) = struct.unpack_from(">I", data, pos)
        tag = data[pos + 4:pos + 8]
        payload = data[pos + 8:pos + 8 + ln]
        if tag == b"IHDR":
            w, h, depth, color = struct.unpack_from(">IIBB", payload, 0)
        elif tag == b"PLTE":
            palette = payload
        elif tag == b"tRNS":
            trns = payload
        elif tag == b"IDAT":
            idat += payload
        elif tag == b"IEND":
            break
        pos += 12 + ln
    if depth != 8:
        raise ValueError("unsupported PNG bit depth %d" % depth)
    raw = zlib.decompress(idat)
    channels = {0: 1, 2: 3, 3: 1, 4: 2, 6: 4}[color]
    stride = w * channels
    out = bytearray(h * stride)
    prev = bytearray(stride)
    src = 0
    for y in range(h):
        filt = raw[src]
        src += 1
        line = bytearray(raw[src:src + stride])
        src += stride
        if filt == 1:
            for i in range(channels, stride):
                line[i] = (line[i] + line[i - channels]) & 0xFF
        elif filt == 2:
            for i in range(stride):
                line[i] = (line[i] + prev[i]) & 0xFF
        elif filt == 3:
            for i in range(stride):
                a = line[i - channels] if i >= channels else 0
                line[i] = (line[i] + ((a + prev[i]) >> 1)) & 0xFF
        elif filt == 4:
            for i in range(stride):
                a = line[i - channels] if i >= channels else 0
                c = prev[i - channels] if i >= channels else 0
                line[i] = (line[i] + _paeth(a, prev[i], c)) & 0xFF
        out[y * stride:(y + 1) * stride] = line
        prev = line
    mode = {0: "GRAY", 2: "RGB", 3: "P", 6: "RGBA"}.get(color)
    if mode is None:
        raise ValueError("unsupported PNG color type %d" % color)
    return w, h, mode, bytes(out), palette, trns


# =============================================================================
# Resamplers (stdlib only)
# =============================================================================

def resize_nearest(rgba, w, h, nw, nh):
    out = bytearray(nw * nh * 4)
    for y in range(nh):
        sy = min(h - 1, (y * h) // nh)
        row = sy * w * 4
        orow = y * nw * 4
        for x in range(nw):
            sx = min(w - 1, (x * w) // nw)
            s = row + sx * 4
            d = orow + x * 4
            out[d:d + 4] = rgba[s:s + 4]
    return out


def resize_bilinear(rgba, w, h, nw, nh):
    out = bytearray(nw * nh * 4)
    for y in range(nh):
        fy = (y + 0.5) * h / nh - 0.5
        y0 = max(0, min(h - 1, int(fy)))
        y1 = min(h - 1, y0 + 1)
        ty = fy - y0
        if ty < 0:
            ty = 0.0
        r0, r1 = y0 * w * 4, y1 * w * 4
        orow = y * nw * 4
        for x in range(nw):
            fx = (x + 0.5) * w / nw - 0.5
            x0 = max(0, min(w - 1, int(fx)))
            x1 = min(w - 1, x0 + 1)
            tx = fx - x0
            if tx < 0:
                tx = 0.0
            d = orow + x * 4
            for c in range(4):
                p00 = rgba[r0 + x0 * 4 + c]
                p01 = rgba[r0 + x1 * 4 + c]
                p10 = rgba[r1 + x0 * 4 + c]
                p11 = rgba[r1 + x1 * 4 + c]
                top = p00 + (p01 - p00) * tx
                bot = p10 + (p11 - p10) * tx
                out[d + c] = int(top + (bot - top) * ty + 0.5) & 0xFF
    return out


# =============================================================================
# SFF parsing (byte-compatible port of Ikemen-GO src/image.go)
# =============================================================================

def _u16(b, o):
    return struct.unpack_from("<H", b, o)[0]


def _i16(b, o):
    return struct.unpack_from("<h", b, o)[0]


def _u32(b, o):
    return struct.unpack_from("<I", b, o)[0]


def parse_sff(path):
    """Parse the SFF header + sprite table without decoding pixel data.

    Returns dict: ver (1|2), data (file bytes), sprites (list of dicts),
    and for v2: lofs/tofs/palhdr0/npal."""
    with open(path, "rb") as f:
        data = f.read()
    if len(data) < 512 or data[:12] != b"ElecbyteSpr\x00":
        raise ValueError("not a valid SFF file")
    version = data[15]  # verhi: 1 or 2
    sprites = []
    if version == 1:
        nspr = _u32(data, 20)
        shofs = _u32(data, 24)
        for i in range(nspr):
            nxt = _u32(data, shofs)
            size = _u32(data, shofs + 4)
            sprites.append({
                "i": i, "group": _u16(data, shofs + 12),
                "number": _u16(data, shofs + 14),
                "link": _u16(data, shofs + 16),
                # samePalette uint16 lives at shofs+18 (engine reads its low
                # byte right after the 18-byte readHeader prefix)
                "ps": data[shofs + 18] if shofs + 18 < len(data) else 0,
                "size": size, "next": nxt, "D": shofs + 32,
            })
            shofs = nxt  # v1 subheaders chain via their first u32
        return {"ver": 1, "data": data, "sprites": sprites}

    # v2: fixed 32-byte sprite headers
    nspr = _u32(data, 28)
    shofs0 = _u32(data, 24)
    palhdr0 = _u32(data, 32)
    npal = _u32(data, 36)
    lofs = _u32(data, 40)
    tofs = _u32(data, 48)
    for i in range(nspr):
        o = shofs0 + i * 32
        w, h = _u16(data, o + 4), _u16(data, o + 6)
        sel = _u16(data, o + 26)
        base = tofs if sel & 1 else lofs
        sprites.append({
            "i": i, "group": _i16(data, o), "number": _i16(data, o + 2),
            "w": w, "h": h,
            "link": _u16(data, o + 12), "fmt": data[o + 14],
            "coldepth": data[o + 15], "dofs": base + _u32(data, o + 16),
            "size": _u32(data, o + 20), "palidx": _u16(data, o + 24),
        })
    return {"ver": 2, "data": data, "sprites": sprites,
            "lofs": lofs, "tofs": tofs, "palhdr0": palhdr0, "npal": npal}


# ---- SFF v1 -------------------------------------------------------------

def _rle_pcx_decode(rle, w, h, bpl):
    """Port of Sprite.RlePcxDecode (bpl-aware PCX runs)."""
    p = bytearray(w * h)
    i = j = k = 0
    total, rl = len(p), len(rle)
    while j < total and i < rl:
        d = rle[i]
        i = _adv(i, rl)
        n = 1
        if d >= 0xC0:
            n = d & 0x3F
            d = rle[i]
            i = _adv(i, rl)
        while n > 0:
            if k < w and j < total:
                p[j] = d
                j += 1
            k += 1
            if k == bpl:
                k = 0
                n = 1  # truncate runs at the line boundary (engine quirk)
            n -= 1
    return p


def _v1_find_palette(data, block_end, data_start):
    """Backwards search for the 0x0C palette marker (Sprite.read path)."""
    pos = block_end - 769
    while pos >= data_start:
        if data[pos] == 0x0C:
            return pos + 1
        pos -= 1
    return block_end - 768


def _v1_resolve_link(sprites, idx, depth=0):
    """Follow v1 linked sprites (size 0) to a sprite with data."""
    seen = set()
    while depth < 32:
        if idx in seen:
            return None
        seen.add(idx)
        spr = sprites[idx]
        if spr["size"] > 0:
            return spr
        idx = spr["link"]
        depth += 1
    return None


def decode_v1_sprite(sff, spr):
    """Decode one v1 (PCX) sprite. Returns (w, h, indexed_pixels, palette)
    where palette is 256*3 bytes or None if it must be inherited."""
    data = sff["data"]
    sprites = sff["sprites"]
    size = spr["size"]
    if size == 0:
        base = _v1_resolve_link(sprites, spr["link"])
        if base is None or base["i"] == spr["i"]:
            raise ValueError("unresolvable linked sprite")
        w, h, px, pal = decode_v1_sprite(sff, base)
        return w, h, px, pal

    D = spr["D"]
    nxt = spr["next"]
    ps = spr["ps"]
    palette_same = ps != 0 and spr["i"] > 0

    # PCX header (128 bytes): encoding@+2, bpp@+3, rect@+4, bpl@+66
    enc, bpp = data[D + 2], data[D + 3]
    if bpp != 8:
        raise ValueError("SFFv1 sprite is not 8-bit PCX (bpp=%d)" % bpp)
    x1, y1, x2, y2 = struct.unpack_from("<4H", data, D + 4)
    w, h = x2 - x1 + 1, y2 - y1 + 1
    bpl = _u16(data, D + 66) if enc == 1 else 0
    if bpl <= 0:
        bpl = w

    block_end = nxt if nxt > D else D + size
    if palette_same:
        pal_ofs = None  # inherit from the previous sprite's palette
        rle_end = block_end
    else:
        pal_ofs = _v1_find_palette(data, block_end, D + 128)
        rle_end = pal_ofs - 1
    rle = data[D + 128:rle_end]
    px = _rle_pcx_decode(rle, w, h, bpl)

    if palette_same:
        return w, h, px, None
    pal = data[pal_ofs:pal_ofs + 768]
    if len(pal) < 768:
        raise ValueError("truncated v1 palette")
    return w, h, px, pal


def v1_palette_chain(sff, spr):
    """Resolve the v1 palette for a sprite, following ps-share chains and
    links. Returns 768 bytes (256*3 RGB)."""
    data = sff["data"]
    sprites = sff["sprites"]
    # Walk the list in order tracking the most recent own palette, so a
    # shared-palette sprite anywhere before the target resolves correctly.
    last_pal = None
    pal_by_index = {}
    for s in sprites:
        if s["size"] == 0:
            base = _v1_resolve_link(sprites, s["link"])
            pal_by_index[s["i"]] = pal_by_index.get(base["i"]) if base else None
            continue
        if s["ps"] != 0 and s["i"] > 0 and last_pal is not None:
            pal_by_index[s["i"]] = last_pal
        else:
            block_end = s["next"] if s["next"] > s["D"] else s["D"] + s["size"]
            ofs = _v1_find_palette(data, block_end, s["D"] + 128)
            last_pal = ofs
            pal_by_index[s["i"]] = ofs
        if s["i"] == spr["i"]:
            break
    ofs = pal_by_index.get(spr["i"])
    if ofs is None:
        raise ValueError("no palette found for sprite")
    pal = data[ofs:ofs + 768]
    if len(pal) < 768:
        raise ValueError("truncated v1 palette")
    return pal


def indexed_to_rgba(px, w, h, palette, pal_fmt):
    """Map indexed pixels through a palette. pal_fmt: 'rgb768' | 'rgba'.
    Index 0 is transparent (engine convention)."""
    out = bytearray(w * h * 4)
    if pal_fmt == "rgb768":
        def color(i):
            return palette[i * 3], palette[i * 3 + 1], palette[i * 3 + 2], 255
    else:
        def color(i):
            return palette[i * 4], palette[i * 4 + 1], palette[i * 4 + 2], palette[i * 4 + 3]
    o = 0
    for idx in px:
        r, g, b, a = color(idx)
        if idx == 0:
            a = 0
        out[o] = r
        out[o + 1] = g
        out[o + 2] = b
        out[o + 3] = a
        o += 4
    return out


# ---- SFF v2 -------------------------------------------------------------

def _rle8_decode(rle, w, h):
    """Port of Sprite.Rle8Decode (v2 flavour: 0x40 run mask)."""
    p = bytearray(w * h)
    i = j = 0
    total, rl = len(p), len(rle)
    while j < total and i < rl:
        n, d = 1, rle[i]
        i = _adv(i, rl)
        if d & 0xC0 == 0x40:
            n = d & 0x3F
            d = rle[i]
            i = _adv(i, rl)
        while n > 0:
            if j < total:
                p[j] = d
                j += 1
            n -= 1
    return p


def _rle5_decode(rle, w, h):
    """Port of Sprite.Rle5Decode."""
    p = bytearray(w * h)
    i = j = 0
    total, rl = len(p), len(rle)
    while j < total and i < rl:
        run = rle[i]
        i = _adv(i, rl)
        dl = rle[i] & 0x7F
        c = 0
        if rle[i] >> 7:
            i = _adv(i, rl)
            c = rle[i]
        i = _adv(i, rl)
        while True:
            if j < total:
                p[j] = c
                j += 1
            run -= 1
            if run < 0:
                dl -= 1
                if dl < 0 or i >= rl:
                    break
                c = rle[i] & 0x1F
                run = rle[i] >> 5
                i = _adv(i, rl)
    return p


def _lz5_decode(rle, w, h):
    """Port of Sprite.Lz5Decode."""
    p = bytearray(w * h)
    i = j = 0
    total, rl = len(p), len(rle)
    if rl < 1:
        return p
    ct = rle[i]
    cts = 0
    i = _adv(i, rl)
    rb, rbc = 0, 0
    while j < total and i < rl:
        d = rle[i]
        i = _adv(i, rl)
        if ct & (1 << cts):
            if d & 0x3F == 0:
                d = ((d << 2) | rle[i]) + 1
                i = _adv(i, rl)
                n = rle[i] + 2
                i = _adv(i, rl)
            else:
                rb |= (d & 0xC0) >> rbc
                rbc += 2
                n = d & 0x3F
                if rbc < 8:
                    d = rle[i] + 1
                    i = _adv(i, rl)
                else:
                    d = rb + 1
                    rb, rbc = 0, 0
            while True:
                if j < total:
                    p[j] = p[j - d]
                    j += 1
                n -= 1
                if n < 0:
                    break
        else:
            if d & 0xE0 == 0:
                n = rle[i] + 8
                i = _adv(i, rl)
            else:
                n = d >> 5
                d &= 0x1F
            while n > 0:
                if j < total:
                    p[j] = d
                    j += 1
                n -= 1
        cts += 1
        if cts >= 8:
            ct = rle[i]
            cts = 0
            i = _adv(i, rl)
    return p


def load_v2_palettes(sff):
    """Resolve the v2 palette table (RGBA, linked + duplicate entries).
    Returns a list: palettes[i] = 256*4 bytes (or size/4 colors)."""
    data = sff["data"]
    palettes = []
    seen_keys = {}
    for i in range(sff["npal"]):
        o = sff["palhdr0"] + i * 16
        key = (_u16(data, o), _u16(data, o + 2))
        link = _u16(data, o + 6)
        ofs = _u32(data, o + 8)
        size = _u32(data, o + 12)
        if key in seen_keys:               # duplicate (group,index) entry
            palettes.append(palettes[seen_keys[key]])
            seen_keys[key] = i
            continue
        if size == 0:                      # linked palette
            palettes.append(palettes[link] if link < len(palettes) else None)
        else:
            start = sff["lofs"] + ofs
            count = max(1, min(256, size // 4))
            raw = data[start:start + count * 4]
            if len(raw) < count * 4:
                raw = raw + b"\x00" * (count * 4 - len(raw))
            palettes.append(raw)
        seen_keys[key] = i
    return palettes


def _png_pixels_to_rgba(w, h, mode, px, palette, trns):
    out = bytearray(w * h * 4)
    if mode == "RGBA":
        return bytearray(px)
    if mode == "RGB":
        for k in range(w * h):
            out[k * 4:k * 4 + 3] = px[k * 3:k * 3 + 3]
            out[k * 4 + 3] = 255
        return out
    if mode == "GRAY":
        for k in range(w * h):
            g = px[k]
            out[k * 4:k * 4 + 4] = bytes((g, g, g, 255))
        return out
    # 'P': palette indices; apply SFF palette override if provided
    for k in range(w * h):
        idx = px[k]
        if palette and idx * 3 + 2 < len(palette):
            r, g, b = palette[idx * 3], palette[idx * 3 + 1], palette[idx * 3 + 2]
        else:
            r = g = b = 0
        a = 255
        if trns and idx < len(trns):
            a = trns[idx]
        if idx == 0:
            a = 0  # engine convention: index 0 transparent
        out[k * 4:k * 4 + 4] = bytes((r, g, b, a))
    return out


def decode_v2_sprite(sff, spr, palettes):
    """Decode one v2 sprite. Returns (w, h, rgba_bytes)."""
    data = sff["data"]
    sprites = sff["sprites"]

    def linked_base(s):
        seen = set()
        cur = s
        while cur["size"] == 0 and cur["i"] not in seen:
            seen.add(cur["i"])
            cur = sprites[cur["link"]]
        return cur if cur["size"] > 0 else None

    base = linked_base(spr)
    if base is None:
        raise ValueError("unresolvable linked sprite")
    w, h = base["w"], base["h"]
    if w <= 0 or h <= 0:
        raise ValueError("invalid sprite size %dx%d" % (w, h))
    total = w * h

    fmt, coldepth = base["fmt"], base["coldepth"]
    dofs, size = base["dofs"], base["size"]

    rgba = None
    indices = None
    pal = palettes[base["palidx"]] if base["palidx"] < len(palettes) else None

    if fmt in (0, 1) or fmt >= 10:
        if fmt in (10, 11, 12):
            # Embedded PNG, stream starts 4 bytes into the data block
            png_data = data[dofs + 4:dofs + size]
            pw, ph, mode, px, plt, trns = decode_png(png_data)
            rgba = _png_pixels_to_rgba(pw, ph, mode, px, plt, trns)
            if mode == "P" and pal is not None:
                # Prefer the SFF palette (engine applies palidx)
                rgba = indexed_to_rgba(px, pw, ph, pal, "rgba")
            elif (pw, ph) != (w, h):
                w, h = pw, ph
        elif coldepth == 8:
            indices = data[dofs:dofs + total]
            if len(indices) < total:
                raise ValueError("truncated raw sprite data")
        elif coldepth in (24, 32):
            bppc = coldepth // 8
            raw = data[dofs:dofs + total * bppc]
            if len(raw) < total * bppc:
                raise ValueError("truncated raw sprite data")
            rgba = bytearray(total * 4)
            for k in range(total):
                rgba[k * 4:k * 4 + 3] = raw[k * bppc:k * bppc + 3]
                rgba[k * 4 + 3] = 255 if coldepth == 24 else raw[k * 4 + 3]
        else:
            raise ValueError("unknown coldepth %d" % coldepth)
    elif fmt == 2:
        indices = _rle8_decode(data[dofs + 4:dofs + size], w, h)
    elif fmt == 3:
        indices = _rle5_decode(data[dofs + 4:dofs + size], w, h)
    elif fmt == 4:
        indices = _lz5_decode(data[dofs + 4:dofs + size], w, h)
    else:
        raise ValueError("unknown v2 sprite format %d" % fmt)

    if rgba is None:
        if indices is None:
            raise ValueError("no pixel data decoded")
        if pal is None:
            raise ValueError("sprite has no palette (palidx %d)" % base["palidx"])
        rgba = indexed_to_rgba(indices, w, h, pal, "rgba")
    return w, h, bytes(rgba)


# =============================================================================
# Portrait selection + composition
# =============================================================================

def _v1_dims(data, spr):
    """Sprite dimensions from the PCX header (v1 table does not store them)."""
    D = spr["D"]
    x1, y1, x2, y2 = struct.unpack_from("<4H", data, D + 4)
    return x2 - x1 + 1, y2 - y1 + 1


def find_portrait_sprite(sff):
    """Big portrait (9000,1) preferred, select portrait (9000,0) fallback.
    Characters (and template-based rosters) can carry SEVERAL 9000,1
    sprites (splash art + standard VS portrait) - the largest one wins,
    since it downscales best to the 256px site portrait."""
    data = sff["data"]

    def largest(cands):
        pool = [s for s in cands if s["size"] > 0] or cands
        if not pool:
            return None
        def area(s):
            if sff["ver"] == 2:
                return s["w"] * s["h"]
            w, h = _v1_dims(data, s)
            return w * h
        return max(pool, key=area)

    big = largest([s for s in sff["sprites"] if s["group"] == 9000 and s["number"] == 1])
    if big is not None:
        return big
    return largest([s for s in sff["sprites"] if s["group"] == 9000 and s["number"] == 0])


def decode_portrait(sff):
    """Returns (w, h, rgba) of the portrait sprite."""
    spr = find_portrait_sprite(sff)
    if spr is None:
        return None
    if sff["ver"] == 1:
        if spr["size"] == 0:
            # linked: decode the base, then resolve ITS palette
            chain = spr
            seen = set()
            while chain["size"] == 0 and chain["i"] not in seen:
                seen.add(chain["i"])
                chain = sff["sprites"][chain["link"]]
            if chain["size"] == 0:
                return None
            w, h, px, _ = decode_v1_sprite(sff, chain)
            pal = v1_palette_chain(sff, chain)
            return w, h, indexed_to_rgba(px, w, h, pal, "rgb768")
        w, h, px, pal = decode_v1_sprite(sff, spr)
        if pal is None:
            pal = v1_palette_chain(sff, spr)
        return w, h, indexed_to_rgba(px, w, h, pal, "rgb768")
    palettes = load_v2_palettes(sff)
    return decode_v2_sprite(sff, spr, palettes)


def compose_canvas(w, h, rgba, resample):
    """Scale to fill 256 height (or width for wide portraits), center on a
    transparent 256x256 canvas."""
    S = PORTRAIT_SIZE
    if w * h == 0:
        raise ValueError("empty sprite")
    if w >= h:
        nw, nh = S, max(1, round(h * S / w))
    else:
        nw, nh = max(1, round(w * S / h)), S
    if resample == "bilinear" and (nw != w or nh != h):
        scaled = resize_bilinear(rgba, w, h, nw, nh)
    else:
        scaled = resize_nearest(rgba, w, h, nw, nh)
    canvas = bytearray(S * S * 4)
    ox, oy = (S - nw) // 2, (S - nh) // 2
    for y in range(nh):
        d = ((oy + y) * S + ox) * 4
        s = y * nw * 4
        canvas[d:d + nw * 4] = scaled[s:s + nw * 4]
    return canvas


# =============================================================================
# Character folder discovery (mirrors update-manifest.py)
# =============================================================================

def discover_char_sources(repo_path):
    sources = []
    for entry in sorted(Path(repo_path).iterdir(), key=lambda p: p.name.lower()):
        if not entry.is_dir() or entry.name.startswith("."):
            continue
        if entry.name == DEFAULT_SOURCE or entry.name.lower().startswith("chars"):
            sources.append(entry.name)
    if DEFAULT_SOURCE in sources:
        sources.remove(DEFAULT_SOURCE)
    sources.insert(0, DEFAULT_SOURCE)
    return sources


def find_def_file(folder):
    def_files = list(Path(folder).glob("*.def"))
    if not def_files:
        return None
    if len(def_files) == 1:
        return def_files[0]
    folder_name = Path(folder).name
    for f in def_files:
        if f.stem.lower() == folder_name.lower():
            return f
    return def_files[0]


def find_sff_file(folder, def_path):
    """Sprite file from the .def's [Files] sprite= line; fallback: the
    folder-named .sff; last resort: the only .sff in the folder."""
    try:
        content = def_path.read_text(encoding="utf-8", errors="replace")
    except Exception:
        content = def_path.read_text(encoding="latin-1", errors="replace")
    section, sprite_ref = None, None
    for line in content.splitlines():
        line = line.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            section = line[1:-1].strip().lower()
            continue
        if section == "files" and "=" in line:
            key, value = line.split("=", 1)
            if key.strip().lower() == "sprite":
                sprite_ref = value.strip().strip('"').replace("\\", "/").split(";")[0].strip()
                break
    candidates = []
    if sprite_ref:
        candidates.append(folder / sprite_ref)
    candidates.append(folder / (folder.name + ".sff"))
    lower_map = {p.name.lower(): p for p in folder.iterdir() if p.is_file()}
    for cand in candidates:
        if cand.exists():
            return cand
        hit = lower_map.get(cand.name.lower())
        if hit:
            return hit
    sffs = sorted(folder.glob("*.sff"))
    return sffs[0] if len(sffs) == 1 else None


# =============================================================================
# Main
# =============================================================================

def main():
    ap = argparse.ArgumentParser(description="Extract character portraits to portraits/<source>/<id>.png")
    ap.add_argument("--repo", default=str(Path(__file__).resolve().parent),
                    help="Path to the Assets repo (default: this script's folder)")
    ap.add_argument("--force", action="store_true",
                    help="Re-extract even if the portrait PNG already exists")
    ap.add_argument("--only", default="",
                    help="Comma-separated character folder names to process")
    ap.add_argument("--nearest", action="store_true",
                    help="Force nearest-neighbour scaling (default: bilinear)")
    args = ap.parse_args()

    repo = Path(args.repo)
    if not (repo / "chars").exists():
        print("ERROR: %s does not look like the Assets repo (no chars/ folder)." % repo)
        sys.exit(1)

    only = {s.strip() for s in args.only.split(",") if s.strip()}
    resample = "nearest" if args.nearest else "bilinear"

    sources = discover_char_sources(repo)
    print("Character sources: %s" % ", ".join(sources))

    extracted, skipped, missing, failed = [], [], [], []
    for source in sources:
        base = repo / source
        if not base.exists():
            continue
        print("\nScanning %s/ ..." % source)
        for char_folder in sorted(base.iterdir(), key=lambda p: p.name.lower()):
            if not char_folder.is_dir() or char_folder.name.startswith("."):
                continue
            if only and char_folder.name not in only:
                continue
            char_id = char_folder.name
            out_path = repo / "portraits" / source / (char_id + ".png")
            if out_path.exists() and not args.force:
                skipped.append("%s/%s" % (source, char_id))
                print("  %-40s already extracted (--force to redo)" % char_id)
                continue

            def_path = find_def_file(char_folder)
            if def_path is None:
                print("  %-40s WARNING: no .def file, skipping" % char_id)
                continue
            sff_path = find_sff_file(char_folder, def_path)
            if sff_path is None:
                print("  %-40s WARNING: no .sff file found, skipping" % char_id)
                missing.append(char_id)
                continue

            try:
                sff = parse_sff(sff_path)
                result = decode_portrait(sff)
                if result is None:
                    print("  %-40s WARNING: no 9000,x portrait sprite, skipping" % char_id)
                    missing.append(char_id)
                    continue
                w, h, rgba = result
                canvas = compose_canvas(w, h, rgba, resample)
                out_path.parent.mkdir(parents=True, exist_ok=True)
                write_png(out_path, PORTRAIT_SIZE, PORTRAIT_SIZE, canvas)
                print("  %-40s OK  (sprite %dx%d -> %dx%d)" %
                      (char_id, w, h, PORTRAIT_SIZE, PORTRAIT_SIZE))
                extracted.append("%s/%s" % (source, char_id))
            except Exception as e:
                print("  %-40s ERROR: %s" % (char_id, e))
                failed.append((char_id, str(e)))

    print("\n" + "=" * 60)
    print("Extracted: %d    Skipped (present): %d    No portrait: %d    Failed: %d"
          % (len(extracted), len(skipped), len(missing), len(failed)))
    if missing:
        print("No portrait sprite (letter tile shown in the UI): %s" % ", ".join(missing))
    for char_id, err in failed:
        print("FAILED %s: %s" % (char_id, err))
    if extracted or failed:
        print("\nNext step: run update-manifest.py (or .bat) so manifest.json")
        print("picks up the new \"portrait\" fields, then commit + push.")
    if failed:
        sys.exit(1)


if __name__ == "__main__":
    main()
