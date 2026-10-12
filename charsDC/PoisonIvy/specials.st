; States file for {character} -- Specials
;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2stateno = 1090
trigger1 = AnimTime = 0
value = 1030,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 610,0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 8
ProjID = 1002
projanim = 1002
projhitanim = -1
projremanim = -1
projremove = 0
projcancelanim = -1
velocity = 3.7,0
offset = 60,-70
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
sparkxy = 40,0
hitsound = S111, 1
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 1070
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = p2stateno = 1070
value = 1000,1 + ((random*3) / 1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = p2stateno = 1070
v = 42
value = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1070]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0


[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 1
time = 35
add = 100,-1,100
sinadd = 111,10,115,30
color = 0
invertall = 0

[State 7697, 1]
type = VelSet
trigger1 = Time = 30
x = 1.6

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = time = 30
value = 20

[State 7696, 6]
type = SelfState
trigger1 = time = 150
value = 0
ctrl = 1

[StateDef 1010]
type = S
movetype = A
physics = N
anim = 1010
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1010,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 610,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2stateno = 1090
trigger1 = AnimTime = 0
value = 1030,0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 40
velocity = 1.5,0
offset = 75,-85
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
sparkxy = 40,0
hitsound = S111, 1
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 1080
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = random < 750
trigger1 = p2stateno = 1080
value = 1010,1 + ((random*4)/1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = random < 750
trigger1 = p2stateno = 1080
v = 42
value = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1080]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5030

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
trigger2 = pos y = 0
x = 0
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y < 0
y = 0.2
;ignorehitpause =
;persistent =






[State 7697, 1]
type = posSet
triggerall = pos y > 0
trigger1 = 1
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = pos y = 0
trigger1 = anim != 5300
value = 5300



[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 1
time = 100
add = -100,-1,-50
sinadd = 0,40,5,30
color = 0
invertall = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 3,1
value = -3
kill = 0

[State 7696, 6]
type = SelfState
trigger1 = time = 120
value = 0
ctrl = 1


[StateDef 1020]
type = S
movetype = A
physics = N
anim = 1020
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 1020,0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 610,0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 8
ProjID = 1021
projanim = 1021
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 250
velocity = 2,0
offset = 20,-89
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,5
pausetime = 4,4
;postype = P2
sparkno = -1
sparkxy = 40,0
hitsound = S111, 1
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 1090
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = random < 750
trigger1 = p2stateno = 1090
value = 1020,1 + ((random*3)/1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = p2stateno = 1090
v = 42
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = p2stateno = 1090
trigger1 = time = 1
value = 1030,0
persistent = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1090]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5030

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
trigger2 = pos y = 0
x = 0
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y < 0
y = 0.2

[State 7697, 1]
type = posSet
triggerall = pos y > 0
trigger1 = 1
y = 0

[State 0, ChangeAnim]
type = ChangeAnim2
triggerall = pos y = 0
trigger1 = anim != 1099
value = 1099

[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 1
time = 100
add = 40,40,-70
sinadd = 30,30,5,30
color = 0
invertall = 0


[State 7696, 6]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1

[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
trigger1 = random < 666
value = 1100,0 + ((random*3)/1000)

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "Raiz"
ID = 1101
stateno = 1101
pos = 130,0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1101]
type = A
movetype = A
physics = N
anim = 1101
velset = 0,0
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,59

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 9,1
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
p1stateno = 1102
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 1102]
type = A
movetype = A
physics = N
anim = 1102
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,51



[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 90,1
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[StateDef 1110]
type = S
movetype = A
physics = S
anim = 1110
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 410,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 45
trigger1 = random < 666
value = 1110,0 + ((random*3)/1000)

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "Raiz2"
ID = 1111
stateno = 1111
pos = 110,0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1111]
type = A
movetype = A
physics = N
anim = 1111
velset = 0,0
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,59

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
triggerall = time > 30
trigger1 = p2bodydist x < 10
value = 1112
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 1112]
type = A
movetype = A
physics = N
anim = 1112
velset = 0,0
sprpriority = -3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,4

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1113
ID =1113
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = .5,.5
sprpriority = 99
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,1
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
p2stateno = 1080
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = p2stateno = 1080
trigger1 = random < 500
value = 1020,1
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[StateDef 1120]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 1120,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 1120,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 45
trigger1 = random < 666
value = 1120,1 + ((random*2)/1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = time = 45
v = 42
value = 1

 [State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "Raiz"
ID = 1121
stateno = 1121
pos = 90,0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1121]
type = A
movetype = A
physics = N
anim = 1121
velset = 0,0
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,59

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 9,1
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
p1stateno = 1122
p2stateno = 1130
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 1122]
type = A
movetype = A
physics = N
anim = 1122
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = random < 666
trigger1 = p2stateno = 1130
value = 1120,3

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = p2stateno = 1130
v = 42
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,7

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 70,1
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 1130]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1130

