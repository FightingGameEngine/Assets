
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
time = 8

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "trow"
command = y+z
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
name = "hyper1"
command = ~D, DF, F, x+y
time = 40
[Command]
name = "hyper1"
command = ~D, DF, F, y+z

[Command]
name = "hyper2"
command = ~D, DF, F, a+b
[Command]
name = "hyper2"
command = ~D, DF, F, b+c

[Command]
name = "hyper3"
command = ~D, DB, B, x+y
[Command]
name = "hyper3"
command = ~D, DB, B, y+z

[Command]
name = "Knee Press Nightmare"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "Knee Press Nightmare"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "hyper5"
command = ~D, DF, F, a+x
[Command]
name = "hyper5"
command = ~D, DF, F, b+y
[Command]
name = "hyper5"
command = ~D, DF, F, z+c

[Command]
name = "Multibatarang"
command = ~D, DB, B, a+x
[Command]
name = "Multibatarang"
command = ~D, DB, B, b+y
[Command]
name = "Multibatarang"
command = ~D, DB, B, z+c






[Command]
name = "NormalBatarang"
command = ~D, DF, F, x
[Command]
name = "EletricBatarang"
command = ~D, DF, F, y
[Command]
name = "ExplosiveBatarang"
command = ~D, DF, F, z

[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, b
[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, c
[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, a

[Command]
name = "stomp"
command = ~B, F, z
[Command]
name = "smoke"
command = ~B, F, y
[Command]
name = "special02"
command = ~B, F, x

[Command]
name = "shock"
command = ~D, DB, B, x
[Command]
name = "Eletric wave"
command = ~D, DB, B, y
[Command]
name = "Eletric Shield"
command = ~D, DB, B, z

[Command]
name = "special_03B"
command = ~B, F, a
[Command]
name = "special_03B"
command = ~B, F, b
[Command]
name = "special_03B"
command = ~B, F, c

[Command]
name = "special8b"
command = ~D, DF, F, b
[Command]
name = "special8a"
command = ~D, DF, F, a
[Command]
name = "special8b"
command = ~D, DF, F, c




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

[State -1, 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1 && p2life > 0  &&  life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210




[State -1, 3]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 220




[State -1, 4]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250



[State -1, 1A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240




[State -1, 3A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 250




[State -1, 4A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220




[State -1, 1B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210




[State -1, 3B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 240




[State -1, 4B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250




[State -1, 1C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240




[State -1, 3C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210




[State -1, 4C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220




[State -1, 1D]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2D]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210




[State -1, 3D]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230




[State -1, 4D]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240




[State -1, 1E]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2E]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 220




[State -1, 3E]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230




[State -1, 4E]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250




[State -1, 1F]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2F]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 400




[State -1, 3F]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 410




[State -1, 4F]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 410)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 420




[State -1, 1G]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)




[State -1, 2G]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430




[State -1, 3G]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440




[State -1, 4G]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 450




[State -1, 1X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)



[State -1, 2X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210




[State -1, 3X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230




[State -1, 4X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240




[State -1, 5X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 400




[State -1, 6X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 410




[State -1, 7X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 410)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 430




[State -1, 8X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440




[State -1, 9X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210




[State -1, 10X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220




[State -1, 11X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240



[State -1, 11X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250



[State -1, 12X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 420



[State -1, 1S]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)




[State -1, 2S]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210




[State -1, 3S]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 220



[State -1, 1T]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)




[State -1, 2T]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240




[State -1, 3T]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 250




[State -1, 1U]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)




[State -1, 2U]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 230




[State -1, 3U]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 240




[State -1, 1V]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)




[State -1, 2V]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 200




[State -1, 3V]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210



[State -1, 1Y]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = (statetype = C) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)



[State -1, 2Y]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430




[State -1, 3Y]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440



[State -1, 1Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = (statetype = C) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)



[State -1, 2Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430




[State -1, 3Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440



[State -1, 4Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 450





[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 200



[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall =  (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 210



[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 220



[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 230

[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 240

[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 250




[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 400



[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 410



[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 420

[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 430

[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 440

[State -1, Normal]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 450


[State -1, 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life < 1000 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 600)
value = 3200

[State -1, 4S]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1710

[State -1, Esgrima]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1710

[State -1, Esgrima2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1700

[State -1, Esgrima2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1700

[State -1, 1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1600


[State -1, Shock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1500

[State -1, Shock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1500

[State -1, Eletric Shield]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1400

[State -1, Eletric Shield]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1400

[State -1, Eletrc wave]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1300

[State -1, Eletric wave]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1300

[State -1, ShoryuCombo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 420)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1100

[State -1, ShoryuCombo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1100













[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = Command = "Knee Press Nightmare"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = command = "hyper1" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3200
triggerall = command = "hyper2" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3333
triggerall = command = "hyper3" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3400
triggerall = command = "hyper5" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3500
triggerall = command = "Multibatarang" && power >= 1000
trigger1 = (statetype = s) && ctrl



[State -1,stomp]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1600
triggerall = command = "stomp"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1,eletric shield]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = command = "Eletric Shield" || command = "Eletric Shield" || command = "Eletric Shield"
triggerall = p2stateno != 1066
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1, eletric wave]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1300
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1
triggerall = p2stateno != 1066
triggerall = command = "Eletric wave"
triggerall = statetype != A && enemy, movetype != H
trigger1 = ctrl



[State -1, 1201]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1210
triggerall = command = "special_03B" &&  statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

[State -1,1210]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1210
triggerall = var(25) = 1 && statetype != A
trigger1 = movecontact && stateno= 325
trigger1 = random <= 200
trigger2 = ctrl && P2bodydist X = [80,120]
trigger2 = random <= 100



[State -1,Esgrim]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1700+ifelse(command = "special8b",10,0)
triggerall = command = "special8a" || command = "special8b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1,smoke grenade]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1800
triggerall = command = "smoke"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1, 1100]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = command = "special02" && statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1,shock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1500
triggerall = command = "shock"
triggerall = p2stateno != 1066
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1, Diagonal Batarang]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1080
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "DiagonalBatarang"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )



[State -1, Eletric Batarang]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1&& numhelper(1086) < 1&& numhelper(1087) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "EletricBatarang"
triggerall = statetype != A && enemy, movetype != H
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

[State -1, Batarang]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000+ifelse(command="ExplosiveBatarang",20,0)
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1&& numhelper(1086) < 1&& numhelper(1087) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "NormalBatarang" || command = "ExplosiveBatarang"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )








[State -1, Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = !Var(59)
triggerall = (Command = "z" || command = "c") && Command = "holdfwd"
triggerall = Command != "holddown"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl


[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1045
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 420
trigger2 = movecontact = 1




[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact
trigger5 = stateno = 240 && MoveContact



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 410 && MoveContact




[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 250 && MoveContact
trigger5 = stateno = 400 && MoveContact
trigger6 = stateno = 430 && MoveContact


[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 240 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 430 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 440 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 430 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 240 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 430 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 440 && MoveContact



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 650 && MoveContact





[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
trigger4 = stateno = 610 && MoveContact


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact
