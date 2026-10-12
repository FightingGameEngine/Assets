
[Statedef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0

[State 40, VarSet]
type = VarSet
trigger1 = 1
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, VarSet]
type = VarSet
trigger1 = !Time
var(2) = ifElse(command = "HighJump", 3, 0)

[State 40, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(2) = 3

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && var(2) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



[Statedef 101]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 101
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1100,2
volume = 50

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 30

[State 0, VelSet]
type = VelSet
triggerall = prevstateno = 50||prevstateno = 80
trigger1 = animelem = 2
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2

[State 0, Soru]
type = Explod
trigger1 = time = 2
anim = 9028
ID = 101
pos = 0,-30
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = I
physics = A

[State 101, End]
type = ChangeState
trigger1 = ifelse(statetype = A,time = 13,animtime = 0)
value = ifelse(statetype = A,50,0)
ctrl = 1



[Statedef 105]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 105
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1100,2
volume = 50

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -30

[State 0, VelSet]
type = VelSet
triggerall = prevstateno = 50||prevstateno = 80
trigger1 = animelem = 2
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = -2

[State 0, Soru]
type = Explod
trigger1 = time = 2
anim = 9028
ID = 101
pos = 0,-30
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = I
physics = A

[State 200, End]
type = ChangeState
trigger1 = ifelse(statetype = A,time = 13,animtime = 0)
value = ifelse(statetype = A,50,0)
ctrl = 1



[Statedef 107]
type    = A
physics = A
velset = 0,0
sprpriority = 1
ctrl = 0

[State 107, ch]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 111
ctrl = 1

[State 107, aa]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "a"
value = 600
[State 107,ab]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "b"
value = 610
[State 107, ac]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "c"
value = 620
[State 107, ba]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "x"
value = 630
[State 107,bb]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "y"
value = 640
[State 107, bc]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "z"
value = 650

[State 107, a1]
type = playsnd
trigger1 = !time
value = 50,0
channel = 6
ignorehitpause = 1

[State 100, 0]
type = VelSet
trigger1 = animelem = 1
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)

[State 107, a1]
type = VelSet
trigger1 = !time
x = 9

[state 107, a2]
type = VelAdd
trigger1 = Time >=0
y = -.40

[State 107, a3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 107, 1]
type = AfterImage
trigger1 = Time = 0
time = 17
length = 9
TimeGap  =1
FrameGap = 2
palcolor = 256
PalAdd = 0,0,0
Trans = Add
PalContrast =  255, 0, 0
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50

[State 107, a7]
type = ChangeState
trigger1 = Time >= 15
value = 51
ctrl =1



[Statedef 108]
type    = A
physics = A
velset = 0,0
sprpriority = 1
ctrl = 0

[State 108, ch]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 115
ctrl = 1

[State 108, aa]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "a"
value = 600
[State 108,ab]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "b"
value = 610
[State 108, ac]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "c"
value = 620
[State 108, ba]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "x"
value = 630
[State 108,bb]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "y"
value = 640
[State 108, bc]
type = ChangeState
trigger1 = animelemtime(2) >= 110
trigger1 = Command = "z"
value = 650

[State 108, a1]
type = playsnd
trigger1 = !time
value = 50,0
channel = 6
ignorehitpause = 1

[State 108, a1]
type = VelSet
trigger1 = !time
x = -9

[state 108, a2]
type = VelAdd
trigger1 = Time >=0
y = -.40

[State 108, a3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 108, 1]
type = AfterImage
trigger1 = Time = 0
time = 17
length = 9
TimeGap  =1
FrameGap = 2
palcolor = 256
PalAdd = 0,0,0
Trans = Add
PalContrast =  255, 0, 0
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50

[State 108, a7]
type = ChangeState
trigger1 = Time >= 15
value = 51
ctrl =1















