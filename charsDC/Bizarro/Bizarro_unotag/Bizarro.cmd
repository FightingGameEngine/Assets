




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
name = "Drill"
command = x+a
time = 5

[Command]
name = "Drill"
command = y+b
time = 5

[Command]
name = "Drill"
command = z+c
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z





[command]
name = "super_jump"
command = ~D, U
time = 10



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
name = "chain"
command = ~D, DB, B, a+x

[Command]
name = "chain"
command = ~D, DB, B, b+y

[Command]
name = "chain"
command = ~D, DB, B, c+z

[Command]
name = "chain2"
command = ~D, DF, F, a+x

[Command]
name = "chain2"
command = ~D, DF, F, b+y

[Command]
name = "chain2"
command = ~D, DF, F, c+z



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
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command]
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command]
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10

[Command]
name = "charge_B_F_P"
command = ~30$B, F, x
time = 10

[Command]
name = "charge_B_F_P"
command = ~30$B, F, y
time = 10

[Command]
name = "charge_B_F_P"
command = ~30$B, F, z
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






[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,4




[State -1, Run]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=100
trigger1= var(59)=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= ctrl && (stateno!=[100,106])
trigger1= (enemynear,movetype!=A) && p2bodydist x>=160 && random<100

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall= var(59)=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= ctrl && (stateno!=[100,106])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)
trigger1= random<ifelse((enemynear,hitdefattr=SC,AT),150,50)
trigger2= (p2bodydist x=[0,80]) && backedgebodydist>=80
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random<500
value = 105

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
triggerall = var(1) < 1
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
triggerall = var(1) < 1
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
triggerall = var(1) < 1
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

[State -1, grounddefend]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall=var(59)=1&&statetype!=A&&roundstate=2&&ctrl&&random<999
triggerall = var(1) < 1
trigger1=enemynear,movetype=A&&p2bodydist x<80&&(p2bodydist y=[-75,75])
trigger2=enemy,numproj>0
value=ifelse((enemynear,statetype=C),131,130)

[State -1, airdefend]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall=var(59)=1&&statetype=A&&roundstate=2&&ctrl&&vel y>0&&random<999
triggerall = var(1) < 1
trigger1=enemynear,movetype=A&&p2bodydist x<80&&(p2bodydist y=[-75,75])
trigger2=enemy,numproj>0
value=132


