; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;
; Hyper 2 (QCB + PP) -- state 3100
;   hyper 2
;
; Hyper 3 (QCF + KK) -- state 3300
;   hyper 3
;
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 5402  ;3000
velset = 0,0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 10,-92
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "megabeam"
ID = 3010
stateno = 3010
pos = 125,-140
size.xscale = 0.7
size.yscale = 0.7
ownpal = 1
;supermove

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 5403    
ctrl = 0
velset = 0,0
sprpriority = 2

;[State 3010, PosSet]
;type = PosSet
;trigger1 = 1
;x = parent, Pos X
;y = parent, Pos Y - 125

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 4,2    ;10,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 0,10
hitsound = S9, 1 ;2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,64,0
fall = 1
air.fall = 1

[State 0, ]
type = BindToParent
trigger1 = 1
pos = 125,-140
ignorehitpause = 1

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 ;parent,stateno != 3000
ignorehitpause = 1
persistent = 0

;----------------------------------------------------
;---------------------------------------------------------------------------
;Combo punch
[StateDef 3100]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 242
;poweradd = 20
sprpriority = 2

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 10,-92
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 242, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = S, NA
damage = 55
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = s6004
sparkxy = 57, -162
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Explod]
type = Explod
trigger1 = animelem = 2 
trigger2 = AnimElem = 11
anim = 211
ID = 211
pos = 95,-95
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 211
ID = 211
pos = 107,-106
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 242, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 420 ;0
ctrl = 1

;----------------------------------------------------
;-------------------------------------------------------------------------
;Missile Strike Hyper
[StateDef 3300]
type = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
ctrl = 0
anim = 3200
poweradd = 20

[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 0,-80
darken = 1
;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

;Right
[State 181, fx] 
type =explod
trigger1 = AnimElem = 2
anim = 912
postype = p1
pos = 32,-100  ;85,-100
bindtime = 2
sprpriority = 2
removetime = 415
ownpal = 1
removeongethit = 1

;Left
[State 181, fx]
type =explod
trigger1 = AnimElem = 2
anim = 914
postype = p1
pos = -31,-95 ;11,-150
bindtime = 2
sprpriority = 2
removetime = 415
ownpal = 1
removeongethit = 1

;;;;; PUNISHER MISSILE CODE ~~ CREATE BY: aPoCaLyPsE ~~ aPoCaLyPsE

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S16,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 9,2;,21
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 50
trigger2 = Stateno = 3300 && time = 90
trigger3 = Stateno = 3300 && time = 130
trigger4 = Stateno = 3300 && time = 170
trigger5 = Stateno = 3300 && time = 210
trigger6 = Stateno = 3300 && time = 250
trigger7 = Stateno = 3300 && time = 290
trigger8 = Stateno = 3300 && time = 330
value = 9,1 ;S15,22
volume = 300


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 50
trigger2 = Stateno = 3300 && time = 90
trigger3 = Stateno = 3300 && time = 130
trigger4 = Stateno = 3300 && time = 170
trigger5 = Stateno = 3300 && time = 210
trigger6 = Stateno = 3300 && time = 250
trigger7 = Stateno = 3300 && time = 290
trigger8 = Stateno = 3300 && time = 330
value = 9,1 ;S15,19
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 0
value = 10,10;S15,2

[State 3300, Grenade]
type = Helper
trigger1 = Time = 32
helpertype = Normal
name = "Grenade"
postype = p1
pos = -190,-120
stateno = 3306
ownpal = 1
persistent = 0

[State 3300, Grenade]
type = Helper
trigger1 = Time = 152
helpertype = Normal
name = "Grenade"
postype = p1
pos = -190,-120
stateno = 3306
ownpal = 1
persistent = 0

[State 3300, Missle 1]
type = Projectile
trigger1 = time = 70 || time = 220
offset = 0, -250
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,6
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = S15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,-2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 2]
type = Projectile
trigger1 = time = 80 || time = 230
offset = 50, -250
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 3]
type = Projectile
trigger1 = time = 90 || time = 240
offset = -60, -250
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 4]
type = Projectile
trigger1 = time = 100 || time = 250
offset = 30, -220
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 8,4
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 5]
type = Projectile
trigger1 = time = 110 || time = 260
offset = -20, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,8
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 7
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 6]
type = Projectile
trigger1 = time = 120 || time = 270
offset = 0, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 7]
type = Projectile
trigger1 = time = 130 || time = 280
offset = 0, -205
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 8]
type = Projectile
trigger1 = time = 140 || time = 290
offset = 40, -204
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 9]
type = Projectile
trigger1 = time = 150 || time = 300
offset = 35, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 7
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 10]
type = Projectile
trigger1 = time = 160 || time = 310
offset = 10, -230
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 11]
type = Projectile
trigger1 = time = 170 || time = 320
offset = 0, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 12]
type = Projectile
trigger1 = time = 180 || time = 330
offset = -15, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,9
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 13]
type = Projectile
trigger1 = time = 190 || time = 340
offset = -30, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity =6,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 14]
type = Projectile
trigger1 = time = 200 || time = 350
offset = -10, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 15]
type = Projectile
trigger1 = time = 210 || time = 360
offset = 0, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,8
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 16]
type = Projectile
trigger1 = time = 220 || time = 370
offset = 40, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 17]
type = Projectile
trigger1 = time = 55
offset = 60, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,9
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 18]
type = Projectile
trigger1 = time = 355
offset = 60, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2
fall = 1