[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181+random%3



[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 180, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 180, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[Statedef 182]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 182, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[Statedef 183]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[Statedef 190]
type = S

[State 190, ChangeState]
type = ChangeState
triggerall = enemy,name = "Hina"
trigger1 = Time = 0
value = 192

[State 190, ChangeState]
type = ChangeState
trigger1 = Time = 0
value = 191



[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Time = 25
value = 190,0
channel = 1

[State 191, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Time = 25
value = 190,1
channel = 1

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Time = 90
value = 190,0
channel = 1

[State 192, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



[Statedef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 195
sprpriority = 2


[State 195, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 18
value = 125

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 195, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 700]
type = U
movetype = I
physics = U
anim = IfElse(StateType = S,700,701)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 700, CtrlSet]
type = CtrlSet
trigger1 = (Time > 5) && (StateType = S)
value = 1

[State 700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 700, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 700, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 700, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 700, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 700, Explod]
type = Explod
triggerall = StateType = S
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 25,-75
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, Explod]
type = Explod
triggerall = StateType = C
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 25,-45
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, End]
type = ChangeState
trigger1 = (!AnimTime)
value = IfElse(StateType = S,0,11)
ctrl = 1



[Statedef 702]
type = A
movetype = I
physics = N
anim = 702
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 702, CtrlSet]
type = CtrlSet
trigger1 = (Time > 4)
value = 1

[State 702, NotHitBy]
type = NotHitBy
trigger1 = (Time < 14)
value = SCA

[State 702, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 702, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 702, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 14

[State 702, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 702, Null]
type = Null
trigger1 = (!Time)
trigger1 = (FVar(0) := Vel X) && (FVar(1) := Vel Y)

[State 702, VelSet]
type = VelSet
trigger1 = (Time)
x = 0
y = 0
persistent = 0

[State 702, VelSet]
type = VelSet
trigger1 = (Time > 14)
x = FVar(0)
y = FVar(1)
persistent = 0

[State 702, VelAdd]
type = VelAdd
trigger1 = (Time > 14)
y = 0.45

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 702, Explod]
type = Explod
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 26,-85
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 702, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
ctrl = 1



[Statedef 703]
type = A
movetype = I
physics = N
anim = 703
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 703, ParentVarSet]
type = ParentVarSet
trigger1 = (!Time)
var(0) = 8
ignorehitpause = 1

[State 703, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Command != "holdfwd")






[Statedef 5201]
type = S
movetype = H
physics = N
anim = 5200
facep2 = 1

[State 5201, 1]
type = Posset
trigger1 = Time = 0
y = 0

[State 5201, 2]
type = Velmul
trigger1 = 1
x = .8125

[State 5201, 3]
type = Velset
trigger1 = Time = 0
x = -9.75
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5]
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5201, 1]
type = Velset
trigger1 = Animtime = 0
x = 0

[State 5201, 7]
type = ChangeState
trigger1 = Animtime = 0
trigger2= animelemtime(animelemno(0))>=4 && !animelemtime(animelemno(0)+1)
value = 0
ctrl = 1



[Statedef 5025]
type = A
Movetype = H
physics = N
velSet = 0,0
faceP2 = 1

[State 5025, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 5025, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y, 5020, 5000)



[Statedef 5205]
type = A
physics = N
moveType = H

[State 5205, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y < -20, 5210, 5200)


[Statedef 7000]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 0, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 0, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 0, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 0, 4]
type = explod
trigger1 = time = 2
anim = 5410
pos = 0,20
ownpal = 1
sprpriority = 3

[State 0, 5]
type = VelSet
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.65


[State 0, 6]
Type = Playsnd
trigger1 = time = 2
Value = 30,0

[State 0, 7]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1




[Statedef -2]

;  --- Uno Tag System v3.2.2 STATEDEF -2 ---

[State -2, deactivate tag]
type = VarSet
triggerall = NumPartner
triggerall = sysvar(4) > 0
triggerall = sysvar(4) != 6
trigger1 = roundstate > 2
trigger1 = Win || Lose
trigger2 = Roundstate < 1
trigger2 = teammode = Simul
trigger2 = !Partner, sysvar(4)
trigger2 = Time = [1,2]
trigger3 = Partner, sysvar(4)
trigger3 = !Life
sysvar(4) = 0

[State -2, def]
type = VarSet
triggerall = NumPartner
trigger1 = Partner, StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 10
trigger2 = prevStateNo = 1251116
sysvar(4) = 15

[State -2, Uno]
type = null ;ParentVarSet
trigger1 = PrevStateNo = 1251106
sysvar(4) = 7

[State -2, qc_def]
type = VarSet
triggerall = sysvar(4) != 12
trigger1 = Numhelper(1251105)
;trigger2 = Partner, Stateno = 1251102
sysvar(4) = 12

[State -2, Eksena]
type = ScreenBound
trigger1 = NumPartner && Partner, sysvar(4) = 4
trigger1 = StateNo = 1251131 || prevStateNo = 1251131
value = 1
movecamera = 1,1

[State -2, no_throw]
type = NotHitBy
triggerall = NumPartner
triggerall = StateNo != 1251114
trigger1 = sysvar(4) = [8,9]
trigger2 = sysvar(4) = 12
value = , AT

[State -2, def]
type = VarSet
triggerall = NumPartner && sysvar(4) != 9
triggerall = Partner, Time = [0,1]
trigger1 = Partner, StateNo = 1251104
trigger2 = Partner, StateNo = 1251110
trigger2 = StateNo != [1251101,1251133]
sysvar(4) = 1

