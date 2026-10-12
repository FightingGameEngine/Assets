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

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

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
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
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

; Stand Hard special
[StateDef 1200]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 1200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = animelem = 3
value = 0,2

[State 1200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 1031
ID = 1031
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
removetime = 90
sprpriority = 0
ontop = 1
ownpal = 0
removeongethit = 1
scale = 1.2,1.2
;ignorehitpause =
;persistent =

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
value = 45
ctrl = 1


; Super Laser
[StateDef 1300]
anim = 1300
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 0
channel = -1
[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-68
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1301
projanim = 1301
projhits = 100
projmisstime = 2
projremovetime = 14
projremanim = 1302
projpriority = 6
velocity = 0
offset = 60,-70
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 12,2
pausetime = 4,4
sparkno = S9999999
guard.sparkno = S9999999999
hitsound = 0,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 3
ground.velocity = -1
air.velocity = -2,-2

[State 1200, back to stance]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Laser voando
[StateDef 1310]
type = A
movetype = A
physics = N
anim = 1310
ctrl = 0
velset = 0,0
poweradd = 96
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 0
channel = -1
[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1301
projanim = 1301
projhits = 100
projmisstime = 2
projremovetime = 14
projremanim = 1302
projpriority = 6
velocity = 0
offset = 20,-85
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 12,2
pausetime = 4,4
sparkno = S9999999
guard.sparkno = S9999999999
hitsound = 0,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 3
ground.velocity = -1
air.velocity = -2,-2

[State 3000, back to normal]
type = ChangeState
trigger1 = Time > 40 && !NumProjID(1301)
value = 9100
ctrl = 1
;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
 ; Special 1
[StateDef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0

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
value = S9,1

[State 1000]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1401
projhitanim = 1403
projremovetime = 30
projremanim = 1403
velocity = 1,0
accel = .1,0
offset = 20,-90
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,30
pausetime = 4,4
sparkxy = 20,0
sparkno = S9991
guard.sparkno = 0
hitsound = S0,4
guardsound = S0,4
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
