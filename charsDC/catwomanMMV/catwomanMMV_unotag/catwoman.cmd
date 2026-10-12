1700

[Defaults]
command.time = 15
command.buffer.time = 1


[Command]
name = "Chctcombo"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "Chctcombo"
command = ~D, DB, B, y+z
time = 20
[Command]
name = "Chctcombo"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "Memorias"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "Memorias"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "Memorias"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Super_Air_Grab"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "Super_Air_Grab"
command = ~D, DF, F, b+c
time = 20
[Command]
name = "Super_Air_Grab"
command = ~D, DF, F, a+c
time = 20






[Command]
name = "upper_x"
command = ~F, D, F, x
time = 25
[Command]
name = "upper_y"
command = ~F, D, F, y
time = 25
[Command]
name = "upper_z"
command = ~F, D, F, z
time = 25

[Command]
name = "upper_a"
command = ~F, D, F, a
time = 25
[Command]
name = "upper_b"
command = ~F, D, F, b
time = 25
[Command]
name = "upper_c"
command = ~F, D, F, c
time = 25

[Command]
name = "fdkick_a"
command = ~F, D, DF, a
[Command]
name = "fdkick_b"
command = ~F, D, DF, b
[Command]
name = "fdkick_c"
command = ~F, D, DF, c

[Command]
name = "HCF_x"
command = ~B, F, x
time = 20
[Command]
name = "HCF_y"
command = ~B, F, y
time = 20
[Command]
name = "HCF_z"
command = ~B, F, z
time = 20

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
name = "QCF_a"
command = ~D, DF, F, a
[Command]
name = "QCF_b"
command = ~D, DF, F, b
[Command]
name = "QCF_c"
command = ~D, DF, F, c
[Command]
name = "QCF_s"
command = ~D, DF, F, s

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
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "FF_a"
command = F, F, ~a
[Command]
name = "FF_b"
command = F, F, ~b
[Command]
name = "FF_c"
command = F, F, ~c


[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "zz"
command = z, z

[Command]
name = "Super Jump"
command = D,$U


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
command = x+z
time = 1

[Command]
name = "recoveryk"
command = a+b
time = 1
[Command]
name = "recoveryk"
command = b+c
time = 1
[Command]
name = "recoveryk"
command = a+c
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
name = "fwd"
command = $F
time = 1
[Command]
name = "down"
command = $D
time = 1
[Command]
name = "back"
command = $B
time = 1
[Command]
name = "up"
command = $U
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
name = "hold_s"
command = /s
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



[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 300
trigger3 = stateno = 400
trigger4 = stateno = 500
var(17) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = [310,311]
trigger3 = stateno = 410
trigger4 = stateno = 510
var(17) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 320
trigger3 = stateno = 420
trigger4 = stateno = 520
var(17) = 3

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(18) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 700
var(18) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 710
var(18) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 620
trigger2 = stateno = 720
var(18) = 3

[State -1, Move Cancel condition Reset]
type = VarSet
trigger1 = 1
var(51) = 0

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [200,720]
var(51) = 1

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [1000,2900]
var(51) = 2





















[State -1, Chicote combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Chctcombo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact



[State -1, Memorias]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Memorias"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact



[State -1, Super_Air_Grab]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3200
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Super_Air_Grab"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact









[State -1, Agarrao ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2100
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_a"  ||  command = "QCF_b"  ||   command = "QCF_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Chicote p/ cima Fraco]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Chicote p/ cima Medio]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1110
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Chicote p/ cima Forte]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1120
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Chicote fraco]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Chicote medio]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Chicote forte]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1020
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Chicote X fraco]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Chicote X medio]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1210
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Chicote X forte]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1220
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Rolar para tras sem atk]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1700
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Rolar para frente sem atk]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1710
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Rolar para frente sem atk]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1720
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Chicote ar fraco]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1500
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_x"  ||  command = "QCF_y"   ||  command = "QCF_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact



[State -1, Voadora ar fraco]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1600
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_a"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Voadora ar medio]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1610
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_b"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact


[State -1, Voadora ar forte]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact







[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = roundstate = 2 && !Ailevel && statetype = S
trigger1 = command = "FF"
trigger1 = ctrl



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = roundstate = 2 && !Ailevel && statetype = S
trigger1 = command = "BB"
trigger1 = ctrl


[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7710
triggerall = roundstate = 2 && !Ailevel && statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = stateno = 420 && MoveHit


[State -1, Roll recovery foward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5230
triggerall = roundstate = 2 && !Ailevel && alive
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

[State -1, Roll recovery Backward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5220
triggerall = roundstate = 2 && !Ailevel && alive
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1



[State -1, Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7610
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "recovery"
trigger1 = stateno = [150,153]


[State -1, Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7615
triggerall = roundstate = 2 && !Ailevel && statetype = C
triggerall = command = "recovery"
trigger1 = stateno = [150,153]


[State -1, Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "recovery"
trigger1 = stateno = [154,155]



[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "y" && command = "z"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2movetype != H && (p2statetype = S || p2statetype = C)
triggerall = stateno != 100
trigger1 = ctrl



[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 850
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "b" && command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2movetype != H && (p2statetype = S || p2statetype = C)
triggerall = stateno != 100
trigger1 = ctrl

[State -1,Pisar na parede]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 48
triggerall = roundstate = 2 && !Ailevel
triggerall = command = "holdfwd" && statetype = A
triggerall = stateno != 48 && stateno != 49 && stateno != 101
triggerall = Pos Y < -50 && backEdgeDist < 3
trigger1 = ctrl = 1

[State -1,Pisar na parede]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 49
triggerall = roundstate = 2 && !Ailevel
triggerall = command = "holdback" && statetype = A
triggerall = stateno != 48 && stateno != 49 && stateno != 101
triggerall = Pos Y < -50 && frontEdgeDist < 3
trigger1 = ctrl = 1







[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = roundstate = 2 && !Ailevel
triggerall = command = "start" && statetype != A
trigger1 = ctrl






[State -1, Standing Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl


[State -1,  Stand Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 300
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1
trigger2 = stateno != 300
trigger2 = stateno != 500

[State -1, Crouch Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger2 = stateno != 300
trigger2 = stateno != 400
trigger2 = stateno != 500

[State -1, Crouch Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 500
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger2 = stateno != 500


[State -1, Standing Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = roundstate = 2 && !Ailevel
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1


[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 310
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 310
trigger3 = stateno != 510


[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 410
trigger3 = stateno != 310
trigger3 = stateno != 510


[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 510
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 510


[State -1, Standing Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = [1,2]


[State -1, Stand Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 320
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = [1,2]


[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = [1,2]


[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 520
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = [1,2]


[State -1, Air Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "x"
trigger1 = ctrl


[State -1, Air Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = 1
trigger2 = stateno != 700


[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = 1


[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 710
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = var(18) = 1
trigger3 = var(18) = 2
trigger3 = stateno != 710


[State -1, Air Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = [1,2]


[State -1, Air Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 720
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = [1,2]












[State -1,AI run fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = roundstate = 2 && Ailevel && random < (50 * (AIlevel ** 2 / 64.0))
triggerall = stateno != 100 && stateno != 105 && statetype != A
triggerall = !inguarddist && p2movetype != A
trigger1 = ctrl && p2bodydist X > 150



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = numenemy < 2 && random < (50 * (AIlevel ** 2 / 64.0))
triggerall = BackEdgeDist > 65 && p2bodydist x < 100 && p2movetype = A
triggerall = stateno != 100 && stateno != 105
trigger1 = ctrl




[State -1,AI Guard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = roundstate = 2 && Ailevel && random < (333 * (AIlevel ** 2 / 64.0))
triggerall = inguarddist && (stateno != [120, 155])
triggerall = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = ctrl
value = 120





[State -1, AI Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7610
triggerall = roundstate = 2 && Ailevel && StateType = S
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [150,153]) && (p2bodydist x =[0,40])
trigger1 = ctrl




[State -1, AI Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7615
triggerall = roundstate = 2 && Ailevel && StateType = C
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [150,153]) && (p2bodydist x =[0,40])
trigger1 = ctrl




[State -1, AI Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7620
triggerall = roundstate = 2 && Ailevel && StateType = A
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [154,155]) && (p2bodydist x =[0,40])
trigger1 = ctrl


[State -1, Follow Launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7720
triggerall = roundstate = 2 && Ailevel && StateType != A
triggerall = movehit
trigger1 = stateno = 420



[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = ifelse(random < 200,800,850)
triggerall = roundstate = 2 && Ailevel && StateType = S
triggerall = p2bodydist X <= 20 && p2bodydist y = [-25,25]
triggerall = (enemynear, movetype != H && p2stateno = [120, 155])
triggerall = (enemynear, statetype = S || enemynear, statetype = C)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))






[State -1, standing light punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = roundstate = 2 && Ailevel && random < (150 * (AIlevel ** 2 / 64.0))
triggerall = statetype = S && p2statetype != L
triggerall = p2bodydist X <= 88 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100


[State -1, Stand Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 300
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 47 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (77 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (134 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 300
trigger2 = stateno != 500


[State -1, Crouch Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 88 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = C && random < (88 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 300
trigger2 = stateno != 400
trigger2 = stateno != 500


[State -1, Crouch Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 500
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 64 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = C && random < (66 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (68 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 500 && ((p2stateno = [120, 155]) && p2statetype != C)
trigger3 = var(17) = 1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 500 && (p2stateno != [120, 155])


[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 87 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (55 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 200, ifelse(stateno = 300, 150, ifelse(stateno = 400, 100, 50))) * (AIlevel ** 2 / 64.0))


[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 79 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = C && random < (44 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 150, ifelse(stateno = 300, 113, ifelse(stateno = 400, 76, 37))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 310 && stateno != 410 && stateno != 510


[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 310
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 75 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (33 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 100, ifelse(stateno = 300, 75, ifelse(stateno = 400, 50, 25))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (133 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 310 && stateno != 510


[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 510
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 79 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = C && random < (33 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 50, ifelse(stateno = 300, 38, ifelse(stateno = 400, 26, 12))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (66 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 510 && ((p2stateno = [120, 155]) && p2statetype != C)
trigger4 = (var(17) = [1, 2]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = stateno != 510 && (p2stateno != [120, 155])


[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 75 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = C && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 76 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))


[State -1, Stand Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 320
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 95 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))


[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 520
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 84 && p2bodydist y = [-50,50]
trigger1 = ctrl && statetype = C && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && stateno = 100 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 1
trigger3 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger4 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))



[State -1, chicote frente]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000+ifelse(var(51) || p2bodydist X >= 130, ifelse(random <= 667, 20, 10), 0)
triggerall = roundstate = 2 && Ailevel && statetype != A && (stateno != 100 && stateno != 105)
triggerall = (p2statetype != A || (prevstateno = [1200, 1225])) && p2statetype != L
triggerall = p2dist Y = [-90,0]
trigger1 = ctrl && p2bodydist X >= 130 && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 80, ifelse (var(17) = 2, 40, 20)) * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype != C && p2statetype != L
triggerall = p2bodydist X <= ifelse(p2statetype = A, 104, 105) && (p2dist Y = [-170,0])
trigger1 = ctrl && random < (13 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 27, ifelse (var(17) = 2, 13, 7)) * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1110
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist X <= 180 && (p2dist Y = [-160,-70])
trigger1 = ctrl && random < (8 * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1120
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist X <= 180 && (p2dist Y = [-170,-20])
trigger1 = ctrl && random < (17 * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 100 && (p2dist Y = [-140,0])
trigger1 = ctrl && random < (8 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 20, ifelse (var(17) = 2, 13, 7)) * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1210
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 100 && (p2dist Y = [-140,0])
trigger1 = ctrl && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && (var(17) = 3 && stateno!= 420)
trigger2 = random < (27 * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1220
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 136  && (p2bodydist Y = [-40,40])
trigger1 = ctrl && random < (12 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && stateno!= 520
trigger2 = random < (33 * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1500
triggerall = roundstate = 2 && Ailevel && statetype = A
triggerall = p2statetype = A && (p2bodydist X = [61, 158]) && (p2bodydist Y = [-66,34])
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 70, ifelse (var(18) = 2, 47, 23)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1600
triggerall = roundstate = 2 && Ailevel && p2statetype != L
triggerall = statetype = A && (vel y = [ -3, 3]) && frontedgedist >= 95
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && backedgedist >= 166 && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1610
triggerall = roundstate = 2 && Ailevel && p2statetype != L
triggerall = statetype = A && (vel y = [ -3, 3])
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && backedgedist >= 63 && random < (13 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1620
triggerall = roundstate = 2 && Ailevel && p2statetype != L
triggerall = statetype = A && (vel y = [ -3, 3]) && frontedgedist >= 95
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))




[State -1, Chicote combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && power >= 1000
triggerall = (p2bodydist x = [0, 106]) && (enemynear, statetype != A && enemynear, statetype != L)
trigger1 = ctrl && random < (5 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 50, ifelse (var(18) = 2, 34, 17)) * (AIlevel ** 2 / 64.0))
trigger3 = var(51) = 2
trigger3 = random < (80 * (AIlevel ** 2 / 64.0))


[State -1, Memorias]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && power >= 1000
triggerall = (p2bodydist x = [0, 120]) && enemynear, statetype = S
trigger1 = ctrl && random < (5 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && !moveguarded
trigger2 = random < (ifelse(var(18) = 3, 50, ifelse (var(18) = 2, 34, 17)) * (AIlevel ** 2 / 64.0))
trigger3 = var(51) = 2 && !moveguarded
trigger3 = random < (80 * (AIlevel ** 2 / 64.0))