[State -2, pa_qcError]
type = VarSet
triggerall = NumPartner && sysvar(4) = [8,9]
trigger1 = Partner, StateNo = [1251112,1251114]
trigger1 = StateNo = 0
sysvar(4) = 1
ctrl = 1

[State -2, GTG]
type = ChangeState
triggerall = Roundstate = 2 && Alive
triggerall = sysvar(4) = 12
trigger1 = StateNo != [1251101,1251133]
trigger1 = MoveType = I || (StateNo = 5120 && AnimTime < 2)
trigger1 = StateType != A
value = 1251109

[State -2, Oh No!]
type = SelfState
triggerall = sysvar(4) != [8,9]
triggerall = sysvar(4) != [12,15]
trigger1 = prevStateNo = 1251114
trigger1 = !(StateNo = [1251101,1251133])
value = 1251114
ctrl = 0

[State -2, PowerReset]
type = poweradd
trigger1 = sysvar(4) = 5
trigger1 = RoundNo < 2
trigger1 = RoundState < 2
trigger1 = Time = 0
value = -Power
persistent = 0

[State -2, PowerAdd]
type = poweradd
trigger1 = sysvar(4) = 5 && power < 900
trigger1 = RoundNo < 2
trigger1 = RoundState < 2
trigger1 = Time = 1
value = 1000
persistent = 0

[State -2, prior]
type = SprPriority
trigger1 = NumPartner && Partner, sysvar(4) = 2
trigger2 = (sysvar(4) = [8,9]) && StateNo != [1251110,1251111]
value = 5

[State -2, err]
type = ChangeState
trigger1 = NumPartner && ID > Partner, ID
trigger1 = roundstate = 2 && sysvar(4)
trigger1 = StateNo = 0 && pos Y < 0
value = 1251114

; Tag active ctrl
[State -2, ctrl]
type = SelfState
trigger1 = TeamMode = Simul
trigger1 = Partner, sysvar(4)
trigger1 = NumPartner
trigger1 = !sysvar(4)
trigger1 = sysvar(4) != [8,9]
trigger1 = sysvar(4) != 12
trigger1 = StateNo != 5900
trigger1 = Partner, sysvar(4) != [2,15]
trigger1 = RoundState = 2
trigger1 = Life && Partner, Life
trigger1 = StateNo != [1000,1251199]
value = 1251114
ctrl = 0

[State -2, 1]
type = SelfState
value = 1251106
trigger1 = NumPartner
trigger1 = StateNo != 1251106 && Partner, StateNo = [1251128,1251129]

[State -2, 1]
type = SelfState
value = 1251131
triggerall = NumPartner && Partner, Time = [0,1]
triggerall = (StateNo = 1251112 || StateNo = 1251114) && MoveType != A
trigger1 = Partner, StateNo = 1251132 || Partner, prevStateNo = 1251132
trigger2 = Partner, StateNo = 1251127 && !NumHelper(1251101)

[State -2, cancelfx]
type = PalFx
triggerall = Time = [0,1]
trigger1 = StateNo = 1251123
trigger2 = StateNo = 1251125 && NumTarget
Time = 6
add = (110 + Time*15), (110 + Time*15), (190 + Time*15)
sinadd =-245, -245, -250, (40 + Time*5)

[State -2, drop]
type = TargetDrop
triggerall = NumTarget
triggerall = Time = [0,1]
trigger1 = !Life
trigger2 = StateNo = [1251101,1251105]
trigger3 = StateNo = 1251106
trigger4 = StateNo = [1251115,1251116]

[State -2, Ov]
type = TargetState
triggerall = NumTarget  && NumPartner
triggerall = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && Partner, StateNo = [1251101,1251133]
triggerall = Time = [0,2]
trigger1 = StateNo = 1251125 && Target, StateType != A
trigger2 = (StateNo = 1251126 || PrevStateNo = 1251126) && Target, Pos Y >= -10 && (Target, StateNo != [1251109,1251119]) && (Target, StateNo != [5000,5500])
value = 1251117
ignorehitpause = 1

[State -2, Ov2]
type = TargetState
triggerall = NumTarget
trigger1 = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && ((Target, StateNo != [1251109,5500]) || (Target, StateNo != 5050 && Target, StateNo = [5030,5100]))
trigger1 = Target, Pos Y < -10
trigger1 = (StateNo = 1251125 && Time = [0,2])
value = 1251119
ignorehitpause = 1

[State -2, T_T]
type = TargetVelSet
triggerall = NumTarget = 1 && Target, Movetype = H && Target, vel x != 0
trigger1 = StateNo = 1251109 || sysvar(4) = 12
x = ifelse((Target, vel x > 0),0.72,-0.72)

