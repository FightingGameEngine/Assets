;Air Hyper

[Statedef 9500]
type = A
movetype = A
physics = N
poweradd = 0
anim = 9502
ctrl = 0
velset = 0,0

[State 9500, 1]
type = VelMul
trigger1 = Time = 0
x = .06
y = .07

[State 9500, 2]
type = VelAdd
trigger1 = animelemtime(6)>0
y = .02;.04

; voice / knew you're a weak
;[State 3000, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 0
;value = S200,4
;channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

;[State 3000, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElemTime(3) % 10 = 1
;value = S300,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9010
projhitanim = 9020
projremanim = 9020
projcancelanim = 9020
velocity = (10 - Random/250), 3.5 
offset = 0,-100
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 7,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S0,25
guardsound = S6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9010
projhitanim = 9020
projremanim = 9020
projcancelanim = 9020
velocity = (10 - Random/250), 4
offset = 0,-100
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S0,25
guardsound = S6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9010
projhitanim = 9020
projremanim = 9020
projcancelanim = 9020
velocity = (10 - Random/250), 4.5
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 7,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S0,25
guardsound = S6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 9500, 8]
type = ChangeState
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
trigger1 = AnimTime = 0
value = 52

[State 9500, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;[State 3000, back to normal]
;type = ChangeState
;trigger1 = Time = 100
;value = 0
;ctrl = 1

;-----------------------------------------------------------------------
;Sirou hyper
[Statedef 9996]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd= -1000
ctrl = 0
anim = 9996
sprpriority = 2
facep2 = 1

[State 9996, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100,0
channel = 1

[State 200];補正
type = Varadd
trigger1 = time = 1
trigger1 = enemy,movetype = H
trigger1 = enemy,stateno != [120,155]
trigger1 = fvar(1) > 0.3
fv = 1
value = -0.10
persistent = 0
ignorehitpause = 1

[State -2];補正
type = Varset
trigger1 = time = 1
trigger1 = fvar(1) < 0.29
fv = 1
value = 0.2
ignorehitpause = 1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = time = [0,12]
value = SCA

;[State 20000]
;type = Helper
;trigger1 = time = 2
;persistent = 0
;id = 30000
;name = "Hiper"
;pos = 17,-75
;postype = P1
;stateno = 30000
;helpertype = normal
;supermove = 1
;keyctrl = 0
;ownpal = 1
;ignorehitpause = 1
;supermovetime = 99999
;pausemovetime = 99999
;size.xscale = 1
;size.yscale = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
;poweradd = -1000

[State 500,5];タイムストップ
type = Pause
trigger1 = time = 2
time = 30
;movetime = 16

[State 901, 掴んだ相手の位置１];TargetBindで相手を一時的に拘束
type = TargetBind
trigger1 = time = 49
pos = 55, 0

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = time = 63
stateType = A
physics = N

[State 3100, D]
type = AfterImage
trigger1 = Time = 0
trans = add1
TimeGap  = 3
FrameGap = 2;3
time = 104
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1;.9, .9, .9
length = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 9
trigger2 = time = 19
trigger3 = time = 34
trigger4 = time = 63
trigger5 = time = 75
trigger6 = time = 98
value = S1000,4

[State 30]
type = VelSet
trigger1 = time = [2,8]
trigger2 = time = [48,56]
x = 9

[State 30]
type = VelSet
trigger1 = time = 18
x = 12

[State 30]
type = VelSet
trigger1 = time = 36
x = -5.5

[State 30]
type = VelSet
trigger1 = time = 63
trigger2 = time = 75
x = 3
y = -6

[State 30]
type = VelSet
trigger1 = time = 91
x = 4
y = -3

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 10
attr = S, HA
damage = 30,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 8,12
sparkxy = -15, -69
hitsound   = S10, 1
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,0
air.velocity = -2,0
air.type = High
air.hittime = 14
getpower = 50,30
givepower = 20,40
fall.recover = 0
fall = 0
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 20
attr = S, HA
damage = 30,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 9,14
sparkxy = -20, -70
hitsound   = S10, 1
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,0
air.velocity = -2,0
air.type = High
air.hittime = 14
getpower = 50,30
givepower = 20,40
fall.recover = 0
fall = 0
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 34
attr = S, HA
damage = 60,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = HA
hitflag = MAF
priority = 7, Hit
pausetime = 10,70
guard.pausetime = 10,10 
sparkxy = -25, -83
hitsound   = S10, 1
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-6
air.velocity = -2,-6
air.type = High
air.hittime = 14
getpower = 50,30
givepower = 20,40
fall.recover = 0
fall = 1
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 48
attr = C, HA
damage = 25,5
guardflag = L
hitflag = MAF
priority = 7, Hit
pausetime = 6,15
sparkxy = -25, -10-(P2StateType=A)*20
hitsound   = S5, 0
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.hittime = 14
givepower = 20,40
fall.recover = 0
fall = 0
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 63
attr = A, HA
damage = 80,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 6,10
sparkxy = -25, -75-(P2StateType=A)*20
hitsound   = S10, 1
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-5
air.velocity = -1,-5
air.type = High
air.hittime = 14
givepower = 20,40
fall.recover = 0
fall = 1
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 75
attr = A, HA
damage = 80,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 6,10
sparkxy = -25, -75-(P2StateType=A)*20
hitsound   = S5, 0
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-5
air.velocity = -1,-5
air.type = High
air.hittime = 14
givepower = 20,40
fall.recover = 0
fall = 1
air.Fall = 1
down.bounce = 1

[State 300, ヒット定義]
type = HitDef
trigger1 = time = 100
attr = A, HA
damage = 100,5
animtype = Hard
air.animtype = Back
ground.type = High
guardflag = HA
hitflag = MAF
priority = 7, Hit
pausetime = 15,15
sparkxy = -25, -41-(P2StateType=A)*20
hitsound   = S10, 1
guardsound = 6,0
sparkno = S8120
guard.sparkno = 40
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,15
air.velocity = -4,15
air.type = High
air.hittime = 14
givepower = 20,40
fall.recover = 0
fall = 1
air.Fall = 1
down.bounce = 1

;[State 220]
;type = Explod
;trigger1 = time = 10
;anim = 1305
;scale = 1, 1
;postype = p1
;pos = -2, -72
;sprpriority = 4
;ownpal = 1
;bindtime = -1
;removeongethit = 1
;ignorehitpause = 0

;[State 220]
;type = Explod
;trigger1 = time = 20
;anim = 1305
;scale = 1, -1
;postype = p1
;pos = -4, -73
;sprpriority = 4
;ownpal = 1
;bindtime = -1
;removeongethit = 1
;ignorehitpause = 0

;[State 220]
;type = Explod
;trigger1 = time = 33
;anim = 1205
;scale = 1, 1
;postype = p1
;pos = 3, 7
;sprpriority = 4
;ownpal = 1
;bindtime = -1
;removeongethit = 1
;ignorehitpause = 0

;[State 220]
;type = Explod
;trigger1 = time = 63
;trigger2 = time = 75
;anim = 1205
;scale = 1, 1
;postype = p1
;pos = 0, 0
;sprpriority = 4
;ownpal = 1
;bindtime = -1
;removeongethit = 1
;ignorehitpause = 0

;[State 220]
;type = Explod
;trigger1 = time = 96
;anim = 1275
;scale = 1, -1
;postype = p1
;pos = 10, -160
;sprpriority = 4
;ownpal = 1
;bindtime = -1
;removeongethit = 1
;ignorehitpause = 0

[State 1002, 速度加算];重力分
type = VelAdd
trigger1 = Time > 63
y = 0.45

[State 1300, End]
type = ChangeState
trigger1 = Time > 63 && (Pos Y >= 0)
value = 50
;value = 1201


;-------------------------------
; Soultaker

[StateDef 9997]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3900
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 9997, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 9997, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

[State 9997, AfterImage]
type = AfterImage
trigger1 = AnimElem = 2
time = 375
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  255,50,50
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 200

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3303)=0
anim = 3303
id = 3303
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

;[State 0, VarSet]
;type = VarSet
;trigger1 = animelem = 6
;v = 11    ;fv = 10
;value = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 1 : Dragon Spirit
[StateDef 9998]
type = A
movetype = A
physics = N
anim = 3901
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8000,2
channel = 0

; hide lifebars
;[State 3000, noBars]
;type = AssertSpecial
;trigger1 = 1
;flag = nobardisplay
;ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

;[State 3000, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElemTime(3) % 10 = 1
;value = S9,2

[State -2, Life]
type = LifeAdd
trigger1 = Projhit(3010) = 1
value = 10

[State 3010, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9011
projhitanim = 9021
projremanim = 9021
projcancelanim = 9021
velocity = (7 - Random/200), 3
offset = 50,-150
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S9,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3010, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9011
projhitanim = 9021
projremanim = 9021
projcancelanim = 9021
velocity = (5 - Random/150), 2.5
accel = 1.25, 0-Random/500
offset = 50,-140
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,1
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S9,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3010, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9011
projhitanim = 9021
projremanim = 9021
projcancelanim = 9021
velocity = (3 - Random/100), 2
accel = 1.5, 0
offset = 50,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S9,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 9998, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Suicide Squad Hyper 
[StateDef 9990]
type = A
movetype = A
physics = N
anim = 3901
ctrl = 0
velset = 0,0

; voice
;[State 9990, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 0
;value = S8000,2
;channel = 0

; hide lifebars
;[State 9990, noBars]
;type = AssertSpecial
;trigger1 = 1
;flag = nobardisplay
;ignorehitpause = 1

[State 9990, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

;[State 3000, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElemTime(3) % 10 = 1
;value = S9,2

[State 1000, Vari疱el de for軋]
type = VarSet
triggerall = !var(0)
trigger1 = Time = 0
v = 5
value = ifelse (command = "StrikerA",3,(ifelse(command = "StrikerA",2,1)))

[State 1000, Vari疱el de for軋]
type = VarSet
triggerall = !var(0)
trigger1 = Time = 0
v = 5
value = ifelse (command = "StrikerB",3,(ifelse(command = "StrikerB",2,1)))

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Harley Quinn"
pos = -10, -60
postype = back
facing = 1
keyctrl = 0
ownpal = 1
ID = 1410;1400+(var(5)*10)
stateno = 1430
;stateno = 1400+(var(5)*10)
sprpriority = 100

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Deadshot"
pos = -10, -60
postype = back
facing = 1
keyctrl = 0
ownpal = 1
ID = 2410;1400+(var(5)*10)
stateno = 2420
;stateno = 1400+(var(5)*10)
sprpriority = 100

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9010
projhitanim = 9020
projremanim = 9020
projcancelanim = 9020
velocity = (7 - Random/200), 3
offset = 50,-160
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,2
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S0,25
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 9010
projhitanim = 9020
projremanim = 9020
projcancelanim = 9020
velocity = (6 - Random/200), 2.5
offset = 50,-140
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,1
pausetime = 4,4
sparkno = S8000
guard.sparkno = S8400
hitsound = S0,25
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 9990, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kantan Enzan
[Statedef 3000]
type = S
movetype = A
physics = S
sprpriority = 2
velset = 0,0
anim = 3000
ctrl = 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

[State 3000, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  128,0,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 3000, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 48
time = 2

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,0
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,1
channel = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 3000, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, HA
damage = ceil(fvar(10)*225), 20
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 15, 15
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -20, -40
hitsound = S10, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1.4, -8.5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4, -8
air.hittime = 12
getpower = 0
fall = 1
fall.recover = 0
nochainID = 1020
envshake.time = 7
envshake.freq = 30
envshake.ampl = -2
envshake.phase = 30

[State 3000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Issen Kousa (Ground)
[Statedef 3100]
type = S
movetype = A
physics = S
juggle = 10
sprpriority = 2
velset = 0,0
anim = 3100
ctrl = 0

[State 3100, VelSet]
type = VelSet
trigger1 = Anim = 3100
x = 3.5

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
anim = S8500
sound = S20,0
pos = -12,-65
darken = 1
poweradd = -1000

[State 3100, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 56
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  128,0,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 3100, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 54
time = 2

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,1
channel = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 13
trigger3 = AnimElem = 24
trigger4 = AnimElem = 33
trigger4 = AnimElem = 41
value = 0,1
channel = 0

[State 3100, Hit]
type = HitDef
triggerall = enemy,stateno != 5040
trigger1 = AnimElem = 5
trigger2 = AnimElem = 25
attr = S, HA
damage = ceil(fvar(10)*40), 10
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -20, -40
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -5.8
air.velocity = -1.6,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0

[State 3100, Hit]
type = HitDef
triggerall = enemy,stateno != 5040
trigger1 = AnimElem = 14
trigger2 = AnimElem = 34
attr = S, HA
damage = ceil(fvar(10)*40), 10
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -20, -7
hitsound = S10, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -5.8
air.velocity = -1.6,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0

[State 3100, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 42
attr = S, HA
damage = ceil(fvar(10)*33), 10
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -14, -35
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1.8, -6.2
air.velocity = -1.8, -6.2
fall = 1
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 1

;---------------------------------------------------------------------------
; Issen Kousa (Going up)
[Statedef 3101]
type = A
movetype = A
physics = N
sprpriority = 2
poweradd = 0
anim = 3101
velset = 2,-8.5
ctrl = 0

[State 3101, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 8
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  128,0,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 3101, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 9
time = 2

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1
channel = 0

[State 3101, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 2
attr = A, HA
damage = ceil(fvar(10)*22), 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -25, -80
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -2.5, -6.5
guard.velocity = -8
air.type = High
air.velocity = -2.5, -6.5
fall = 1
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0

[State 3101, VelSet]
type = VelSet
trigger1 = AnimElem = 5
X = 1.4

[State 3101, Gravity]
type = Gravity
trigger1 = 1

[State 3101, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 3101, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1039
ctrl = 0

