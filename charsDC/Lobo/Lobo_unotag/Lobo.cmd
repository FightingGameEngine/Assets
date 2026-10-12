

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
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
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
name = "DU"
command = D, U
time = 10


[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5


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
name = "Amalgam"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c



[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

[Command]
name = "frag1"
command = ~D, DF, F, x
time = 40

[Command]
name = "frag2"
command = ~D, DF, F, y
time = 40

[Command]
name = "frag3"
command = ~D, DF, F, z
time = 40







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
[State -1, AIActivate]
type = VarSet
triggerall = var(12) != 1
triggerall = RoundState != 3
trigger1  = IsHelper(10) || IsHelper(11)

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
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(12) = 1





[State -1, Amalgam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4000
triggerall = power >= 5000 && !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Amalgam"




[State -1, MainManAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3600
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"




[State -1, BFG]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3300
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(3305) = 0
trigger1 = command = "qcf_2p"




[State -1, MainMen]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = command = "qcb_2k"&& !Var(12)
triggerall = power >= 1000
triggerall = StateType != A && MoveType != H
triggerall = NumHelper(10) = 0
trigger1 = ctrl = 1




[State -1, LightsOut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"




[State -1, Grenade]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2500
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0

trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")




[State -1, GrenadeAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2600
triggerall = !Var(12)
triggerall = StateType != S && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0

trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")




[State -1, RotGut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = Var(21) = 0
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")




[State -1, MrHook]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = P2BodyDist X > 50
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = enemynear, stateno != 5300
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")




[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag1")


[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1001
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag2")


[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1002
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag3")



[State -1, FragAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = !Var(12)
triggerall = StateType != S && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")




[State -1, SPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 750
triggerall = command = "pushblock" && StateType = S && !Var(12)
triggerall = !IsHelper
trigger1 = StateNo = 130
trigger2 = StateNo = [150, 151]



[State -1, CPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 752
triggerall = command = "pushblock" && StateType = C && !Var(12)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]



[State -1, APushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 754
triggerall = command = "pushblock" && StateType = A && !Var(12)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]



[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = command != "holdback" && !Var(12)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"



[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = statetype = S && !Var(12)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"



[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(12)
triggerall = Var(20) != 2
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = (command = "holdup") && ((StateNo = 455) || (PrevStateNo = 455)) && (MoveHit = 1)




[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = statetype = S && !Var(12)
triggerall = ctrl = 1
trigger1 = command = "start"









[State -1, Throw1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 810
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))&& !Var(12)
triggerall = statetype = S
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25)


[State -1, AirThrow1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 850
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
triggerall = StateType = A&& !Var(12)
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) && (P2statetype = A)









[State -1, Headbutt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 310
triggerall = (command = "y") && (statetype = S)&& !Var(12)
trigger1 = (ctrl = 1) && (P2statetype != A) && (P2BodyDist X <= 25)


[State -1, doubleuppercut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 320
triggerall = (command = "z") && (statetype = S) && !Alive&& !Var(12)
trigger1 = (ctrl = 1) && (P2BodyDist X <= 35)









[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = (command = "x") && (statetype = S)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = Var(20)=3



[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = (command = "a") && (statetype = S)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = (StateNo = 210) && (MoveContact = 1)


trigger3 = Var(20)=3



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (command = "y") && (statetype = S)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = (ctrl = 1) && ((P2BodyDist X <= 25) && (P2statetype = A))


trigger3 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)


trigger4 = Var(20)=3



[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = (command = "b") && (statetype = S)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = (command = "z") && (statetype = S)&& !Var(12)
trigger1 = (ctrl = 1)


trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 260
triggerall = command = "c"&& !Var(12)
triggerall = statetype = S
trigger1 = ctrl = 1


trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)


trigger3 = Var(20)=3





[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "x"&& !Var(12)
triggerall = statetype = C
trigger1 = ctrl = 1


trigger2 = Var(20)=3



[State -1, Crouch Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = command = "a"&& !Var(12)
triggerall = statetype = C
trigger1 = ctrl = 1


trigger2 = (StateNo = 410) && (MoveContact = 1)


trigger3 = Var(20)=3



[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = command = "y"&& !Var(12)
triggerall = statetype = C
trigger1 = ctrl = 1


trigger2 = ((stateno = 410) || (stateno = 420)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = (command = "b") && (statetype = C)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = (command = "z") && (statetype = C)&& !Var(12)


trigger1 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)


trigger2 = Var(20)=3



[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 455
triggerall = (command = "z") && (statetype = C)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = Var(20)=3



[State -1, Crouch Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 460
triggerall = command = "c"&& !Var(12)
triggerall = statetype = C
trigger1 = ctrl = 1


trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440) || (stateno = 450)) && (movecontact = 1)


trigger3 = Var(20)=3





[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = command = "x"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1


trigger2 = Var(20)=3



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = command = "a"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1


trigger2 = (stateno = 610) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = command = "y"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1


trigger2 = ((stateno = 610) || (stateno = 620)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = command = "b"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1


trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = (command = "z") && (statetype = A)&& !Var(12)
trigger1 = ctrl = 1


trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)


trigger3 = Var(20)=3



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 660
triggerall = command = "c"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1


trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)) && (movecontact = 1)


trigger3 = Var(20)=3









[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = S
trigger1 = (StateNo = [210,230]) && (MoveContact)
value = IfElse(StateNo = 210,220,IfElse(StateNo = 220,230,240))
persistent = 0

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = S
trigger1 = (StateNo = [240,250]) && (MoveContact)
value = IfElse(StateNo = 240,250,260)
persistent = 0



[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = C
trigger1 = (StateNo = [410,430]) && (MoveContact)
value = IfElse(StateNo = 410,420,IfElse(StateNo = 420,430,440))
persistent = 0

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = C
trigger1 = (StateNo = [440,450]) && (MoveContact)
value = IfElse(StateNo = 440,450,460)
persistent = 0



[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [610,630]) && (MoveContact)
value = IfElse(StateNo = 610,620,IfElse(StateNo = 620,630,640))
persistent = 0

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [640,650]) && (MoveContact)
value = IfElse(StateNo = 640,650,660)
persistent = 0



[State -1, StandGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (Var(12) = 1) && (StateType = S) && (Pos Y >= 0) && (P2BodyDist Y <= 0) && stateno != 130
triggerall = (P2BodyDist Y >= -120) && (P2StateType != C) && (P2MoveType = A)
trigger1 = (P2Dist X <= 10) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) && ctrl
value = 130

[State -1, CrouchGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (Var(12) = 1) && (StateType != A) && (Pos Y >= 0) && (P2BodyDist Y <= 0) && stateno != 131
triggerall = (P2BodyDist Y >= -50) && (P2StateType = C) && (P2MoveType = A)
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
value = 131

[State -1, AirGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(12) = 1 && StateType = A && Pos Y < 0 && P2BodyDist Y >= -120 && stateno != 132
trigger1 = P2BodyDist X <= 120 && (Ctrl || (StateNo = [140, 155])) && enemynear,movetype = A
value = 132



[State -1, SPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 750
triggerall = backedgebodydist <= 9 && StateType = S && Var(12)
trigger1 = StateNo = 130&& !winko
trigger2 = StateNo = [150, 151]



[State -1, CPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 752
triggerall = backedgebodydist <= 9 && StateType = C && Var(12)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]



[State -1, APushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 754
triggerall = backedgebodydist <= 9 && StateType = A && Var(12)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]





[State -1, Amalgam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4000
triggerall = power >= 5000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
trigger1 = command = "Amalgam"




[State -1, MainManAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3600
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21)= 0 && NumHelper(10) = 0 && NumHelper(25) = 0
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [750,850]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 850




[State -1, MegaFrag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3300
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = NumHelper(3305) = 0 && Var(21) = 0 && NumHelper(10) = 0
trigger1 = p2dist x >= 100 && enemynear, movetype = A && random < 500
trigger2 = enemynear, movetype = H && random <= 400




[State -1, MainMen]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = Var(12) && power >= 1000 && ctrl
triggerall = StateType != A && MoveType != H && !winko && NumHelper(10) = 0
triggerall = Var(21) = 0
trigger1 = Life > 750 && random = [150,300]




[State -1, LightsOut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [300,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 500




[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 455
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko
trigger1 = p2bodydist X <= 30 && (enemynear, anim = 5300)
trigger2 = p2bodydist X <= 30 && (enemynear, statetype != A) && Random = [150,850]



[State -1, Grenade]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2500
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 100 && Random < 250




[State -1, GrenadeAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2600
triggerall = Var(12) && ctrl
triggerall = StateType = A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0
trigger1 = Vel X < 0 && random > 500




[State -1, RotGut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21) = 0
trigger1 = p2dist x >= 180 && enemynear, MoveType = H && Random < 350




[State -1, MrHook]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
triggerall = enemynear, stateno != 5300
trigger1 = P2BodyDist X > 50 && enemynear, statetype = S && enemynear, numproj = 0




[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 1 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 350


[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1001
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 2 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 400


[State -1, Frag]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1002
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 3 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 500
trigger2 = p2bodydist x <= 50 && power < 1000 && random < 700




[State -1, FragAir]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = Var(12) && ctrl
triggerall = StateType = A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
trigger1 = enemynear, pos x > 140 && vel x < 0 && random < 450




[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = statetype = S && Var(12) && ctrl && !IsHelper
trigger1 = Var(5) = 0 && enemynear, movetype != A && enemynear, numproj = 0 && enemynear, p2dist x >= 180 && !winko









[State -1, Throw1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 810
triggerall = Var(12) && !winko && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C


[State -1, AirThrow1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 850
triggerall = Var(12)&& !winko && ctrl
triggerall = statetype = A && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3









[State -1, Headbutt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 310
triggerall = (statetype = S) && Var(12) && ctrl
trigger1 = (P2statetype != A) && enemynear, statetype != L && (P2BodyDist X <= 25) && random = [250,550]


[State -1, doubleuppercut]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 320
triggerall = (statetype = S) && !Alive && Var(12) && ctrl
trigger1 = P2BodyDist X <= 35 && random < 250



[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = Var(12) = 1 && !WinKo && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 100
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0



[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = statetype = S && Var(12) && ctrl
trigger1 = enemynear, p2dist x <= 100 && enemynear,movetype = A && random <= 300



[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && Var(12)
triggerall = Var(20) != 2
trigger1 = (StateNo = 455) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl









[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = (statetype = S) && Var(12) && p2statetype != L && !WinKo
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && Random <= 200)






[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl


trigger2 = (StateNo = 210) && (MoveContact = 1)





trigger4 = (StateNo = 210) && (MoveContact = 1) && Var(20)=3




[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)


trigger2 = (ctrl = 1) && ((P2BodyDist X <= 25) && (P2statetype = A))






[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S


trigger1= ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)






[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S


trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)






[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 260
triggerall = Var(12) = 1 && enemynear, statetype != L && !WinKo


trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)








[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 600&& random >400))


trigger2 = Var(20)=3 && movecontact



[State -1, Crouch Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl



trigger1 = (stateno = 410) && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl


trigger1 = (stateno = 410 || stateno = 420) && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = var(12) = 1 && statetype = C && !WinKo && ctrl


trigger1 = (stateno = 410 || stateno = 420 || stateno = 430) && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = Var(12) = 1 && statetype != A && !WinKo


trigger1 = (stateno = 430) && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Crouch Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 460
triggerall = Var(12) = 1 && statetype != A && !WinKo


trigger1 = (stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact


trigger2 = Var(20)=3 && movecontact






[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 115 && (p2dist Y > -3 && p2dist Y < 17)


trigger2 = Var(20)=3 && p2dist X < 80 && (p2dist Y > -3 && p2dist Y < 17) && enemynear, movetype != A



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A


trigger1 = (stateno = 610) && (movecontact = 1)


trigger2 = Var(20)=3 && movecontact



[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A


trigger1 = stateno = 620 && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A


trigger1 = stateno = 630 && movecontact


trigger2 = Var(20)=3 && movecontact



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = Var(12) = 1 && !winko&& stateno != 100 && statetype = A


trigger1 = stateno = 640 && movecontact
trigger2 = enemynear, statetype = C && enemynear, movetype != A && enemynear, p2dist X <= 60 && ctrl


trigger3 = Var(20)=3 && movecontact



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 660
triggerall = Var(12) = 1 && !winko && stateno != 100
triggerall = statetype = A && ctrl


trigger1 = stateno = 650 && movecontact
trigger2 = enemynear, p2dist X <= 100 && enemynear, movetype = A && enemynear, time <= 5 && enemy, numproj = 0 && ctrl


trigger3 = Var(20)=3 && movecontact












