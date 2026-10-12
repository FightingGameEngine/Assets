



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
trigger1 = NumPartner 
trigger1 = Partner, sysvar(4) = 4
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
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 2
trigger2 = (sysvar(4) = [8,9]) && StateNo != [1251110,1251111]
value = 5

[State -2, err]
type = ChangeState
trigger1 = NumPartner
trigger1 = ID > Partner, ID
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
triggerall = NumPartner
triggerall = Partner, Time = [0,1]
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
trigger1 = NumTarget
trigger1 = numPartner
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
trigger1 = NumTarget
trigger1 = Target, Statetype != A
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
trigger1 = numtarget
trigger1 = PrevStateNo = 1251123 && (Target, vel y < -0.6)
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
triggerall = NumTarget
triggerall = numPartner
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
triggerall = NumTarget = 1
triggerall = Target, Movetype = H && Target, vel x != 0
trigger1 = StateNo = 1251126 || sysvar(4) = 3
x = ifelse((Target, vel x > 0),0.55,-0.55)

[State -2, UM]
type = SelfState
trigger1 = Numpartner
trigger1 = Partner, StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129


; ------ Uno Tag System v3.2 END LINE ------

;

[State -2,弹墙特效]
type = Helper
triggerall = numtarget(240)
trigger1 = !numhelper(823)
trigger1 = target,stateno = 251
helpertype = normal
ID =  823
stateno = 823
pos = -10,-70
postype = P2
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 1
pausemovetime = 1
name = "弹墙特效"
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State -2,弹墙特效]
type = Helper
triggerall = numtarget(3000)
trigger1 = !numhelper(823)
trigger1 = target,stateno = 1006
helpertype = normal
ID =  823
stateno = 823
pos = -10,-70
postype = P2
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 1
pausemovetime = 1
name = "弹墙特效"
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 4100,1]
type = Helper
trigger1 = numhelper(1000000) = 0
trigger1 = time = 0
ID = 1000000
name = "Shazam Icon"
pos = ifelse(TeamSide = 1,18,302),53
facing =  1
postype = Left
ownpal = 1
sprpriority = -10
stateno = 1000000

[state 0]
type = varset
trigger1 = projhit1677 = 1
fvar(10) = fvar(10)*0.7

[State ]
Type=Explod
TriggerAll=(RoundState=2)&&(Alive)&&(MoveType=I)
triggerall = stateno != [1251112,1251114]
Trigger1=(NumExplod(10000)=0)
Anim=6041
PosType=P1
Pos=0,-55
Scale=0.4,0.4
BindTime=-1
Sprpriority=4
OwnPal=1
RemoveTime=-2
ID=10000

[State HitSpark]
Type=VarSet
Trigger1=!(Movecontact=1)
var(54)=GameTime+1

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=1)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .3
size.yscale = .3

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=1)
HelperType=Normal
Name="HitSpark"
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=2)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .4
size.yscale = .4

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=2)
HelperType=Normal
Name="HitSpark"
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8610
size.xscale = .5
size.yscale = .5
ID = 8600
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=3)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .5
size.yscale = .5

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=3)
HelperType=Normal
Name="HitSpark"
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8620
size.xscale = .5
size.yscale = .5
ID = 8620
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=1)
HelperType=Normal
Name="HitSpark"
ID=21
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=2)
HelperType=Normal
Name="HitSpark"
ID=22
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=3)
HelperType=Normal
Name="HitSpark"
ID=23
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[state 250,11 - Slam Dust]
type = helper
triggerall = !numhelper(60120)
trigger1 = numtarget(650)
trigger1 = target(650), stateno = 328
persistent = 0
stateno = 60120
ID = 60120
postype = p2
pos = 0,500

[State 0, Helper]
type = Helper
triggerall = !numhelper(293)
triggerall = numtarget(1300) 
trigger1 = target(1300), stateno = 451
name = "Smash"
ID = 293
stateno = 293
pos = 0,500
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
triggerall = !numhelper(295)
triggerall = numtarget(1300)
trigger1 = target(1300), stateno = 328 
name = "Smash"
ID = 295
stateno = 293
pos = 0,500
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[state 0 - No more air-combo]
type = varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(29) = 0

[State -2, P2 Recovery]
type= targetstate
trigger1= numtarget(555)


trigger1= (target(555), stateno=5020) && (target(555), alive) && (target(555), hitfall)
ID= 555
value= 5085
ignorehitpause= 1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
fvar(10) = 1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(21) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(45) = 0

[State -2, Final Dampen]
type = null
trigger1 = (fvar(11) := fvar(10)) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = stateno = [3500,3501]
value = 1
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = stateno != [3500,3501]
value = fvar(11)
ignorehitpause = 1

[State -1, DTCB]
type = displaytoclipboard
trigger1 = 1
text = "Damage Dampener: %f"
params = fvar(11)
ignorehitpause = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1