[State -2, UM]
type = SelfState
trigger1 = Numpartner && Partner, StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129

; ------ Uno Tag System v3.2 END LINE ------

;

[State -2, Debug Info]
type = DisplayToClipboard
trigger1 = roundstate > 0
text = "AI = %d, Super Jump = %d, SJ Direction = %d, Dampener = %f"
params = var(59), var(12), var(13), fVar(10)

[State -2, Null]
type = Null
trigger1 = (!Time) && (Var(1) = 0)
trigger1 = ((Command = "holdfwd") && (StateNo = 20)) ^^ ((Command = "holddown") && (StateNo = [10,11]))
trigger1 = (Var(0) := 8)
trigger2 = (Command != "holdfwd") && (Command != "holddown") && (Var(1) = 1)
trigger2 = (Var(1) := 0)
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0)
var(0) = -1
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = ((StateNo = 50) || (StateNo = 702)) && (Command = "holdfwd") && (NumHelper(703) = 0)
helpertype = Normal
name = "Air Parry"
id = 703
pos = 0,0
postype = p1
facing = 0
stateno = 703
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SA, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holdfwd") && (Command != "holdback")
attr = C, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = ((StateNo = 50) || (StateNo = 702)) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SCA, AA, AP
stateno = 702
ignorehitpause = 1

[State -2, Throws Allowed]
type = Varset
trigger1 = 1
var(10) = 0

[State -2, Throws Disallowed]
type = Varset
trigger1 = (enemynear,stateno=[150,155])
trigger2 = (enemynear,movetype=H && enemynear,statetype!=A)
trigger3 = (enemynear,stateno=[5020,5040]) && !(enemynear,hitfall)
trigger4 = ((enemynear,stateno=0) || (enemynear,stateno=52)) && (enemynear,prevstateno=[5000,5040]) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger5 = (enemynear,stateno=0) && (enemynear,prevstateno=52) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger6 = (enemynear,stateno=40) && (enemynear,time>=1 || enemynear,prevstateno=0 || enemynear,prevstateno=52)
var(10) = 1

[State -2, P2 Recovery]
type = TargetState
trigger1 = NumTarget(600)
trigger1 = (Target(600), StateNo = 5020) && (Target(600), Alive) && (Target(600), HitFall)
ID = 600
value = 5025
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -20 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Damage Dampener]
type = varset
trigger1 = numenemy
fvar(10) = ifelse(enemynear,gethitvar(hitcount)<3, 24,ifelse(enemynear,gethitvar(hitcount) >=24, 2, 26-enemynear,gethitvar(hitcount))) / 24.0

[State -2, Reset Damage Dampener]
type = varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1

[State -2, VarAdd(13): CooldownTimer]
type = VarAdd
trigger1 = var(13)>0 && stateno != 2000
v = 13
value =-1

[State -2, VarAdd(14): CooldownTimer]
type = VarAdd
trigger1 = var(14)>0 && stateno != 1400
v = 14
value =-1

[State -2, VarAdd(15): CooldownTimer]
type = VarAdd
trigger1 = var(15)>0 && stateno != 2400
v = 15
value =-1

[State -2, VarAdd(16): CooldownTimer]
type = VarAdd
trigger1 = var(16)>0 && stateno != 2100
v = 16
value =-1

[State -2, VarAdd(17): CooldownTimer]
type = VarAdd
trigger1 = var(17)>0 && stateno != 2200
v = 17
value =-1

[State -2, VarAdd(18): CooldownTimer]
type = VarAdd
trigger1 = var(18)>0 && stateno != 195
v = 18
value =-1




[Statedef -3]
;  --- Uno Tag System v3.2.2 STATEDEF -3 ---


; Tag active definer
[State -2, def]
type = VarSet
triggerall = NumPartner
trigger1 = sysvar(4) = [8,9]
trigger1 = !(Partner, Life) || (Partner, StateNo = [1251110,1251114])
trigger2 = Partner, StateNo = [1251110,1251114]
trigger2 = sysvar(4) != [2,15] 
trigger3 = sysvar(4) = 5
trigger3 = Roundstate = 2 && StateNo = [1251111,1251114]
trigger4 = sysvar(4) = 14
trigger4 = MoveType = H && Partner, StateNo = [1251101,1251133]
trigger5 = sysvar(4) = 15 && NumEnemy
trigger5 = EnemyNear, StateNo = [0,50]
sysvar(4) = 1

[State -2, def_Partner]
type = VarSet
triggerall = teammode = simul
trigger1 = roundstate < 1 
trigger1 = sysvar(4) != 12
sysvar(4) = 1 + ((ID > Partner, ID)*4)

