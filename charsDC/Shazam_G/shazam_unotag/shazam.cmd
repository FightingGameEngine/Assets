




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
name = "holdstart"
command = /s
time = 1

[command]
name = "SuperJump"
command = ~$D, U
time = 12

[command]
name = "SuperJump_Fwd"
command = ~$D, UF
time = 12

[command]
name = "SuperJump_Back"
command = ~$D, UB
time = 12


[Command]
name = "QCFx2_PPP"
command = ~D,DF,$F,D,DF,$F,x+y 
time = 24
buffer.time = 4

[Command]
name = "QCFx2_PPP"
command = ~D,DF,$F,D,DF,$F, y+z
time = 24
buffer.time = 4
[Command]
name = "QCFx2_PPP"
command = ~D,DF,$F,D,DF,$F,x+z
time = 24
buffer.time = 4

[Command]
name = "QCFx2_PPPR"
command = ~D,DF,$F,D,DF,$F,~x
time = 24
buffer.time = 3

[Command]
name = "QCFx2_PPPR"
command = ~D,DF,$F,D,DF,$F,~y
time = 24
buffer.time = 3

[Command]
name = "QCFx2_PPPR"
command = ~D,DF,$F,D,DF,$F,~z
time = 24
buffer.time = 3

[Command]
name = "QCBx2_PPP"
command = ~D,DB,$B,D,DB,$B,x+y 
time = 24
buffer.time = 4

[Command]
name = "QCBx2_PPP"
command = ~D,DB,$B,D,DB,$B,y+z
time = 24
buffer.time = 4
[Command]
name = "QCBx2_PPP"
command = ~D,DB,$B,D,DB,$B,x+z
time = 24
buffer.time = 4

[Command]
name = "QCBx2_PPPR"
command = ~D,DB,$B,D,DB,$B,~x
time = 24
buffer.time = 3

[Command]
name = "QCBx2_PPPR"
command = ~D,DB,$B,D,DB,$B,~y
time = 24
buffer.time = 3

[Command]
name = "QCBx2_PPPR"
command = ~D,DB,$B,D,DB,$B,~z
time = 24
buffer.time = 3


[Command]
name = "214214_X"
command = ~D,DB,$B,D,DB,$B,x
time = 24
buffer.time = 3
[Command]
name = "214214_X"
command = ~D,DB,$B,D,DB,$B,~x
time = 24
buffer.time = 3
[Command]
name = "214214_Y"
command = ~D,DB,$B,D,DB,$B,y
time = 24
buffer.time = 3
[Command]
name = "214214_Y"
command = ~D,DB,$B,D,DB,$B,~y
time = 24
buffer.time = 3

[Command]
name = "214214_Z"
command = ~D,DB,$B,D,DB,$B,z
time = 24
buffer.time = 3
[Command]
name = "214214_Z"
command = ~D,DB,$B,D,DB,$B,~z
time = 24
buffer.time = 3


[Command]
name = "236236_X"
command = ~D,DF,$F,D,DF,$F,x
time = 24
buffer.time = 3
[Command]
name = "236236_X"
command = ~D,DF,$F,D,DF,$F,~x
time = 24
buffer.time = 3
[Command]
name = "236236_Y"
command = ~D,DF,$F,D,DF,$F,y
time = 24
buffer.time = 3
[Command]
name = "236236_Y"
command = ~D,DF,$F,D,DF,$F,~y
time = 24
buffer.time = 3

[Command]
name = "236236_Z"
command = ~D,DF,$F,D,DF,$F,z
time = 24
buffer.time = 3
[Command]
name = "236236_Z"
command = ~D,DF,$F,D,DF,$F,~z
time = 24
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,x
time = 45
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,y
time = 45
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,z
time = 45
buffer.time = 3








[Command]
name = "handshock"
command = ~D, DF, F, x
time = 20

[Command]
name = "handshock"
command = ~D, DF, F, y
time = 20

[Command]
name = "handshock"
command = ~D, DF, F, z
time = 20


 

[Command]
name = "HCF_X"

command = ~B,DB,$D,DF,$F,x
time = 16
buffer.time = 3
[Command]
name = "HCF_X"
command = ~B,DB,$D,DF,$F,~x

time = 16
buffer.time = 3

[Command]
name = "HCF_Y"
command = ~B,DB,$D,DF,$F,y

time = 16
buffer.time = 3
[Command]
name = "HCF_Y"
command = ~B,DB,$D,DF,$F,~y

time = 16
buffer.time = 3

[Command]
name = "HCF_Z"
command= ~B,DB,$D,DF,$F,z

time = 16
buffer.time = 3
[Command]
name = "HCF_Z"
command = ~B,DB,$D,DF,$F,~z

time = 16
buffer.time = 3


[Command]
name = "HCB_X"

command = ~F,DF,$D,DB,$B,x
time = 16
buffer.time = 3
[Command]
name = "HCB_X"
command = ~F,DF,$D,DB,$B,~x

time = 16
buffer.time = 3

