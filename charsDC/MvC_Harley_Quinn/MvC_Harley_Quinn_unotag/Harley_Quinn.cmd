
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1





[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z





[Command]
name = "SP1"
command = ~D, DF, F, x
[Command]
name = "SP1"
command = ~D, DF, F, y
[Command]
name = "SP1"
command = ~D, DF, F, z



[Command]
name = "SP2"
command = ~D, DB, B, x
[Command]
name = "SP2"
command = ~D, DB, B, y
[Command]
name = "SP2"
command = ~D, DB, B, z



[Command]
name = "SP3"
command = ~D, DB, B, a
[Command]
name = "SP3"
command = ~D, DB, B, b
[Command]
name = "SP3"
command = ~D, DB, B, c


[Command]
name = "SP4"
command = ~D, DF, F, a
[Command]
name = "SP4"
command = ~D, DF, F, b
[Command]
name = "SP4"
command = ~D, DF, F, c






[Command]
name = "highjump"
command = $D, $U
time = 10





[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1





[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10





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
name = "s"
command = s
time = 1





[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_start"
command = /s
time = 1





[Command]
name = "dash"
command = x+y
time = 1

[Command]
name = "dash"
command = x+z
time = 1

[Command]
name = "dash"
command = y+z
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






[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1010 && movecontact
trigger16 = stateno = 1020 && movecontact





[State -1, Dog Call]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1800
triggerall = numhelper(1805) = 0

triggerall = command = "SP3"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = command = "SP4"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = command = "SP1"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = command = "SP2"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1010 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = command = "SP3"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 45
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 40
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 420 && movehit


[State 106, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3




[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
var(59) = 1

[State -1, airrecover]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value= ifelse((pos y>=-20), 5200, 5210)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=-1 && random<200

[State -1, recoveryroll]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=5200
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= !ctrl
trigger1= (stateno=5040 || stateno=5050) && vel y>=-1 && pos y>-vel y
trigger1= (p2bodydist x=[-10,10]) && random<200

[State -1, goushoryuuken]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1100
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 333, 200)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= stateno=0 && prevstateno=5120 && time<=1
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250

[State -1, ashurasenkuu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1400
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= ctrl
trigger1= enemynear,movetype=A && (p2bodydist x=[-90,90])
trigger1= (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger1= random<ifelse((enemy,hitdefattr=SC,AT),500,250)
trigger1= var(10):=2

[State -1, roll/dodge]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=ifelse(random<250,1800,1400)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && random<50
trigger1= (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AA)
trigger1= (p2bodydist x=[40,120]) && (enemynear,animtime<=-28)

[State -1, tenmashurettou]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1100
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && (p2bodydist x=[-60,60])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && random<200

[State -1, backdash]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=105
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= random < ifelse((enemynear,hitdefattr=SC,AT), 150, 50)
trigger1= ctrl && (stateno!=[100,106]) && (stateno!=[700,701])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)

[State -1, Guard]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, run/dash]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=100
trigger1= var(59)>=1 && numenemy
trigger1= statetype=S && roundstate=2
trigger1= ctrl && (stateno!=[100,105])
trigger1= !inguarddist && (p2bodydist x=[60,100]) && random<100

[State -1, Jump]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, zerocounter]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1400
trigger1= var(59)>=1 && numenemy
trigger1= stateno=150 || stateno=152
trigger1= random<50
trigger1= roundstate=2 && statetype=S
trigger1= power>=1000 && !var(20)
trigger1= (p2bodydist x=[-50,50]) && life<400

[State -1, Dodge]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 100 && statetype != A
triggerall = (facing = 1 && (enemynear,facing = -1)) || (facing = -1 && (enemynear,facing = 1))
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x <= 130 && p2movetype = A
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 100 && statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x <= 130 && p2movetype = A
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 300 && statetype != A && backedgedist <= 100
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 80
trigger1 = ctrl

[State -1, powercharge]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1800
triggerall= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype=S && ctrl
trigger1= power<const(data.power) && power<powermax && !var(20)
trigger1= !inguarddist && p2bodydist x>=160 && random<100

[State -1, Throw]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
triggerall= (p2bodydist x=[0,20]) && p2dist y=0
trigger1= ctrl && random<100
trigger2= ctrl && (p2stateno=[120,140]) && random<750

[State -1, SHP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<25 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger2= p2bodydist x<=50 && movehit && random<250

[State -1, SHK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=220
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x=0 && movehit && random<250

[State -1, SMP2]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=220
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 100

[State -1, SMK2]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,0]) && p2statetype=C && !(enemynear,hitfall)
triggerall= ((p2stateno!=[120,155]) || p2stateno=131 || p2stateno=152 || p2stateno=153) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random < 50

[State -1, SMP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=230 || stateno=240 || stateno=400)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SMK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=220
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=16 && movehit && random<250

[State -1, SLP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, SLK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=230
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=420
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=450
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=A && p2stateno!=5120
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=30 && (movecontact=[1,4]) && random<250

[State -1, CMP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=410
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=210 || stateno=230 || stateno=250)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CMK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=420
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CLP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, CLK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=430
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,36]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= ctrl
trigger1= random<100 || (p2stateno=130 || p2stateno=150 || p2stateno=151) || p2stateno=5110
trigger2= (stateno=200 || stateno=230 || stateno=240) && time>=5 && random<50

[State -1, AHP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=420
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, AHK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=450
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, TKK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= vel x>0 && (vel y=[-3,3])
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50])
trigger1= ctrl && random<25
trigger2= stateno=220 && animelemtime(3)>=2 && random<50

[State -1, AMP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=610
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, AMK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=640
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[-50,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALP]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=600
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, ALK]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=630
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25

[State -1, kuuchuutatsumakizankuukyaku]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-40,60]) && p2statetype!=L
trigger1= ctrl && random<ifelse(p2dist x<0, 200, 25)
trigger2= (stateno=[600,650])
trigger2= movehit && (p2bodydist x=[0,25]) && random<250

[State -1, tatsumakizankuukyaku]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,90]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=225 || stateno=240)
trigger1= movehit && (p2bodydist x=[0,30]) && random<250
trigger2= stateno=250
trigger2= movehit && (p2bodydist x=[0,60]) && random<250