[State 3300, Missle 19]
type = Projectile
trigger1 = time = 175 || time = 334
offset = -50, -70
projID = 3206
projanim = 3206
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 8,0
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 30
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = S6,0

;-----------=[ FX end ]=-----------------

[State 3300, ShakeScreen]
type = Envshake
trigger1 = Time = 55
trigger1 = Time = 70
trigger2 = Time = 80
trigger3 = Time = 90
trigger4 = Time = 100
trigger5 = Time = 110
trigger6 = Time = 120
trigger7 = Time = 130
trigger8 = Time = 140
trigger9 = Time = 150
trigger10 = Time = 160
trigger11 = Time = 170
trigger12 = Time = 175
trigger13 = Time = 180
trigger14 = Time = 190
trigger15 = Time = 200
trigger16 = Time = 210
trigger17 = Time = 220
trigger18 = Time = 230
trigger19 = Time = 240
trigger20 = Time = 250
trigger21 = Time = 260
trigger22 = Time = 270
trigger23 = Time = 280
trigger24 = Time = 290
trigger25 = Time = 300
trigger26 = Time = 310
trigger27 = Time = 320
trigger28 = Time = 330
trigger29 = Time = 334
trigger30 = Time = 355
persistent = 1
time = 15
freq = 70
ampl = 5

[State 3300, ShakeScreen]
type = Envshake
trigger1 = Time = 360
trigger2 = Time = 370
trigger3 = Time = 375
persistent = 1
time = 60
freq = 70
ampl = 5

[State 3300, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3301
ctrl = 0

;---------------------------------------------------------------------------------------------
;Hyper 3 End
[StateDef 3301]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3201
poweradd = 20

[State 3301, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 1101
;ignorehitpause =
;persistent =

[State 3301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0; 3202
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper
[Statedef 3302]
type = A
movetype = A
physics = N
anim = 3202
ctrl = 0
sprpriority = 6
velset = 0,0


[State 20210]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20210]
type = VelSet
;trigger1 = Parent,AnimElem = 7
trigger1 = AnimTime = 0
x = 3
y = 3


[State 20210]
type = null;HitBy
trigger1 = 1
value = SCA,AP

;[State 20210]
type = null;HitOverride
trigger1 = 1
stateno = 21481
attr = SCA,AP
slot = 0
time = -1


[State 20210]
type = HitDef
attr = S, NP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 10
animtype = Large
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = 0,0
hitsound   = S15,3
guardsound = S15,3
sparkno = -1;S3204
;guard.sparkno; = 7;s3204
ground.type = High
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,40,0)
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 4

[State 20210]
type = ChangeState
trigger1 = MoveContact
trigger2 = Pos Y >= 0
trigger2 = Vel Y > 0
trigger3 = Parent,MoveType = H
trigger3 = Vel X = 0
value = 3303
ignorehitpause = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper End
[Statedef 3303]
type = S
movetype = I
physics = N
anim = 3204
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S15,4

[State 3205]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Missle 2 Helper
[Statedef 3304]
type = A
movetype = A
physics = N
anim = 3203
ctrl = 0
sprpriority = 6
velset = 0,0


[State 20210]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20210]
type = VelSet
;trigger1 = Parent,AnimElem = 7
trigger1 = AnimTime = 0
x = 5
y = 5


[State 20210]
type = null;HitBy
trigger1 = 1
value = SCA,AP

;[State 20210]
type = null;HitOverride
trigger1 = 1
stateno = 21481
attr = SCA,AP
slot = 0
time = -1


[State 20210]
type = HitDef
attr = S, NP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 10
animtype = Large
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = 0,0
hitsound   = S15,3
guardsound = S15,3
sparkno = -1;S3204
;guard.sparkno; = 7;s3204
ground.type = High
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,40,0)
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 4

[State 20210]
type = ChangeState
trigger1 = MoveContact
trigger2 = Pos Y >= 0
trigger2 = Vel Y > 0
trigger3 = Parent,MoveType = H
trigger3 = Vel X = 0
value = 3305
ignorehitpause = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper End
[Statedef 3305]
type = S
movetype = I
physics = N
anim = 3204
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S15,4

[State 3205]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Grenade Throw
[Statedef 3306]
type = A
movetype = A
physics = N
anim = 3203
velset = 0, -3
sprpriority = 6

[state 503,1]
type = velmul
trigger1 = facing = 1 && screenpos x = [290,320]
trigger2 = facing = -1 && screenpos x = [0,30]
x = 0.9

[state 503,2]
type = velset
trigger1 = time = 0
x = 6
y = -5.5

[state 503,3]
type = velset
trigger1 = time = 5
x = 6
y = -5

[state 503,4]
type = velset
trigger1 = time = 8
x = 6
y = -4

[state 503,5]
type = veladd
trigger1 = root, stateno != 210
y = 0.1

[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = s7703;s9999
sparkxy = 0, 0
hitsound = S1, 7
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 100
ground.velocity = -10
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 0
;fall = 1

[State 508,8]
type = Envcolor
trigger1 = hitcount = 1
persistent = 0
ignorehitpause = 1
value = 255, 255, 255
time = 1
under = 0

[State -2, Bounce from the ground]
type = VelSet
trigger1 = (vel Y > 0) && (Pos Y >= 0) ;Triggers if y velocity is more than 0 and your pos is more or equal to 0
x = 4
y = -5

[State -2, Gravity]
type = VelAdd
trigger1 = (Vel Y < 0) && (Pos Y < 0) ; In air and going up
y = 1

[State 519,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503







