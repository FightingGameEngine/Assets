

[Command]
name = "IA1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "IA2"
command = D, U, U, D, D, U
time = 1

[Command]
name = "IA3"
command = D, D, D, U, U, U
time = 1


[Command]
name = "Flight attack"
command = ~20$B, F, z

[Command]
name = "QCB2_X"
command = ~D, DB, B, y+z
time = 22

[Command]
name = "doublepunch"
command = F+z
time = 22


[Command]
name = "QCB2_Y"
command = ~D, DB, B, b+c
time = 22


[Command]
name = "QCB2_Z"
command = ~D, DF, F, z+c
time = 22


[Command]
name = "QCF2_X"
command = ~D, DF, F, D, DF, F, x
time = 22


[Command]
name = "QCF2_Y"
command = ~D, DF, F, y+x
time = 22


[Command]
name = "QCF2_Z"
command = ~D, DF, F, z+y
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, a
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, b+a
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, c+b
time = 22

[Command]
name = "QCF2_P"
command = ~D, DF, F, z+y
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, y+x
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, z+y
time = 22


[Command]
name = "2_Kick"
command = a+b

[Command]
name = "QCB_A"
command = ~D, DB, B, a


[Command]
name = "QCB_B"
command = ~D, DB, B, b


[Command]
name = "QCB_C"
command = ~D, DB, B, c


[Command]
name = "HCB_A"
command = ~D, DF, F, a


[Command]
name = "HCB_B"
command = ~D, DF, F, b


[Command]
name = "HCB_C"
command = ~D, DF, F, c


[Command]
name = "HCF_X"
command = ~D, DF, F, x
time = 25


[Command]
name = "HCF_Y"
command = ~D, DF, F, y
time = 25


[Command]
name = "HCF_Z"
command = ~D, DF, F, z
time = 25

[Command]
name = "Slide_Punch_Z"
command = ~30$B, F, z
time = 10

[Command]
name = "Slide_Kick_C"
command = ~30$B, F, c
time = 10

[Command]
name = "Freeze_X"
command = ~D, DB, B, x
time = 15

[Command]
name = "Freeze_Y"
command = ~D, DB, B, y
time = 15

[Command]
name = "Freeze_Z"
command = ~D, DB, B, z
time = 15

[Command]
name = "Impact"
command = U, x

[Command]
name = "Impact"
command = U, y

[Command]
name = "Impact"
command = U, z

[Command]
name = "DRILL_A"
command = ~D, DB, B, a

[Command]
name = "DRILL_B"
command = ~D, DB, B, b

[Command]
name = "DRILL_C"
command = ~D, DB, B, c

[Command]
name = "Helper1"
command = a+x
time = 1

[Command]
name = "Helper2"
command = D+b
time = 1

[Command]
name = "S_Helper"
command = z+c
time = 1

[Command]
name = "QCF_X"
command = ~D, DB, B, x

[Command]
name = "QCF_Y"
command = ~D, DB, B, y

[Command]
name = "QCF_Z"
command = ~D, DB, B, z


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "zc"
command = z+c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1


