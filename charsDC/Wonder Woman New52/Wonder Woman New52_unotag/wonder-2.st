








[Statedef -2]

;  --- Uno Tag System v3.2.1 STATEDEF -2 ---

[State -2, deactivate tag]
type = VarSet
triggerall = sysvar(4) > 0
triggerall = sysvar(4) != 6
trigger1 = roundstate > 2
trigger1 = Win || Lose
trigger2 = NumPartner
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
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 10
trigger2 = sysvar(4) != 2 && PrevStateNo = 1251131
sysvar(4) = 15

[State -2, Uno]
type = null ;ParentVarSet
trigger1 = PrevStateNo = 1251106
sysvar(4) = 7

[State -2, Eksena]
type = ScreenBound
trigger1 = NumPartner && Partner, sysvar(4) = 4
trigger1 = StateNo = 1251131 || prevStateNo = 1251131
value = 1
movecamera = 1,1

[State -2, no_throw]
type = NotHitBy
trigger1 = NumPartner
trigger1 = sysvar(4) = [8,9]
trigger1 = StateNo != 1251112
value = , AT

[State -2, def]
type = VarSet
triggerall = NumPartner && sysvar(4) != 15
triggerall = Partner, Time = [0,1]
trigger1 = Partner, StateNo = 1251104
trigger2 = Partner, StateNo = 1251110
trigger2 = StateNo != [1251101,1251133]
sysvar(4) = 1

[State -2, GTG]
type = ChangeState
trigger1 = NumPartner
trigger1 = Life && Partner, Life
trigger1 = PrevStateNo = 1251126
trigger1 = StateNo != 1251111
value = 1251111
ignorehitpause = 1

[State -2, Oh No!]
type = SelfState
triggerall = sysvar(4) != [8,9]
triggerall = sysvar(4) != [12,15]
trigger1 = prevStateNo = 1251112
trigger1 = !(StateNo = [1251101,1251133])
value = 1251112
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
value = 1251112

; Tag active ctrl
[State -2, ctrl]
type = SelfState
trigger1 = TeamMode = Simul
trigger1 = NumPartner
trigger1 = Partner, sysvar(4)
trigger1 = !sysvar(4)
trigger1 = sysvar(4) != 8 && Partner,sysvar(4) != 8 && Partner,sysvar(4) != 12
trigger1 = StateNo != 5900
trigger1 = Partner, sysvar(4) != [2,15]
trigger1 = RoundState = 2
trigger1 = Life && Partner, Life
trigger1 = StateNo != [1000,1251199]
value = 1251112
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
triggerall = RoundState = 2
triggerall = Time = [0,1]
trigger1 = StateNo = 1251123
trigger2 = StateNo = 1251125 && NumTarget
Time = 6
add = (110 + Time*15), (110 + Time*15), (190 + Time*15)
sinadd =-245, -245, -250, (40 + Time*5)

[State -2, TargetVelAdd]
type = TargetVelAdd
trigger1 = NumTarget && numPartner
trigger1 = !(Target, StateNo = [1251117,1251119]) && !(Target, PrevStateNo = [1251117,1251119])
trigger1 = Roundstate = 2
trigger1 = prevStateNo = 1251126
trigger1 = Partner, StateNo = 1251102 && !(Partner, MoveContact)
trigger1 = Target, statetype != A && Target, GetHitVar(xvel) < 0
x = 0.12

[State -2, drop]
type = TargetDrop
triggerall = NumTarget
triggerall = Time = [0,1]
trigger1 = !Life
trigger2 = StateNo = [1251101,1251105]
trigger3 = StateNo = [1251115,1251116]  
trigger4 = StateNo = 1251106 || StateNo = 1251123

[State -2, Buwelo]
type = PosFreeze
trigger1 = PrevStateNo = 1251102 && StateNo != 1251123
trigger1 = sysvar(4) = 15
trigger1 = Anim != [42,45]
trigger1 = Time <= 5
trigger1 = NumTarget && Target, Statetype != A
trigger1 = MoveType = A

[State -2, aircombo]
type = VelMul
trigger1 = NumTarget || p2BodyDist x < 0
trigger1 = PrevStateNo = 1251102
trigger1 = StateNo != [1251100, 1251190]
trigger1 = MoveType = A && StateNo < 1000
x = ifelse(p2BodyDist x < 0,0.7,0.9)
y = ifelse(vel y < 2,2,0.9)

[State -2, velfollow]
type = VelAdd
trigger1 = PrevStateNo = 1251123 && (NumTarget && Target, vel y < -0.6)
trigger1 = MoveType = A && (Time = [0,3])
y = -1.2

[State -2, Target]
type = TargetState
trigger1 = NumTarget
trigger1 = StateNo = 1251102 || PrevStateNo = 1251102 || StateNo = 1251123 || PrevStateNo = 1251123 || StateNo = 1251126 || PrevStateNo = 1251126
trigger1 = (Target, Pos Y < 0) && !(Target, StateNo = [120,152]) && (Target, StateNo != [1251109,1251119]) && MoveContact  && (Target, Anim = [5100,5170])  && (Target, Anim != [5110,5120])  && Target, PrevStateNo != 1251119 
trigger1 = (Target, Statetype != A) ; && (Target, Statetype != S)  && (Target, Statetype != C)
trigger1 = !Target, HitOver
value = 1251119
ignorehitpause = 1

