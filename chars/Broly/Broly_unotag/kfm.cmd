
































































































































[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


[Defaults]

command.time = 15



command.buffer.time = 1





[Command]
name = "Spirit Bomb"
command = ~D,DF,F,x+a

[Command]
name = "Kamehameha EX"
command = ~D, DF, F, x+y

[Command]
name = "Kamehameha"
command = ~D, DF, F, x

[Command]
name = "Dragon Fist"
command = ~D, DF, F, y

[Command]
name = "Grab"
command = ~D, DF, F, a

[Command]
name = "Dragon Fist Upper"
command = ~D, DB, B, x


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "Throw"
command = x+a
time = 1
[Command]
name = "Counter"
command = x+y
[Command]
name = "Super Jump"
command = D,$U
[Command]
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = b
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
name = "hold_b"
command = /$b
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













































;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s+c
Time = 25

[Command]
name = "sheoun"
command = ~D, D, D, s+z
Time = 25

[Command]
name = "palit"
command = c
Time = 2

[Command]
name = "turtleuno"
command = z
Time = 2


[Statedef -1]


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
trigger4 = AILevel >  0
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
triggerall = Partner, Time > 1 && Time > 45
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
trigger3 = Partner, Time > 30 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2 * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
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

[State -1, Change Attack]
type = ChangeState
value = 1251126
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = movetype = A && !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,4850]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0 && Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = AILevel >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))
trigger3 = MoveContact
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
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-R] END LINE -------

;  ;]



[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger4 = (anim = 21)
trigger5 = (prevstateno > 5000) && (random < 200)
value = 130
[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131
[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132
[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && ((statetype = S))
trigger1 = p2bodydist X < 15
trigger1 = random <= 200
value = 205

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && ((statetype = S))
trigger1 = p2bodydist X < 15
trigger1 = random <= 200
trigger1 = power > 999
value = 900

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && ((statetype = S))
trigger1 = p2bodydist X <= 25  && p2bodydist X > 15
trigger1 = random <= 200
value = 200

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && ((statetype = S))
trigger1 = p2bodydist X < 15
trigger1 = random <= 200
value = 235

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && ((statetype = S))
trigger1 = p2bodydist X <= 28 && p2bodydist X > 15
trigger1 = random <= 200
value = 230

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = [230,235]
trigger1 = random <= 450
value = 1000

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = [200,235]
trigger1 = random <= 950
value = 300

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)
trigger1 = stateno = [200,205]
trigger1 = random <= 750
value = 230

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)
trigger1 = stateno = 205
trigger1 = random <= 650
value = 205

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)
trigger1 = stateno = 235
trigger1 = random <= 650
value = 235

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)
trigger1 = stateno = 430
trigger1 = random <= 950
value = 430

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X < 15)
trigger1 = stateno = [200,205]
trigger1 = random <= 750
value = 235

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = [200,235]
trigger1 = random <= 450
value = 1000

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = 300
trigger1 = random <= 150
value = 1050

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = random = [0,100]
trigger1 = p2bodydist x >= 130
trigger1 = p2movetype != H
trigger1 = statetype != A
value = 1000

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = random = [0,400]
triggerall = enemy,NumHelper = 1
triggerall = p2bodydist x >= 130
triggerall = p2movetype != H
triggerall = power > 999
trigger1 = stateno = 150 && command = "Counter"
trigger2 = stateno = 151 && command = "Counter"
trigger3 = stateno = 152 && command = "Counter"
trigger4 = stateno = 153 && command = "Counter"
trigger5 = stateno = 154 && command = "Counter"
trigger6 = stateno = 155 && command = "Counter"
value = 1000