[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "down_c"
command = /$D,c
time = 1


[Command]
name = "down_x"
command = /$D,x
time = 1


[Command]
name = "down_y"
command = /$D,y
time = 1


[Command]
name = "down_z"
command = /$D,z
time = 1


[Command]
name = "fwd_y"
command = /F,y
time = 1


[Command]
name = "fwd_z"
command = /F,z
time = 1


[Command]
name = "a"
command = a
time = 1


[Command]
name = "b"
command = b
time = 1


[Command]
name = "c"
command = c
time = 1


[Command]
name = "x"
command = x
time = 1


[Command]
name = "y"
command = y
time = 1


[Command]
name = "z"
command = z
time = 1


[Command]
name = "s"
command = s
time = 1


[Command]
name = "SuperJump"
command = ~D, U
time = 10


[Command]
name = "holdfwd"
command = /$F
time = 1


[Command]
name = "holdback"
command = /$B
time = 1


[Command]
name = "holdup"
command = /$U
time = 1


[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holdx"
command = /$x
time = 10

[Command]
name = "holdy"
command = /$y
time = 10






;   --- Uno Tag System [Type-S] Command definitions ---

[Command]
name = "aHsoNn"
command = ~D, D, D, z+c
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 65 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,1251199]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = Power >= 500
trigger1 = command = "turtleuno"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(var(59)**2/64.0))
trigger3 = var(59) >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Team Hyper Attack]
type = ChangeState
value = 1251125
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = Partner, life > 0
triggerall = power >= 3000
triggerall = RoundState = 2 
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 9		
triggerall= (StateType != A)
trigger1 = command = "sheoun"
trigger1 = (Ctrl = 1)
trigger1 = var(59) <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = movetype = A
trigger2 = hitdefattr = SC, NA
trigger2 = MoveContact
trigger2 = var(59) <=  0
trigger3 = var(59) > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = var(59) >  0 > 0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
ignorehitpause = 1

[State -1, Delayed Hyper]
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time > 2 && Time > 45
triggerall = movetype = A
triggerall = StateNo = [2000,1251100]
triggerall = hitdefattr = SCA, HA, HP, HT || (StateNo >= 2000 && StateNo < 4000 && (hitcount < 8 || NumTarget && Target, GetHitVar(hitTime) >= 0))
trigger1 = command = "sheoun"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(var(59)**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = var(59) >  0
trigger3 = Partner, Time > 25 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2*(3*(Lifemax/5) && Life < Partner, Life) * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
ignorehitpause = 1

[State -1, UNO Mode]
type = ChangeState
value = 1251128
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0 && Power >= 1000
triggerall = Life <= (Lifemax/8)
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 20
triggerall = (StateType != A) && ((Ctrl = 1) || StateNo = 0 || (Movetype = A && hitdefattr = SC, NA))
trigger1 = command = "aHsoNn"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = Partner, Life < Lifemax/4
trigger2 = Random < ((25 + ifelse((Partner, Life < Lifemax/6), 25, 5))*(var(59)**2/64.0))

[State -1, Quick Change]
type = Helper
Helpertype = Normal
ID = 1251105
StateNo = 1251105
name = "Cross"
pos =0,0
postype = p1
ownpal = 0
supermoveTime = 9999
pausemoveTime = 9999
triggerall = !NumHelper(1251105)
triggerall = NumPartner
triggerall = power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000)
triggerall = Partner, life > 0
triggerall = Movetype = A && !(Hitdefattr = SCA, HT, HA, HP)
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114) && Time > 1
triggerall = (Partner, sysvar(4) != [8,9])
triggerall = StateNo = [200,2900]
triggerall = StateNo != [3000,1251116]
triggerall = NumTarget > 0 && Target, StateNo != [5110,5955]
trigger1 = command = "palit"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = MoveContact && UniqHitCount >= 3
trigger2 = Random < (((50*(var(59)**2/64.0)) + ((hitdefattr = SCA, SA)*10) + ifelse(lifemax/life > 25, 25, lifemax/life)) * ifelse((Target, statetype = A), 0.8, 1)*(1 + (Life < Lifemax*0.4)*1))
trigger2 = Partner, Life > Lifemax/8 || Life < Partner, Life
trigger2 = Partner, Time >= 120
trigger3 = var(59) >  0
trigger3 = Partner, Time > 30
trigger3 = Random < ((25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(var(59)**2/64.0))*Uniqhitcount)
trigger3 = MoveContact
ctrl = 0
ignorehitpause = 1

[State -1, TagIn]
type = ChangeState
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2 
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40	
triggerall = StateNo != [1251101,1251133]
triggerall = (MoveType != A && StateType != A) && (Ctrl = 1) || StateNo = 0
trigger1 = command = "palit"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = var(59) >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = var(59) >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(var(59)**2/64.0))

[State -1, C_6]
type = CtrlSet
value = 1
triggerall = RoundState = 2 && NumPartner
triggerall = NumTarget && Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c" 
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 2
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-S] END LINE -------

