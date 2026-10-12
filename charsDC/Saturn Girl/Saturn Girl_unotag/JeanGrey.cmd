



































































































[Command]
name = "QCF_PP"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, x+z
time = 20


[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[command]
name = "QCF_AA"
command = ~D,DF,F,a
time = 15

[command]
name = "QCF_BB"
command = ~D,DF,F,b
time = 15

[command]
name = "QCF_CC"
command = ~D,DF,F,c
time = 15

[command]
name = "TK_Shld"
command = /$s,B
time = 15

[command]
name = "TK1"
command = /$B, x
time = 15

[command]
name = "TK2"
command = /$B, y
time = 15

[command]
name = "TK3"
command = /$B, z
time = 15

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "Psi-Blade_L"
command = ~D,DB,B,a

[Command]
name = "Psi-Blade_M"
command = ~D,DB,B,b

[Command]
name = "Psi-Blade_H"
command = ~D,DB,B,c


[Command]
name = "FF"
command = F, F
time = 20

[Command]
name = "BB"
command = B, B
time = 20


[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "Grab Attack"
command = /$s,F
time = 1

[Command]
name = "Xmen"
command = /$s,D
time = 1

[Command]
name = "Fly"
command = /$s,U
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
name = "start"
command = s
time = 1


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
name = "holdstart"
command = /$s
time = 1


[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1











[Command]
name = "Super Jump"
command = ~$D, $U
time = 20


[Command]
name = "Advance Guard Standing/Jumping"
command = c+z
time = 10

[Command]
name = "Advance Guard Crouching"
command = c+z
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(AILevel**2/64.0))
trigger3 = AILevel >  0
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
trigger1 = AILevel <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = movetype = A
trigger2 = hitdefattr = SC, NA
trigger2 = MoveContact
trigger2 = AILevel <=  0
trigger3 = AILevel > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = AILevel >  0 > 0
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(AILevel**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = AILevel >  0
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Partner, Life < Lifemax/4
trigger2 = Random < ((25 + ifelse((Partner, Life < Lifemax/6), 25, 5))*(AILevel**2/64.0))

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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = MoveContact && UniqHitCount >= 3
trigger2 = Random < (((50*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA)*10) + ifelse(lifemax/life > 25, 25, lifemax/life)) * ifelse((Target, statetype = A), 0.8, 1)*(1 + (Life < Lifemax*0.4)*1))
trigger2 = Partner, Life > Lifemax/8 || Life < Partner, Life
trigger2 = Partner, Time >= 120
trigger3 = AILevel >  0
trigger3 = Partner, Time > 30
trigger3 = Random < ((25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))*Uniqhitcount)
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = AILevel >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = AILevel >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(AILevel**2/64.0))

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




[State -1, Telekinetic Rock ShoweC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = command = "QCF_PP"
triggerall = statetype = S
triggerall = Numprojid(3002) = 0
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact



[State -1, Phoenix Super]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = command = "QCF_KK"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact



[State -1, Memories of the Past]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3200
triggerall = command = "QCB_PP"
triggerall = statetype = S
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact













[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 55
triggerall = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1011
triggerall = numhelper(1012) = 0
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])


[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1041
triggerall = numhelper(1042) = 0
triggerall = command = "QCF_y"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])


[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1081
triggerall = numhelper(1082) = 0
triggerall = command = "QCF_z"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])





[State -1, Advance Guard Standing]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 909
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = S
trigger1 = stateno = [150,153]

[State -1, Advance Guard Crouching]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 910
triggerall = command = "Advance Guard Crouching"
triggerall = statetype = C
trigger1 = stateno = [150,153]

[State -1, Advance Guard Jumping]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 911
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = A
trigger1 = stateno = [154,155]











