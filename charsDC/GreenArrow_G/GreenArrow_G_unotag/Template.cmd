[Defaults]

command.time = 15


command.buffer.time = 1

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
buffer.time = 2
[Command]
name = "x2"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 2
[Command]
name = "y2"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 2
[Command]
name = "z2"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1



[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1



[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1





[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1





[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1





[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
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
name = "highjump"
command = $D, $U
time = 15
buffer.time = 3



[Command]
name = "recovery"
command = x+y
time = 1
name = "recovery"
command = x+z
time = 1
name = "recovery"
command = y+z
time = 1



[Command]
name = "aHsoNn"
command = ~D, D, D, s
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


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,1251199]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = stateno != [1000,1035]
triggerall = stateno != 1300
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
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
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
trigger2 = hitdefattr = SC, NA
trigger2 = MoveContact
trigger2 = var(59) <=  0
trigger3 = var(59) > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = var(59) >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = stateno = 1025
trigger5 = command = "sheoun"
trigger6 = stateno = 1021
trigger6 = command = "sheoun"
trigger7 = stateno = 1022
trigger7 = command = "sheoun"
trigger8 = stateno = 1001
trigger8 = command = "sheoun"
trigger9 = stateno = 1002
trigger9 = command = "sheoun"
trigger10 = stateno = 1005
trigger10 = command = "sheoun"
ignorehitpause = 1

[State -1, Change Attack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1251126
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,4850]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0
triggerall = Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(var(59)**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = var(59) >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(var(59)**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40
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
triggerall = NumTarget
triggerall = Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0






























































































































































[State -1, Release Down Detector]
type = Explod

triggerAll = !NumExplod(90000002)


triggerAll = NumHelper(90000005) && !IsHelper && !AILevel




trigger1 = !NumExplod(92828282) && !NumExplod(92468246)

trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"

trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"


trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000002

removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1







[State -1, Press x]
type = Explod

trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 90000200














removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1









[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 1998
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 1998
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 1998
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 1998
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 1998
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 1998
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1







[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 1998
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 1998
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 1998
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 1998
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 1998
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 1998
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 1998
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1













[State -1, Down (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90000012
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Down-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90000013
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000016
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Up-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90000019
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Up (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1998
ID = 90000018
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Up-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90000017
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000014
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1




[State -1, Down-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90000011
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1















[State -1, Down (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdfwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000022
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1





[State -1, Down-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000023
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000026
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Up-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000029
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Up (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdback"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdback"
anim = 1998
ID = 90000028
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Up-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000027
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "holdback") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000024
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, Down-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000021
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
































[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel

trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1







[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod

triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001016




removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, R, R: 2nd Right (10 ticks)]
type = Explod

triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001026
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1








[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, L, L: 2nd Left (10 ticks)]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001074
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1












[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1
















[State -1, U, U: 1st Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000508
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, U, U: Neutral]
type = Explod
triggerAll = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000505
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignoreHitPause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90000505) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000518
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, D, D: 1st Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000552
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, D: Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000555
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignoreHitPause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000562
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

















[State -1, R, DR, D: Release Right]
type = Explod


triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel

trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"


trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod

triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90007503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90007551
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007552
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1








































[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod

triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010006
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010104
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



























[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




































[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1





































[State -1, D, DR, R, DR, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down]
type = Explod

triggerAll = NumExplod(90032406) || NumExplod(90032403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Explod

triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Left]
type = Explod

triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032404
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, D, DL, L, DL, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032506
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1













[State -1, D, DR, R, UR: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, UR: Up-Right]
type = Explod
triggerAll = NumExplod(90012406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90012409
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, D, DL, L, UL: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, UL: Up-Left]
type = Explod
triggerAll = NumExplod(90012504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90012507
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1












[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206) || NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010203
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304) || NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010301
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1















[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402) || NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403) || NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010406
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502) || NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501) || NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010504
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1














[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90030406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030416
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90030504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030514
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1






















[State -1, 360/L, D, R, U: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011054
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054) || NumExplod(90011001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Right]
type = Explod
triggerAll = NumExplod(90011003) || NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up-Right]
type = Explod
triggerAll = NumExplod(90011006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011008
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/L, U, R, D: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154) || NumExplod(90011107)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Right]
type = Explod
triggerAll = NumExplod(90011108) || NumExplod(90011109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down-Right]
type = Explod
triggerAll = NumExplod(90011106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011102
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/D, R, U, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011252
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252) || NumExplod(90011203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up]
type = Explod
triggerAll = NumExplod(90011206) || NumExplod(90011209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



[State -1, 360/D, L, U, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011352
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352) || NumExplod(90011301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up]
type = Explod
triggerAll = NumExplod(90011304) || NumExplod(90011307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Right]
type = Explod
triggerAll = NumExplod(90011308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/R, D, L, U: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011456
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456) || NumExplod(90011403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Left]
type = Explod
triggerAll = NumExplod(90011402) || NumExplod(90011401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up-Left]
type = Explod
triggerAll = NumExplod(90011404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011408
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/R, U, L, D: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556) || NumExplod(90011509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Left]
type = Explod
triggerAll = NumExplod(90011508) || NumExplod(90011507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down-Left]
type = Explod
triggerAll = NumExplod(90011504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/U, R, D, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011658
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658) || NumExplod(90011609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down]
type = Explod
triggerAll = NumExplod(90011606) || NumExplod(90011603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Left]
type = Explod
triggerAll = NumExplod(90011602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011604
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 360/U, L, D, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011758
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758) || NumExplod(90011707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down]
type = Explod
triggerAll = NumExplod(90011704) || NumExplod(90011701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Right]
type = Explod
triggerAll = NumExplod(90011702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011706
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, U, UR, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011808
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


[State -1, U, UR, R: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011852
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UR, R: Up-Right]
type = Explod

triggerAll = NumExplod(90011808) || NumExplod(90011852)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011809
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UR, R: Right]
type = Explod
triggerAll = NumExplod(90011809)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011806
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, U, UL, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011908
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011952
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UL, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011908) || NumExplod(90011952)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011907
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Left]
type = Explod
triggerAll = NumExplod(90011907)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "up"
anim = 1998
ID = 90011904
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1












[State -1, 720/L, D, R, U, L, D, R, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031008
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Up-Left]
type = Explod
triggerAll = NumExplod(90031008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031007
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031008) || NumExplod(90031007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031001) || NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031003) || NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031006) || NumExplod(90031009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031018
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/L, U, R, D, L, U, R, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: Down-Left]
type = Explod
triggerAll = NumExplod(90031102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031102) || NumExplod(90031101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031107) || NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031108) || NumExplod(90031109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031106) || NumExplod(90031103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031112
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/D, R, U, L, D, R, U, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90031204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031204) || NumExplod(90031201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031202) || NumExplod(90031203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031206) || NumExplod(90031209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031208) || NumExplod(90031207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031214
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/D, L, U, R, D, L, U, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: Down-Right]
type = Explod
triggerAll = NumExplod(90031306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031306) || NumExplod(90031303)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031302) || NumExplod(90031301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031304) || NumExplod(90031307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031308) || NumExplod(90031309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031316
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/R, D, L, U, R, D, L, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031408
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Up-Right]
type = Explod
triggerAll = NumExplod(90031408)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031409
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031408) || NumExplod(90031409)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031406) || NumExplod(90031403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031402) || NumExplod(90031401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031404) || NumExplod(90031407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031418
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/R, U, L, D, R, U, L, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031505
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90031505)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031505) || NumExplod(90031503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031506) || NumExplod(90031509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031508) || NumExplod(90031507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031504) || NumExplod(90031501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/U, R, D, L, U, R, D, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031604
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: Up-Left]
type = Explod
triggerAll = NumExplod(90031604)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031607
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031604) || NumExplod(90031607)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031608)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031608) || NumExplod(90031609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031606) || NumExplod(90031603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031602) || NumExplod(90031601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031614
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, 720/U, L, D, R, U, L, D, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031706
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: Up-Right]
type = Explod
triggerAll = NumExplod(90031706)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031709
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031706) || NumExplod(90031709)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031708)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031708) || NumExplod(90031707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031704) || NumExplod(90031701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031702) || NumExplod(90031703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031716
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1













[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Explod
triggerAll = NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Explod
triggerAll = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Explod
triggerAll = NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Explod
triggerAll = NumExplod(90012001) || NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Explod
triggerAll = NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Explod
triggerAll = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Explod
triggerAll = NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Explod
triggerAll = NumExplod(90012103) || NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1














[State -1, R, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, R: Left]
type = Explod
triggerAll = NumExplod(90012206) || NumExplod(90012256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012216
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, L, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, L: Right]
type = Explod
triggerAll = NumExplod(90012304) || NumExplod(90012354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012314
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1














[State -1, (special) D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90012602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1












[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90032605
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignoreHitPause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerAll = NumExplod(90032605) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90032602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1












[State -1, R, L, DL, D, DR, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90032006) || NumExplod(90032056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032001) || NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90032003) || NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




[State -1, L, R, DR, D, DL, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90032104) || NumExplod(90032154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032103) || NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90032101) || NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032114
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


















[State -1, x, x, F, a, z: 2nd x]
type = Explod
triggerAll = NumExplod(94000200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: 1st x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1













[State -1, x, x, F, a, z: Forward]
type = Explod
triggerAll = NumExplod(94000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94000006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: a]
type = Explod
triggerAll = NumExplod(94000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94000230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: z]
type = Explod
triggerAll = NumExplod(94000230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94000220
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1







[State -1, x, y, F, b, b: x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94010200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: y]
type = Explod
triggerAll = NumExplod(94010200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94010210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: Forward]
type = Explod
triggerAll = NumExplod(94010210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94010006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: 2nd b]
type = Explod
triggerAll = NumExplod(94010240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010241
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


[State -1, x, y, F, b, b: 1st b]
type = Explod
triggerAll = NumExplod(94010006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1







[State -1, y, z, B, b, c: y]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94020210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: z]
type = Explod
triggerAll = NumExplod(94020210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94020220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: Back]
type = Explod
triggerAll = NumExplod(94020220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94020004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: b]
type = Explod
triggerAll = NumExplod(94020004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94020240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: c]
type = Explod
triggerAll = NumExplod(94020240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94020250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1







[State -1, x, y, B, y, z : x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94030200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1,x, y, B, y, z : 2nd y]
type = Explod
triggerAll = NumExplod(94030004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : Back]
type = Explod
triggerAll = NumExplod(94030210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94030004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : 1st y]
type = Explod
triggerAll = NumExplod(94030200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : z]
type = Explod
triggerAll = NumExplod(94030211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94030220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1







[State -1, c, x, D, a, z: c]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94040250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: x]
type = Explod
triggerAll = NumExplod(94040250)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94040200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: Down]
type = Explod
triggerAll = NumExplod(94040200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "dback" || Helper(90000005), command = "dfwd") && Helper(90000005), command != "up"
anim = 1998
ID = 94040002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: a]
type = Explod
triggerAll = NumExplod(94040002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94040230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: z]
type = Explod
triggerAll = NumExplod(94040230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94040220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1







[State -1, z, a, B, x, x: z]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94050220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: a]
type = Explod
triggerAll = NumExplod(94050220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94050230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: Back]
type = Explod
triggerAll = NumExplod(94050230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94050004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 2nd x]
type = Explod
triggerAll = NumExplod(94050200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 1st x]
type = Explod
triggerAll = NumExplod(94050004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1














[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1











[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1

















[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2dist x < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignoreHitPause = 0

[State -1, Air Blocking]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = StateType = A
triggerAll = ctrl
triggerAll = !(StateNo = [120,155])
triggerAll = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000007)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000009))
value = 120





[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerAll = !AILevel
trigger1 = P2dist x < 0 && StateType != A
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
flag = NoStandGuard
flag2 = NoCrouchGuard
ignoreHitPause = 0

[State -1, Stand Blocking]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = S
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = C
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
value = 120













[State -1, AIActivate]
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
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1











[State -1, standGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150

value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) && random <= 555
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)

value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152

value = 150

[State -1, airGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A

value = 132







[State -1, megaBeam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 3100
triggerall = power >= 1000 && var(59) && p2bodydist X >= 200
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = ctrl && random <= 100



[State -1, megaBeam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 3000
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 110
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 100



[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 420
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 230
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 240
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=230 && movecontact>0

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 250
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=240 && movecontact>0


[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl






[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1500
triggerall = var(59) && ctrl && prevstateno != 1000 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 50  && enemynear,statetype !=C


[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1100
triggerall = var(59) && ctrl && prevstateno != 1100
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 160  && Random < 200 && enemynear,statetype !=A




[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1200
triggerall = var(59) && ctrl && prevstateno != 1200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 110 && Random < 100

[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1210
triggerall = var(59) && ctrl && prevstateno != 1200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 110 && Random < 100

[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1220
triggerall = var(59) && ctrl && prevstateno != 1200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 110 && Random < 100



[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1300
triggerall = var(59) && ctrl && prevstateno != 1300
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 90  && Random < 150

[State -1, beam]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1510
triggerall = var(59) && ctrl && prevstateno != 1300
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 190  && Random < 150




[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 100
triggerall = var(59) && RoundState = 2 && ctrl && stateno != 100 && prevstateno != 100
triggerall = (statetype != A) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0












[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2


trigger1 = (stateno = 200) && (movecontact = 1)



[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)



[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl



[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1= (stateno = 230) && (movecontact = 1)



[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2


trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)






























[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))



[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl


trigger1 = (stateno = 400) && movecontact



[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 420
triggerall = var(59) && statetype != A && RoundState = 2


trigger1 = (stateno = 410) && movecontact



[State -1, Crouch Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))



[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl


trigger1 = (stateno = 430) && movecontact



[State -1, Crouch Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 450
triggerall = var(59) && statetype != A && RoundState = 2


trigger1 = (stateno = 440) && movecontact







[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)



[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 630) && movecontact



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = stateno = 640 && movecontact



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 600) && (movecontact = 1)



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 610) && movecontact



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl


trigger1 = stateno = 620 && movecontact



[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)










[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 4000
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = NumExplod(90032602)
triggerall = AILevel <= 0
triggerall = ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000220)||numexplod(90000225)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000220)||numexplod(90000225)))
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]












[State -1, Hyper1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = AILevel <= 0
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 3300
triggerall = !var(51)
triggerall = power >= 1000
triggerall = statetype != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030114))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030016))
triggerall = AILevel <= 0
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 3150
triggerall = power >= 1000
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = AILevel <= 0
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,650]
trigger2 = (movecontact >= 1)


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = !ishelper
triggerall = numexplod(90000200)||numexplod(90000205)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1310
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = !ishelper
triggerall = numexplod(90000210)||numexplod(90000215)
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1320
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = !ishelper
triggerall = numexplod(90000220)||numexplod(90000225)
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 2602
triggerall = (StateType != A) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "c" && command = "holdfwd"
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 2601
triggerall = (StateType != A) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "c" && command = "holdback"
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 2600
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper)
triggerall = (command = "c")
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]
trigger4 = stateno = [1300,1520]
trigger4 = movecontact
trigger5 = stateno = [1031,1035]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1500
triggerall = (StateType != A)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
triggerall = !ishelper
triggerall = numexplod(90000200)||numexplod(90000205)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1510
triggerall = (StateType != A)
triggerall =  (!IsHelper)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
triggerall = !ishelper
triggerall = numexplod(90000210)||numexplod(90000215)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1520
triggerall = (StateType != A)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
triggerall = !ishelper
triggerall = numexplod(90000220)||numexplod(90000225)
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

trigger3 = stateno = [2510,2512]

[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = cond(var(14) = 0, 250,var(14))
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = (command = "z") && command != "holddown"
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact






























[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF" || (command = "holdfwd" && command!="holdback" && (command="a"))




[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB" || (command = "holdback" && command!="holdfwd" && (command="a"))



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"





[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 800
trigger1 =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = ctrl || (stateno=100&&animelemtime(2)>=2) || stateno = 52
triggerall = (statetype != A)
trigger1 = command = "b"



[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 200
triggerall = (command = "x") && (statetype != A) && !Var(59) && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(1) = 1


[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 230
triggerall = (command = "y") && (statetype != A) && !Var(59) && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(2) = 1

[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 400
triggerall = (command = "x") && command = "holddown" && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(3) = 1

[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 440
triggerall = (command = "y") && command = "holddown" && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(4) = 1


[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 450
triggerall = command = "holddown" && command = "z"
triggerall = statetype != A
triggerall = !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(5) = 1

[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(6) = 1

[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = command != "holddown"
value = 620
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(7) = 1


[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 640
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = (stateno=100&&animelemtime(2)>=2) || stateno = 52
trigger3 = stateno = [200,650]
trigger3 = movecontact
trigger3 = var(8) = 1

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [7000, 7010]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 7000
slot = 0
time = 10

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [7000, 7010]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 7010
slot = 0
time = 10

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 7020
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 7020
forceair = 1
slot = 0
time = 10

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [7000, 7020]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, Air Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 45
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = !ishelper
triggerall = statetype = A
triggerall = var(17) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,650]) && movecontact

[State -1, Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) =0
triggerall = !ishelper
triggerall = statetype = S
triggerall = stateno = [150,153]
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "y" && command = "z"
value = 8011




[State -1, Crouching Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) =0
triggerall = !ishelper
triggerall = statetype = C
triggerall = stateno = [150,153]
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "y" && command = "z"
value = 8012



[State -1, Air Guard Push]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = statetype = A
triggerall = stateno = [154,155]
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "y" && command = "z"
value = 8013
