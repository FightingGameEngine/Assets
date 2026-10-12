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
;   beam
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1001
projanim = 1001
projhitanim = 1003
projremanim = 1002
projcancelanim = 1002
velocity = 4,-5
accel = ifelse(p2bodydist x<80,-0.16,ifelse(p2bodydist x>150,0,-0.1)),.4
offset = 64,-94
; HitDef
attr = S,SP
hitflag = MAFD
guardflag = L       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 50,2
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S171,10
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
;projshadow = 50,50,50




[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------
[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 5
value = 0,1

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 621]
type = Helper
trigger1 = AnimElem = 5
stateno = 1011
persistent = 0
pos = 45,-80
persistent = 0


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1011]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 6.5,-3.5
;hitcountpersist = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 0, HitOverride]
type = HitOverride
trigger1 =  1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1013
time = -1




[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1011
value = 1011


[State 6621]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 6621]
type = changestate
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = time > 50
value = 1012
;ignorehitpause = 1

;--------------------------------------
[Statedef 1012]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value =  171,0


[State 3205, bound]
type = screenbound
trigger1 = 1
value = 0

[State 3205, push]
type = playerpush
trigger1 = p2bodydist x=[-7,7]
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 6621]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1012
value = 1012

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, HA
damage = 45
guardflag = MA
hitflag = MAF
pausetime = 0,0
sparkno = -1;2
sparkxy = -5, -38
hitsound = s2,0
guardsound = S3,0
animtype =  Medium
ground.type = Hard
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = 6,-5
guard.velocity = -5
air.velocity = 6,-4
air.hittime = 35
fall = 1
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0
envshake.time = 7
envshake.ampl = 4
p2stateno = 1030

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;ignorehitpause =
;persistent =

;-------------------------
[Statedef 1030]
type = A
movetype = H
physics = N
ctrl = 0
;anim = 1030
sprpriority = 1
velset = 7,-6

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1030

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

[Statedef 1013]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = -5,-5

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1013
value = 1013


[State 0, DestroySelf]
type = changestate
trigger1 =  time > 20
value = 1012
;persistent =

;------------------------------
; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value =  0,1

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1021
projanim = 1021
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,-3
accel = 0,.2
offset = 64,-94
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1022
projanim = 1022
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,-2
accel = 0,.15
offset = 64,-84
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1022
projanim = 1022
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,0
accel = 0,.04
offset = 64,-76
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1025]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 7;5300
value = 5300

[State 907, 3]
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 40
add = 0,40,0
mul = 0,50,04
sinadd = 1,30,5,5
invertall = 0
color = 0

[State 907, 3]
type = SelfState
trigger1 = Time = 90
ctrl = 1
value = 0

;-----------------

; Stand Hard Punch
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1100 +(prevstateno = 220)
poweradd = 55
sprpriority = 2


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
value =  171,3

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 223
ID = 223
pos = 80,-84
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 223
ID = 223
pos = 68,-90
postype = p1
bindtime = 999
removetime = -2
sprpriority = -5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 80,-84
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 80,-84
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 68,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 68,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1

