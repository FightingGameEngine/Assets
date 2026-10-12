




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
time = 15

[Command]
name = "DU"
command = D, UF
time = 15

[Command]
name = "DU"
command = D, UB
time = 15




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
name = "Jem"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "Backup"
command = B, z+c

[Command]
name = "Backup2"
command = F, z+c

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






[State -1, taunt]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=195
triggerall=var(59)&&roundstate=2&&statetype!=A
trigger1=p2dist x>200&&(enemynear,vel y>0)&&ctrl&&random<100
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)




[State -1, standGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59) && random < 900
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
triggerall =stateno != 1030
trigger1 = (P2StateType != C) && (P2MoveType = A)

value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59) && random < 950
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150

value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59) && random < 950
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)

value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59) && random < 950
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall =stateno != 1030
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152

value = 150

[State -1, airGuard]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A

value = 132






[State -1, bedazzled AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && (p2dist x=[180,250]) && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random <50
trigger3 = (stateno = [200,250]) && movecontact
triggerall = (!IsHelper)

[State -1, aerial bedazzled]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=3050
triggerall=var(59)&&roundstate=2&&statetype=A&&power>=1000&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=NumHelper=0&&P2Statetype=A
trigger1=ctrl&&(p2dist x<=150)&&(p2dist y=[-90,-60])&&random<50
triggerall = (!IsHelper) && numhelper != 3001
persistent=1

[State -1, melee hyper]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = power >= 2000 && var(59) && ctrl && p2bodydist X <= 100
triggerall=(p2stateno!=[120,155])
triggerall = StateType != A && MoveType != H && RoundState = 2 && enemynear,movetype != A
trigger1 = enemynear,numproj = 0 && enemynear,Statetype != C && enemynear,Statetype != A && enemynear,Statetype = S && random <= 100
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3=(stateno=[200,250])&&movehit


[State -1, Arcade Hyper]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3500
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 =  (p2dist x=[180,260])&& random<50
triggerall = enemynear, anim = 5300
triggerall = enemynear, NumHelper=0 && enemynear, movetype != A && random<100 && Numhelper != 3501
triggerall = (!IsHelper)


[State -1, Jem]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=4000
triggerall = !Numpartner
triggerall=var(59)&&roundstate=2&&statetype!=A&&power>=3000&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
trigger1=ctrl&& p2bodydist x<= 80 &&random<200
triggerall = stateno != (4001)
persistent=1



[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850]



[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, AI Super Jump 2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = pos y = 0 && ctrl
triggerall = var(59)
triggerall = statetype != A
triggerall = (p2bodydist y = [-300,-70])
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x = [ 20, 50]
trigger1 = random <= 1000 && p2movetype != A
trigger2 = enemy,vel y < -1
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210)
trigger2 = p2bodydist x <= 30
trigger3 = P2MoveType != H
trigger3 = P2BodyDist Y < -90
trigger3 = enemy,vel y <= 0
trigger3 = random < 4000






[State -1, Bedazzled slow_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0&&P2Stateno!=1
trigger1=ctrl&&p2dist x>240&&random<150
trigger2=(stateno=[200,240])&&movehit&&random<200
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1, Bedazzled mid_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0&&P2Stateno!=1
trigger1=ctrl&&(p2dist x=[180,240])&&random<150
trigger2=(stateno=[200,240])&&movehit&&random<200
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1, Bedazzled_strong_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1020
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall=NumHelper=0&&P2Stateno!=1
triggerall = !numprojID(1023)
trigger1=ctrl&&(p2dist x=[100,180])&&random<100
trigger2=(stateno=[200,240])&&movehit&&random<200
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1, Lightblast counter]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1030
triggerall = var(59) && ctrl && prevstateno != 1030
triggerall = P2Stateno!=5300 && p2stateno !=1053
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X <= 100 && Random < 50
trigger1 = P2BodyDist Y = [-50,50]

[State -1, dive kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1040
triggerall=Var(59)>=1
triggerall=statetype = A&&(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])
triggerall=pos y <= -90
triggerall=(p2dist x=[30,120])&&(p2dist y=[0,255])&& random<50
trigger1 = ctrl
trigger2 = (stateno = [600,650])&&movehit

[State -1, Dazzling Ball slow_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1050
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall = !numprojID(1031)
triggerall = numproj = 0
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0 && numproj = 0 &&P2Stateno!=5300 && p2stateno !=1053
trigger1=ctrl&& (p2dist x=[100,160]) &&random<100
trigger2=(stateno=[200,250])&&movehit&&random<100
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1, Dazzling Ball mid_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1051
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall = !numprojID(1031)
triggerall = numproj = 0
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0 && numproj = 0 && P2Stateno!=5300 && p2stateno !=1053
trigger1=ctrl&&(p2dist x=[160,210])&&random<100
trigger2=(stateno=[200,240])&&movehit&&random<100
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1, Dazzling Ball strong_AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1052
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0&& numproj = 0 &&P2Stateno!=5300 && p2stateno !=1053
triggerall = !numprojID(1031)
trigger1=ctrl&&(p2dist x=[210,290])&&random<100
trigger2=(stateno=[200,240])&&movehit&&random<100
persistent=1
triggerall = P2BodyDist Y = [-50,50]


[State -1 AI, RollPunch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1060
triggerall=Var(59)>=1
triggerall=(statetype != A&&enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])
triggerall=(p2dist x=[30,120])&& random<100
trigger1 = ctrl
trigger2 = (stateno = [200,240])&&movehit

[State -1,Longshot help]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=2000
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=NumHelper=0&&P2Stateno!=1
trigger1=ctrl&&p2dist x>190&&random<50
triggerall = stateno != (2001)
triggerall = !numhelper(2001)
persistent=1

[State -1, Holograms help]
type=ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value=2100
triggerall=var(59)&&roundstate=2&&statetype!=A&&P2Life>1
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y<0)
triggerall=NumHelper=0&&P2Stateno!=1
trigger1=ctrl&&p2dist x>130&&random<50
triggerall = stateno != (2101)
triggerall = !numhelper(2101)
persistent=1




[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0


[State -1, air dazzled]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall=Var(59)>=1
triggerall=roundstate = 2 && statetype = A
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)&&(enemynear,statetype!=L)
triggerall=(p2dist x>=250)&&(p2dist y=[-70,-20])&& random<50
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [600,649])&&movehit