[State -1, kuuchuutatsumakizankuukyaku]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-40,60]) && p2statetype!=L
trigger1= ctrl && random<ifelse(p2dist x<0, 200, 25)
trigger2= (stateno=[600,650])
trigger2= movehit && (p2bodydist x=[0,25]) && random<250

[State -1, hyakkishuu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1250
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2dist y=[-160,-80]) && p2statetype!=L
triggerall= !(enemynear,ctrl) && p2movetype=H && (enemynear,stateno!=[120,155])
trigger1= ctrl && random<10

[State -1, zankuuhadouken]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
trigger1= ctrl && vel y>-2 && random<333
trigger2= (stateno=[200,250])
trigger2= movehit && random<100

[State -1, gouhadouken]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<100
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[40,80]) && random<100

[State -1, shakunetsuhadouken]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=120 && random<50
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x=[0,25]) && random<50

[State -1, shungokusatsu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (p2stateno!=40) && (p2stateno!=[5030,5119])
triggerall= (p2bodydist x=[-160,160]) && (p2dist y=[-120,0]) && p2statetype!=L
triggerall= (enemynear,vel y=0) || (enemynear,vel y>0 && enemynear,vel x<0)
trigger1= ctrl && (p2bodydist x=[0,60]) && (enemynear,statetype!=A) && random<150
trigger2= stateno=210 && animelemtime(4)>=0 && (p2bodydist x=[0,50]) && p2statetype!=A && random<250

[State -1, misogi]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155]) && p2statetype!=L
triggerall= (p2stateno!=[5030,5119]) && (enemynear,vel x=[-1,1]) && (enemynear,vel y<4)
triggerall= movetype=A || !(enemynear,hitfall)
trigger1= ctrl && (enemynear,statetype=S || enemynear,statetype=C) && (enemynear,animtime<=-30) && random<100
trigger2= ctrl && (enemynear,statetype=A) && (enemynear,pos y<=-60) && (enemynear,movetype=A) && random<500
trigger3= stateno=1000 && movehit && random<100

[State -1, kkz]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && prevstateno!=4200
triggerall= !numhelper(4205)
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-30,30]) && (p2dist y=[-90,0])
trigger1= (stateno=1100 || stateno=3300) && movehit && random<50
trigger2= stateno=3000 && numhelper(3005)
trigger2= helper(3005),var(3) && random<100
trigger3= ctrl && inguarddist
trigger3=(p2stateno=[3000,4999]) && random<200

[State -1, tkj]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && prevstateno!=4300
triggerall= !numhelper(4305)
triggerall= power>=3000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-80,80]) && (p2dist y=[-60,0])
trigger1= stateno=210 && movehit && random<50
trigger2= stateno=240 && movehit && animelemtime(17)>=0 && random<200

