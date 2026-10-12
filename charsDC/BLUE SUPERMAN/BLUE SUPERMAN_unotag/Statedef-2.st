



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

;  ;]

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "PalNo = %d, Var(40)= %d, BackEdgeDist = %d, FrontEdgeDist = %d, P2DX = %d, P2DY = %d"
params = PalNo, Var(40), BackEdgeDist, FrontEdgeDist, Ceil(P2Dist X), Ceil(P2Dist Y)
ignorehitpause = 1

[state -1]
type = helper
trigger1 = numhelper(1221) = 0
trigger1 = palno != 5 && (palno != [1,3]) && (palno != [8,9])
ID = 1221
stateno = 777






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



[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s5000,(0+(random%2))
channel=20
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s5000,(0+(random%2))
channel=20
ignorehitpause=1



[State -2, Damage Dampener]
type= attackmulset
triggerall = stateno !=[3000,3999]


trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]
type= attackmulset
triggerall = stateno !=[3000,3999]


trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State -2, Damage Dampener]
type= null
triggerall = stateno !=[3000,3999]
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 2, ifelse(enemynear, gethitvar(hitcount) = 1, 1.8, 1.6**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]
type= null
triggerall = stateno !=[3000,3999]
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 2.0
ignorehitpause= 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3377) != 0
trigger1 = StateNo != 3300
ID = 3377
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020) != 0
trigger1 = StateNo != [3700,4200]
ID = 4020
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4165) != 0
trigger1 = StateNo != [3700,4200]
ID = 4165
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4164) != 0
trigger1 = StateNo != [3700,4200]
ID = 4164
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4163) != 0
trigger1 = StateNo != [3700,4200]
ID = 4163
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4162) != 0
trigger1 = StateNo != [3700,4200]
ID = 4162
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4161) != 0
trigger1 = StateNo != [3700,4200]
ID = 4161
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4160) != 0
trigger1 = StateNo != [3700,4200]
ID = 4160
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, StopSnd]
type = StopSnd
trigger1 = StateNo != [3700,4200]
channel = 14
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020)
trigger1 = StateNo = 4005
trigger1 = Anim = 4007
trigger1 = Time >= 3998
trigger2 = StateNo != [3700,4200]
id = 4020
ignorehitpause = 1
persistent = 1



[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(886) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 816
id = 886
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(34001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3400
id = 34001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(34002) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3400
id = 34002
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7779) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3000
id = 7779
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7879) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3700,4000]
id = 7879
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7889) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3700,4000]
id = 7889
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 2000
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 793
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 792
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 795
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7999) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 7999
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = Null
triggerall = NumExplod(8066) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 8066
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(32001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3200
id = 32001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(31001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3100
id = 31001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(866) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3300,3600]
id = 866
ignorehitpause = 1
persistent = 1

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = StateNo = [3700,4200]
trigger2 = NumTarget
trigger2 = Target, StateNo = 9910
flag = timerfreeze
ignorehitpause = 1
persistent = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumEnemy = 1
trigger1 = Enemy, MoveType = I
trigger2 = P2MoveType = I
v = 40
value = 0
ignorehitpause = 1
persistent = 1




[State -2, VarSet]
type = VarSet
triggerall = !IsHelper
trigger1 = Var(57) != GameTime
v = 57
value = -1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