[State -3, enterTheScreen]
type = ChangeState
trigger1 = sysvar(4)
trigger1 = NumPartner
trigger1 = StateNo = [1251112,1251114]	
trigger1 = Life 
trigger1 = (Partner, StateNo = [1251109,1251111]) || (Partner, StateNo = 1251125 && Partner, Time > 0)
value = ifelse((Partner, StateNo = 1251125),1251131,1251115)

; Jump into the screen (Game is OVER)
[State -3, enterTheScreen]
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
trigger1 = Alive
trigger1 = StateNo = [1251112,1251114]
trigger1 = Time > 0
trigger1 = roundstate > 2
trigger1 = Win || LoseTime || WinTime || drawgame
value = 1251120

[State -3, NoJC]
type = AssertSpecial
triggerall = NumPartner
trigger1 = Partner, sysvar(4) = 12
trigger2 = sysvar(4) = [8,9]
trigger3 = PrevStateNo = [1251112,1251133]
trigger4 = sysvar(4) = 15 && Partner, Time < 150
flag = nojugglecheck
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo = [1251110,1251113]
trigger2 = !Life
trigger3 = StateNo = [1251126,1251127]
ignorehitpause = 1

[State -3, cancelfx2s_b]
type = PalFx
triggerall = RoundState = 2
trigger1 = Time = [0,3]
trigger1 = StateNo = 1251116
trigger2 = StateNo != 1251109 && NumHelper(1251105) && (Helper(1251105), Time = [2,35])
Time = ifelse(StateNo = 1251116,4,10)
add = (175 - Time), (125 - Time), (125 - Time)
mul = 245, 245, (125 + Time)

[State -3, cancelfx2s_a]
type = PalFx
triggerall = RoundState = 2
trigger1 = NumHelper(1251105) && (Helper(1251105), Time < 2)
trigger2 = NumPartner && (Partner, StateNo = 1251116) && (Partner, Time <= 12)
Time = 2
add = 256,256,256

[State -3, Quiet]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 7
trigger1 = !Alive && !NumHelper(1251130)
flag = nokosnd

[State -3, Dark]
type = AssertSpecial
triggerall = NumPartner
trigger1 = StateNo = 1251106
trigger2 = StateNo = 1251127 || Partner, StateNo = 1251127
trigger3 = NumHelper(1251101) && StateNo = 1251131 && Partner, StateNo != 1251125
flag = noBG
flag2 = noFG
flag3 = Timerfreeze
ignorehitpause = 1

[State -3, leavefx]
type = PalFx
trigger1 = StateNo = 1251111 
trigger2 = StateNo = 1251109
trigger3 = StateNo = 1251127
trigger4 = (sysvar(4) = [8,9]) && StateNo = 1251110 && Time > 12
trigger5 = StateNo = 1251110 && Time > 14
Time = 2
add = 0,0,0
mul = 150,150,150

[State -3, InvBG]
type = BGPalFx
trigger1 = NumHelper(1251130)
trigger2 = StateNo = 1251106
Time = 2
color = 0
add = -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16)
ignorehitpause = 1

[State -3, InvChar]
type = PalFx
triggerall = NumEnemy
trigger1 = (Enemy, PrevStateNo = [1251128,1251129]) || (EnemyNear, PrevStateNo = [1251128,1251129])
trigger2 = Enemy, StateNo = 1251106 || EnemyNear, StateNo = 1251106
Time = 2
color = 0
add = -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16)
ignorehitpause = 1

[State -3, Invert]
type = PalFx
trigger1 = PrevStateNo = [1251128,1251129]
Time = 10
invertall = 1

[State -3, SuperPause]
type = SuperPause
triggerall = NumPartner
trigger1 = Partner, StateNo = 1251106
trigger1 = NumHelper(1251130)
trigger2 = NumHelper(1251101) && Partner, StateNo != 1251125
trigger2 = MoveType != H
Time = 10
anim = -1
sound = -1
moveTime = 10
darken = 1
p2defmul = 0
unhittable = 1
pausebg = 1

[State -3, NoAirGuard]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = sysvar(4) = 8
trigger1 = Movetype = A
trigger1 = prevStateNo = 1251133
flag = Noairguard
flag2 = nojugglecheck
flag3 = nowalk
ignorehitpause = 1

[State -3, aHit]
Type = VarSet
Triggerall = sysvar(4) = 8 && Roundstate = 2
triggerall = NumPartner && Partner, Alive
trigger1 = Movetype = H
trigger2 = StateNo = [5000,5990]
trigger3 = StateNo = [150,151]
sysvar(4) = 9

[State -3, bangon]
type = SelfState
trigger1 = NumPartner && sysvar(4) = 9
trigger1 = Alive && Partner, Alive
trigger1 = StateNo != 5120
trigger1 = StateNo = 5110 || Anim = 5110
trigger1 = Time >= 12
value =5120

