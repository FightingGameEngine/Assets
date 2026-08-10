# Assets — Character Adding Guide

This repo hosts downloadable characters and stages for the Fighting Game Engine.
Characters are served via jsDelivr CDN and downloaded on-demand when players
select them in the game.

## Quick Start

1. Create a folder under `chars/` with your character's name
2. Upload all character files (.def, .cns, .cmd, .air, .sff, .snd, .act)
3. Run `update-manifest.bat` (Windows) or `./update-manifest.sh` (Mac/Linux)
4. The script auto-generates manifest.json, commits, and pushes to GitHub
5. jsDelivr CDN updates within 5-10 minutes

## One-Click Manifest Update

| File | Platform | How to Use |
|------|----------|------------|
| `update-manifest.bat` | Windows | Double-click the file in Explorer |
| `update-manifest.sh` | macOS/Linux | Double-click in Finder, or `./update-manifest.sh` |
| `update-manifest.py` | All (backend) | Called by the .bat/.sh scripts |

The script:
- Scans `chars/` for character folders with .def files
- Parses each .def to extract displayName, author, and ALL file references
- Checks if each file actually exists on disk (skips missing files like shared common1.cns)
- Computes sizeMB from actual file sizes
- Preserves manually-written descriptions from existing manifest.json
- URL-encodes spaces in cdnBase (%20)

## Pre-Upload Checklist

### SFF Version
The engine supports both SFF v1 and SFF v2. SFF v2 characters work with
palette links and 32-color JUS palettes.

### Required Files
Every character must have:
- `.def` file (character definition)
- `.cns` file (constants and states)
- `.cmd` file (command definitions)
- `.air` file (animation definitions)
- `.sff` file (sprite graphics)
- `.snd` file (sound effects) — optional but recommended
- `.act` files (palettes — at least one)

### common1.cns
If a character doesn't include `common1.cns`, the engine automatically uses
the shared `data/common1.cns` (standard MUGEN 1.0). No action needed.

### File Size
- jsDelivr has a 50MB file size limit per file
- Files over 50MB fall back to GitHub raw (slower but works)

### .cmd Files
- jsDelivr blocks `.cmd` files with HTTP 403 (security policy)
- The download manager automatically falls back to GitHub raw
- No action needed

## CDN Details

1. **jsDelivr** (primary): `https://cdn.jsdelivr.net/gh/FightingGameEngine/Assets@main/`
2. **GitHub raw** (fallback): `https://raw.githubusercontent.com/FightingGameEngine/Assets/main/`

After pushing changes, purge jsDelivr cache:
`https://purge.jsdelivr.net/gh/FightingGameEngine/Assets@main/manifest.json`