;  ;]
[State -1,78]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 50000
triggerall = command = "Flight attack"
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,78]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 50001
triggerall = command = "Flight attack"
trigger1 = var(3) = 0
trigger1 = statetype = A
trigger1 = Var(1) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 410 && MoveContact
trigger4 = stateno = 420 && MoveContact
trigger5 = stateno = 430 && MoveContact
trigger6 = stateno = 440 && MoveContact

[State -1,-1]
type = NotHitBy
triggerall = IsHelper = 0
trigger1 = Var(1) > 0
value = SCA, HTP


[State -1,0]
type = VarAdd
trigger1 = Var(1) > 0
V = 1
value = -1


[State -1,1]
type = VarAdd
trigger1 = Var(5) > 0
V = 5
value = -1


[State -1,2]
type = VarSet
triggerall = P2StateNo = 1080
trigger1 = NumHelper(040) = 1
trigger2 = NumHelper(050) = 1
trigger3 = NumHelper(060) = 1
trigger4 = NumHelper(070) = 1
V = 3
Value = 1


[State -1,3]
type = VarSet
triggerall = Var(3) = 1
trigger1 = NumHelper(040) = 0
trigger1 = NumHelper(050) = 0
trigger1 = NumHelper(060) = 0
trigger1 = NumHelper(070) = 0
V = 3
Value = 0


[State -1,4]
type = VarAdd
trigger1 = Var(4) > 0
V = 4
value = -1



[State -1,5]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31008
trigger1 = command = "QCB2_Z"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = Var (1) = 0
trigger1 = ctrl = 1

[State -1,6]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 71001
trigger1 = command = "QCB2_Z"
trigger1 = power >= 1000
trigger1 = Statetype = A
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,7]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3001
trigger1 = command = "QCB2_X"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,8]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 741
trigger1 = command = "QCB2_X"
trigger1 = power >= 1000
trigger1 = statetype = A
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,10]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31142
trigger1 = command = "QCB2_Y"
trigger1 = power >= 2000
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,11]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31009
triggerall = command = "QCF2_X"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,12]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31135
triggerall = command = "QCF2_X"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,13]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3011
triggerall = command = "QCF2_Z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,14]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31136
triggerall = command = "QCF2_Z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,15]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = command = "QCF2_Y"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,16]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31137
triggerall = command = "QCF2_Y"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1,17]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3200
triggerall = command = "QCF2_K"
triggerall = power >= 1000
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,18]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 31130
triggerall = command = "QCF2_K"
triggerall = power >= 1000
triggerall = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,19]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3204
triggerall = command = "QCF2_K"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 202
trigger4 = MoveContact
trigger4 = stateno = 204
trigger5 = MoveContact
trigger5 = stateno = 201
trigger6 = MoveContact
trigger6 = stateno = 203
trigger7 = MoveContact
trigger7 = stateno = 205
trigger8 = MoveContact
trigger8 = stateno = 400
trigger9 = MoveContact
trigger9 = stateno = 402
trigger10 = MoveContact
trigger10 = stateno = 404
trigger11 = MoveContact
trigger11 = stateno = 401
trigger12 = MoveContact
trigger12 = stateno = 403
trigger13 = MoveContact
trigger13 = stateno = 405

[State -1,20]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 738
triggerall = command = "QCF2_P"
trigger1 = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1,22]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 712
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_A"

[State -1,23]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1030
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_B"

[State -1,24]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 710
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_C"

[State -1,25]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 9000
triggerall = command = "2_Kick"
trigger1 = ctrl = 1

[State -1,26]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4600
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdx"
trigger1 = command = "holdy"

[State -1,27]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,28]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1610
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,29]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1012
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,30]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1612
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,31]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1014
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,32]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1614
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,33]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1033
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Punch_Z"

[State -1,34]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 703
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Kick_C"