[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcf_a")
v = 42    ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcb_2k")
v = 43    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time > 43
trigger1 = var(43) = 1
value = 3000
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = time > 43
trigger1 = var(42) = 1
value = 1000
ctrl = 0



[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1110]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 1110  +((prevstateno = 400)||(prevstateno = 410)||(prevstateno = 430)||(prevstateno = 440)||(prevstateno = 450))
poweradd = 55
sprpriority = 2


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
value =  171,3

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 223
ID = 223
pos =70,-59
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 223
ID = 223
pos = 55,-63
postype = p1
bindtime = 999
removetime = -2
sprpriority = -5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 70,-59
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 70,-59
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 55,-63
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,0
offset = 55,-63
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1

[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcb_2k")
v = 43    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time > 35
trigger1 = var(43) = 1
value = 3000
ctrl = 0


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-

[StateDef 1120]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 1120 +(prevstateno = 420)
poweradd = 55
sprpriority = 2


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
value =  171,3

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 224
ID = 224
pos =50,-115
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
anim = 224
ID = 224
pos = 40,-120
postype = p1
bindtime = 999
removetime = -2
sprpriority = -5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 225
projanim = 225
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,-18
offset =50,-115
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 225
projanim = 225
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,-18
offset = 50,-115
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
ProjID = 225
projanim = 225
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,-18
offset =40,-120
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 11
ProjID = 225
projanim = 225
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 28,-18
offset = 40,-120
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1



[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
v = 42    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time > 24
trigger1 = var(42) = 1
value = 1200
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcb_2k")
v = 43    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time > 35
trigger1 = var(43) = 1
value = 3000
ctrl = 0



[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Stand Hard Kick
[StateDef 1200]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1200 +((prevstateno = 1120)||(prevstateno = 240)||(prevstateno = 250)||(prevstateno = 440)||(prevstateno = 450)||(prevstateno = 210)||(prevstateno = 420))
poweradd = 55
sprpriority = 2



[State 0, VarSet]
type = VarSet
triggerall = command = "qcb_a"
trigger1 = time = 0
v = 44
value = 0

[State 0, VarSet]
type = VarSet
triggerall = command = "qcb_b"
trigger1 = time = 0
v = 44
value = 2

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcb_c"
trigger2 = var(59)
v = 44
value = 3

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 3
x = 3
y = -3  -1*var(44)


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 10
x = 2
y = -1  -1*var(44)


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 14
y = 0


[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = A,NA
damage = 30,2
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = 1
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-5

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 9
attr = A,NA
damage = 40,2
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -7,0
fall= 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 0

[StateDef 1201]
type    = A
movetype= I
physics = A
juggle  = 4
velset = 1,0
ctrl = 0
anim = 1202
poweradd = 0
sprpriority = 2

[State 250, back to stance]
type = null
trigger1 = AnimTime = 1201
value = 0
ctrl = 1


; Stand Hard Kick
[StateDef 1220]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1220 +((prevstateno = 650)||(prevstateno = 640)||(prevstateno = 630)||(prevstateno = 610)||(prevstateno = 600))
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 1
x = 2
y = -2


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 8
x = 1
y = -1


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 12
y = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 30,2
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = 1
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-5

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 7
attr = A,NA
damage = 40,2
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -7,0
fall= 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 0

[StateDef 1300]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1300
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 5
x = -7
y = -6

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 31
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =


[State 6621]
type = ChangeState;DestroySelf
triggerall = pos y < -80
trigger1 = backedgebodydist <= 20
trigger1 = time < 46
trigger1 = time > 16
value = 1301
ignorehitpause = 1


[StateDef 1301]
type    = A
movetype= I
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1301
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,9

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)


[State 6621]
type = ChangeState;DestroySelf
trigger1 = ((command != "holdx")&&(command != "holdy")&&(command != "holdz"))
trigger1 = time > 10
trigger2 = time >= 50 && var(59)
value = 1302
ignorehitpause = 1


[StateDef 1302]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 8,-4
ctrl = 0
anim = 1302
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

  [State 0, VelAdd]
type = VelAdd
trigger1 = time < 20
y = 0.1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 20
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A


 [State 6621]
type = ChangeState;DestroySelf
trigger1 = p2bodydist X = [-10,10]
value = 1303

[StateDef 1303]
type    = A
movetype= I
physics = A
juggle  = 4
ctrl = 0
anim = 1303
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 1000, 2]
type = Projectile
trigger1 = time = 0
ProjID = 1011
projanim = 1011
projhitanim = 1014
projremanim = 1014
projcancelanim = 1014
velocity = 1,6
accel = 0,0
offset = 44,-74
; HitDef
attr = S,SP
hitflag = MAFD
guardflag = L       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 80,2
pausetime = 0,0
;postype = P2
sparkno = 2
hitsound = S171,0
guardsound = S171,10
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = 0,5
air.velocity = 0,5
fall = 1
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0
envshake.time = 7
envshake.ampl = 4

 [State 6621]
type = null
trigger1 = p2bodydist X = [-10,10]
value = 1303