[State -1, air dazzled med]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1110
triggerall=Var(59)>=1
triggerall=roundstate = 2 && statetype = A
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)&&(enemynear,statetype!=L)
triggerall=(p2dist x>=180)&&(p2dist y=[-70,-20])&& random<50
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [600,649])&&movehit

[State -1, air dazzled fast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1120
triggerall=Var(59)>=1
triggerall=roundstate = 2 && statetype = A
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)&&(enemynear,statetype!=L)
triggerall=(p2dist x>=110)&&(p2dist y=[-70,-20])&& random<50
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [600,649])&&movehit












[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall =(stateno != 420)
triggerall = var (59) && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=55&&(p2bodydist y = [-70,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random <350
trigger1 = ctrl
trigger2 = stateno = 100



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2


trigger1 = (stateno = 200) && (movecontact = 1)



[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)


[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=230 && movecontact>0

[State -1, Crouch launcher]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=240 && movecontact>0


[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl



[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S


trigger1= (stateno = 230) && (movecontact = 1)



[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2


trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)






























[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))



[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl


trigger1 = (stateno = 400) && movecontact



[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = var(59) && statetype != A && RoundState = 2


trigger1 = (stateno = 410) && movecontact



[State -1, Crouch Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))



[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl


trigger1 = (stateno = 430) && movecontact



[State -1, Crouch Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = var(59) && statetype != A && RoundState = 2


trigger1 = (stateno = 440) && movecontact









[State -1, Throw1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C

















[State -1, Air Low Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall= var(59) && numenemy&&Roundstate=2
triggerall= StateType = A && P2statetype != L &&(P2BodyDist Y = [-50, 10])
trigger1 = ctrl


[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 630) && movecontact



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = stateno = 640 && movecontact



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 600) && (movecontact = 1)



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A


trigger1 = (stateno = 610) && movecontact



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl


trigger1 = stateno = 620 && movecontact



[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, cState]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

















[State -1, Bedazzled]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2p" && !IsHelper
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,450])&&movecontact
trigger4 = (stateno = [1000,1030]) && time >= 15

[State -1, Bedazzled Aerial]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3050
triggerall = power >= 1000
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2p" && !IsHelper
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[600,650])&&movecontact


[State -1, Arcade Hyper]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3500
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2k" && !IsHelper
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,450])&&movecontact
trigger4 = (stateno = [1000,1030]) && time >= 15



[State -1, melee hyper]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = power >= 2000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcb_2p" && !IsHelper
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,450])&& movecontact
trigger4 = (stateno = [1000,1030]) && time >= 15


[State -1, Hyper4]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4000
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "Jem" && (!IsHelper)
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno = [200,450]) && MoveContact
trigger4 = (stateno = [1000,1030]) && time >= 15



[State -1, Special1_weak]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = prevstateno != 1000 && prevstateno != 1010 && prevstateno != 1020
triggerall = command = "qcf_x" && (!IsHelper)
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,250])&& movecontact


[State -1, Special1_medium]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1010
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = prevstateno != 1000 && prevstateno != 1010 && prevstateno != 1020
triggerall = command = "qcf_y" && (!IsHelper)
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,250])&& movecontact



