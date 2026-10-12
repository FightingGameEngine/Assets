

































































[Command]
name = "thor"
command = ~D,DF,F,a


[Command]
name = "spiderman"
command = c+z


[Command]
name = "capitao america"
command = a+x


[Command]
name = "detona"
command = ~D, DF, F, D, DF, F, x
time = 30


[Command]
name = "detona1"
command = ~D, DF, F, D, DF, F, y
time = 30


[Command]
name = "QCF_2p"
command = ~D, DF, F, y
time = 15


[Command]
name = "visao"
command = ~D,DB,B,a
time = 15


[Command]
name = "combo1"
command = ~D, B, x


[Command]
name = "special kick"
command = ~D, F, b


[Command]
name = "fly"
command = x+y
time = 1


[Command]
name = "heel shoot"
command = F, b


[Command]
name = "elbow dash"
command = ~F, F, a


[Command]
name = "sequencia de golpes"
command = ~D, F, x


[Command]
name = "QCB_b"
command = ~D, DB, B, b


[Command]
name = "gaviao arqueiro"
command = D, DF, F, c








[Command]
name = "QCF_c"
command = ~D, DF, F, c


[Command]
name = "QCF_x"
command = ~D, DF, F, x


[Command]
name = "QCF_y"
command = ~D, DF, F, y


[Command]
name = "QCF_z"
command = ~D, DF, F, z



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
name = "uppercut_a"
command = ~F, D, DF, a


[Command]
name = "uppercut_b"
command = ~F, D, DF, b


[Command]
name = "uppercut_c"
command = ~F, D, DF, c


[Command]
name = "uppercut_x"
command = ~F, D, DF, x


[Command]
name = "uppercut_y"
command = ~F, D, DF, y


[Command]
name = "uppercut_z"
command = ~F, D, DF, z



