
; Hyper1 (D,DF,F + PP)

[Statedef 3000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0, 0
poweradd = IfElse(PrevStateNo >= 1000,-2000,IfElse(fvar(0)>0,0,-1000))
ctrl = 0
juggle = IfElse((PrevStateNo=[1000,2999]),0,8)

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 107
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 55

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,=0
value = 0,18
channel = 0

[State 1500, Grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,3

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, SuperPause]
type = Pause
trigger1 = Time = 0
time = 28
movetime = 28

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0

; ダブルニープレス
[Statedef 3001]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 3001
velset = 7.5, 0


[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 3,<0
value = SCA

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,=0
value = 0,19
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12,=0
value = 0,20
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8,=0
value = 1,4

[State 1110,PosSet]
type = PosSet
trigger1 = Time = 0
trigger2 = AnimElem = 12
y = -1

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1110,PosSet]
type = PosSet
trigger1 = AnimElem = 8
y = 0

[State 1100,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
statetype = S
physics = S

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 9

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 2

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 20
x = 0

[State 1100,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
statetype = A
physics = N

[State 200,VarSet(32)]
type = VarSet
trigger1 = Time = 0
var(13) = 0
ignorehitpause = 1

[State 200,VarSet(33)]
type = Varadd
trigger1 = MoveHit
var(13) = 1

[State 700,MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit

[State 1101,HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A, HA
animtype = Hard
damage    = 50
getpower = 0,0
guardflag = M
hitflag = MAF
pausetime = 4,6
sparkno = 2
guard.sparkno = 3
sparkxy = 0,-85
hitsound  = S2,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1
air.hittime = 13
air.velocity = -3,-7
air.cornerpush.veloff = 0
yaccel = .55
air.juggle = 8
air.fall = 1
fall.recover = 0

[State 1101,HitDef]
type = HitDef
trigger1 = AnimElem = 10
attr = A, HA
animtype = Hard
damage    = 50
getpower = 0,0
guardflag = M
hitflag = MAF
pausetime = 4,6
sparkno = 2
guard.sparkno = 3
sparkxy = 0,-45
hitsound  = S2,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1
air.hittime = 13
air.velocity = -3,-7
air.cornerpush.veloff = 0
yaccel = .55
air.juggle = 8
air.fall = 1
fall.recover = 0

[State 1101,HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = A, HA
animtype = Hard
damage    = 50
getpower = 0,0
guardflag = M
hitflag = MAF
pausetime = 4,6
sparkno = 2
guard.sparkno = 3
sparkxy = 0,-45
hitsound  = S2,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1
air.hittime = 13
air.velocity = -3,-7
air.cornerpush.veloff = 0
yaccel = .55
air.juggle = 8
air.fall = 1
fall.recover = 0
fall = 1

[State 1000, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Hyper 1
[StateDef 3100]
type = A
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,1
volume = 200

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1
poweradd = -1000

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 169

[State 99, Helper]
type = Helper
trigger1 = AnimElem = 2
stateno = 3150
ID = 3150
helpertype = Normal
postype = p1
pos = 35, -58
ownpal = 1

;-


[State 2300, Return]
type = ChangeState
trigger1 = time = 170
value = 3010
ctrl = 0

[StateDef 3010]
type = A
movetype = H
physics = N
anim = 1010
ctrl = 0
velset = 0,0
sprpriority = 0

[State 2300, Return]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--
; Batarang Helper
[Statedef 3150]
type = A
movetype = A
physics = N
velset = 12.55
juggle  = 4
ctrl = 0
anim = 1050
poweradd = 0
sprpriority=1

[State 3150, yellow Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 300, 300, 300
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 3150]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,3

[State 3150, Boomerang]
type = VelAdd
trigger1 = 1
x = -0.3

[State 3150, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1051
ignorehitpause = 1


[State 3150, HitDef]
type = HitDef
trigger1 = animelem = 4 && hitcount < 2
attr = A, SP
damage    = 11,2
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = 2
guard.sparkno = 3
sparkxy = -10,0
hitsound  = S2,1
guardsound = S3,0
guard.sparkno = s911
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
id = 1050

[State 3150, 5 CatchDef]
type = HitDef
trigger1 = RootDist X <= 20 && RootDist X >= -20
trigger1 = root,Statetype != A && root,Movetype = I
trigger1 = Vel X <= 0
attr = A, SP
damage = 0
animtype = Hard
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = 10, 0
hitsound   = S12,5
ground.type = High
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
air.animtype = Back
;air.velocity = -2.5,-5
;air.juggle = 3
affectteam = F
p2stateno = 1040
p2getp1state = 0
ID = 9999
numhits = 0
givepower = 40


[State 3150]
type = DestroySelf
trigger1 = BackEdgeBodyDist <= -50
trigger2 = time = 300
trigger3 = Time >= 50
trigger3 = RootDist X >= -10
trigger3 = RootDist X <= 10
trigger3 = RootDist Y >= 0
trigger3 = RootDist Y <= 150


;
; Amalgam Hyper
; (incomplete -- only the intro portraits are done at this point)
[StateDef 4000]
type    = S
physics = S
ctrl = 1
anim = 0        ; change this to the anim char will perform when the Hyper starts
velset = 0,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1


[State 4000, Char Portrait]
type = Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1

[State 4000, Partner Portrait]
type = Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1


;==================================================================================================================

[Statedef 3333]
type = S
movetype = A
physics = S
ctrl = 0
anim = 12
velset = 0, 0
poweradd = IfElse(PrevStateNo >= 1000,-2000,IfElse(fvar(0)>0,0,-1000))
ctrl = 0
juggle = IfElse((PrevStateNo=[1000,2999]),0,8)

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,=0
value = 0,18
channel = 0

[State 1500, Grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,3

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, SuperPause]
type = Pause
trigger1 = Time = 0
time = 28
movetime = 28

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3334
ctrl = 0

; ダブルニープレス
[Statedef 3334]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 3333


[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 176

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 3,<0
value = SCA

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 0, 4


[State 1110,PosSet]
type = PosSet
trigger1 = Time = 0
trigger2 = AnimElem = 12
y = -1

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 4

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 19
x = -3

[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 25
x = 0


[State 1100,VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0


[State 1100,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
statetype = A
physics = N

[State 200,VarSet(32)]
type = VarSet
trigger1 = Time = 0
var(13) = 0
ignorehitpause = 1

[State 200,VarSet(33)]
type = Varadd
trigger1 = MoveHit
var(13) = 1

[State 700,MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit

[State 1101,HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
attr = A, HA
animtype = Hard
damage    = 30,2
getpower = 0,0
guardflag = M
hitflag = MAF
pausetime = 4,6
sparkno = 2
guard.sparkno = 3
sparkxy = 0,-85
hitsound  = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4.5
air.hittime = 13
air.velocity = -3,-7
air.cornerpush.veloff = 0
yaccel = .55
air.juggle = 8
air.fall = 1
fall.recover = 0

[State 1000, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 3335
ctrl = 1

;
; energy uppercut
[Statedef 3335]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 65
ctrl = 0
velset = 9,0
anim =3334
sprpriority = 2

[State 3335, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 15
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 20
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 25
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 30
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 35
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 40
value = 0, 4

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 45
value = 0, 4

[State 1050, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
attr = S, SA
animtype  = high
damage    = 30,2
guardflag = MA
pausetime = 12,12
sparkno = 2
guard.sparkno = 3
sparkxy = -10,-70
hitsound   = S2,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -5.5,-3
yaccel = .45
fall = 0

[State 1050, 3]
type = HitDef
trigger1 = AnimElem = 14
attr = S, SA
animtype  = Up
damage    = 15,12
guardflag = MA
pausetime = 12,12
sparkno = 2
guard.sparkno = 3
sparkxy = -10,-70
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5, -7
air.velocity = -5.5,-6
yaccel = .45
fall = 1


[State 1050, 4]
type = Velset
trigger1 = AnimElem = 2
x = 0

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;
; Hyper 3
[StateDef 3200]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1500
velset = 0,0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = time = 13
value = S1060,0

[State 1500, Grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,3

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 33

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1
poweradd = -1000

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1500, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1301
postype = p1
bindtime = -1
pos = 106,-84
ontop = 1

[State 3200, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s2,1
guardsound = S3,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 40
ground.velocity = 12
guard.velocity = -5
air.velocity = 6,2
p1stateno = 3201

[State 3200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 3201]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3201
ctrl = 0
sprpriority = 2

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 144

[State 3201, grunt]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 8
trigger4 = animelem = 11
trigger5 = animelem = 14
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
trigger9 = animelem = 27
x = 16

[State 3201, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 19
trigger7 = animelem = 22
trigger8 = animelem = 25
attr = S, HA
animtype  = Hard
damage    = 33,3
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 0,5
sparkno =  s8022
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s2,0
guardsound = S3,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3;3
guard.velocity = -3
air.velocity = -2.2;2,2

[State 3201, HitDef]
type = HitDef
trigger1 = animelem = 28
attr = S, HA
animtype  = Hard
damage    = 40,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s2,2
guardsound = s3,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 40
ground.velocity = -5
guard.velocity = -5
air.velocity = 2,2
p1stateno = 3202
p2stateno = 5300

[State 3201, next]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;
[Statedef 3202]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3202
ctrl = 0
sprpriority = 2

[State 3202, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "stick"
ID = 3204
sprpriority = 10
stateno = 3204
pos = 0, 0
ownpal = 1

[State 3202, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "Light Beam"
ID = 3203
sprpriority = 10
stateno = 3203
pos = 0, 0
ownpal = 1

[State 3202, grunt]
type = Velset
trigger1 = animelem = 5
x = -5
y = 2

[State 3202, next]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1

;-
[Statedef 3203]
type    = A
movetype= A
physics = N
anim = 3203
juggle  = 5
velset = 0,0
ctrl = 0

[State 3203, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = p2stateno = 1550
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S1060,2

[State 3203, Width]
type = Width
trigger1 = 1
player = -25,-25

[state 3203, a0]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 3203, A1]
type = PlaySnd
trigger1 = time = 0
value = 20,4
channel = 0

[State 3203, A2]
type = HitDef
trigger1 = Time = 0
attr = A, SP
damage    = 100,5
hitflag = MAFD
guardflag = MA
pausetime = 0,6
sparkno = -1;S8500
guard.sparkno = S8550
sparkxy = -10,-25
hitsound   = S5,4
guardsound = S7,1
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3,-4
air.velocity = -3,-3
guard.velocity = -5
fall = 1
palfx.time = 33
palfx.add  = -90,0,140
palfx.sinadd = 100,100,100,10
Palfx.color = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 1550

[State 3203, A5]
type = EnvShake
trigger1 = animelem = 4
time = 15
ampl = -4

[State 3203, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3203, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1

[State 3203, A6]
type = DestroySelf
trigger1 = animtime = 0

;-
[Statedef 3204]
type    = A
movetype= A
physics = N
anim = 3204
juggle  = 5
velset = 0,0
ctrl = 0

[State 3204, A6]
type = DestroySelf
trigger1 = animtime = 0

;--
[Statedef 3400]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 1080
Getpower = -1000
velset = 0, 0

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30

[State 183, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,4

[State 3400, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45

[State 3400, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Seeker Batarang
ID = 3450
stateno = 3450
pos = 65,-81
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;--
; Heat Seeker Batarang helper
[StateDef 3450]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 1070
sprpriority = 4

[State 3450, fx]
type=explod
trigger1= numexplod(3451) < 1
anim=3451
ID=3451
sprpriority=5
postype=p1
bindtime=-1
removeongethit=1
ownpal=1

[State 3450, InitVelSet]
type = VelSet
trigger1 = Var(20) = 0 && time = 0
x = 3

[State 3450, ProjHitOverride1]
type = NotHitBy
trigger1 = 1
value = SCA, AP

[State 3450, HeatSeeker 1]
type = VelAdd
triggerall = Var(20) <= 5 && Time < 500
triggerall = roundstate <= 2
trigger1 = P2Dist X > 0
trigger1 = Vel X < 11
;ignorehitpause = 1
x = 0.7

[State 3450, HeatSeeker 2]
type = VelAdd
triggerall = Var(20) <= 5 && Time < 500
triggerall = roundstate <= 2
trigger1 = P2Dist X < 0
trigger1 = Vel X > -11
;ignorehitpause = 1
x = -0.7

[State 3450, HeatSeeker 3]
type = VelAdd
triggerall = Var(20) <= 5 && Time < 500
triggerall = roundstate <= 2
triggerall = Vel Y < 10
trigger1 = P2Dist Y > 70 && P2StateType != C
trigger2 = P2Dist Y > 30 && P2StateType = C
;ignorehitpause = 1
y = 0.5

[State 3450, HeatSeeker 4]
type = VelAdd
triggerall = Var(20) <= 5 && Time < 500
triggerall = roundstate <= 2
triggerall = Vel Y > -10
trigger1 = P2Dist Y < 70 && P2StateType != C
trigger2 = P2Dist Y < 30 && P2StateType = C
;ignorehitpause = 1
y = -0.5

[State 3450, HitDef]
type = HitDef
Trigger1 = !movecontact && Var(21) <= 0
;trigger2 = time = 0
attr = S, HP
hitflag = MAF
guardflag = MA
priority = 5, Hit
animtype  = medium
pausetime = 1,30
guard.dist = 0
damage = 40, 6
getpower = 0
kill = 1
hitsound   = 5,4
guardsound = 6,0
guard.sparkno = s910
pausetime = 0
sparkno = S900
sparkxy = -10,0

[State 3450, HitCounterInc]
type = VarAdd
trigger1 = MoveContact
v = 20
value = 1

[State 3450, Timer Init]
type = VarSet
trigger1 = MoveContact
v = 21
value = 20

[State 3450, Timer Inc.]
type = VarAdd
trigger1 = 1
v = 21
value = -1

[State 3450, Turn]
type = Turn
trigger1 = Vel X <= 0

[State 3450, Destroy]
type = DestroySelf
triggerall = Var(20) > 5 || RoundState > 2
trigger1 = screenpos x > 360
trigger2 = screenpos x < -40
trigger3 = screenpos y < -30
trigger4 = screenpos y > 260

[State 3450, Loop]
type = ChangeState
trigger1 = Var(20) <= 5 && MoveContact
value = 3450

[State 3450, ExitStageLeft]
type = VelAdd
trigger1 = Var(20) > 5
trigger2 = RoundState > 2
x = 0.7

[State 3450, End if evaded]
type = VarSet
trigger1 = time = 100
v = 20
value = 6

;
[Statedef 3500]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3500
ctrl = 0
juggle =6
sprpriority = -1

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  150,150,250
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 119

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1
poweradd = -1000

;[State 3000, 2]
;type = RemoveExplod
;trigger1 = time = 0

[State 3500, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
value = 1,1

[State 3500, BatarangNa]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
helpertype = normal
name = "Batarang"
ID = 3550
pos = 10,-95
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNa]
type = Helper
trigger1 = AnimElem = 8
trigger2 = Animelem = 16
helpertype = normal
name = "Batarang"
ID = 3550
pos = 37, -73
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNc]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
helpertype = normal
name = "Batarang"
ID = 3550
pos = 20, -75
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNc]
type = Helper
trigger1 = AnimElem = 8
trigger2 = Animelem = 16
helpertype = normal
name = "Batarang"
ID = 3550
pos = 47, -53
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNb]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
helpertype = normal
name = "Batarang"
ID = 3550
pos = 10, -55
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNb]
type = Helper
trigger1 = AnimElem = 8
trigger2 = Animelem = 16
helpertype = normal
name = "Batarang"
ID = 3550
pos = 37, -33
postype = p1
stateno = 3550
priority = 4
ownpal = 1

[State 3500, BatarangNb]
type = Helper
trigger1 = Animelem = 20
helpertype = normal
name = "Batarang"
ID = 1070
pos = 20, -75
postype = p1
stateno = 1070
priority = 4
ownpal = 1

[State 3500, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--
; Batarang Helper
[Statedef 3550]
type = A
movetype = A
physics = N
velset = 12.55
juggle  = 4
ctrl = 0
anim = 1050
poweradd = 0
sprpriority=1

[State 3150, yellow Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 300, 300, 300
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 3550]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,1

[State 1050, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1051
ignorehitpause = 1

[State 3550, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, SP
damage    = 12,2
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = 2
guard.sparkno = 3
sparkxy = -10,0
hitsound  = S2,1
guardsound = S3,0
guard.sparkno = s911
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
id = 1050
p1stateno = 1051

[State 3550]
type = DestroySelf
trigger1 = BackEdgeBodyDist <= -50
trigger2 = time = 300
trigger3 = Time >= 50
trigger3 = RootDist X >= -10
trigger3 = RootDist X <= 10
trigger3 = RootDist Y >= 0
trigger3 = RootDist Y <= 150