[State -1, Helper1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 9995
triggerall = StateType != A
triggerall = power >= 500
triggerall = NumHelper = 0

triggerall = Ctrl = 1

trigger1 = command = "Xmen"




[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1040
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_y"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Mind Blast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1080
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_z"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Telekinetic Attack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = command = "QCB_x"
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Telekinetic Attack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1420
triggerall = command = "QCB_y"
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Telekinetic Attack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1430
triggerall = command = "QCB_z"
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = numprojid(6) = 0
triggerall = numprojid(7) = 0
triggerall = numprojid(8) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Telekinetic Grab Attack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1440
triggerall = command = "Grab Attack"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact



[State -1, Telekinetic Shield]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = command = "TK_Shld"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = statetype = A && stateno = 1702
trigger3 = ctrl



[State -1, Telekinesis 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1300
triggerall = var(7) = 0
triggerall = command = "TK1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1
trigger3 = statetype = A && stateno = 1702
trigger3 = ctrl



[State -1, Telekinesis 2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1320
triggerall = var(7) = 0
triggerall = command = "TK2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1
trigger3 = statetype = A
trigger3 = stateno = 1702
trigger3 = ctrl



[State -1, Telekinesis 3]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1340
triggerall = var(7) = 0
triggerall = command = "TK3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1
trigger3 = statetype = A
trigger3 = stateno = 1702
trigger3 = ctrl



[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = var(7) = 0
triggerall = command = "QCF_AA"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1




[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2010
triggerall = var(7) = 0
triggerall = command = "QCF_BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1




[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2020
triggerall = command = "QCF_CC"
triggerall = var(7) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1



[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2040
triggerall = var(7) = 0
triggerall = command = "QCF_AA"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1



[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2060
triggerall = var(7) = 0
triggerall = command = "QCF_BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1



[State -1, Phoenix Slide]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2080
triggerall = var(7) = 0
triggerall = command = "QCF_CC"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440
trigger2 = movecontact = 1



[State -1, Psi-Blade_L]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1210
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_L"
trigger1 = ctrl



[State -1, Psi-Blade_M]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_M"
trigger1 = ctrl



[State -1, Psi-Blade_H]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1220
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_H"
trigger1 = ctrl





[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,101]



[State -1, Air Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 102



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [105,106]



[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



[State -1, Flight]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1700

triggerall = StateType != A
triggerall = command = "Fly"
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [200,499]



[State -1, Air Flight]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1701

triggerall = StateType = A
triggerall = command = "Fly"
triggerall = Pos Y >= -270
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [600,699]



[State -1, End Flight]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1704

triggerall = StateType = A
triggerall = command = "Fly"
triggerall = var(49) > 1
trigger1 = StateNo = 1702




[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (movecontact >= 1)
trigger3 = (StateNo = 230) && (movecontact >= 1)
trigger4 = (StateNo = 240) && (movecontact >= 1)



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 420) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)



[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)



[State -1, Standing Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)
trigger3 = (stateno = 230) && (MoveContact >= 1)



[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 251
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)
trigger3 = (stateno = 440) && (MoveContact >= 1)
trigger4 = (stateno = 240) && (MoveContact >= 1)



[State -1, Taunt]
type = null
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl



[State -1, Crouching Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl



[State -1, Crouching Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)



[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)



[State -1, Crouching Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)



[State -1, Crouching Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 410) && (movecontact >= 1)



[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 451
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)



[State -1, Jump Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl


[State -1, Jump Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 640) && (movecontact >= 1)
trigger4 = (StateNo = 630) && (movecontact >= 1)



[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 630) && (movecontact >= 1)
trigger4 = (StateNo = 640) && (movecontact >= 1)
trigger5 = (StateNo = 610) && (movecontact >= 1)



[State -1, Jump Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)



[State -1, Jump Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 630) && (movecontact >= 1)
trigger4 = (StateNo = 610) && (movecontact >= 1)



[State -1, Jump Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 630) && (movecontact >= 1)
trigger4 = (StateNo = 640) && (movecontact >= 1)
trigger2 = (StateNo = 610) && (movecontact >= 1)