[Command]
name = "HCB_Y"
command = ~F,DF,$D,DB,$B,y

time = 16
buffer.time = 3
[Command]
name = "HCB_Y"
command = ~F,DF,$D,DB,$B,~y

time = 16
buffer.time = 3

[Command]
name = "HCB_Z"
command = ~F,DF,$D,DB,$B,z

time = 16
buffer.time = 3
[Command]
name = "HCB_Z"
command = ~F,DF,$D,DB,$B,~z

time = 16
buffer.time = 3


[Command]
name = "623_X"
command = ~F,D,$F,x
time = 15
buffer.time = 3

[Command]
name = "623_X"
command = ~F,D,$F,~x
time = 15
buffer.time = 3

[Command]
name = "623_Y"
command = ~F,D,$F,y
time = 15
buffer.time = 3

[Command]
name = "623_Y"
command = ~F,D,$F,~y
time = 15
buffer.time = 3

[Command]
name = "623_Z"
command = ~F,D,$F,z
time = 15
buffer.time = 3

[Command]
name = "623_Z"
command = ~F,D,$F,~z
time = 15
buffer.time = 3




[Command]
name = "421_X"
command = ~B,D,$B,x
time = 15
buffer.time = 3
[Command]
name = "421_X"
command = ~B,D,$B,~x
time = 15
buffer.time = 3

[Command]
name = "421_Y"
command = ~B,D,$B,y
time = 15
buffer.time = 3
[Command]
name = "421_Y"
command = ~B,D,$B,~y
time = 15
buffer.time = 3

[Command]
name = "421_Z"
command = ~B,D,$B,z
time = 15
buffer.time = 3
[Command]
name = "421_Z"
command = ~B,D,$B,~z
time = 15
buffer.time = 3





[Command]
name = "TripleHit"
command = ~D, DB, B, x
time = 20

[Command]
name = "TripleHit"
command = ~D, DB, B, y
time = 20

[Command]
name = "TripleHit"
command = ~D, DB, B, z
time = 20




[Command]
name = "Flight"
command = a+x
time = 30



[Command]
name = "airbeamdown"
command = ~D,DF,F, x
time = 20

[Command]
name = "airbeamdown"
command = ~D,DF,F, y
time = 20

[Command]
name = "airbeamdown"
command = ~D,DF,F, z
time = 20




[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c










[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10




[Command]
name = "dodge"
command = a+y
time = 1


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
name = "release_c"
command = ~c
time = 1

[Command]
name = "release_x"
command = ~x
time = 1

[Command]
name = "release_y"
command = ~y
time = 1

[Command]
name = "release_z"
command = ~z
time = 1













[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1







;   --- Uno Tag System [Type-R] Command definition ---

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
triggerall = stateno != [1000,1300]
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
triggerall = StateNo = [3100,3200]
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

[State -1, Change Attack]
type = ChangeState
value = 1251126
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,1500]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0
triggerall = Target, pos Y > -160
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
triggerall = NumPartner
triggerall = NumEnemy
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
triggerall = RoundState = 2
triggerall = NumPartner
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

; ------ Uno Tag System [Type-R] END LINE -------

;  ;]


[State -1, AIActivate]
type = VarSet
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




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = p2statetype != L
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = p2statetype != L
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132





[State -1, super_jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 700
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
triggerall = p2statetype != L
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1








[State -1, Standing Low Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = var(59)>=1 && numenemy&&roundstate=2&&StateType != A
triggerall =(p2bodydist x = [0, 40])&&(p2bodydist y = [-80,5])&&P2statetype != C&&P2statetype != L
trigger1 = ctrl && random < 500
trigger2 = (stateno = [100,101]) && random < 150
trigger3 = ctrl&&(enemynear,ctrl) && random < 600

[State -1, Standing Medium Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L
trigger1 = ctrl && random < 100
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
trigger2 = random < 500

[State -1, Standing High Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -80, 80]) && p2statetype != L
trigger1 = ctrl && random < 150
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 300

[State -1, Standing Low Kick AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 35]) && p2statetype != L
trigger1 = ctrl && random < 200
trigger2 = (stateno = [100,101]) && random < 100
trigger3 = ctrl&&(enemynear,ctrl) && random < 300


[State -1, Standing High Kick AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -70, 50]) && p2statetype != L
trigger1 = ctrl && random < 200

trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 800

[State -1, Crouching Low Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 30]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L
trigger1 = ctrl && random < 150
trigger2 = stateno = [100,101]

[State -1, Crouching Medium Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A
trigger1 = ctrl && random < 150 && P2statetype != L
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
trigger2 = random < 350 && P2statetype != L
trigger3 = ctrl && random < 100 && (enemynear,stateno=5110)&&(p2bodydist x = [-8, 22])
trigger3 = enemynear,statetype=L && enemynear,stateno!=5120 && p2dist y=0

[State -1, Crouching High Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 450
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S
trigger1 = ctrl && random < 200
trigger2 = ((stateno = [200,219])|| (stateno = [230,249])||(stateno = [400,419])||(stateno = [430,449]))&& movehit
trigger2 = random < 250

[State -1, Jumping Low Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && stateno != 600
triggerall = (p2bodydist x = [0,70]) && (p2bodydist y = [ -40, 70]) && p2statetype != L
trigger1 = ctrl && random < 450

[State -1, Jumping Medium Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -60, 50]) && p2statetype != L
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 150, 50))
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 500

[State -1, Jumping High Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = var(59)>=1 && numenemy &&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -80, 40]) && p2statetype != L
trigger1 = ctrl && random < 150 && p2statetype != A
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 350 && enemynear,Statetype=A
trigger3 = (stateno = 610||stateno = 640)&& movehit && random < 700 && enemynear,Statetype=A

