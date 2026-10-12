------------------------------------------------------------------------
Bane by Jmaxximus, and ALEXZIQ [CVG United Legends of the Dark Knight]
------------------------------------------------------------------------
7/20/12 update

Speeds adjusted on sewer lid tosses
Damage changes on Running wall slam
Combo Backbreaker re-imagined
Jump Back breaker redone
Car smash time b4 run in increased
Template updated to Legends Template
Colors added to template to make venom tubing seperate from the clothes







What changed and fixed (Dec 2010)
-fixed R.C Mugen crash due to Velset in statedef 10210
-Adjusted some collision boxes
-change throw command from F+b to F+b+c
-fixed no ground push back in crouch medium punch and standing medium punch
-made pausetime on air combo faster.
-removed collision boxes from recovery roll
-fixed debug error in statedef 5400 changeanim2
-fixed debug error invalid action 823
-increased damage in Supers and Specials
-Adjusted velocity 
-fixed debug error no num target
-fixed small portrait
-added juggle system support to basic attacks
-increased damage on basic attacks
-fixed cancel bug in car smash hyper

[Move List]-------------------------------------------------------------------
;-| Hypers |-----------------------------------------------------------
[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, a+b
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, b+c
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, c+a
time = 40



[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, y+z
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, x+y
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, x+z
time = 40




[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, a+b
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, b+c
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, c+a
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, x+y
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, y+z
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, z+x
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, a+x
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, b+y
time = 40


[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, c+z
time = 40



;-| Specials |-----------------------------------------------------------
[Command]
name = "kstomp1"
command = ~D, DF, F, x

[Command]
name = "kstomp2"
command = ~D, DF, F, y

[Command]
name = "kstomp3"
command = ~D, DF, F, z



[Command]
name = "sewerlidx"
command = ~D, DB,B, x
time = 25

[Command]
name = "sewerlidy"
command = ~D, DB,B, y
time = 25

[Command]
name = "sewerlidz"
command = ~D, DB,B, z
time = 25

[Command]
name = "rockstomp"
command = ~D, DB, B, a

[Command]
name = "rockstomp"
command = ~D, DB, B, b

[Command]
name = "rockstomp"
command = ~D, DB, B, c


[Command]
name = "wallslam-a"
command = ~D, DF,F, a
buffer.time = 2
[Command]
name = "wallslam-b"
command = ~D, DF,F, b
buffer.time = 2
[Command]
name = "wallslam-c"
command = ~D, DF,F, c
buffer.time = 2




[Command]
name = "deadshot"
command = a+x
time = 25






;Air Specials-------------------------------------------------------------------
[Command]
name = "Divebomb"
command = ~D, DF, F, x
time = 40

[Command]
name = "Divebomb"
command = ~D, DF, F, y
time = 40

[Command]
name = "Divebomb"
command = ~D, DF, F, z
time = 40


DCvM select port, and Bane hyper port by Arlequin!

Additional select ports by Shulbocka

Code assistance by BDCirk, and AA250

Intro and ending donated by nkorey2000, credits listed in file

Thanks to buyog for the template

Thanks to the following creators for inspiration for moves
Heartburn kid, Ryou Win, Warusaki3, Slotman, Ex-inferis, GM, Vynn, Gal129

==========================================================================
BANE

Real Name: 
Unknown 
Place Of Birth: 
Santa Prisca 
First Appearance: 
Batman: Vengeance of Bane 1 
Group Affiliation: 
None 
Base Of Operations: 
Gotham City 
Grudges: 
Batman 
Creators: 
Chuck Dixon, Doug Moench and Graham Nolan 


Born to serve the life sentence of his father, Bane's childhood and early adult life were spent behind the walls of Peña Duro, an infamous prison located in Santa Prisca. Though imprisoned, his natural abilities allowed him to gain extraordinary skills within the walls of Peña Duro. He read as many books as he could get his hands on, built up his body in the prison's gymnasium, and learned to fight in the merciless school of prison life. Despite his circumstances, he appears to have found teachers of various sorts during his incarceration, ranging from the hardened convicts who were his company from birth to an elderly Jesuit priest under whose tutelage he apparently received a classical education. Bane would murder this priest upon his return to Santa Prisca years later. However, he committed the first of his murders at the age of eight, stabbing a criminal who wanted to use Bane to gain information about the prison. 
As an adult, he became a test subject for a mysterious drug known as Venom, which had killed all other subjects. It nearly killed him at first, but he survived and found its effects enhanced his physical strength, although he needed to take it every twelve hours via a system of cables pumped directly into his body or he suffered debilitating side-effects. 
Years later, Bane escaped Peña Duro, along with several accomplices (his friends Trogg, Zombie and Bird). His ambition turned to destroying Batman, whom he had heard tales of while serving his sentence, becoming fascinated with Gotham City as, like the prison, it was a place where fear ruled, in this case, fear of the Batman. Bane was convinced that the demonic bat that haunted his dreams since childhood was a representation of the Batman. 





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
