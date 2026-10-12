

































[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0 + IfElse(Var(20)=3, 11000, 0)

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4]
type = ChangeState
trigger1 = !alive
value = 5050

[State 0, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1

[State 0, Turn clones to face opponent]
type = Turn
trigger1 = IsHelper
trigger1 = P2Dist X < 0











[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = !ishelper
x = const(velocity.walk.fwd.x) * FVar(0)

[State 20, 1]
type = Null
trigger1 = command = "holdfwd"
trigger1 = ishelper(10)
x = const(velocity.walk.fwd.x) + 0.75

[State 20, 1]
type = Null
trigger1 = command = "holdfwd"
trigger1 = ishelper(11)
x = const(velocity.walk.fwd.x) - 0.75

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = !ishelper
x = const(velocity.walk.back.x) * FVar(0)

[State 20, 2]
type = Null
trigger1 = command = "holdback"
trigger1 = ishelper(10)
x = const(velocity.walk.back.x) - 0.75

[State 20, 2]
type = Null
trigger1 = command = "holdback"
trigger1 = ishelper(11)
x = const(velocity.walk.back.x) + 0.75

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1



[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * FVar(0)
y = const(velocity.jump.y) * FVar(1)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x) * FVar(0)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



[Statedef 48]
type    = A
physics = A

[State 48, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 48







[Statedef 100]
type    = A
physics = U
anim = 101
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ontop = 1

[State 100, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 111
ID = 111
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -100, -50
random = 10,50
xscale = 0.5
yscale = 0.5
sprpriority = -3

bindtime = 1
ownpal = 1

[State 100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
physics = A

[State 100, 1]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.fwd.x) * IfElse(Var(20)=3, 2.5, 1)
y = const(velocity.run.fwd.y) * IfElse(Var(20)=3, 1.5, 1)




[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = ChangeAnim
triggerall = GetHitVar(animtype) != [3,5]
trigger1 = Time = 0 && Var(20) != 2
trigger2 = GetHitVar(hitcount) >=3 && Var(20)=2
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, PalFXWiz]
type = PalFX
trigger1 = Var(20)=2 && GetHitVar(hitcount) < 3
time = 2
add = 64,0,0
color = 0

[State 5000, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)

[State 5000, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5]
type = StateTypeSet
triggerall = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger1 = Time = 0 && Var(20) != 2
trigger2 = Pos Y != 0
trigger3 = Var(20)=3 && GetHitVar(hitcount) >= 3
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140




[Statedef 1061]
type = S
movetype = A
physics = S

[State 1061, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1061, 2]
type = velset
trigger1 = time <= 5
x = 0

[State 1061, 3]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1061, 4]
type = ChangeState
trigger1 = time >= 6
trigger1 = Pos Y = 0
value = 0
ctrl = 1


[Statedef 1062]
type = C
movetype = H
physics = C
ctrl = 0
anim = 11

[State 1062, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1062, 2]
type = velset
trigger1 = time <= 5
x = -3

[State 1062, 3]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1062, 4]
type = ChangeState
trigger1 = time >= 6
trigger1 = Pos Y = 0
value = 11
ctrl = 1


[Statedef 1063]
type = A
movetype = H
physics = A
ctrl = 0

[State 1063, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1063, 2]
type = velset
trigger1 = time <= 5
x = -1

[State 1063, 3]
type = CtrlSet
trigger1 = time >= 6
value = 1
































































































[Statedef 5900]
type = S

[State 5900, 1]
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 0
last = 4

[State 5900, 1b]
type = VarSet
trigger1 = 1
v = 5
value = 6

[State 5900, 1c]
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 6
last = 59

[State 5900, 3]
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0
first = 1

[State 5900, 3a]
type = VarSet
trigger1 = 1
fv = 0
value = 1.0

[State 5900, 3b]
type = VarSet
trigger1 = 1
fv = 1
value = 1.0

[State 5900, 4]
type = ChangeState
trigger1 = roundno = 1
value = 190







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











[State -2, dizzy reapers]
type = Explod
trigger1 = (Anim = 5300) && (NumExplod(5301) = 0)
anim = 5301
ID = 5301
bindtime = -1
removetime = -1
sprpriority = 4
ownpal = 0

[State -2, nodizzy]
type = RemoveExplod
trigger1 = (Anim != 5300) && (NumExplod(5301) > 0)
ID = 5301


[State -2, debug]
type = DisplayToClipboard
trigger1 = Alive






text = "sysvar(3): %d"
params = sysvar(3)


[State -2, RotGut effect timer]
type = VarAdd
triggerall = !IsHelper && (Var(20) > 0) && (RoundState = 2)

trigger1 = Var(21) > 0
v = 21
value = -1

[State -2, RotGut powerup: PalFX]
type = PalFX
triggerall = Var(20) = 1
trigger1 = Var(21) > 0
time = 12
add = 0,0,0
mul = 256,512,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State -2, RotGut armor: PalFX]
type = PalFX
triggerall = Var(20) = 2
trigger1 = Var(21) > 0
time = 12
add = 64,64,64
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State -2, RotGut armor: DefenceMulSet]
type = DefenceMulSet
trigger1 = Var(20) = 2
value = 2