[State -1,cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = alive
triggerall = Var(59)=1 && StateType != A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [150,153]
value = 750

[State -1,cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = alive
triggerall = Var(59)=1&& StateType != A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [150,153]
value = 751

[State -1,cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = alive
triggerall = Var(59)=1&& StateType = A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [150,155]
value = 752


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 0
triggerall = var(59) = 1
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl












[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = p2statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl
trigger1 = random < 500



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 202
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2


trigger1 = (stateno = 200) && (movecontact = 1)



[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 204
triggerall = var(59)=1 && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1 = ((stateno = 200) || (stateno = 202)) && (movecontact = 1)



[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 201
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = statetype = S
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl && p2statetype = S && random < 300
Triggerall = stateno !=405
Triggerall = stateno !=405
Triggerall = stateno !=201
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact



[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 203
triggerall = var(59)=1 && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1= (stateno = 201) && (movecontact = 1)



[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 205
triggerall = var(59)=1 && enemynear, statetype != L && RoundState = 2


trigger1 = ((stateno = 201) || (stateno = 203)) && (movecontact = 1)





[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = var(59)=1 && p2statetype != A
triggerall = stateno != [3000,4000]
triggerall = stateno != 400
trigger1 = p2bodydist x <= 25
trigger1 = statetype != A
trigger1 = ctrl && random < 800

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType != A && StateType = C
trigger1 = (StateNo = 400) && (MoveContact)
value = 402

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType != A && StateType = C
trigger1 = (StateNo = 402) && (MoveContact)
value = 404


[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50
trigger2 = p2bodydist X <= 40 && Random <= 300
value = 401

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType != A && StateType = C
trigger1 = (StateNo = 401) && (MoveContact)
value = 403

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType != A && StateType = C
trigger1 = (StateNo = 403) && (MoveContact)
value = 405




[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 404
triggerall = var(59)=1 && ctrl
triggerall = StateType != A && MoveType != H && !winko
trigger1 = p2bodydist X <= 30 && (enemynear, anim = 5300)
trigger2 = p2bodydist X <= 30 && (enemynear, statetype = S) && Random = [150,850]



[State -1, SuperJump AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = roundstate = 2
triggerall = var(59)=1
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 404 || stateno = 204
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl



[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType = A
triggerall = StateType != S && Ctrl && p2statetype = A
trigger1 = prevstateno = 700
trigger1 = time = 7
value = IfElse(Random <= 500,600,601)

[State -1, AirComboWeak AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType = A
trigger1 = (StateNo = [600,602]) && (MoveContact)
value = IfElse(StateNo = 600,601,IfElse(StateNo = 601,602,603))

[State -1, AirComboStrong AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && StateType = A
trigger1 = (StateNo = [603,605]) && (MoveContact)
value = IfElse(StateNo = 603,605,IfElse(StateNo = 605,604,IfElse(StateNo = 604,1700,1700)))




[State -1, throw ai]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1



[State -1, Power Charge]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 740
triggerall = var(59)=1 && numenemy && roundstate=2 && statetype!=A
triggerall = power<const(data.power) && Movetype!=A && enemynear,Movetype!=A && !(enemynear,ctrl)
triggerall =  power < const(data.power) && power < powermax
triggerall = !inguarddist && p2bodydist x >= 120 && ceil(random<100+(25*var(54)))
triggerall = stateno != 740
triggerall = ctrl
trigger1 = (enemynear,Movetype=H||enemynear,statetype=L)
trigger2 = enemynear,vel x<0
trigger3 = enemynear,stateno=[120,155]




[State -1, Heat Vision\Wind Breath]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = ifelse(random<500,1000,1200)
triggerall = var(59)=1 && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]


[State -1, Slide Reverse Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1300
triggerall = var(59)=1 && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X <= 40 && (random = [0,50])


[State -1, Super Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = ifelse((p2bodydist x = [0,90]),1300,1350)
triggerall = var(59)=1
triggerall = stateno != [3000,4000]
triggerall = statetype != A
triggerall = p2bodydist Y = [-35,5]

triggerall = random < 100
trigger1 = ctrl
trigger2=(stateno=400||stateno=402||stateno=401||stateno=403)&& movecontact
value = 1350


[State -1, heat vision]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && var(59)=1
triggerall = (Ctrl) && (Statetype = A)
triggerall =  (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = P2BodyDist X <= 20 && (random = [0,50])
value = ifelse(stateno = 730, 1400, 1400)


[State -1, Drill Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = numhelper(3201)=0 = 1
triggerall = (roundstate = 2) && var(59)=1
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1500


[State -1, Bizzarre]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59)=1 && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = P2BodyDist X >= 105 && Random < 250
value = 1600


[State -1, Impact\Fast wind]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(Random<500, 1750, 1700)
triggerall = var(59)=1 && ctrl
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]


[State -1, Impact\Fast wind]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = IfElse(Random<500, 1750, 1700)
triggerall = var(59)=1
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = (enemynear, ctrl) || (p2movetype != H)
trigger1 = p2bodydist x = [100, 200]
trigger1 = p2bodydist y = [0, 70]
trigger1 = enemynear, vel x = [-0.5, 0.5]
trigger1 = random < 140
trigger2 = p2bodydist x = [30, 200]
trigger2 = p2bodydist y = [-10, 20]
trigger2 = random < 140
trigger3 = Stateno = 604
trigger3 = Movecontact && random < 250


[State -1, AI aerial heat vision horiz]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = ifelse(stateno = 730, 1800, 1800)
triggerall = var(59)=1
triggerall = statetype = A
triggerall = ctrl || (stateno = 9001)
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-40, 5]
trigger1 = (p2bodydist X > 80) || var(57)
trigger1 = random < 140


[State -1, Slide Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1900
triggerall = var(59)=1
triggerall = statetype = S
triggerall = p2statetype != C && p2statetype != L
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0, 140]
trigger1 = p2bodydist y = [-40, 0]
trigger1 = enemynear, numproj = 0
trigger1 = enemynear, vel y >= -1
trigger1 = !(enemynear, ctrl)
trigger1 = random < 150 + ifelse(var(57), 40, 0) + ifelse(p2stateno = 5050, 50, 0)
trigger2 = p2bodydist x = [0, 140]
trigger2 = p2bodydist y = [-40, 0]
trigger2 = random < 150



[State -1, flame breath]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = power >= 1000 && var(59)=1 && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall= NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [300,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 500
value = 3000


[State -1, MegaHeat Vision]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = power >= 1000 && var(59)=1 && ctrl
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype = A && random >= 500
value = 3100


[State -1, RockWave]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 3000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall =  (var(8) = [-20,20])
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact
value = 3200


[State -1, flying charge]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && var(59)=1
triggerall = (Ctrl) && (p2statetype != L)
triggerall = p2bodydist y < 20 && p2bodydist y > -20
triggerall = (statetype = A)
trigger1 = (p2bodydist x >= 50) && (prevstateno != 5120) && (numproj = 0)
trigger1 = (power >= 1000) && (random = [0,200])
value = 3300


[State -1, Bizarro Smash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3500
triggerall = power >= 1000 && MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 40) && (p2bodydist y <= 10)
trigger1 = Random <= 250 && (statetype = S) && var(59)=1
trigger1 = ctrl = 1


[State -1, Solar Sheild]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl) && (p2statetype != L)
triggerall = Var(1) = 0
trigger1 =(prevstateno != 5120) && (statetype = S)
trigger1 = (power >= 1000) && (random = [0,100])
value = 3700


[State -1, Solar Sheild]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl) && (p2statetype != L)
triggerall = Var(1) = 0
trigger1 =(prevstateno != 5120) && (statetype = A)
trigger1 = (power >= 1000) && (random = [0,100])
value = 3800


[State -1, Stonerose]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3850
TriggerAll = var(59) = 1 &&roundstate=2&&statetype!=A&&power>=2000&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
trigger1=ctrl&&(p2bodydist x=[15,125])&&random<50
trigger2=((stateno=[200,405]))&&movehit&&random<50
persistent=1


[State -1, Lava Geiser]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 90)
triggerall = power >= 3000
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1
value = 3900








[State -1, IceStorm]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"



[State -1, Mega Heat Vision Aerial]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = command ="qcf_2p"
triggerall = power >= 1000
triggerall = numhelper(33011) = 0
trigger1 = ctrl && !ishelper
trigger1= statetype = A && movetype != H && !Var(59)
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = Stateno = 730



[State -1, RockWave]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !Var(59) && command = "chain2" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3200
triggerall = power >= 3000



[State -1, Flying Dive Hyper Aerial]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3300
triggerall = command = "qcf_2k"
triggerall = power >= 1000
trigger1 = statetype = A && movetype != H && !Var(59)
trigger1 = ctrl && !ishelper
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = Stateno = 730



[State -1, SMASH]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3500
triggerall = command = "qcb_2k"
triggerall = power >= 1000
triggerall = !Var(59)
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, Solar Sheild]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3700
triggerall = !Var(59)
triggerall = command = "qcf_2p"
triggerall = Var(1) = 0
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Solar Sheild Aerial]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3800
triggerall = !Var(59)
triggerall = command = "qcb_2p"
triggerall = Var(1) = 0
triggerall = power >= 1000
trigger1 = Statetype = A & ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Stone Rose]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !Var(59) && command = "qcf_2k" && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3850
triggerall = power >= 2000



[State -1, LavaGeiser]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "chain"
value = 3900




[State -1, Heat Vision]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")



[State -1, Wind Breath]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")



[State -1, Slide Reverse Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")



[State -1, Super Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1350
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_a" || command = "qcf_b" || command = "qcf_c"
trigger2 = Stateno = 730



[State -1, Aerial Heat Vision]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_x") || (command = "qcf_y")
trigger2 = stateno = 600 || stateno = 601 || stateno = 602 || stateno = 603 || stateno = 604 || stateno = 605
trigger3 = Stateno = 730



[State -1, Drill Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1500
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Drill"



[State -1, Bizarre Legion]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1600
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "charge_B_F_K"



[State -1, Impact]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1700
triggerall = !Var(59)
triggerall = command = "qcf_c" || command = "qcf_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 600
trigger3 = MoveContact
trigger3 = stateno = 601
trigger4 = MoveContact
trigger4 = stateno = 602
trigger5 = MoveContact
trigger5 = stateno = 603
trigger6 = MoveContact
trigger6 = stateno = 604
trigger7 = MoveContact
trigger7 = stateno = 605
trigger8 = Stateno = 730



[State -1, Fast Wind]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1750
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_a") || (command = "qcf_b")
trigger2 = stateno = 600 || stateno = 601 || stateno = 602 || stateno = 603 || stateno = 604 || stateno = 605
trigger3 = Stateno = 730



[State -1, Aerial Heat Vision]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1800
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
trigger2 = stateno = 600 || stateno = 601 || stateno = 602 || stateno = 603 || stateno = 604 || stateno = 605
trigger3 = Stateno = 730



[State -1, Slide Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1900
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "charge_B_F_P")



[State -1, SPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 750
triggerall = command = "pushblock" && StateType = S && !Var(59)
trigger1 = StateNo = 130
trigger2 = StateNo = [150, 151]



[State -1, CPushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 751
triggerall = command = "pushblock" && StateType = C && !Var(59)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]



[State -1, APushBlock]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 752
triggerall = command = "pushblock" && StateType = A && !Var(59)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]



[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S || statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"



[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"



[state -1, super_jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = !Var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 404 || stateno = 204
value = 700



[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 730
triggerall = Var(59) != 2 && Var(14) = 0
triggerall = command = "3K"
trigger1 = ctrl = 1
trigger2 = stateno = [100,105]
trigger2 = time >= 4



[State -1, Power Charge]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 740
triggerall = !Var(59)
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"



[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"















[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = (command = "holddown" && command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (StateNo = 240) && (movecontact >= 1)
trigger3 = (StateNo = 210) && (movecontact >= 1)


[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "x"
trigger1 = statetype = S && ctrl
trigger2=stateno=201&& movecontact
trigger3=(stateno=400||stateno=401)&& movecontact

[State -1, Stand medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 202
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "y"
trigger1 = ctrl && statetype = S
trigger2=(stateno=200||stateno=201)&& movecontact
trigger3=(stateno=400||stateno=401)&& movecontact

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 204
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "z"
trigger1 = statetype = S && ctrl
trigger2=(stateno=200||stateno=202||stateno=201||stateno=203)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401||stateno=403)&& movecontact

[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 201
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "a"
trigger1 = statetype = S && ctrl
trigger2=(stateno=200||stateno=202)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401)&& movecontact

[State -1, Standing medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 203
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "b"
trigger1 = ctrl && statetype = S
trigger2=(stateno=200||stateno=202||stateno=201)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401)&& movecontact

[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 205
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "c"
trigger1 = statetype = S && ctrl
trigger2=(stateno=200||stateno=202||stateno=201||stateno=203)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401||stateno=403)&& movecontact

[State -1, Crouching Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "x"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=230)&& movecontact
trigger3=stateno=401&& movecontact

[State -1, Crouching medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 402
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "y"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=201)&& movecontact
trigger3=(stateno=400||stateno=401)&& movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 404
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "z"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=202||stateno=201||stateno=203)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401||stateno=403)&& movecontact

[State -1, Crouching Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 401
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=202||stateno=201)&& movecontact
trigger3=(stateno=400||stateno=402)&& movecontact

[State -1, Crouching medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 403
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "b"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=202||stateno=201)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401)&& movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 405
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "c"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=202||stateno=201||stateno=203)&& movecontact
trigger3=(stateno=400||stateno=402||stateno=401||stateno=403)&& movecontact





[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = stateno = 601 || stateno = 600 && movecontact
Trigger3 = Stateno = 700



[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 602
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 601 || (stateno = 603))) && (movecontact = 1)
Trigger3 = Stateno = 700



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 604
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 601) || (stateno = 602) || (stateno = 603) || (stateno = 605)) && (movecontact = 1)
Trigger3 = Stateno = 700



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 601
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = (stateno = 600) || (stateno = 601) && (movecontact = 1)
Trigger3 = Stateno = 700



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 603
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 601) || (stateno = 602)) && (movecontact = 1)
Trigger3 = Stateno = 700



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 605
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 601) || (stateno = 602) || (stateno = 603) || (stateno = 604)) && (movecontact = 1)
Trigger3 = Stateno = 700