[State -1,35]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 720
triggerall = command = "Freeze_X"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,36]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 730
triggerall = command = "Freeze_Y"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,37]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 725
triggerall = command = "Freeze_Z"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,38]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1040
triggerall = command = "DRILL_A"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,39]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1042
triggerall = command = "DRILL_B"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,40]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1044
triggerall = command = "DRILL_C"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,41]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1080
triggerall = p2name = "Superman" || p4name = "Superman"
trigger1 = command = "Helper1"
trigger1 = numhelper(2222) != 1
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,42]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1020
triggerAll = command = "Helper1"
triggerall = p2name != "Superman" || p4name = "Superman"
trigger1 = var(3) = 0
trigger1 = numhelper(650) != 1
trigger1 = numhelper(008) = 0
trigger1 = numhelper(010) = 0
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,43]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1090
trigger1 = command = "S_Helper"
trigger1 = var (3) != 0
trigger1 = numhelper(1111) = 0
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,44]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 145
triggerall = Command = "HCB_B"
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,45]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 713
triggerall = Command = "HCB_A"
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,46]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3021
triggerall = command = "Helper2"
triggerall = p2name != "Superman" || p4name = "Superman"
trigger1 = var(3) = 0
trigger1 = numhelper(650) != 1
trigger1 = numhelper(008) = 0
trigger1 = numhelper(010) = 0
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,47]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 711
triggerall = Command = "HCB_C"
trigger1 = pos y < -10
trigger1 = StateType = A
trigger1 = Ctrl = 1

[State -1,49]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = Command = "QCF_X"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,50]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1001
triggerall = Command = "QCF_Y"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,51]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1002
triggerall = Command = "QCF_Z"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,52]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,53]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1,54]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
trigger1 = p2bodydist Y >=-20
trigger1 = p2bodydist X < 20
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,55]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = p2bodydist Y >=-20
triggerall = p2bodydist X < 20
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = S


[State -1,56]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = p2bodydist Y <=25
triggerall = p2bodydist Y >=-25
triggerall = p2bodydist X < 20
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = A


[State -1,57]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time > 9
trigger3 = MoveContact
trigger3 = stateno = 200
trigger4 = stateno = 100
trigger5 = stateno = 105


[State -1,58]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 203
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 401
trigger5 = MoveContact
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,59]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 205
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 400
trigger5 = MoveContact
trigger5 = stateno = 401
trigger6 = MoveContact
trigger6 = stateno = 402
trigger7 = MoveContact
trigger7 = stateno = 403
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,60]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 9
trigger3 = stateno = 100
trigger4 = stateno = 105

[State -1,61]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 202
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 401
trigger5 = MoveContact
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,62]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 204
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 203
trigger5 = MoveContact
trigger5 = stateno = 400
trigger6 = MoveContact
trigger6 = stateno = 401
trigger7 = MoveContact
trigger7 = stateno = 402
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,63]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 401
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = time > 6
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200


[State -1,64]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 403
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200



[State -1,65]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 405
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200


[State -1,66]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 9
trigger3 = MoveContact
trigger3 = stateno = 200


[State -1,67]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200


[State -1,68]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 404
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200


[State -1,69]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 601
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact
Trigger3 = Stateno = 5400


[State -1,70]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 603
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 602
Trigger5 = Stateno = 5400


[State -1,71]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 605
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 603
trigger5 = MoveContact
trigger5 = stateno = 602
trigger6 = MoveContact
trigger6 = stateno = 604
Trigger7 = Stateno = 5400



[State -1,72]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = Stateno = 5400


[State -1,73]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 602
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
Trigger4 = Stateno = 5400


[State -1,74]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 604
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 603
trigger5 = MoveContact
trigger5 = stateno = 602
Trigger6 = Stateno = 5400


[State -1,75]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 197
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,76]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5400
triggerall = command = "SuperJump"
triggerall = statetype != A
Trigger1 = Ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 105


[State -1,77]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5400
triggerall = command = "holdup"
trigger1 = MoveContact
trigger1 = stateno = 404
trigger2 = MoveContact
trigger2 = stateno = 202