[State -2, RotGut armor: healing factor]
type = LifeAdd
triggerall = Var(20) = 2
triggerall = TimeMod = 3,1
trigger1 = Var(21) > 0
value = 2
absolute = 0

[State -2, RotGut PalFX: speed]
type = PalFX
triggerall = Var(20) = 3
trigger1 = Var(21) > 0
time = 12
add = 64,0,0
mul = 480,292,256
sinadd = 64,32,0,1
invertall = 0
color = 256

[State -2, SetCloneTimer]
type = VarAdd
triggerall = (IsHelper) && (StateNo != 3110) && (RoundState = 2)
trigger1 = Var(10) = [0,300]
trigger2 = (GameTime % 1) = 0
v = 10
value = 1

[State -2, Clone timeout]
type = ChangeState
triggerall = IsHelper
trigger1 = numhelper(10) > 2
trigger2 = (Var(10) >= 300) && (StateType != A)

value = 3110

[State -2, killHyperBG]
type = VarSet


trigger1 = (sysvar(3) = 1) && (NumHelper(10) = 0) && (NumHelper(3305) = 0)
sysvar(3) = 0

[State -2, gethits]
type = PlaySnd
triggerall = alive && (Time = 1)
triggerall = random < 100
triggerall = Var(20) != 2
trigger1 = stateno = [5000,5022]
trigger2 = stateno = 5030
trigger3 = stateno = 5070
channel = 0
value = 4,0

[State -2, "feetal's gizzard!"]
type = Null
triggerall = alive && (time = 1)
trigger1 = anim = 7696

persistent = 1
channel = 0
loop = 0
value = 4,10

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1





[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = S
time = 1
attr = SCA, NA, SA
slot = 0
value = 1061


[State -2, NotHitBy]
type = NotHitBy
trigger1 = Var(20) = 2
value = , AP, AT
time = 1

[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = C
time = 1
attr = SCA, NA, SA, NP, SP
slot = 1
value = 1062

[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = A
time = 1
attr = SCA, NA, SA, NP, SP
slot = 2
value = 1063







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
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
trigger4 = PrevStateNo = 52 && StateNo = 11
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
value = 8, 1

[State -3, Armored Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) = 2
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
value = 8, 4

[State -3, reset "no ammo in air frag" var]
type = VarSet
triggerall = Time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
v = 6
value = 0

[State -3, reset superjump direction var]
type = VarSet
triggerall = Time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
v = 0
value = 0





[State -3: clone timer bar]
type = Explod
trigger1 = (IsHelper(10) || IsHelper(11)) && (RoundState = 2)
trigger1 = Var(10) = [0,300]
anim = 3230 - (Var(10) / 10)
pos = 0,-130
postype = p1
bindtime = -1
removetime = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1



[State -3: clone winpose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)

trigger1 = (RoundState = 4) & (StateNo = 0) & Win
value = 189


[State -3: clone losepose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)
trigger1 = (RoundState = 4) && (StateNo = 0) && (DrawGame || Lose)
value = 179



[State -3: rotgut timer bar]
type = Explod
triggerall = !IsHelper && (RoundState = 2)
trigger1 = Var(20) > 0
anim = 3200 + (Var(21) / 10)
pos = -20,-110
postype = p1
bindtime = -1
removetime = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1


[State -3: cancel rotgut]
type = VarSet
trigger1 = Var(20) > 0 && Var(21) = 0
v = 20
value = 0

[State -3: cancel SuperArmor]
type = DefenceMulSet
trigger1 = Var(20) = 0
trigger1 = const(data.defence) != 1
value = 1

[State -3: reset rotgut speed mul]
type = VarSet
trigger1 = FVar(0) != 1 && Var(20) = 0
fv = 0
value = 1

[State -3: reset rotgut jump speed mul]
type = VarSet
trigger1 = FVar(1) != 1 && Var(20) = 0
fv = 1
value = 1








[State -3, bullet counter]
type = Explod
trigger1 = RoundState = 2
anim = 1010 + var(5)
pos = ifelse(TeamSide = 1, 1, 319), 196
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1




[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3





[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1


































