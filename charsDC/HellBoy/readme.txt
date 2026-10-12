Hellboy Spited by Will-ian,and azrael genekiss, and some edits by ALEXZIQ- Coded By Alexziq.
--------------------------------------------------------------------------------------------
Basics,started by Zvitor, and then AA250.
Thanks to the person who made the ports (sorry I forget who did)
Many ideas Borrowed from Fido-Infinites Alex's coding, all credit to code in similar moves goes to him.
Additional Shoryuken coding adapted from Phantom of the server evil ryu.
Stars and stripes,and gun coding by Zvitor.
Dash's by Cyanide
Recovery Roll by Toni



;-| Hypers |-----------------------------------------------------------

;Hellboy jumping ground smash
[Command]
name = "Agony Smash"
command = ~D, DB, B, a+b
time = 40

[Command]
name = "Agony Smash"
command = ~D, DB, B, a+c
time = 40

[Command]
name = "Agony Smash"
command = ~D, DB, B, b+c
time = 40

;Hellboy Head Smash Superplex Power Bomb
[Command]
name = "plex"
command = ~D, DF, F, a+b

[Command]
name = "plex"
command = ~D, DF, F, a+c

[Command]
name = "plex"
command = ~D, DF, F, b+c


;Hellboy calls Lobster Johnson headbut Samaritan Blitz combo

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

;Hellboy Horn Rage attack

[Command]
name = "qcf_2k"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2k"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, y+z




;-| Specials |-----------------------------------------------------------

;shoryuken weak
[Command]
name = "qcf_x"
command = ~D, DF, F, x

;shoryuken med

[Command]
name = "qcf_y"
command = ~D, DF, F, y

;shoryuken strong
[Command]
name = "qcf_z"
command = ~D, DF, F, z

;shoryuken Helfire and Brimstone

[Command]
name = "hbf&f"
command = ~F, DF, D, x

[Command]
name = "hbf&f"
command = ~F, DF, D, y

[Command]
name = "hbf&f"
command = ~F, DF, D, z

;Gun blast low

[Command]
name = "qcf_a"
command = ~D, DF, F, a

;gun blast ahead

[Command]
name = "qcf_b"
command = ~D, DF, F, b

;gun blast upward

[Command]
name = "qcf_c"
command = ~D, DF, F, c


;dash elbow
[Command]
name = "qcb_a"
command = ~D, DB, B, a

;dash stone hand
[Command]
name = "qcb_b"
command = ~D, DB, B, b

;dash shoulder blast

[Command]
name = "qcb_c"
command = ~D, DB, B, c


; quick headbutt
[Command]
name = "qcb_x"
command = ~D, DB, B, x

;quick bearhug
[Command]
name = "qcb_y"
command = ~D, DB, B, y

;quick German Suplex
[Command]
name = "qcb_z"
command = ~D, DB, B, z

;Abe Sapian Helper

[Command]
name = "abe"
command = a+x
time = 25



DC/Marvel Template Characters
Version: 2.0 {24 April 2008}

Created by Buyog2099
for the MUGEN DC vs Marvel project
-----------------------------------------------------------------------

These template characters have been developed to help new character creators to quickly build something 
that fits the style of the DC vs Marvel game. It only has a few character sprites, but includes all of 
the MUGEN-required get-hit sprites as well as custom animations in support of many characters' special
attacks (e.g. burned, shocked, turned to stone, frozen, even Midnight Bliss although Demitri isn't 
in the game. =P). Note that I didn't add the heads to the get-hit sprites... that's intentional, so
please don't report it as a bug. ;)

Both characters contain basic AI, which has been mostly cobbled together from mine and Loganir's, 
standardized by ThePacifist, then heavily re-modified by me. They're pretty tough; they can even give 
Thor and Wonder Woman a run for their money!

Although they're about 90% similar, there are a few differences between the two characters:
- First, of course, their portraits and colors reflect their universe of origin. 
- The select screen portraits are appropriate for the DC vs Marvel screenpack, and won't work 
   well in a different one, so you'd need to change 9000,0 and 9000,1 if you want to use them in a regular screenpack.
- Marvel has a special and a hyper that are both beam-based, like Cyclops.
- DC's special and hyper are projectile-based, like Ice (but without the freezing ;))


GAMEPLAY:

This character has the typical Marvel Versus Capcom (6-button) play style:

x - Weak Punch (WP)
y - Medium Punch (MP)
z - Hard Punch (HP)
a - Weak Kick (WK)
b - Medium Kick (MK)
c - Hard Kick (HK)

d,u:  Super Jump (pressing all three kick buttons at the same time will trigger it too)
f,f:  Dash Forward (can also be triggered by pressing all three punch buttons)
b,b:  Dash Back (also works by pressing all three punch buttons while holding back)


NOTE
My characters are developed entirely on WinMUGEN; I have no idea if they'll even work right on DOS MUGEN,
because I don't have a computer that will run it anymore. If it works for you, great; if not, sorry. :(


COMBO SYSTEM
Capcom-style chain combos work for standing, crouching, and air:
1. WP+MP+SP: you can chain the three punches together, weakest to strongest, for a 3 hit combo.
2. WK+MK+SK: like the punches, you can chain the three kicks together as well.
3. (in air) WP+WK+MP+MK+SP: The basic "zigzag" combo. Chains up to 6 hits.

Launcher for air combos: currently it's the crouching hard punch, but you can change it.


-----------------------------------------------------------------------
VERSION HISTORY

- 24 April 2008: v2.0 - added full set of gethit sprites, crouch, basic attacks, one special and one hyper
- v1.0 (not widely released) - included some get-hits and a stance, not much else.


----------------------------------------------------------------------
CREDITS

- ThePacifist for consolidating and standardizing the AI that eventually made its way into these characters.
- SethZankuten for the DCvsMarvel commons file and most of the sparks


LINKAGE
Buyog's email:            buyog2099@yahoo.com
Buyog's webspace:         http://www.buyog.com/MUGEN
Scruffy Dragon webspace:  http://www.scruffydragon.com
