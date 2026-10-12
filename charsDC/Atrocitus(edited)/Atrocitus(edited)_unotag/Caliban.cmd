
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






[State -1, AI Activation]
type = varset
triggerall = AILevel > 1
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = 1
v = 59
value = 1

[State -1, AI Deactivation]
type = null
triggerall = AIlevel < 8
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Dampiner]
type = null
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Random > AILevel*100
triggerall = animtime = 0
triggerall = movetype != H
triggerall = ctrl
trigger1 = statetype = S && (stateno != [120,150]) && (stateno != 40)
trigger1 = stateno != [10,12]
value = 0
ctrl = 1


[State -1, Bezerker Slash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall = power > 1000
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
triggerall = ctrl
triggerall = P2bodydist X > 160
triggerall = enemynear,vel Y > -1
trigger1 = enemynear,stateno = [3000,3999]
trigger1 = enemynear,numproj > 0 || enemynear,movetype = A
trigger2 = enemynear,stateno >= 3000
trigger2 = enemynear,hitdefattr = SCA,AA,AP
value = 3000

[State -1, S hard Punch (225)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype != A
triggerall = Enemynear,hitdefattr != SCA,AP && (enemynear,stateno != [3000,3999])
triggerall = enemynear,statetype = A && enemynear,Pos Y > -155 && enemynear,vel Y > -1
triggerall = ctrl
trigger1 = P2bodydist X = [0,88]
trigger1 = enemynear,vel x >= 2
trigger2 = P2bodydist X = [0,58]
trigger2 = enemynear,vel x < 2
value = 225

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = AILevel > 5
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = enemynear,movetype != H
trigger1 = ctrl
trigger1 = P2bodydist X = [-1,20]
trigger1 = enemynear,statetype != A


[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
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
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

[State -1, AI Guarding, Hard AI]
type = null
triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120


[State -1,C guard]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Value = 131
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = p2Statetype != A
Trigger1 = Ctrl || stateno = 100


[State -1,S guard]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
Value = 130
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Trigger1 = Ctrl || stateno = 100


[State -1,A Guard]
Type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 132
Triggerall = var(59) > 0
TriggerAll = StateType = A
Triggerall = inguarddist
Trigger1 = Ctrl || stateno = 105 || stateno = 103 || stateno = 58



[State -1, AI Guard Push (Standing)]
type = null
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType != A
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)
value = 6300

[State -1, Bezerker Slash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
triggerall = stateno = 1200 && movehit
trigger1 = power >= 1500
trigger2 = enemynear,Life <= 250
value = 3000

[State -1, Bezerker Slash@]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1000
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,statetype != L
trigger1 = ctrl || stateno = 103
trigger1 = P2bodydist X = [60,160]
trigger1 = enemynear,statetype != A || (enemynear,Pos Y = [-140,-50])
trigger1 = enemynear,vel Y > -1
trigger1 = random = [101,170]
trigger2 = p2stateno = 5130
value = 3000

[State -1, Muscle Bomber]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1000
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [5100,5120]
trigger1 = p2dist x < 50
trigger1 = ctrl && random = [201,250]
trigger2 = (stateno = [220,225]) || stateno = 250 || stateno = 420 || stateno = 450
trigger2 = moveguarded
trigger2 = P2bodydist X = [0,88]
trigger2 = vel X >= -2
value = 3100

[State -1, Dive Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1000
triggerall = statetype = A
triggerall = prevstateno != [3000,3999]
triggerall = stateno != 105
triggerall = stateno != 701
trigger1 = ((Pos Y - enemynear,Pos Y) > -70)
trigger1 = enemynear,vel Y >= -4
trigger1 = P2bodydist X = [0,130]
trigger1 = ctrl && random = [101,200]
value = 3200

[State -1, Dive Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall = power > 1500
triggerall = statetype != A
triggerall = P2bodydist X = [0,130]
triggerall = ctrl
trigger1 = enemynear,stateno = [5100,5110]
trigger2 = enemynear,stateno = 5030 || enemynear,stateno = 5050
trigger2 = enemynear,vel Y >= 1
trigger2 = enemynear,Pos Y > 60
value = 48

[State -1, Neurotoxin]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1000
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
trigger1 = ctrl || stateno = 103
trigger1 = (P2bodydist X = [-200,-101]) || (P2bodydist X = [101,200])
trigger1 = random = [301,400]
trigger2 = ctrl
trigger2 = P2bodydist X = [-100,100]
trigger2 = enemynear,stateno = 5050
trigger2 = enemynear,pos Y = [-200,-70]
trigger2 = enemynear,vel Y > -1
trigger2 = power >= 1500
trigger2 = random = [301,430]
value = 3400

[State -1, Fear Factor]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1000
triggerall = statetype != A
triggerall = prevstateno != [3000,3999]
triggerall = P2bodydist X > 100
trigger1 = numexplod(3302)=0
trigger1 = ctrl && random = [301,375]
value = 3300


[State -1, Fwd Dash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 100 || enemynear,stateno = 1121
trigger1 = P2bodydist X > 120
value = 103

[State -1, S hard Punch (225)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype != A
trigger1 = P2bodydist X = [-1,78]
trigger1 = stateno = 400 || stateno = 210
trigger1 = movehit
value = 225


[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = Ctrl && statetype != A
triggerall = (p2stateno != [5100,5150])
trigger1 = (p2bodydist x = [-1,50]) && (p2statetype != A)
value = 400

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = Ctrl && statetype != A
triggerall = (p2stateno != [5100,5150])
trigger1 = (p2bodydist x = [-1,50]) && (p2statetype = A)
value = 210



[State -1, Standing Chain End 2 (Finish Combo)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && movecontact
value = 250

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = null
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130) && (random < 250) && (p2statetype != A)
value = 230

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130) && (random < 250) && (p2statetype != A)
trigger2 = (p2stateno = [5130,5135]) && p2dist x <= 50
trigger3 = (stateno = 210) && movecontact
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = null
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130) && (random > 250) && (random < 500) && (p2statetype != A)
value = 200



[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
triggerall = stateno != 420
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
value = 410



[State -1,  Always superjump on launch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = movehit
trigger1 = (stateno = 220) && (anim = 225)
trigger2 = stateno = 225
value = 700




[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = stateno = 701 && vel Y < 0
trigger1 = P2bodydist X = [-1,50]
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 630) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 640) && movecontact
value = 620

[State -1,Dive Punch OTG]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Statetype = A)
trigger1 = stateno = 620 && movecontact
value = 1300



[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = ctrl
trigger1 = stateno = 701 && vel Y >= 0 || statetype = A && stateno != 701
trigger1 = P2bodydist X = [51,124]
trigger1 = enemynear,statetype != A && (Pos Y = [-150,-70]) || enemynear,statetype = A && ((Pos Y-enemynear,Pos Y) = [-100,70])
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = ctrl
trigger1 = stateno = 701 && vel Y >= 0 || statetype = A && stateno != 701
trigger1 = P2bodydist X = [-1,50]
trigger1 = ((Pos Y-enemynear,Pos Y) = [-100,100])
value = 600

[State -1,Dive Punch OTG]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Statetype = A) && (random >=(500)) && (random <(AILevel*8) + 500)
triggerall = stateno < 1000
triggerall = p2dist x < 100
triggerall = var(35) = 0
triggerall = stateno != 58
trigger1 =  enemynear,stateno = [5110, 5120]
value = 1300

[State -1, Dash Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Ctrl) && (Statetype != A) && (random >=(600)) && (random <(AILevel*8) + 600)
triggerall = stateno < 1000
triggerall = enemynear,stateno != [5100,5120]
triggerall =  ctrl
trigger1 = enemynear,movetype != H
trigger1 = P2bodydist X = [70,300]
trigger2 = enemynear,movetype = H
trigger2 = P2bodydist X = [0,300]
value = 1200

[State -1, Dash Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall =(Statetype != A)
triggerall = stateno < 1000
triggerall = enemynear,stateno != [5100,5120]
trigger1 = stateno = 220 && anim = 220 && movehit
value = 1200

[State -1, Rock Projectile]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = numhelper(1150) = 0
triggerall =  (Statetype != A) && (random >=(500)) && (random <(AILevel*8) + 500)
trigger1 = Ctrl
trigger1 = enemynear,stateno != [5020,5030]
trigger1 = enemynear,stateno != 5050
trigger1 = enemynear,stateno != [5100,5110]
trigger1 = enemynear,stateno != [5045,5048]
trigger1 = (p2bodydist x >= 150) &&(prevstateno != 5120)
trigger2 = ctrl
trigger2 = P2bodydist X >= 80
trigger2 = !inguarddist
trigger2 = projhittime(1410)>-1 && projhittime(1410)<= 10
value = 1100


[State -1, Projectile]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = numhelper(1010) = 0
triggerall = (Ctrl) && (Statetype != A) && (random >=(400)) && (random <(AILevel*8) + 500)
trigger1 = ctrl
trigger1 = (p2bodydist x >= 130) &&(prevstateno != 5120)
trigger2 = stateno = 220 && anim = 220 && moveguarded
value = 1000


[State -1,Tornado]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2bodydist X > 140
triggerall = var(35) = 0
triggerall = (Statetype != A)
trigger1 = (random >=(500)) && (random <(AILevel*8) + 500)
trigger1 = ctrl
trigger2= ctrl
trigger2 =  enemynear,stateno = 5120
value = 1400

[State -1, back Dash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
triggerall = (Ctrl) && (Statetype != A)
triggerall = power < 1500
trigger1 = backedgedist > 50
trigger1 = enemynear,stateno = [5100,5120]
trigger1 = P2bodydist X = [-10,60]
value = 105



[state -1, recover F]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 890
triggerall = var(59)
triggerall = RoundState = 2
TriggerAll = alive
Triggerall = stateno = 5120
trigger1 = P2bodydist X > 140
trigger1 = random < 220
trigger2 = P2bodydist x = [-10,70]
trigger2 = frontedgedist > 50
trigger3 = inguarddist
trigger3 = frontedgedist > 50
trigger4 = enemynear,numproj > 0
trigger4 = frontedgedist > 50

[state -1, recover B]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 895
triggerall = var(59)
triggerall = RoundState = 2
TriggerAll = alive
Triggerall = stateno = 5120
triggerall = frontedgedist <= 50
trigger1 =  P2bodydist x = [-10,70]
trigger2 = inguarddist
trigger3 = enemynear,numproj > 0




[state -1, Air recovers]
type = null
value = 5040
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype = L
Triggerall = alive && canrecover
trigger1 = stateno = [5030,5035]
trigger2 = stateno = [5050,5035]

[state -1, Air recovers]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5040
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype = L
TriggerAll = alive && canrecover
Trigger1 = Ctrl

[state -1, Air recovers]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5200
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype = L
Trigger1 = alive && canrecover
trigger1 = stateno = 5050

[state -1, Air recovers]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 5200
triggerall = var(59)
triggerall = RoundState = 2
triggerall = statetype = L
Trigger1 = alive && canrecover
trigger1 = stateno = 5210






[State -1, Hyper1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && (MoveContact)



[State -1, Hyper2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcb_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && (MoveContact)



[State -1, Hyper3]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3200
triggerall = power >= 1000
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && (MoveContact)



[State -1, Hyper4]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3300
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcb_2k"
trigger1 = numexplod(3302)=0
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && (MoveContact)



[State -1, Hyper4]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3400
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2k"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && (MoveContact)



[State -1, Fear Grab]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Rock Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1100
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Dash Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Dash Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1400
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
trigger1 = ctrl



[State -1, Dive Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1300
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)



[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
triggerall = enemynear, name != "Prime Sentinels"
triggerall = Var(59) != 1
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X <= 18
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = Command = "holdfwd"
trigger2 = Command = "holdback"































[State -1, FwdDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"



[State -1, BackDash]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
triggerall = statetype != A && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"



[State -1, Superjump]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = (stateno = [220,225]) && (anim = [225,226]) && movehit && command="holdup"



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"



[State -1, Standing Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Standing Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact


[State -1, Standing Strong Punch 2]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 225
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Standing Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,240]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


[State -1,  Stand Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Stand Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 430 && movecontact


[State -1, Stand Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,240]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


[State -1, Crouch Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact


[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,240]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


[State -1, Crouch Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger3 = stateno = 230 && movecontact


[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 450
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,240]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


[State -1, Air Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact && prevstateno != 600


[State -1, Air Medium Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact


[State -1, Air Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact


[State -1, Air Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 630
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && prevstateno != 630


[State -1, Air Medium Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 640
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 630 && movecontact


[State -1, Air Strong Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 650
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact
