




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







[command]
name = "Bacanje Noza"
command = D,DF,F,x
time = 15

[command]
name = "Bacanje Noza"
command = D,DF,F,y
time = 15

[command]
name = "Bacanje Noza"
command = D,DF,F,z
time = 15


[command]
name = "Bacanje Granate"
command = D,DB,B, a
time = 15

[command]
name = "Bacanje Granate"
command = D,DB,B,b
time = 15

[command]
name = "Bacanje Granate"
command = D,DB,B,c
time = 15



[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1




[Command]
name = "Silent Armor"
command = ~D, DB, B, x
time = 30



[Command]
name = "Star Hyper"
command = ~D, DF, F, a
time = 30




[Command]
name = "Hyper1"
command = ~D, DF, F, b

[Command]
name = "Hyper1"
command = ~D, DF, F, c

[Command]
name = "Hyper1"
command = ~D, DF, F, a+b+c




[Command]
name = "Hyper2"
command = ~D, DF, F, x+y

[Command]
name = "Hyper2"
command = ~D, DF, F, x+z

[Command]
name = "Hyper2"
command = ~D, DF, F, y+z

[Command]
name = "Hyper2"
command = ~D, DF, F, x+y+z




[Command]
name = "SpecialX"
command = D,DB,B, x

[Command]
name = "SpecialY"
command = D,DB,B, y

[Command]
name = "SpecialZ"
command = D,DB,B, z




[Command]
name = "SpecialA"
command = D,DF,F, a

[Command]
name = "SpecialB"
command = D,DF,F, b

[Command]
name = "SpecialC"
command = D,DF,F, c




[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c




[Command]
name = "Super_Jump"
command = ~D, U



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
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
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
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y



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
name = "SJ"
command = $D, $U







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


[State -1, Bacanje Granate]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 6003
triggerall = command = "Bacanje Granate"
triggerall = NumHelper(6004)<1
triggerall = NumHelper(6005)<1
trigger1 = (statetype = s) && ctrl




[State -1, Bacanje Noza]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1004
triggerall = command = "Bacanje Noza"
triggerall = NumHelper(1005)<1
triggerall = NumHelper(1006)<1
trigger1 = (statetype = s) && ctrl


[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger2 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger3 = (anim = 21)
trigger4 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact && (random = [100,400])
trigger2 = (stateno = 241) && movecontact && (random = [100,400])
value = 251

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 240) && movecontact && (random = [100,400])
trigger2 = (stateno = 241) && movecontact && (random = [100,400])
value = 250

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact && (random = [401,700])
trigger2 = (stateno = 211) && movecontact && (random = [401,700])
trigger3 = (stateno = 230) && movecontact && (random = [401,700])
value = 241

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28)
trigger1 = (stateno = 210) && movecontact && (random = [401,700])
trigger2 = (stateno = 211) && movecontact && (random = [401,700])
trigger3 = (stateno = 230) && movecontact && (random = [100,400])
value = 240

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 25)
trigger1 = (stateno = 200) && movecontact && (random = [100,400])
value = 230

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28)
trigger1 = (stateno = 210) && movecontact && (random = [100,400])
trigger2 = (stateno = 211) && movecontact && (random = [100,400])
trigger3 = (stateno = 240) && movecontact && (random = [401,700])
trigger4 = (stateno = 241) && movecontact && (random = [401,700])
value = 221

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 210) && movecontact && (random = [100,400])
trigger2 = (stateno = 211) && movecontact && (random = [100,400])
trigger3 = (stateno = 240) && movecontact && (random = [401,700])
trigger4 = (stateno = 241) && movecontact && (random = [401,700])
value = 220

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x <= 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact && (random = [200,700])
trigger2 = (stateno = 230) && movecontact && (random = [401,700])
value = 211

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2bodydist x > 28) && (random <= 750)
trigger1 = (stateno = 200) && movecontact && (random = [200,700])
trigger2 = (stateno = 230) && movecontact && (random = [401,700])
value = 210

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist x <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 440) && movecontact
value = 420

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 750)
trigger1 = (stateno = 400) && movecontact
trigger2 = (stateno = 430) && movecontact
value = 410

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = C)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7000

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 640) && movecontact && (random = [401,700])
value = 650

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact && (random = [401,700])
trigger2 = (stateno = 630) && movecontact && (random = [401,700])
value = 640

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact && (random = [401,700])
value = 630

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 610) && movecontact && (random = [100,400])
trigger2 = (stateno = 640) && movecontact && (random = [100,400])
value = 620

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = (p2bodydist x <= 25) && (random <= 750)
trigger1 = (stateno = 600) && movecontact && (random = [100,400])
trigger2 = (stateno = 630) && movecontact && (random = [100,400])
value = 610

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist x <= 25) && (random <= 750)
value = 600


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1120



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && (random = [0,100])
value = 3000

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [0,100])
value = 3100






[State -1, Dash Forward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = !var(59)
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"


[State -1, Jump Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Hyper2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = !var(59)
triggerall = command = "Hyper2"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Hyper1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = !var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, NStar Hyper]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3600
triggerall = command = "Star Hyper"
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



[State -1, Silent Armor]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 9997
triggerall = command = "Silent Armor"
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = !var(59)
triggerall = command = "SpecialX"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall = !var(59)
triggerall = command = "SpecialY"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1020
triggerall = command = "SpecialZ"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Special2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = !var(59)
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Special2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1110
triggerall = !var(59)
triggerall = command = "SpecialB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Special2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1120
triggerall = !var(59)
triggerall = command = "SpecialC"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


[State -1,Ground Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S



[State -1, s]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = !var(59)
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)


[State -1, X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 430) && (Movecontact)


[State -1, Y]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)


[State -1, Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 211) && (Movecontact)
trigger5 = (StateNo = 230) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)


[State -1, A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)


[State -1, B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)


[State -1, C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 211) && (Movecontact)
trigger5 = (StateNo = 230) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)


[State -1, X agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = !var(59)
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)


[State -1, Y agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = !var(59)
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)


[State -1, Z agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = !var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)


[State -1, A agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = !var(59)
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)


[State -1, B agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = !var(59)
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)


[State -1, C agachado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = !var(59)
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)


[State -1, X]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4


[State -1, Y]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4


[State -1, Z]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = !var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4


[State -1, A]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4


[State -1, B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4


[State -1, C]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4


[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7000
triggerall = !var(59)
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl


[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 7000
triggerall = !var(59)
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 6300
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,152]

[State -1, Guard Push crouch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 6310
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,152]

[State -1, Guard Push crouch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 6320
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [150,152]







[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 900
triggerall = !var(59)
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 910
triggerall = !var(59)
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080

