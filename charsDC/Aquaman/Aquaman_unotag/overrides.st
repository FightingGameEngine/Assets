


















[Statedef 100]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S172,17

[State 100, lines]
type = Explod
trigger1 = time = 0
anim = 101
ID = 101
removetime = -2
vel = const(velocity.run.fwd.x), 0
postype = p1
pos = -20,0
sprpriority = 5
bindtime = 1
ownpal = 1

[State 100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
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

[State -2, debug]
type = DisplayToClipboard
trigger1 = 1
text = "PalNo: %d - X Dist: %f"
params = PalNo, P2bodydist X

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State 0, ChangeState]
type = ChangeState
triggerall = Var(59) >= 1
trigger1 = Stateno = 40
value = 0
ctrl = 1

ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
triggerall = Var(59) >= 1
trigger1 = Stateno = 20
value = 21

ignorehitpause = 1


[State -2, jump landing sound]
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1








[State -2, gethits]
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002
trigger2 = anim = 5012
trigger3 = anim = 5022
trigger4 = anim = 5030
trigger5 = anim = 5070
persistent = 0
value = 4,0

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

[State 0, ChangeState]
type = ChangeState
triggerall = stateno = 0
trigger1 = enemynear,name="Namor" && enemynear, var(10) = 1
value = 3301
ctrl = 0





[State -2, Clear DF Var]
type = VarSet
trigger1 = RoundState = 4
v = 5
value = 0