[State -1, Jumping Low Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && (enemynear,Statetype=A)
triggerall = (p2bodydist x = [5, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < 250









[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = (roundstate = 2) && (var(59) != 0) && numprojid(1001) = 0
triggerall = p2statetype != L
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1000

[State -1, javelinepunch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

[State -1, javelinepunch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType = A
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100


[State -1, quick fists]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

[State -1, TripleHit]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)

[State -1, Shazam Bolt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
triggerall = var(10) := 3
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)





[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

[State -1, FistFlurry]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

[State -1, wizard]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3500
triggerall = power >= 3000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

[State -1, shazam]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500





[State -1, Guard Push stand]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

 
[State -1,]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3500
triggerall = !ishelper 
triggerall = ctrl  || stateno = 40 || stateno = 52 || ((stateno = [200,650]) && (movecontact)) || ((stateno = 841) && (AnimElemtime(5) >= 0))
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = AILevel <= 0
trigger1 = ifelse((anim=[5,6]),(command="QCBx2_PPP"),(command="QCFx2_PPP"))

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3100
triggerall = power >= 1000
triggerall = ctrl  || stateno = 40 || stateno = 52 || ((stateno = [200,650]) && (movecontact)) || ((stateno = 841) && (AnimElemtime(5) >= 0))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="236236_X",command="214214_X")
trigger1 = var(10) := 1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="236236_Y",command="214214_Y")
trigger2 = var(10) := 2
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="236236_Z",command="214214_Z")
trigger3 = var(10) := 3

[State -1, Power Giant Swing Circle]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = !AILevel && RoundState = 2 && Alive
triggerall = power >= 1000
triggerall = ctrl  || stateno = 40 || stateno = 52 || ((stateno = [200,650]) && (movecontact)) || ((stateno = 841) && (AnimElemtime(5) >= 0))
triggerall = statetype != A
trigger1 = command = "Power Giant Swing Circle"
  
[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = statetype != A
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,625]) && (movecontact))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="HCB_X",command="HCF_X")
trigger1 = (var(10) := 1)||1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="HCB_Y",command="HCF_Y")
trigger2 = (var(10):=2)||1
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="HCB_Z",command="HCF_Z")
trigger3 = (var(10):=3)||1

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300 
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,655]) && (movecontact))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="623_X",command="421_X")
trigger1 = (var(10):=1)||1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="623_Y",command="421_Y")
trigger2 = (var(10):=2)||1
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="623_Z",command="421_Z")
trigger3 = (var(10):=3)||1





[State -1, Shazam Bolt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1400
triggerall = !var(59)
triggerall = statetype != A
triggerall = numhelper(150000) = 0
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,625]) && (movecontact))
trigger1= command = "c"

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = !Var(59)
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = stateno != [100,109]
trigger1 = AILEVEL <= 0
trigger1 = command = "FF" || (command = "holdfwd" && command!="holdback" && (command="a"))
trigger1 = ctrl
trigger1 = (var(10):=1)||1



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = stateno != [100,109]
trigger1 = AILEVEL <= 0
trigger1 = command = "BB" || (command = "holdback" && command!="holdfwd" && (command="a"))
trigger1 = ctrl
trigger1 = (var(10):=-1)||1

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = !Var(59)
triggerall = teammode = Single
triggerall = Command = "start" 
triggerall = stateno != 100
trigger1 = (StateType != A) && (Ctrl)

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = !Var(59)
triggerall = teammode = Simul
triggerall = numpartner
triggerall = partner,life = 0
triggerall = Command = "start" 
triggerall = stateno != 100
trigger1 = (StateType != A) && (Ctrl)

[State -1, SuperJump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = Command = "SuperJump_Fwd"
trigger1 = StateType != a
trigger1 = Ctrl

[State -1, SuperJump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 704
triggerall = Command = "SuperJump_Back"
trigger1 = StateType != a
trigger1 = Ctrl

[State -1, SuperJump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 700
trigger1 = Command = "SuperJump"
trigger1 = StateType != a
trigger1 = Ctrl



[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl


[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact



[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 220) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 440) && movecontact





[state -1, crouching light punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl



[state -1, crouching medium punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact



[state -1, crouching strong punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 220) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 440) && movecontact



[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = command = "x"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl



[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = command = "y"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact




[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = command = "z"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

