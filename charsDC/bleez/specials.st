; States file for {character} -- Specials
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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------
 [StateDef 1700]
anim = 700
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 700, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 700, grunt]
type = PlaySnd
trigger1 = Time = 20
value = S0,1
freqmul = 0.9
 [State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 1

ProjID = 701
projanim = 701
projhitanim = 701
projremanim = 701
projcancelanim = 701
projscale = 1.0,1.0
projremove = 1
projremovetime = 35
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0



[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 700, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 2814
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S50,1
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,1
freqmul= 1.3
[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1022
ID =  1022
pos = 40,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 0.5,0.2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1010
projcancelanim = 1020
velocity = 6,0
projscale = 0.5,0.3
offset = 40,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S1010
guard.sparkno = 0
hitsound = S50,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
[StateDef 1001]
type = A
movetype = A
physics = S
anim = 2814
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S50,1
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,1
freqmul= 1.3
[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1022
ID =  1022
pos = 40,-90
removetime = -2
scale = 0.5,0.2
sprpriority = 0
ontop = 1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1010
projcancelanim = 1020
velocity = 6,6
projscale = 0.5,0.3
offset = 40,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S1010
guard.sparkno = 0
hitsound = S50,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 40
ctrl = 1
;===========================================================
; Stand Hard special
[StateDef 1200, upper]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = -3,-3
poweradd = 96
[State 9001, red Afterimage]
type = AfterImage
trigger1 = time = 1
length = 10
framegap = 2
PalBright= 255, 0, 0
PalAdd= 255,0,0


time = 100
[State 1200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = animelem = 5
value = 0,2

[State 1200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8


[State 1200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 1201
ctrl = 1
; Stand Hard special
[StateDef 1201, voo frente]
anim = 1201
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,-1
poweradd = 96

[State 9001, green Afterimage]
type = AfterImage
trigger1 = time = 1

length = 10
framegap = 2
PalBright= 255, 0, 0
PalAdd= 255,0,0
Trans = add
time = 100
[State 1200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = animelem = 2
value = 0,2

[State 1200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 1200, HitDef]
type = HitDef
trigger1 = 1201
attr = S, NA
damage = 15
guardflag = MA
pausetime = 1,1
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 0, VelAdd]
type = veladd
trigger1 = 1201
x = 2
y = 0
;ignorehitpause =
;persistent =

[State 1200, back to stance]
type = ChangeState
trigger1 = time = 70
value = 101
ctrl = 1


; Stand Hard special
[StateDef 1300, dragoes]
anim = 1300
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 1200, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 50,2
freqmul = 0.9

[State 1200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2


[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1040
projanim = 1040
projhitanim = 1040
projremanim = 1040
projcancelanim = 1040
projpriority = 2
velocity = 0,0
projscale = 0.3,0.3
offset = 25,-90
projremovetime = 100
ontop = 1

[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
attr = S, NA
damage = 15
guardflag = MA
pausetime = 1,1
hitsound = S4,2
guardsound = S4,0
sparkno = S9990
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 1
guard.velocity = -5
air.velocity = -4,1
[State 1200, back to stance]
type = ChangeState
trigger1 = time = 150
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
 ; Special 1
[StateDef 1500, 3 fantasmas]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0


[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 1041
ID = 1041
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
ontop = 1
removeongethit = 1
;ignorehitpause =
;persistent =

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,2

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1070
projanim = 1070
projhitanim = 1070
projremanim = 1070
projremovetime = 100
velocity = 1,0
offset = 0,20
projscale = 1,1
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkxy = 120,-60
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1400, fantasma closet]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 70
value = S50,3
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,2
freqmul = 1.2
[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1050
projanim = 1050
projhitanim = 1050
projremanim = 1050
projremovetime = 100
velocity = 0,0
offset = 0,0
projscale = 1,1
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkxy = 120,-60
sparkno = S9992
guard.sparkno = 0
hitsound = S4,2
guardsound = S4,3
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