[State -2, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1

[State -2, Remove BackGround]
type = AssertSpecial
triggerall = NumExplod(1005) = 1
trigger1 = var(5) = 1
flag = NoBG
ignorehitpause = 1







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

[State -3, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(10000)
trigger1=roundstate=2
trigger1=alive
trigger1=var(59)=0
Trigger1=PrevStateNo=191||PrevStateNo=5900
Trigger1=ctrl&&stateno=0
helpertype=normal
name="AI"
stateno=10000
ID=10000
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0


[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(10000)
trigger1= stateno!=10000
value=10000

[State -3, ???????]
type = VarRandom
triggerall = var(59) >= 1

triggerall = animelemtime(2) > 0

trigger1   = roundstate = 2
v = 58
range = 0,99

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
value = 8, 1



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



[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1


[State -3, Explod]
type = Explod
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
sprpriority = -1
ownpal = 1
























[State -3, Decrement DF]
type = VarAdd
triggerall = var(4) > 0
trigger1 = var(5) = 1
trigger1 = StateNo != 3100
v = 4
value = -1
ignorehitpause = 1


[State -3, Leave DF]
type = ChangeState
triggerall = var(5) = 1
triggerall = StateNo != 3100
trigger1 = var(4) <= 0
trigger2 = life = 0
trigger3 = Win
trigger4 = command = "qcb_2k"
trigger4 = !var(11)
trigger5 = RoundState = 3
value = 3200


[State -3, DF VarSet]
type = VarSet
trigger1 = var(5) = 1
trigger1 = MoveType != H
var(3) = StateNo

[State -3, Overide Hits]
type = HitOverRide
trigger1 = var(5) = 1
time = 2
slot = 0
attr = SCA, AA, AP, AT
stateno = 3211

[State -3, Don't Leave 3000's During DF]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = Movetype = H
trigger1 = Stateno != 3211
value = 3050

[State -3, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1


[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,7
channel = 0
ignorehitpause = 1
volume = 255

[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,9
channel = 0
ignorehitpause = 1
volume = 255




[State -1, Throw]
type = ChangeState
value = 800
TriggerAll=var(59)
TriggerAll=RoundState = 2
TriggerAll=StateType != A
TriggerAll=EnemyNear,StateType != L

TriggerAll=EnemyNear,MoveType = I
TriggerAll=P2BodyDist X=[-5,10]
TriggerAll=EnemyNear,StateType!=A
triggerall=Frontedgedist >= 50
Trigger1=Ctrl||Stateno = 21 || Stateno = 52
Trigger1 = Random <= 500
Trigger2=Ctrl||Stateno = 21 || Stateno = 52
Trigger2 = (EnemyNear,StateNo=[120,159])

[State -1, Throw]
type = ChangeState
value = 800
TriggerAll=var(59) != 0
TriggerAll=RoundState = 2
TriggerAll=StateType != A
TriggerAll=EnemyNear,StateType != L
TriggerAll=EnemyNear,MoveType != H
TriggerAll=EnemyNear,MoveType = I
TriggerAll=P2BodyDist X=[-5,10]
TriggerAll=EnemyNear,StateType!=A
triggerall=Frontedgedist >= 50
Trigger1=Ctrl||StateNo = 100 || (Stateno=21)
Trigger1 = Random <= var(59)*38

Trigger2=Ctrl||StateNo = 100 || (Stateno=20)
Trigger2 = (EnemyNear,StateNo=[120,159])

[State -1, Idle]
type = changestate
value = 0
triggerall = Var(59) && numenemy&&roundstate = 2 && statetype != A && enemynear, movetype = A && (p2stateno=[5100,5220])
trigger1=ctrl

[State -1, AI run]
type=changestate
value=21
triggerall = roundstate = 2
triggerall = p2stateno!=800 || p2bodydist x >10
triggerall=(var(59)!=0) && statetype!=A && ctrl
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[5,149])


[State -3]
Type = ChangeState
Value = 120
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType = A
TriggerAll = Ctrl || (Stateno = [20,21])
TriggerAll = IfElse(Facing*(EnemyNear,Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
Trigger1 = InGuardDist || (Facing*(EnemyNear,Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear,Facing)*P2Dist X >0
Trigger2 = Enemy,NumProj > 0
Trigger3 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear,Vel X > 0
Trigger4 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist

[State -3]
Type = ChangeState
Value = 120
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType != A
TriggerAll = Ctrl || (Stateno = [20,21])
TriggerAll = IfElse(Facing*(EnemyNear,Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
Trigger1 = InGuardDist || (Facing*(EnemyNear,Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear,Facing)*P2Dist X >0
Trigger2 = Enemy,NumProj > 0
Trigger3 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear,Vel X > 0
Trigger4 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist



[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 850

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

[State -3,??????]
Type     = ChangeState
Value    = 42
Triggerall = var(59) > 0
Triggerall = StateType != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType = H
Triggerall = EnemyNear,Statetype = A
Triggerall = EnemyNear, Stateno != [120,152]
triggerall=Roundstate=2
Triggerall = !inguarddist
Triggerall = Ctrl||StateNo = 21
triggerall = p2stateno != 1110
triggerall = P2bodydist X = [20,90]
trigger1 = Random <= var(59)*60

[State -3,??????]
Type     = ChangeState
Value    = 41
Triggerall = var(59) > 0
Triggerall = StateType != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != A
Triggerall = EnemyNear,Statetype != A
Triggerall = EnemyNear, Stateno != [120,152]
triggerall=Roundstate=2
Triggerall = !inguarddist
Triggerall = Ctrl||StateNo = 21
triggerall = P2bodydist X = [20,50]
trigger1 = Random <= var(59)*60


[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2statetype = L
trigger1 = p2bodydist X = [-5,100]
trigger1 = Backedgedist <= 100
trigger1 = Var(58) = [70,99]
trigger1 = Ctrl || Stateno = 21
trigger2 = Teammode = Simul
trigger2 = p2stateno = [5000,5070]
trigger2 = Partner, ALIVE
trigger2 = p2bodydist X = [50,135]
trigger2 = Backedgedist >= 30
trigger2 = Var(58) = [50,85]
trigger2 = Ctrl || Stateno = 21
trigger3 = p2statetype = S
trigger3 = p2movetype = A
trigger3 = Enemy, Numproj <= 0
trigger3 = Ctrl || Stateno = 21
trigger3 = p2bodydist X = [100,205]


[State -1, Hyper1]
type = ChangeState
value = 3400
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2stateno = 1110
trigger1 = Ctrl || Stateno = 21
trigger1 = p2bodydist X = [-10,100]
trigger2 = p2stateno = [5050,5070]
trigger2 = Var(58) = [60,70]
trigger2 = Ctrl || Stateno = 21
trigger2 = p2bodydist X = [50,150]
trigger2 = p2bodydist Y = [-100,0]


[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = Random < 25
trigger1 = p2bodydist X = [100,200]
trigger1 = p2bodydist Y = [0,50]
trigger1 = Ctrl || Stateno = 21
trigger1 = Var(58) = [50,70]
trigger1 = Life >= 200

[State -1, Hyper1]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [110,240]
trigger1 = p2stateno = [5050,5070]
trigger1 = Ctrl || Stateno = 21
trigger1 = Var(58) = [20,55]
trigger1 = Random < 777







[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (!IsHelper) && enemynear, stateno != 1110
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [75,105]
trigger1 = Var(58) = [40,55]
trigger1 = p2movetype = I
trigger1 = p2statetype = S
trigger1 = Ctrl || Stateno = 21
trigger2 = Stateno = 410
trigger2 = Moveguarded
trigger2 = Random < 350


[State -1, Special1]
type = ChangeState
value = 1200
triggerall = numhelper(1201) = 0
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = Var(58) = [0,70]
trigger1 = p2bodydist X = [-5,80]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2stateno = [5050,5070]
trigger2 = Frontedgedist <= 85
trigger2 = Stateno = 250
trigger2 = Movecontact
trigger3 = Frontedgedist <= 85
trigger3 = Stateno = 450
trigger3 = Movecontact
trigger4 = p2stateno = 1110
trigger4 = p2bodydist X = [-5,80]
trigger4 = Power < 1000
trigger4 = Ctrl || Stateno = 21


[State -1, Special1]
type = ChangeState
value = 1400
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = numexplod(1403) = 0
triggerall = (!IsHelper) && enemynear, stateno != 1110
trigger1 = p2bodydist X = [165,210]
trigger1 = p2statetype = C
trigger1 = Random < 777
trigger1 = Ctrl || Stateno = 20
trigger2 = Stateno = 420
trigger2 = Movehit
trigger3 = Teammode = Simul
trigger3 = p2bodydist X = [165,210]
trigger3 = p2stateno = [5000,5050]
trigger3 = Ctrl || Stateno = 21
trigger4 = Ctrl || Stateno = 21
trigger4 = p2bodydist X = [100,150]
trigger4 = p2bodydist Y = [-100,-50]
trigger4 = Var(58) = [30,45]
trigger4 = p2statetype = A
trigger4 = Random <= 777


[State -1, Special1]
type = ChangeState
value = 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [175,250]
trigger1 = Var(58) = [20,60]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2movetype = A
trigger1 = Enemy, Numproj <= 0
trigger2 = p2bodydist X = [175,250]
trigger2 = Ctrl || Stateno = 21
trigger2 = Var(58) = [70,99]
trigger2 = p2movetype = I
trigger2 = Random < 500
































[State -1, BackDash]
type = ChangeState
value = 105
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2stateno = 5120
trigger1 = p2bodydist X = [-5,20]
trigger1 = Ctrl || Stateno = 21



[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) >= 0
triggerall = numenemy
triggerall = statetype != A && life >= 0.5 * lifemax
triggerall = (enemynear, life) <= 0.5 * (enemynear, lifemax)
triggerall = Stateno != 195
triggerall = Prevstateno != 195
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < 100














[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [0,20]
trigger1 = p2bodydist X = [-5,50]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A



[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 200
trigger1 = Movecontact



[State -1, Z]
type = ChangeState
value = 800
triggerall = var(59)
Triggerall = Roundstate = 2
Triggerall = Statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype != H
triggerall = EnemyNear,stateno != [130,153]
triggerall = EnemyNear,stateno != [5000,5299]
Triggerall = P2bodyDist x = [-10,10]
triggerall = (stateno=[120,140])||(prevstateno=[800,810])||(StateNo=800&&AnimElemTime(7)>=0)||(StateNo=810&&AnimElemTime(7)>=0)||!inguarddist
triggerall = ctrl||(stateno=[120,140])||stateno=21
trigger1 = EnemyNear,stateno=52




[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 210
trigger1 = MoveHit



[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [21,40]
trigger1 = p2bodydist X = [-5,45]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A


[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 230
trigger1 = Movecontact


[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 240
trigger1 = MoveHit





[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [41,60]
trigger1 = p2bodydist X = [-5,40]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A



[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 400
trigger1 = Movecontact



[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 410
trigger1 = Movehit



[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [61,90]
trigger1 = p2bodydist X = [-5,40]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A



[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 430
trigger1 = Movecontact



[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 440
trigger1 = Movehit
trigger2 = Stateno = 210
trigger2 = Moveguarded
trigger3 = stateno = 240
trigger3 = Moveguarded





[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-85,5]
trigger1 = p2bodydist X = [-5,45]
trigger1 = Ctrl
trigger1 = p2statetype = A



[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 600
trigger1 = Movecontact



[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 610
trigger1 = Movecontact
trigger2 = Stateno = 105
trigger2 = Ctrl



[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-90,0]
trigger1 = p2bodydist X = [-5,30]
trigger1 = Ctrl
trigger2 = Ctrl
trigger2 = p2bodydist X = [-5,30]
trigger2 = p2bodydist Y = [-65,25]
trigger2 = p2statetype != A



[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 630
trigger1 = Movecontact



[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 640
trigger1 = Movecontact
trigger1 = p2statetype = A



[State -1, Crouch Light Punch]
type = ChangeState
value = 3120
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3110
trigger1 = Movecontact

[State -1, Crouch Light Punch]
type = ChangeState
value = 3130
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3120
trigger1 = MoveHit

[State -1, Crouch Light Punch]
type = ChangeState
value = 3150
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3140
trigger1 = Movecontact

[State -1, Crouch Light Punch]
type = ChangeState
value = 3160
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3150
trigger1 = MoveHit









[Statedef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


[Statedef 10000]
anim=10000
ctrl=0

[State 10000,?????｢???{・?????????ｧ???????s]
type=selfstate
trigger1=!ishelper
value=0

[State 10000,?v???C???[・・]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
var(59)=-1

[State 10000,?ｧ??????????]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 10000,?ﾗ??ON]
type=varset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1






[Statedef 21]
type    = S
physics = S
sprpriority = 0
ctrl = 1

[State 20, 1]
type = VelSet
triggerall = var(59) && roundstate = 2
trigger1 = EnemyNear,stateno != [5000,5020]
trigger1 = P2bodydist X > 10
trigger2 = EnemyNear,stateno = [5000,5020]
trigger2 = P2bodydist X > 10
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
triggerall = var(59) && roundstate = 2
trigger1 = EnemyNear,stateno != [5000,5020]
trigger1 = P2bodydist X < 5
x = const(velocity.walk.back.x)

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

[State 0, Turn]
type = Turn
trigger1 = p2dist X <= -5
trigger1 = animelem = 1





[Statedef 41]
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
trigger1 = 1
sysvar(1) = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y) / 2

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



[Statedef 42]
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
trigger1 = 1
sysvar(1) = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