[State -3, leavePA]
type = SelfState
triggerall = sysvar(4) = [8,9]
triggerall = StateType != A || prevStateNo = [5000,5500]
triggerall = NumPartner
trigger1 = Roundstate = 2
trigger1 = Life && Partner, life
trigger1 = Partner, StateNo != [1251101,1251135]
trigger1 = StateNo != [200,1251199]
trigger1 = MoveType != H || ((StateNo = [5110, 5120]) && (Time >= 19 || AnimElemTime(4) >= 1))
value = ifelse((sysvar(4)=9 || (StateNo = [150,151])),1251111,1251110)
ctrl = 0

[State -3, LE]
type = SelfState
trigger1 = StateNo = 7828
trigger1 = PrevStateNo = [1251110,1251114] 
trigger2 = sysvar(4) = [8,9]
trigger2 = Anim = 100 && StateNo != [1251101,1251133]
trigger3 = sysvar(4) = 5
trigger3 = PrevStateNo = [1251110,1251114] 
trigger3 = StateNo != [1251101,1251133]
value = 1251111

[State -3, leaveIntro]
type = SelfState
triggerall = sysvar(4) = 5
triggerall = NumPartner
trigger1 = Roundstate >= 2
trigger1 = StateNo != [1000,1251199]
value = 1251110
ctrl = 0

[State -3, leave2]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) = 14 && roundstate = 2
trigger1 = StateNo != 1251109
trigger1 = Statetype != A
trigger1 = Partner, StateNo != [1251109,1251116]
value = 1251109

[State -3, antala]
type = VarSet
triggerall = NumPartner
triggerall = sysvar(4) = 14
trigger1 = Partner, StateNo = [1251114,1251115]
trigger1 = Partner, vel x <= 0
sysvar(4) = 1

[State -3, fromdark]
type = Helper
trigger1 = sysvar(4) = 7 && !NumHelper(1251139)
trigger1 = PrevStateNo = 1251106
trigger1 = Time <= 25
Helpertype = Normal
ID = 1251139
StateNo = 1251130
name = "dark"
ownpal = 1
supermoveTime = 9999
pausemoveTime = 9999

[State -3, sb_PA]
type = ScreenBound
trigger1 = NumPartner
trigger1 = sysvar(4) = [8,9]
value = ifelse(MoveType = A,1,0)
movecamera = 0,0

[State -3, NoCtrl]
type = CtrlSet
trigger1 = NumPartner
trigger1 = StateNo != [1251111,1251114]
trigger1 = sysvar(4) = [8,9]
value = ifelse((Partner, Alive),0, 1)

[State -3, Party]
type = Null ;CtrlSet
triggerall = NumPartner
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = Partner, sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner, StateNo != [5000,5500]
trigger1 = prevStateNo != [5000,5500]
value = ifelse((prevStateNo = [1251132,1251131]) || (Partner, StateNo = 1251125) ||(Partner, movetype = A), 0, 1)

[State -3, Party]
type = AssertSpecial
triggerall = NumPartner
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = Partner, sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner, StateNo != [5000,5500]
trigger1 = prevStateNo != [5000,5500]
flag = nojugglecheck
;flag2 = nowalk

[State -3, PartyDone]
type = Null ;CtrlSet
triggerall = NumPartner
triggerall = !Ctrl
triggerall = Partner, sysvar(4) = 2
triggerall = Movetype = I
triggerall = StateNo != [200,5500]
trigger1 = prevStateNo = [5000,5500]
trigger2 = Partner, StateNo = 1251111
trigger3 = Partner, MoveType = H && !Partner, HitShakeOver
value = 1

[State -3, shift]
type = CtrlSet
trigger1 = sysvar(4) = 12
trigger2 = StateNo = 1251109
value = 0

[State -3, fadeOut]
type = Trans
triggerall = NumPartner
trigger1 = !Life && Partner, Life
;trigger1 = RoundState = 2 || Partner,sysvar(4) = 7
trigger1 = Partner, sysvar(4) = 7
trigger1 = StateNo = 5150
Trans = addalpha
alpha = (256-ifelse((Partner,sysvar(4) = 7),(Time *3),(Time*2))), (Time*Time)

[State -3, fadeOut]
type=assertspecial
triggerall = alive=0 && !ishelper && numpartner && Partner, sysvar(4) && RoundState = 2
trigger1=stateno=5150 && (((time=[80,150])&&(time%10<5))||(time>150))
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
flag=invisible
flag2=noshadow

[state -3, fadeOut]
type=posset
trigger1 = sysvar(4)
trigger1=stateno=5150 && alive=0 && !ishelper && numpartner && (time>150)
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
trigger1 = Partner, sysvar(4)
y=-3

[state -3, dead_Var]
type = VarSet
triggerall = !Alive
triggerall = RoundState = 2
triggerall = StateNo = [5131,5150]
triggerall = NumPartner && Partner, sysvar(4)
trigger1 = Time >= 125
trigger2 = Partner, sysvar(4) = 7
trigger2 = Time >= 85
sysvar(4) = 6

[state -3, awake_Var]
type = VarSet
triggerall = roundstate = 2
trigger1 = Alive
trigger1 = sysvar(4) = 6
trigger2 = Partner, Life
trigger2 = sysvar(4) = 7
sysvar(4) = 1

[state -3, offME]
type = NotHitBy
triggerall = NumPartner
trigger1 = sysvar(4) = 6
trigger2 = StateNo = 1251128 || PrevStateNo = 1251128
trigger3 = Partner, sysvar(4) = 6
trigger3 = (StateNo = [1251101,1251116]) || (StateNo = [1251120,1251133])
value = SCA

[state -3, disa2]
type = ChangeState
trigger1 = RoundState = 2
trigger1 = StateNo = [5110,5150]
trigger1 = sysvar(4) = 6
value = 1251113

[state -3, Ghost]
type = AssertSpecial
triggerall = !Alive
triggerall = RoundState >= 2
triggerall = sysvar(4) = 6
trigger1 = Anim = [5000,5600]
trigger2 = PrevStateNo = [1251113,1251121]
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State -3, EndLife]
type = LifeAdd
triggerall = RoundState = 2
trigger1 = PrevStateNo = 1251129
trigger2 = sysvar(4) = 6
value = -LifeMax

[State -3, END]
type = PosSet
trigger1 = NumPartner
trigger1 = roundstate > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
x = (Partner, pos x) - 5000*facing
y = 0

[State -3, sb]
type = ScreenBound
trigger1 = BackEdgeBodyDist <= 10
trigger1 = StateNo = [1251115,1251116]
trigger2 = StateNo = 1251109
value = 0
movecamera = 0,0

[State -3, sb]
type = PlayerPush
trigger1 = StateNo = [1251115,1251116]
value = ifelse(BackEdgeBodyDist >= 0 || p2bodydist x <= 45,1,0)

[State -3, 1251129]
type = LifeAdd
trigger1 = PrevStateNo = 1251129 && Time > 1
value = -LifeMax

[State -3, 1251129]
type = ChangeState
trigger1 = StateNo < 5000
trigger1 = PrevStateNo = 1251129 && AnimElemNo(3) = 7
value = 5150

[State -3, Aura]
type=Helper
triggerall= !NumHelper(1251124)
trigger1 = sysvar(4) = 7 && MoveType = I && (StateNo = 1251106 || Life <= (LifeMax*.2))
Helpertype=normal
StateNo=1251124
ID=1251124
name="AURA"
postype=p1
ownpal = 1
pausemoveTime=999999
supermoveTime=999999

; ----------- UNO MODE -----------
[State -3, Cursed]
type = LifeAdd
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner, Life)
trigger1 = (gameTime%10) = 0
trigger1 = sysvar(4) = 7
value = (-3 + ifelse(Life < LifeMax/6, 2, 0))
kill = 0

[State -3, C_2]
type = PowerAdd
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner, Life)
trigger1 = sysvar(4) = 7
trigger1 = Power < PowerMax && MoveType != A
value = 100

[State -2, C_3]
type = AttackMulSet
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && StateNo = [200,4000]
value = 1.5 ;+ ((LifeMax/Life) * 0.015)

[State -3, C_4]
type = DefenceMulSet
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && !(Partner, Life)
value = ifelse((Life>150),(0.2 - ((LifeMax/Life) * 0.015)),0.15)

[State -2, C_5]
type = AssertSpecial
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && MoveType = A
flag = nojugglecheck
ignorehitpause = 1

[State -3, C_7]	; TimeOVER!
type = LifeAdd
trigger1 = NumPartner && RoundState > 2 && StateNo != 1251106 && !(Partner, Life) && sysvar(4) = 7 && !Win
value = -(Life)
kill = 1

[State -3, C_8]
type = SelfState
trigger1 = NumPartner && RoundState>=3 && Life > 1 && !(Partner, Life) && sysvar(4) = 7 && MoveType=H
value = ifelse(StateNo=5110,5120,5040)

[State -3, C_e1]
type = PalFx
trigger1 = StateNo != 1251106
trigger1 = RoundState = 2
trigger1 = !Win && !Lose && !MatchOver && !DrawGame
trigger1 = !NumHelper(1251107)
trigger1 = sysvar(4) = 7
add=(50+Random*0.15),(50+Random*0.12),(50+Random*0.12)
mul = (120+Random*0.12511), (120+Random*0.12511), (120+Random*0.12511)
sinadd=-255,-245,-245,(40 + Time*2)
Time=10