[State -1, Special1_strong]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1020
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = prevstateno != 1000 && prevstateno != 1010 && prevstateno != 1020
triggerall = command = "qcf_z" && (!IsHelper)
trigger1 =  ctrl = 1
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact
trigger3 = (stateno=[200,250])&& movecontact





[State -1, Aerial dazzled slow]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = command = "qcf_x"
triggerall = RoundState = 2 && StateType = A && (MoveType != H) && !Var(40)
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SCA, NA) && movecontact

[State -1, Aerial dazzled med]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1110
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = command = "qcf_y"
triggerall = RoundState = 2 && StateType = A && (MoveType != H) && !Var(40)
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SCA, NA) && movecontact

[State -1, Aerial dazzled fast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1120
triggerall = !(IsHelper)
triggerall = !numhelper(1000)
triggerall = numproj = 0
triggerall = command = "qcf_z"
triggerall = RoundState = 2 && StateType = A && (MoveType != H) && !Var(40)
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SCA, NA) && movecontact


[State -1, Special2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1030
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")


[State -1, Dazzling Ball slow]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1050
triggerall = var(59) = 0
triggerall =  (!IsHelper) && !numprojID(1031)
triggerall =  (numproj = 0) && (p2stateno !=5300)&& (p2stateno !=1053)
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
trigger1 = (ctrl = 1) && (!IsHelper)
triggerall = command = "qcf_a"


[State -1, Dazzling Ball med]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1051
triggerall = var(59) = 0
triggerall =  (!IsHelper) && !numprojID(1031)
triggerall =  (numproj = 0) && (p2stateno !=5300)&& (p2stateno !=1053)
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
trigger1 = (ctrl = 1) && (!IsHelper)
triggerall = command = "qcf_b"


[State -1, Dazzling Ball fast]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1052
triggerall = var(59) = 0
triggerall =  (!IsHelper) && !numprojID(1031)
triggerall =  (numproj = 0) && (p2stateno !=5300)&& (p2stateno !=1053)
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
trigger1 = (ctrl = 1) && (!IsHelper)
triggerall = command = "qcf_c"


[State -1, Air Divekick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1040
triggerall = !var(59)
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

[State -1, RollPunch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1060
triggerall = !var(59)
triggerall = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c") && p2movetype = H
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,450]) && movecontact


[State -1, Longshot]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = power >= 500
triggerall = stateno != 2000
triggerall = stateno != (2001)
triggerall = !numhelper(2001)
trigger1 = command = "Backup2"

[State -1, Holograms]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2100
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = power >= 500
triggerall = stateno != 2100
triggerall = stateno != (2101)
triggerall = !numhelper(2101)
trigger1 = command = "Backup"
































[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"



[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 110
triggerall = prevstateno != 110
triggerall = stateno != 110
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = A
triggerall = command = "FF"
trigger1 = ctrl = 1
trigger2 = (stateno = [600,690])&& movecontact




[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"


[State -1, BckDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 115
triggerall = (StateType = A && command = "BB")
trigger1 = StateNo != [100,109]
trigger1 = ctrl




[State -1, Roll Forward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4800
trigger1 = command = "holdfwd" && var(59) = 0 && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life


[State -1, Roll Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 4801
trigger1 = command = "holdback" && var(59) = 0 && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life



[State -1, Superjump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"





[State -1,Koshuu_Tou]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = ctrl = 1 && (statetype = S) && !Var(59)
trigger1 = (command = "holdfwd")&&(command = "z")
trigger2 = (command = "holdback")&&(command = "z")










[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = (command = "x") && (command != "holddown") && (statetype != A)&& !Var(59)
trigger1 = ctrl = 1



[State -1, Stand Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = (StateNo = 200) && (movecontact >= 1)
trigger3 = (StateNo = 230) && (movecontact >= 1)
trigger4 = (StateNo = 3100) && (movecontact >= 1)



[State -1, Stand Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger5 = (StateNo = 250) && (movecontact >= 1)




[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (StateNo = 200) && (movecontact >= 1)



[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = (stateno = 230) && (movecontact >= 1)
trigger3 = (StateNo = 210) && (movecontact >= 1)



[State -1, Stand Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger3 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)





[State -1, Crouch Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1



[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 430)) && (movecontact >= 1)



[State -1, Crouch Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = [230,240]) || (stateno = [430,440])) && (movecontact >= 1)
trigger4 = (stateno = 450) && (movecontact >= 1)



[State -1, Crouch Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact >= 1)



[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 430)) && (movecontact >= 1)



[State -1, Crouch Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = [230,240]) || (stateno = [430,440])) && (movecontact >= 1)





[State -1, Air Light Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1



[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact = 1)



[State -1, Air Hard Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)



[State -1, Air Light Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = (stateno = 600) && (movecontact = 1)



[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1


trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact >= 1)



[State -1, Air Hard Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = command != "holddown"
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)










