



































































[Command]
name = "DP_2p"
command = ~F, D, DF, x+y

[Command]
name = "DP_2p"
command = ~F, D, DF, x+z

[Command]
name = "DP_2p"
command = ~F, D, DF, y+z

[Command]
name = "QCF_2p"
command = ~D, F, x+y

[Command]
name = "QCF_2p"
command = ~D, F, x+z

[Command]
name = "QCF_2p"
command = ~D, F, y+z

[Command]
name = "QCB_2k"
command = ~D, B, a+b

[Command]
name = "QCB_2k"
command = ~D, B, a+c

[Command]
name = "QCB_2k"
command = ~D, B, b+c







[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20


[Command]
name = "HCB_a"
command = ~D, B, a

[Command]
name = "HCB_b"
command = ~D, B, b

[Command]
name = "HCB_c"
command = ~D, B, c

[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_z"
command = ~F, D, B, z


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
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b


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
name = "holdp"
command = /$x
time = 1

[Command]
name = "holdp"
command = /$y
time = 1

[Command]
name = "holdp"
command = /$z
time = 1

[Command]
name = "holdk"
command = /$a
time = 1

[Command]
name = "holdk"
command = /$b
time = 1

[Command]
name = "holdk"
command = /$c
time = 1

[Command]
name = "sjump"
command = ~D, U
time = 5


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




[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
trigger1 = command = "FF" && statetype = S && ctrl && stateno != 100


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 105
trigger1 = command = "BB" && statetype = S && ctrl


[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 600
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 15 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)


[State -1, WPX]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 2000
triggerall = numhelper(0) = 0 && power >= 1000
triggerall = command = "QCB_2k" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, WPX]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 1000
triggerall = command = "DP_2p" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, BCX]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = command = "QCF_2p" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, SBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 892
triggerall = numhelper(0) = 0
triggerall = command = "HCB_a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, FBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 890
triggerall = numhelper(0) = 0
triggerall = command = "HCB_b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, RBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 891
triggerall = numhelper(0) = 0
triggerall = command = "HCB_c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, JWF]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 800
triggerall = command = "HCB_x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, SWF]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 801
triggerall = command = "HCB_y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, FWF]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 802
triggerall = command = "HCB_z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, JBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 700
triggerall = command = "QCF_x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, SBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 701
triggerall = command = "QCF_y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, FBC]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 702
triggerall = command = "QCF_z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1


[State -1, Stand Jab Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 201
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1


[State -1, Stand Fierce Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 202
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1


[State -1, Stand Short Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 203
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl


[State -1, Stand Forward Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 204
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1


[State -1, Stand Roundhouse Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 205
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl


[State -1, Crouching jab Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 300
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl


[State -1, Crouching strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 301
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1


[State -1, Crouching fierce Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 302
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1


[State -1, Crouching short kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 303
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl


[State -1, Crouching forward kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 304
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1


[State -1, Crouching Roundhouse Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 305
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1


[State -1, Jump Jab Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 400
triggerall = command = "x"
trigger1 = ctrl && statetype = A


[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 401
triggerall = command = "y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1


[State -1, Jump Fierce Punch]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 402
triggerall = command = "z"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1
trigger5 = stateno = 404 && movecontact = 1


[State -1, Jump Short Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 403
triggerall = command = "a"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1


[State -1, Jump forward kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 404
triggerall = command = "b"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1


[State -1, Jump roundhouse kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 405
triggerall = command = "c"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1
trigger5 = stateno = 404 && movecontact = 1
trigger6 = stateno = 402 && movecontact = 1


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 10023
triggerall = command = "sjump"
triggerall = var(34) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1