[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10


[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10


[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10


[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10


[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10


[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10


[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10


[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10


[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10


[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10


[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10


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
name = "fwd_a"
command = /F,a
time = 1


[Command]
name = "fwd_b"
command = /F,b
time = 1


[Command]
name = "fwd_c"
command = /F,c
time = 1


[Command]
name = "fwd_x"
command = /F,x
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
name = "back_a"
command = /B,a
time = 1


[Command]
name = "back_b"
command = /B,b
time = 1


[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1


[Command]
name = "back_ab"
command = /B, a+b
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
name = "charge"
command = /a
time = 1


[Command]
name = "charge 1"
command = /b
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
name = "start"
command = s
time = 1










































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



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, spiderman]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 8810
triggerall = power >= 500
triggerall = command = "spiderman"
triggerall = numhelper(12000) = 0
trigger1 = statetype != A




[State -1, capitao america]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 8800
triggerall = power >= 500
triggerall = command = "capitao america"
triggerall = numhelper(10000) = 0
trigger1 = statetype != A



[State -1, HyperMove]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3020
triggerall = (command="detona" && power>=1000)
trigger1 = ctrl = 1
trigger1 = statetype = S


[State -1, HyperMove]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3020
triggerall = (command="detona1" && power>=1000)
trigger1 = ctrl = 1
trigger1 = statetype = S


[State -1, tornado vermelho]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = statetype !=A
triggerall = command = "QCF_2p"
triggerall = numprojid(2000) = 0
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno > 199 && stateno < 2000
trigger2 = movecontact




[State -1, Voa]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3001
trigger1 = command = "fly"
trigger1 = ctrl = 1






[State -1, Voa]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3115
trigger1 = command = "fly"
trigger1 = ctrl = 1


[State -1, sequencia de golpes 2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2300
triggerall = command = "combo1"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1030
triggerall = command = "special kick"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = command = "special kick"
trigger2 = stateno = 610
trigger3 = command = "special kick"
trigger3 = stateno = 610
trigger3 = statetime <= 2
trigger4 = command = "special kick"
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = command = "special kick"
trigger5 = stateno = 610
trigger6 = command = "special kick"
trigger6 = stateno = 610
trigger6 = movecontact = 1


[State -1, thor]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3010
triggerall = command = "thor"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "thor"
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1








[State -1, gaviao arqueiro]
type = null
value = 1005
trigger1 = command = "gaviao arqueiro"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "gaviao arqueiro"
trigger2 = stateno = 600
trigger3 = command = "gaviao arqueiro"
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = command = "gaviao arqueiro"
trigger4 = stateno = 800















[State -1, sequencia de golpes]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = command = "sequencia de golpes"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 9100
trigger2 = movecontact = 1
trigger3 = stateno = 9400
trigger3 = movecontact = 1
trigger4 = stateno = 8700
trigger4 = movecontact = 1
trigger5 = stateno = 800
trigger5 = movecontact = 1
trigger6 = stateno = 815
trigger6 = movecontact = 1
trigger7 = stateno = 805
trigger7 = movecontact = 1
trigger8 = stateno = 810
trigger8 = movecontact = 1
trigger9 = stateno = 7500






[State -1, Elbow Dash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1080
triggerall = command = "elbow dash"
triggerall = numproj = 0
trigger1 = statetype = S






[State -1, gaviao arqueiro]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = command = "gaviao arqueiro"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger3 = movecontact = 1
trigger4 = stateno = 500
trigger4 = time <= 2
trigger5 = stateno = 410
trigger5 = movecontact = 1
trigger6 = stateno = 210





[State -1, visao]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1700
triggerall = command = "visao"
triggerall = power >= 1000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A





[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"





[State -1, RunFwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S






[State -1, RunBack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S








[State -1, [State -1]
type = null
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
trigger1 = command = "fwd_b"
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = stateno != 100
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2statetype = C
trigger4 = p2movetype != H






[State -1, [State -1]
type = null
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"






[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 201
triggerall = command = "b"
triggerall = command != "holddown"

trigger1 = statetype = S
trigger1 = ctrl = 1





















[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "a"
triggerall = command != "holddown"

trigger1 = statetype = S
trigger1 = ctrl = 1























[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1






































[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 205
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1






































[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 215
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1








































[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1




[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1




[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1




[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1




[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 500
triggerall = command = "heel shoot"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1050
trigger1 = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl



[Statedef 3010]


[State 3010, Super A]
type = SuperPause
value = 544433001
trigger1 = Time = 2
pos = -27, -42
anim = 31



[State 3010, Super B]
type = PlaySnd
value = 1920207373
trigger1 = Time = 10



[State 3010, Super C]
type = PowerAdd
value = -500
trigger1 = Time = 2



[State 3010, Super D]
type = AfterImage
value = 1632662016
trigger1 = Time = 2
time = 2



[State 3010, Super E]
type = AfterImageTime
value = 168639087
trigger1 = Time = [2,68]
time = 2



[State 3010, Super F]
type = NotHitBy
value = 0
trigger1 = Time = 2
time = 12



[State 3010, Super F]
type = NotHitBy
value = 0
trigger1 = Time = [2,30]
time = 1



[State 3010, 1]
type = PlaySnd
value = 0
trigger1 = AnimElem = 8



[State 3010, 3]
type = PlaySnd
value = 540876901
trigger1 = AnimElem = 2



[State 3010, 1]
type = PlaySnd
value = 822108416
trigger1 = AnimElem = 4



[State 3010, 2]
type = Projectile
value = 540876901
trigger1 = AnimElem = 2
ProjAnim = 3015
projremovetime = 88
offset = -29, -40



[State 3010, 3]
type = HitDef
value = 1025537125
trigger1 = Time = 5
trigger2 = Time = 21
trigger3 = Time = 29
trigger4 = Time = 37
trigger5 = Time = 53
trigger6 = Time = 61
attr = S, HA
animtype  = Hard
damage    = 24,12
priority  = 6
guardflag = M
pausetime = 0,20
sparkxy = -29, -40
hitsound = S20, 5
guardsound = S20, 3
getpower = 0
givepower = 10
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-2
airguard.velocity = -1



[State 3010, 4]
type = Projectile
value = 0
trigger1 = AnimElem = 8
ProjAnim = 3016
ProjHitAnim = 3017
ProjRemAnim = 1037
offset = -29, -40
velocity = 30, 0
remvelocity = 0 , 0
velmul = 1.005, 1
accel = 0, 0
attr = S, HP
damage    = 380,65
animtype  = Hard
getpower = 0
givepower = 100
guardflag = MA
pausetime = 0,12
sparkno = 1
sparkxy = 0,0
hitsound = S20, 4
guardsound = S20, 3
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -20
guard.velocity = -3.5
airguard.velocity = -3.5
air.type = Low
air.velocity = -20,-8
fall = 1







[State 3010, 6]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 0
trigger1 = AnimTime = 0
ctrl = 1



[Statedef 3015]


[State 3015, 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3017
trigger1 = AnimTime = 0



[Statedef 3016]


[State 3016, 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1036
trigger1 = AnimTime = 0



[Statedef 3017]


[State 3017, 1]
type = ChangeAnim
value = 44
trigger1 = Time = 0