[State -3, C_e2]
type = AfterImage
triggerall = RoundState <= 2
triggerall = !Win && !Lose && !MatchOver && !DrawGame
triggerall = sysvar(4) = 7 && MoveType = A
trigger1 = PrevStateNo = 5300 || PrevStateNo = 4600
trigger2 = (gameTime%10) = 0
Trans = add
PalContrast = 5, 5, 256
PalBright = 0,0,50
Time    =  -1
length  = 17
TimeGap = 1
FrameGap = 1

[State -3, C_e3]
type = AfterImageTime
trigger1 = RoundState > 2
trigger1 = sysvar(4) = 7
trigger2 = !Alive
trigger3 = Partner, Alive
trigger4 = sysvar(4) = 7 && MoveType != A
Time = 0

[State -3, C_KOed]
type = SelfState
triggerall = sysvar(4) = 7
trigger1 = !Life
trigger1 = StateType != A
trigger1 = StateNo != [5000,5950]
value = 5950

[State -3, C_Dead]
type = SelfState
trigger1 = (PrevStateNo = [1251128, 1251129]) || (!Life)
trigger1 = StateNo = 5950
trigger1 = AnimTime = 0 || Time > 225
value = 5150
; ----------------------

[State -3, T_T]
type = ScreenBound
trigger1 = roundstate > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
;trigger2= EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
value = 0
movecamera = 0,0

[State -3, T_T]
type = PosFreeze
trigger1 = NumEnemy && EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
trigger2 = PrevStateNo = 1251121
trigger3 = StateNo = 1251125

[State -3, T_T]
type = SelfState
triggerall = NumPartner && sysvar(4) > 0
trigger1 = RoundState = 2  && Pos Y < 0
trigger1 = StateNo = 0 && (Partner, StateNo != [1251112,1251114])
trigger1 = PrevStateNo = [1251112,1251114]
value = 1251114

[State -3, wait out]
type = ChangeState
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Life && Partner, Life
triggerall = StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 2			; performed team attack
trigger1 = (PrevStateNo = [5000,5500]) || (StateNo != [200,1251199]) && (MoveType != H)
trigger2 = sysvar(4) = 4          ; performed Delayed Cancel
trigger2 = MoveType != A || ((Partner, prevStateNo = 1251131 || Partner, StateNo != [1251101,1251135]) && Time > 1)
trigger3 = (sysvar(4) = [2,4]) && MoveType = I && (StateNo != [1251101,1251133])
trigger4 = NumHelper(1251125)
trigger4 = StateNo = [0,199]
value = 1251111
ctrl = 0
ignorehitpause = 1

; ---- Uno Tag System v3.2 END LINE ----

;
  ;]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
value = 40, 0

[State -3, VarSet]
type = VarSet
trigger1 = Command = "QCFx"
v = 5
value = 1

[State -3, VarSet]
type = VarSet
trigger1 = Command = "QCFy"
v = 5
value = 2

[State -3, GetHit Sound]
type = PlaySnd
triggerall = Alive && time = 1
triggerall = Stateno = 5000 || Stateno=5010 || Stateno=5020 || Stateno=5070
trigger1 = Enemynear, Hitdefattr = SCA,SA,HA
trigger2 = Gethitvar(Animtype)>= 2 && random < 500
trigger3 = Gethitvar(Animtype)= 1 && random < 300
trigger4 = Gethitvar(Animtype)= 0 && random < 250
value = 5000,0+(random%5)
channel = 1
ignorehitpause = 1
persistent = 0

[State -3, Prevent Undergound Juggles]
type= TargetBind
trigger1 = movehit = 1
trigger1 = numtarget = 1 && numenemy
trigger1 = (target,time<= 1) && (target,ID = enemynear,ID)
trigger1 = !(target,hitshakeover) && (target, hitfall) && (target, pos y> 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, EX PalFX]
type = PalFX
trigger1 = !(GameTime % 2)
trigger1 = StateNo = 1001 || Stateno = 1110
add = 80,60,0
mul = 256, 230, 155
time = 1
ignorehitpause = 1
persistent = 0

[State -3, Jump AfterImage]
type = AfterImage
triggerAll = Time = 1
trigger1 = StateNo = 50 && (var(2) = 2 || var(2) = 3)
time = 14
length = 8
timeGap = 1
frameGap = 4
palBright = 0,0,0
palContrast = 150,150,150
palPostBright = 0,0,0
palAdd = 0,0,0
trans = Add