[State -1, tenmagouzankuu2]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && var(9)!=2 && prevstateno!=3070
triggerall= !numhelper(3075)
triggerall= power>=1000 && !var(20)
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,50]) && p2dist y>=-20
trigger1= (stateno=1100 || stateno=1250 || stateno=[1301,1303])
trigger1= movehit && (p2bodydist x=[0,35]) && random<250
trigger2= stateno=3100 && movehit && random<200
trigger3= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger4= stateno=3050 && numhelper(3055)
trigger4= helper(3055),var(3) && random<100

[State -1, messatsugoushoryuu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && prevstateno!=3100
triggerall= power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-80,80]) && (p2dist y=[-40,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=225 || stateno=240 || stateno=255)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1100 || stateno=1305)
trigger2= movehit && (p2bodydist x=[0,30]) && random<250
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6
trigger3= helper(stateno+5),var(3) && random<100
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,70]) && random<250

[State -1, messatsugousenpu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && var(9)!=2 && (prevstateno!=[3200,3250])
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ((stateno=[1200,1250]) || stateno=[1301,1303])
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= stateno=3100 && movehit && random<333
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3070
trigger3= helper(stateno+5),var(3) && random<100

[State -1, messatsugourasen]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && (prevstateno!=[3200,3250])
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-45,45]) && (p2dist y=[-60,0]) && p2statetype!=L
trigger1= (stateno=210 || stateno=225 || stateno=240 || stateno=255)
trigger1= movehit && p2bodydist x=0 && random<100
trigger2= stateno=3100 && movehit && animelemtime(17)>=0 && p2bodydist x=0 && random<333
trigger3= stateno=4200 && numhelper(4205)
trigger3= helper(4205),var(3) && random<100
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,10]) && random<200

[State -1, tenmashinzuiwari]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && var(9)!=2 && pos y>=-50 && prevstateno!=3300
triggerall= power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-30,60]) && p2dist y>=-15 && (enemynear,vel y<6)
trigger1= (stateno=270 || stateno=285)
trigger1= movehit && random<100
trigger2= (stateno=1100 || stateno=1250 || stateno=[1301,1303])
trigger2= movehit && random<250
trigger3= stateno=3100 && movehit && random<200
trigger4= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger5= stateno=1230 || stateno=3050 || stateno=3070
trigger5= ifelse(stateno=3070, animelemtime(31)>=0, 1)
trigger5= numhelper(stateno+5)
trigger5= helper(stateno+5),var(3) && random<200

[State -1, tenmagouzankuu]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && var(9)!=2 && prevstateno!=3050
triggerall= !numhelper(3005) && !numhelper(3055)
triggerall= power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,120]) && p2dist y>=-20 && (enemynear,vel y<4)
trigger1= (stateno=270 || stateno=285)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1100 || (stateno=[1200,1250]) || stateno=[1301,1303])
trigger2= movehit && random<250
trigger3= stateno=3100 && movehit && random<200
trigger4= (stateno=[3200,3250]) && movehit && (hitcount>=7 || anim=3205) && random<200
trigger5= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3050
trigger5= helper(stateno+5),var(3) && random<100
trigger5= ifelse(stateno=3070, animelemtime(21)>=0, 1)

[State -1, messatsugouhadou]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && prevstateno!=3000
triggerall= !numhelper(3005) && !numhelper(3055)
triggerall= power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-120,120]) && (p2dist y=[-60,0]) && (enemynear,vel y<8) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=1100 || stateno=1305)
trigger1= movehit && (p2bodydist x=[0,60]) && random<250
trigger2= stateno=3100 && movehit && animelemtime(17)>=0 && random<200
trigger3= (stateno=[1000,4999]) && numhelper(stateno+5) && var(10)<=6 && stateno!=3000
trigger3= helper(stateno+5),var(3) && random<100

[State -1, taunt]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=195
triggerall= var(59)>=1 && numenemy
triggerall= !var(37)
triggerall= roundstate=2 && statetype!=A && prevstateno!=195
triggerall= life>=(lifemax/2)
trigger1= ctrl && numenemy
trigger1= (enemynear,life)<=(enemynear,lifemax/2)
trigger1= p2dist x>=160 && !(enemynear,ctrl) && (enemynear,movetype=H)
trigger1= (enemynear,statetype=A || enemynear,statetype=L) && random<500
