;---------------------------------------------------------------------------
; Shingetsu
[Statedef 1000]
type = S
movetype = A
physics = S
poweradd = 0
sprpriority = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, VelSet]
type = VelSet
triggerall = Var(5) = 1
trigger1 = Anim = 1000
x = 4.5

[State 1000, VelSet]
type = VelSet
triggerall = Var(5) = 2
trigger1 = Anim = 1000
x = 6

[State 1000, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "x"
value = 1010

[State 1000, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "a"
value = 1020

[State 1000, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "y"
value = 1030

[State 1000, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "b"
value = 1040

[State 1000, VelSet]
type = VelSet
trigger1 = Animtime = 0
x = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shingetsu EX
[Statedef 1001]
type = S
movetype = A
physics = S
poweradd = -500
sprpriority = 2
velset = 0,0
anim = 1000
ctrl = 0

[State 1001, VelSet]
type = VelSet
trigger1 = Anim = 1000
x = 8

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1001,0
channel = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 25,0
channel = 2

[State 1001, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  128,0,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 1001, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 20
time = 2

[State 1001, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "x"
value = 1010

[State 1001, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "a"
value = 1020

[State 1001, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "y"
value = 1030

[State 1001, ChangeState]
type = ChangeState
triggerall = Time >= 3
trigger1 = command = "b"
value = 1040

[State 1001, VelSet]
type = VelSet
trigger1 = Animtime = 0
x = 0

[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shingetsu > X
[Statedef 1010]
type = S
movetype = A
physics = S
sprpriority = 2
poweradd = IfElse(PrevStateNo = 1001,0,50)
anim = 1010
ctrl = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1010,0
channel = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 1010, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = ceil(fvar(10)*95), 5
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10, 10
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -20, -40
hitsound = S10, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -5.3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.6,-3
air.hittime = 12
getpower = IfElse(PrevStateNo = 1001,0,70)

[State 1010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shingetsu > A
[Statedef 1020]
type = S
movetype = A
physics = S
sprpriority = 2
poweradd = IfElse(PrevStateNo = 1001,0,50)
anim = 1020
ctrl = 0

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1020,0
channel = 1

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 1020, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = ceil(fvar(10)*95), 5
animtype = Back
guardflag = L
hitflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -20, -7
hitsound = S10, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -1, -9.5
airguard.velocity = -2,-1
fall = 1
fall.recover = 1
fall.recovertime = 120
air.type = High
air.hittime = 12
yaccel = .5
getpower = IfElse(PrevStateNo = 1001,0,70)
ID = IfElse(PrevStateNo = 1001,1021,1020)

[State 1020, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10)>= 0
movetype = I

[State 1020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shingetsu > Y Ground
[Statedef 1030]
type = S
movetype = A
physics = S
sprpriority = 2
juggle = 8
poweradd = IfElse(PrevStateNo = 1001,0,50)
anim = 1030
ctrl = 0

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1030,0
channel = 1

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 1030, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = S, SA
damage = ceil(fvar(10)*75), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -14, -35
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1.8, -5.5
guard.velocity = -8
air.type = High
air.velocity = -1.8, -5.5
air.hittime = 18
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = IfElse(PrevStateNo = 1001,0,70)
nochainID = 1100, 1105

[State 1030, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035
ctrl = 0

;---------------------------------------------------------------------------
; Shingetsu > Y Going up
[Statedef 1035]
type = A
movetype = A
physics = N
poweradd = 30
sprpriority = 2
anim = 1035
velset = 2,-8.5
ctrl = 0

[State 1035, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1
channel = 0

[State 1035, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 2
attr = A, SA
damage = ceil(fvar(10)*35), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
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
air.hittime = 18
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0
nochainID = 1100, 1105

[State 1035, VelSet]
type = VelSet
trigger1 = AnimElem = 5
X = 1.4

[State 1035, Gravity]
type = Gravity
trigger1 = 1

[State 1035, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 1035, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1039
ctrl = 0

;---------------------------------------------------------------------------
; Landing from Shingetsu > Y
[Statedef 1039]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1039

[State 1039, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1039, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shingetsu > B
[Statedef 1040]
type = S
movetype = I
physics = S
poweradd = 0
sprpriority = 2
poweradd = 0
anim = 1040
ctrl = 0

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 2

[State 1040, VelMul]
type = VelMul
trigger1 = AnimElem = 1, > 0
x = 1

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1040, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1040,0
channel = 1

[State 1040, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shinko Enzan X
[Statedef 1100]
type = A
movetype = A
physics = N
poweradd = 30
juggle = 7
sprpriority = 2
anim = 1100
ctrl = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0
channel = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 1100, Gravity]
type = Gravity
trigger1 = Time > 4

[State 1100, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = A, SA
damage = ceil(fvar(10)*85), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -25, -12
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -3.1, -6.2
guard.velocity = -8
air.type = High
air.velocity = -3.1, -6.2
air.hittime = 15
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 70,35
ID = 1100

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1190
ctrl = 0

;---------------------------------------------------------------------------
; Shinko Enzan Y
[Statedef 1105]
type = A
movetype = A
physics = A
poweradd = 50
juggle = 7
sprpriority = 2
anim = 1105
velset = 1.6,-3.5
ctrl = 0

[State 1105, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0
channel = 1

[State 1105, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 1105, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = A, SA
damage = ceil(fvar(10)*95), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -25, -12
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -3.1, -6.2
guard.velocity = -8
air.type = High
air.velocity = -3.1, -6.2
air.hittime = 15
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 70,35
ID = 1105

[State 1105, Gravity]
type = Null;Gravity
trigger1 = Time > 6

[State 1105, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 1105, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1190
ctrl = 0

;---------------------------------------------------------------------------
; Landing from Shinko Enzan
[Statedef 1190]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1190

[State 1190, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shinko Enzan EX
[Statedef 1110]
type = A
movetype = A
physics = A
poweradd = -500
sprpriority = 2
anim = 1110
velset = 1.6,-3.5
ctrl = 0

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 25,0
channel = 2

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1110,0
channel = 1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 1110, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  128,0,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add;none
Length = 20
FrameGap = 4

[State 1110, AfterImageTime]
type = AfterImageTime
trigger1 = Time <= 22
time = 2

[State 1110, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 5
attr = A, SA
damage = ceil(fvar(10)*80), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -25, -12
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -3.1, -6.2
guard.velocity = -8
air.type = High
air.velocity = -3.1, -6.2
air.hittime = 15
fall = 1
fall.recover = 0
getpower = 0

[State 1110, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 6
attr = A, SA
damage = ceil(fvar(10)*30), 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = S8120
guard.sparkno =	S8400
sparkxy = -25, -12
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -3.1, -6.2
guard.velocity = -8
air.type = High
air.velocity = -3.1, -6.2
air.hittime = 15
fall = 1
fall.recover = 0
getpower = 0

[State 1110, Gravity]
type = Null;Gravity
trigger1 = Time > 6

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 1110, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1199
ctrl = 0

;---------------------------------------------------------------------------
; Landing from Shinko Enzan EX
[Statedef 1199]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1199

[State 1199, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1199, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Calling Strikers
; Harley Quinn

[Statedef 1400]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1400
ctrl = 0
sprpriority = 2

; Cooldown Timer
[State 200, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 14
value = 150

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !time
;value = S200,0

[State 1000, Variável de força]
type = VarSet
triggerall = !var(0)
trigger1 = Time = 0
v = 5
value = ifelse (command = "StrikerA",3,(ifelse(command = "StrikerA",2,1)))

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
stateno = 1420
;stateno = 1400+(var(5)*10)
sprpriority = 100

[State 1010, Fim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------[ Harley Quinn ]-----------------------------------

[Statedef 1420]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 8,6
poweradd = 0
anim = 1420
ctrl = 0
sprpriority = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S250,0

[State 10000, 1]
type = HitOverride
trigger1 = 1
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1422

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 1010, Fim]
type = ChangeState
trigger1 = Pos Y >=0
value = 1421

;------------[ Harley Quinn (2nd)]-----------------------------------

[Statedef 1430]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 8,6
poweradd = 0
anim = 1420
ctrl = 0
sprpriority = 100

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !time
;value = S250,0

[State 10000, 1]
type = HitOverride
trigger1 = 1
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1422

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 1010, Fim]
type = ChangeState
trigger1 = Pos Y >=0
value = 1421

; ---------------------- Attacking
[Statedef 1421]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1421
ctrl = 0
sprpriority = 100

[State 8510, Explode]
type = Explod
trigger1 = !time
anim = 8510
ID = 8510
postype = P1
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = S2,2

;[State -3, Aterrisagem]
;type = PlaySnd
;trigger1 = !time
;value = 8100,0

[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1525
projanim = 1525
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 43, -42
velocity = 5
attr = S, NP
damage   = 50
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S5, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 128,0,128
afterimage.palcontrast = 128,0,128
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[State 1010, Fim]
type = ChangeState
trigger1 = !AnimTime
value = 1423

; ---------------------- End
[Statedef 1423]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -10,-6
poweradd = 0
anim = 1423
ctrl = 0
sprpriority = 100

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !time
;value = S1100,1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 0, DestroySelf]
type = DestroySelf
trigger1 = BackEdgeDist < -25

; ---------------------- hurt
[Statedef 1422]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -10,-6
poweradd = 0
anim = 1422
ctrl = 0
sprpriority = 100

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 0, DestroySelf]
type = DestroySelf
trigger1 = BackEdgeDist < -25

;---------------------------------------------------------------------------------------------
;Calling Strikers
; Deadshot

[Statedef 2400]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1400
ctrl = 0
sprpriority = 2

; Cooldown Timer
[State 200, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 15
value = 200

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !time
;value = S200,0

[State 1000, Variável de força]
type = VarSet
triggerall = !var(0)
trigger1 = Time = 0
v = 5
value = ifelse (command = "StrikerB",3,(ifelse(command = "StrikerB",2,1)))

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

[State 1010, Fim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------[ Deadshot ]-----------------------------------

[Statedef 2420]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 8,6
poweradd = 0
anim = 2420
ctrl = 0
sprpriority = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S250,1

[State 10000, 1]
type = HitOverride
trigger1 = 1
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2422

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 1010, Fim]
type = ChangeState
trigger1 = Pos Y >=0
value = 2421

; ---------------------- Attacking
[Statedef 2421]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 2421
ctrl = 0
sprpriority = 100

[State 8510, Explode]
type = Explod
trigger1 = !time
anim = 8510
ID = 8510
postype = P1
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = S2,2

;[State -3, Aterrisagem]
;type = PlaySnd
;trigger1 = !time
;value = 8100,0

[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 2525
projanim = 2525
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 30, -100
velocity = 10
attr = S, NP
damage   = 50
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S170, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 128,0,128
afterimage.palcontrast = 128,0,128
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[State 1010, Fim]
type = ChangeState
trigger1 = !AnimTime
value = 2423

; ---------------------- End
[Statedef 2423]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -10,-6
poweradd = 0
anim = 2423
ctrl = 0
sprpriority = 100

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !time
;value = S1100,1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 0, DestroySelf]
type = DestroySelf
trigger1 = BackEdgeDist < -25

; ---------------------- hurt
[Statedef 2422]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -10,-6
poweradd = 0
anim = 2422
ctrl = 0
sprpriority = 100

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 0, DestroySelf]
type = DestroySelf
trigger1 = BackEdgeDist < -25

;===============================================================================
;katana_wave
;===============================================================================
[statedef 2000]
type=s
movetype=a
physics=s
juggle=0
anim=2000
ctrl=0
velset=0,0
sprpriority=0
poweradd=ifelse(random<500,10,15)

; Cooldown Timer
[State 200, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 13
value = 50

[state nothitby]
type=nothitby
trigger1=time=[0,20]
value=sca,aa,at,ap

[state posset]
type=posset
trigger1=1
y=0

[state effect]
type=playsnd
trigger1=animelemtime(4)=0
value=1,2

[state effect/2]
type=playsnd
trigger1=animelemtime(5)=0
value=7,10

;[state voz]
;type=playsnd
;trigger1=animelemtime(3)=0
;value=4,20

[state palfx]
type=palfx
trigger1=animelemtime(5)=0
add=0,50,255
sinadd=0,-50,-255,10
time=5

[state helper]
type=helper
trigger1=animelemtime(4)=0
helpertype=normal
stateno=2001
id=2001
postype=p1
pos=0,-115
name="cutter"
ontop=1
ownpal=1
bindtime=1
removeongethit=1
ignorehitpause=1
sprpriority=0
size.xscale=.9
size.yscale=.9

[state spark]
type=explod
trigger1=animelemtime(5)=0
anim=6010+(random%2)
id=6010
postype=p1
pos=55,5
name="aire"
ownpal=1
bindtime=-1
ignorehitpause=1
removeongethit=1
sprpriority=5
scale=.6,.6

[state changestate]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;==================
;helper katana_wave
;==================
[statedef 2001]
type=a
movetype=a
physics=n
juggle=0
anim=6300
ctrl=0
velset=0,0
sprpriority=99
poweradd=ifelse(random<500,10,20)

[state nothitby]
type=nothitby
trigger1=1
value=sca
time=-1

[state velset]
type=velset
trigger1=1
x=7;2

[state hitdef]
type=hitdef
trigger1=time=0
attr=s,sa
animtype=light
damage=65,12
hitflag=maf
guardflag=ma
pausetime=4,14
sparkno=S8120
sparkxy=-25,50
guard.sparkno=S8400
hitsound=s2,20
guardsound=s2,0
ground.type=low
fall.animtype=hard
ground.slidetime=10
ground.hittime=20
air.hittime=10
ground.ctrltime=20
ground.velocity=-4
air.velocity=-3,-3
ground.cornerpush.veloff=0
air.cornerpush.veloff=0
fall=0
air.fall=1
fall.recover=0
envshake.time=6
envshake.ampl=3
palfx.time=7
palfx.add=10,10,100
palfx.sinadd=-20,-20,-89,10

[state destroyself]
type=destroyself
trigger1=animtime=0

;===============================================================================
;kunai
;===============================================================================
[statedef 2100]
type=s
movetype=a
physics=s
juggle=0
anim=2100
ctrl=0
velset=0,0
sprpriority=0
poweradd=ifelse(random<500,10,15)

; Cooldown Timer
[State 200, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 16
value = 75

[state nothitby]
type=nothitby
trigger1=time=[0,20]
value=sca,aa,at,ap

[state posset]
type=posset
trigger1=1
y=0

[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1526
projanim = 1526
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 40, -80
velocity = 5, (2 - Random/250)
;velocity = 5
attr = S, NP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S5, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 128,0,128
afterimage.palcontrast = 128,0,128
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[State 0, 2]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1526
projanim = 1526
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 35, -75
velocity = 5, (2 - Random/250)
;velocity = 5
attr = S, NP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S5, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 128,0,128
afterimage.palcontrast = 128,0,128
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[State 0, 3]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1526
projanim = 1526
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 30, -70
velocity = 5, (2 - Random/250)
;velocity = 5
attr = S, NP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S5, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 128,0,128
afterimage.palcontrast = 128,0,128
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[state changestate]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===============================================================================
;throwing_star
;===============================================================================
[statedef 2200]
type=s
movetype=a
physics=s
juggle=0
anim=2100
ctrl=0
velset=0,0
sprpriority=0
poweradd=ifelse(random<500,10,15)

; Cooldown Timer
[State 200, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 17
value = 75

[state nothitby]
type=nothitby
trigger1=time=[0,20]
value=sca,aa,at,ap

[state posset]
type=posset
trigger1=1
y=0

[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1527
projanim = 1527
projpriority = 1
projshadow = -1
projscale = 1,1
offset = 40, -80
velocity = 5, (2 - Random/250)
;velocity = 5
attr = S, NP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFD
pausetime = 10,10
hitsound   = S10, 0
sparkno = S8100
sparkxy = 0,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -10,-1
air.juggle = 6
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.ampl = -5
afterimage.time = 220
afterimage.length = 60
afterimage.palbright = 255,50,50
afterimage.palcontrast = 255,50,50
afterimage.timegap = 1
afterimage.framegap = 1
afterimage.trans = add
ownpal = 1

[state changestate]
type=changestate
trigger1=animtime=0
value=0
ctrl=1