[State -2, Ov]
type = TargetState
triggerall = NumTarget && numPartner
triggerall = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && Partner, StateNo = [1251101,1251133]
triggerall = Time = [0,2]
trigger1 = StateNo = 1251125 && Target, StateType != A
trigger2 = (StateNo = 1251126 || PrevStateNo = 1251126) && Target, Pos Y >= -10 && (Target, StateNo != [1251109,1251119]) && (Target, StateNo != [5000,5500])
value = 1251117
ignorehitpause = 1

[State -2, Ov2]
type = TargetState
triggerall = NumTarget = 1
trigger1 = (Target, StateNo != [1251109,1251119]) && !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && ((Target, StateNo != [5000,5500]) || (Target, PrevStateNo != 1251119 && Target, StateNo = [5030,5100])) && !Target, HitOver
trigger1 = (StateNo = 1251125 && Time = [0,2]) || StateNo = 1251126 || PrevStateNo = 1251126
value = 1251119
ignorehitpause = 1

[State -2, T_T]
type = TargetVelSet
triggerall = NumTarget = 1 && Target, Movetype = H && Target, vel x != 0
trigger1 = StateNo = 1251126 || sysvar(4) = 3
x = ifelse((Target, vel x > 0),0.55,-0.55)

[State -2, UM]
type = SelfState
trigger1 = Numpartner && Partner, StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129

; ------ Uno Tag System v3.2 END LINE ------

;  ;]


[State -2, ai]
type = VarSet
triggerall = (Var(59) > 0)
trigger1 = (RoundState != 2)
trigger2 = (!Alive)
var(59) = -2

[State -2, a0]
type = VarAdd
trigger1 = Var(8) > 0
V = 8
value = -1

[State -2, A3]
type = VarSet
trigger1 = (Var(20) = 1) && (MoveType != H)
var(20) = 0

[State -2, A4]
type = VarSet
trigger1 = RoundState != 4
v = 52
value = ceil(P2Dist X)
ignorehitpause = 1


[State -2, a5]
type = PlaySnd
triggerall = var(18)=1
trigger1 = (p2stateno = 5110) && (enemy, Time = 1)
value = 7, 2
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[State -2, p2]
type = helper
triggerall = var(18)=1
trigger1 = (p2stateno = 5110) && (enemy, Time = 1)
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = -15,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State -2, copyright]
type = DisplayToClipboard
trigger1 = 1
text="Wonder Woman Reloaded by Loganir"


[State -2, Hit Wall]
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9020
triggerall = target(0), vel X < -6
trigger1 = StateNo = 220 && movehit
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = StateNo = 220 && movehit
trigger2 = target(0), FrontEdgeBodyDist <= 20
trigger2 = var(50) :=1
trigger3 = StateNo = 245 && movehit
trigger3 = target(0), BackEdgeBodyDist <= 20
trigger3 = var(50) :=1
trigger4 = StateNo = 245 && movehit
trigger4 = target(0), FrontEdgeBodyDist <= 20
trigger4 = var(50) :=1
trigger5 = StateNo = 1505 && Time > 20
trigger5 = target(0), BackEdgeBodyDist <= 20
trigger5 = var(50) :=1
trigger6 = StateNo = 1505 && Time > 20
trigger6 = target(0), FrontEdgeBodyDist <= 20
trigger6 = var(50) :=1
trigger7 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger7 = target(0), BackEdgeBodyDist <= 20
trigger7 = var(50) :=1
trigger8 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger8 = target(0), FrontEdgeBodyDist <= 20
trigger8 = var(50) :=1
value = 9020
ID = 0

[State -2, a9]
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9023
trigger1 = !var(1) && StateNo = 620 && movehit
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
trigger2 = !var(1) && StateNo = 650 && movehit
trigger2 = target(0), stateno=5100
trigger2 = var(50) :=1
trigger3 = !var(1) && prevStateNo = 620
trigger3 = target(0), stateno=5100
trigger3 = var(50) :=1
trigger4 = !var(1) && prevStateNo = 650
trigger4 = target(0), stateno=5100
trigger4 = var(50) :=1
value = 9023
ID = 0

[State -2, reset var(50)]
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)]
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1


[State -2, Hit Wall Spark]
type = Explod
triggerall =!var(55)
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = 8720
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,1,-1)
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Spark]
type = Explod
triggerall =var(55)=1
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = F72
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,-1,1)
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit ground Spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time=0
anim = 8725
pos = 0,0
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
bindtime = 4
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time = 1
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
value = 40, 2
ignorehitpause = 0
supermovetime =99
pausemovetime = 99

[State -2, Hit ground Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time = 1
value = 40, 1
ignorehitpause = 0
supermovetime =99
pausemovetime = 99





[State -2, AssertSpecial]
type = AssertSpecial
triggerall = var(55)=1
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = var(55)=1
trigger1 = numhelper(9010) = 0
helpertype = normal
name = "Shadow"
ID = 9010
stateno = 9010
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
size.xscale = 1
size.yscale = 1


[State -2, a0]
type = Explod
triggerall = var(55)=1
triggerall = (NumExplod(705) = 0)
trigger1 = Pos Y <= -200 && (P2Dist Y > 50)
anim = F705
ID = 705
pos = 0,-140
postype = p2
removetime = -1
bindtime = -1
ontop = 1
ownpal = 1
[State -2, a1]
type = RemoveExplod
triggerall = var(55)=1
trigger1 = p2Dist Y < 50
ID = 705