[State 7696, 6]
type = SelfState
trigger1 = time = 70
value = 11
ctrl = 1


;
[StateDef 1200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1200
poweradd = 55
sprpriority = 6


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1600,((Random * 4) / 1000)


[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "plantInjustice"
ID = 1210
stateno = 1210
pos = 10,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1210]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1210                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1200,0 + ((Random*5)/1000)

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 3
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,0
air.type = Low
air.hittime = 5
air.velocity = -3,0
envshake.time = 7
envshake.ampl = 4
numhits = 4
kill = !(root,var(58))|| 1*p2stateno=003



[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = animelem = 3
trigger1 = random < 666
value = 1300,0 + ((random*3)/1000)

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_c"
v = 41
value = 190

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_b"
v = 41
value = 140

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_a"
v = 41
value = 90



[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "vine"
ID = 1301
stateno = 1301
pos = var(41),0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 100, 4]
type = ChangeState
triggerall = time > 37
trigger1 = command = "c";Time = 135
trigger2 = command = "z";Time = 135
value = 1310
ctrl = 0

[State 100, 4]
type = ChangeState
triggerall = time > 37
trigger1 = command = "y";Time = 135
trigger2 = command = "b";Time = 135
value = 1320
ctrl = 0

[State 100, 4]
type = ChangeState
triggerall = time > 37
trigger1 = command = "x";Time = 135
trigger2 = command = "a";Time = 135
value = 1330
ctrl = 0

[StateDef 1310]
type = S
movetype = A
physics = S
anim = 1310
ctrl = 0
velset = 0,0
poweradd = 10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = animelem = 3
trigger1 = random < 666
value = 1310,0 + ((random*3)/1000)

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1320]
type = S
movetype = A
physics = S
anim = 1320
ctrl = 0
velset = 0,0
poweradd = 10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = animelem = 3
trigger1 = random < 666
value = 1320,0 + ((random*3)/1000)

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1330]
type = S
movetype = A
physics = S
anim = 1330
ctrl = 0
velset = 0,0
poweradd = 10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = animelem = 3
trigger1 = random < 666
value = 1330,0 + ((random*3)/1000)

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------- VINES ------------
[Statedef 1301]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1301                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,39

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 1302

[Statedef 1309]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1309                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;;;;; -- stance principal
[StateDef 1302]
type    = A
movetype = A
physics = N
anim = 1302
ctrl = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1302
time = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno = 1310
value = 1311
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno = 1320
value = 1321
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno = 1330
value = 1331
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,win
trigger2 = parent,lose
trigger3 = parent,stateno != 1300
value = 1309
ctrl = 0

;---- vine attack forte

[Statedef 1311]
type = A
movetype = A
physics = N
anim = 1311
velset = 0,0
sprpriority = 99

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,57


[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
attr = S, HA
damage = 55,10
hitflag = MAFD
guardflag = L
pausetime = 0,1
hitsound = s2,2
guardsound = s3,0
sparkno = 2
guard.sparkno = S6004
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3,-2
guard.velocity = -5
air.velocity = -3,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;--- vine attack medio

[Statedef 1321]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1321                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,56

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 65
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-7
air.type = Low
air.hittime = 5
air.velocity = -3,-7
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--- vine attack fraco
[Statedef 1331]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1331                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,14

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = -1
p1stateno = 1332
p2stateno = 1335
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

[Statedef 1332]
type    = S
movetype= A
physics = N
anim = 1332
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
trigger1 = random < 666
value = 194,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,4

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 47,-11

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 31,-55

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -15,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -40,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -38,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -20,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 65,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 70,-40


[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -70

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 8
value = 1336

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = 50

[State 0, ChangeState]
type = DestroySelf
trigger1 = animtime = 0



[Statedef 1335]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1


[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1335


[Statedef 1336]
type    = A
movetype= H
physics = N
velset = 5,-4
poweradd = 50


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1336

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 50
x = -10

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.4

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;--------------