[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=5500,0
channel = -1
ignorehitpause=1
persistent=0



[State -2, gethits]
type = PlaySnd
triggerall = random < 200
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
trigger1 = anim = 5030
trigger2 = anim = 5070
persistent = 1
value = S5000,0

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5000 || Stateno = 5020
trigger1 = movetype = H
value = S5000,1

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5010
trigger1 = movetype = H
value = S5000,2








[Statedef -3]

;  --- Uno Tag System v3.2.1 STATEDEF -3 ---


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
trigger6 = sysvar(4) = 15 && StateNo != [1251101,1251133]
trigger6 = NumTarget = 0 && Partner, NumTarget = 0
sysvar(4) = 1

[State -2, def_Partner]
type = VarSet
trigger1 = numpartner
trigger1 = teammode = simul
trigger1 = roundstate < 1
sysvar(4) = 1 + ((ID > Partner, ID)*4)

[State -3, enterTheScreen]
type = ChangeState
trigger1 = sysvar(4)
trigger1 = NumPartner
trigger1 = StateNo = [1251112,1251114]	
trigger1 = Life 
trigger1 = (Partner, StateNo = [1251109,1251111]) || (Partner, StateNo = 1251125 && Partner, Time > 0)
trigger1 = (Partner, StateNo != 1251110) || (Partner, StateNo = 1251110	&& Partner, Time > 24)
value = ifelse((Partner, StateNo = 1251125),1251131,1251101)

; Jump into the screen (Change Attack)
[State -3, enterTheScreen]
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
triggerall = StateNo = 1251112 && Life
trigger1 = ((Partner, StateNo = 1251126 && Partner, Time > 0) || Partner, PrevStateNo = 1251126)
trigger2 = Partner, NumHelper(1251105)
value = 1251102

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
trigger1 = Partner, sysvar(4) = [12,13]
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

[State -3, Quiet]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 7
trigger1 = !Alive && !NumHelper(1251130)
flag = nokosnd

[State -3, Dark]
type = AssertSpecial
triggerall = numpartner
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
trigger2 = StateNo = 1251127
trigger3 = (sysvar(4) = [8,9]) && StateNo = 1251110 && Time > 12
trigger4 = StateNo = 1251110 && Time > 14
Time = 2
add = 0,0,0
mul = 150,150,150

[State -3, InvBG]
type = BgPalFx
trigger1 = NumHelper(1251130)
trigger2 = StateNo = 1251106
Time = 2
color = 0
invertall = 1
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
mul = 150, 150, 150

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
triggerall = NumPartner 
triggerall = Partner, Alive
trigger1 = Movetype = H
trigger2 = StateNo = [5000,5990]
trigger3 = StateNo = [150,151]
sysvar(4) = 9

[State -3, bangon]
type = SelfState
trigger1 = NumPartner
trigger1 = sysvar(4) = 9
trigger1 = Alive && Partner, Alive
trigger1 = StateNo != 5120
trigger1 = StateNo = 5110 || Anim = 5110
trigger1 = Time >= 12
value =5120

[State -3, leavePA]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) = [8,9]
triggerall = StateType != A || prevStateNo = [5000,5500]
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
trigger1 = StateNo != [1251111,1251112]
trigger1 = sysvar(4) = [8,9]
value = ifelse((Partner, Alive),0, 1)

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
triggerall = numpartner
triggerall = alive=0 && !ishelper && Partner, sysvar(4) && RoundState = 2
trigger1=stateno=5150 && (((time=[80,150])&&(time%10<5))||(time>150))
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
flag=invisible
flag2=noshadow

[state -3, fadeOut]
type=posset
triggerall = numpartner
trigger1 = sysvar(4)
trigger1=stateno=5150 && alive=0 && !ishelper && (time>150)
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
trigger1 = Partner, sysvar(4)
y=-3

[state -3, dead_Var]
type = VarSet
triggerall = numpartner
triggerall = !Alive
triggerall = RoundState = 2
triggerall = StateNo = [5131,5150]
triggerall = Partner, sysvar(4)
trigger1 = Time >= 125
trigger2 = Partner, sysvar(4) = 7
trigger2 = Time >= 85
sysvar(4) = 6

[state -3, awake_Var]
type = VarSet
triggerall = NumPartner 
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
type = SelfState
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

[State -3, 1251129]
type = LifeAdd
trigger1 = PrevStateNo = 1251129 && Time > 1
value = -LifeMax

[State -3, 1251129]
type = SelfState
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
pausemoveTime=99999
supermoveTime=99999

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
trigger1 = NumEnemy
trigger1 = EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
trigger2 = PrevStateNo = 1251121
trigger3 = StateNo = 1251125

[State -3, T_T]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) > 0
trigger1 = RoundState = 2  && Pos Y < 0
trigger1 = StateNo = 0 && (Partner, StateNo != [1251112,1251114])
trigger1 = PrevStateNo = [1251112,1251114]
value = 1251112

[State -3, wait out]
type = ChangeState
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Life && Partner, Life
triggerall = StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 2				; performed team attack
trigger1 = (PrevStateNo = [5000,5500]) || (StateNo != [200,1251199]) && (MoveType != H)
trigger2 = sysvar(4) = 4         		; performed Delayed Cancel
trigger2 = MoveType = I || ((Partner, prevStateNo = 1251131 || Partner, StateNo != [1251101,1251135]) && Time > 1)
trigger3 = sysvar(4) = 3          	; performed Cross Attack
trigger3 = (StateNo = 1251126 && Time > 1) && ((Partner, StateNo = 1251102 && Partner, BackEdgeBodyDist > 15) || Partner, PrevStateNo = [1251115,1251116])
trigger4 = (sysvar(4) = [2,4]) && MoveType = I && (StateNo != [1251101,1251133])
trigger5 = NumHelper(1251125)
trigger5 = StateNo = [0,199]
value = 1251111
ctrl = 0
ignorehitpause = 1

; ---- Uno Tag System v3.2 END LINE ----


;  ;]


[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID)
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y)
ignorehitpause= 1




[State -3, Corner Push]
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]
type= posadd
triggerall= fvar(5)
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85