[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
trigger1 = random = [0,400]
trigger1 = p2bodydist x <= 50
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = (prevstateno = 1000)
value = 1050

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
trigger1 = random = [0,500]
trigger1 = p2bodydist x <= 50
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype = A
value = 1050

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
trigger1 = random = [0,400]
trigger1 = p2bodydist x <= 100
trigger1 = enemy, vel X > 0
triggerall = enemy,NumHelper = 0
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype != A
value = 1100

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = power >=1500
trigger1 = random = [0,200]
trigger1 = p2bodydist x <= 100
trigger1 = enemy, vel X > 0
triggerall = enemy,NumHelper = 0
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype != A
value = 2000

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = backedgedist < 5
trigger1 = random = [0,800]
trigger1 = p2bodydist x <= 30
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype != A
value = 1100

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = backedgedist < 5
trigger1 = random = [0,800]
trigger1 = p2bodydist x <= 30
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype != A
value = 1050


[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = random = [0,700]
trigger1 = p2bodydist x <= 15
trigger1 = p2statetype = L
value = 430

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = random = [0,900]
trigger1 = p2bodydist x <= 10
trigger1 = p2stateno = 20
value = 430

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A)
triggerall = AILevel >= 3
triggerall = random = [0,200]
trigger1 = p2bodydist x <= 40
value = 600

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A)
triggerall = AILevel >= 3
triggerall = random = [0,900]
trigger1 = p2bodydist x <= 40
value = 630

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = 600
trigger1 = random <= 750
value = 630

[State -1, AI Combo]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H)
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25)
trigger1 = stateno = [600,630]
trigger1 = random <= 900
value = 300

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
triggerall = random = [0,300]
trigger1 = p2bodydist x <= 10
trigger1 = p2stateno = 20
value = 400

[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >=   4
triggerall = random = [0,900]
trigger1 = p2bodydist x <= 10
trigger1 =  p2stateno = 20
value = 800



[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 3
trigger1 = random = [0,800]
trigger1 = p2bodydist x <= 20
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = p2statetype = A
value = 300


[State -1, AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 4
triggerall = p2statetype != L
triggerall = stateno < 3000
trigger1 = prevstateno != 5120
trigger1 = statetype != A
trigger1 = p2bodydist x >= 150
trigger1 = power >= 3000
trigger1 = random = [500,699]
value = 3000




[State -1, Hyper Projectile Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
VALUE= 9000
triggerall = power > 999
triggerall = (stateno = [120,140]) && command = "Counter"
triggerall = stateno != [9000,9003]
trigger1 = STATETYPE = S

[State -1, Hyper Projectile Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
VALUE= 8000
triggerall = power > 2999
triggerall = command = "Spirit Bomb" && enemy, stateno = 3000
triggerall = stateno != [8000,8003]
trigger1 = STATETYPE = S



[State -1, Spirit Bomb]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = command = "Spirit Bomb"
triggerall = power = 3000
triggerall = stateno !=3000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Kamehameha EX]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 2000
triggerall = command = "Kamehameha EX"
triggerall = stateno !=2000
triggerall = power >= 1500
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = [600,630]) && movecontact
trigger5 = (stateno = 300) && movecontact


[State -1, Dragon Fist]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = command = "Dragon Fist"
triggerall = stateno !=1100
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = 300) && movecontact

[State -1, Dragon Fist]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1150
triggerall = command = "Grab"
triggerall = stateno !=1100
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = 300) && movecontact

[State -1, Dragon Fist Upper]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1050
triggerall = command = "Dragon Fist Upper"
triggerall = stateno !=1050
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Kamehameha]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = command = "Kamehameha"
triggerall = stateno !=1000
trigger1 = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Standing Crush Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = power > 99
triggerall = p2bodydist x < 50
trigger1 = stateno = 150 && command = "Counter"
trigger2 = stateno = 151 && command = "Counter"
trigger3 = stateno = 152 && command = "Counter"
trigger4 = stateno = 153 && command = "Counter"
trigger5 = stateno = 154 && command = "Counter"
trigger6 = stateno = 155 && command = "Counter"
value = 900






[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Dash Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 107
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Dash Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 108
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = command = "Throw"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100






[State -1, Stand Close Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 205
triggerall = P2BodyDist X < 25
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = P2BodyDist X > 15
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 4



[State -1, Stand Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = command = "a" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 235) && movecontact

[State -1, Stand Close Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 235
triggerall = P2BodyDist X < 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact

[State -1, Stand Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = P2BodyDist X > 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7

[State -1, Stand Heavy]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 300
triggerall = command = "y"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact || (stateno = [230,235]) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = [600,630]) && movecontact





[State -1, Power Charge]
type = CHANGESTATE
VALUE= 310
TRIGGER1 = POWER < CONST(DATA.POWER) || POWER < POWERMAX
Trigger1 = COMMAND = "hold_b"
trigger1 = STATETYPE = S && CTRL

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = power = 3000
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Crouching Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Crouching Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (movecontact) || (movecontact && time > 5)
trigger3 = (stateno = 235)
trigger3 = (movecontact)



[State -1, Jump Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact



