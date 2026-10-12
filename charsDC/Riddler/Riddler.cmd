; {character name}'s CMD file

;---------------------------------------------------------------------------
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1



;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


[Command]
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U


;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Command]
name = "Hyper 1"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Hyper 1"
command = ~D, DF, F,z+x
time = 40



[Command]
name = "Hyper 2"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "Hyper 2"
command = ~D, DF, F, a+c
time = 40

[Command]
name = "Hyper 2"
command = ~D, DF, F,b+c
time = 40



[Command]
name = "Hyper 3"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "Hyper 3"
command = ~D, DB, B, y+z
time = 40

[Command]
name = "Hyper 3"
command = ~D, DB, B,z+x
time = 40



[Command]
name = "Hyper 4"
command = ~D, DB, B, a+b
time = 40

[Command]
name = "Hyper 4"
command = ~D, DB, B, a+c
time = 40

[Command]
name = "Hyper 4"
command = ~D, DB, B,b+c
time = 40

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "Special 1"
command = ~D,DF,F, x
time = 15

[Command]
name = "Special 2"
command = ~D,DF,F, y
time = 15

[Command]
name = "Special 3"
command = ~D,DF,F, z
time = 15

[Command]
name = "Special 4"
command = ~D,DF,F, a
time = 15

[Command]
name = "Special 5"
command = ~D,DF,F, b
time = 15

[Command]
name = "Special 6"
command = ~D,DF,F, c
time = 15

[Command]
name = "Special 7A"
command = ~D,DB,B, x
time = 15


[Command]
name = "Special 7B"
command = ~D,DB,B, y
time = 15


[Command]
name = "Special 7C"
command = ~D,DB,B, z
time = 15

[Command]
name = "Flight"
command = ~D, DB, B, a+x
time = 1

[Command]
name = "Special 8A"
command = ~D,DB,B, a
time = 15


[Command]
name = "Special 8B"
command = ~D,DB,B, b
time = 15


[Command]
name = "Special 8C"
command = ~D,DB,B, c
time = 15

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


[Command]
name = "recovery";Required (do not remove)
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



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;-| Dir |-------------------------------------------------------------------

[command]
name="fwd"
command=F
time=1

[command]
name="back"
command=B
time=1

[command]
name="up"
command=U
time=1

[command]
name="down"
command=D
time=1


;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
[Statedef -1]


;---------------------------------------------------------------------------
;------------------------------- AI CODES ----------------------------------
;---------------------------------------------------------------------------

;-------------------------------------------------------------------------
; A.I. - Standing Guard

[State -2, 1]
type = changestate
triggerall = RoundState = 2 && AiLevel
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = StateType = S
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl && P2BodyDist X <=90
value = 130

;-------------------------------------------------------------------------
; A.I. - Standing to Crouching Guard

[State -2, 2]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;-------------------------------------------------------------------------
; A.I. - Crouching Guard

[State -2, 3]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl = 1
;trigger1 = random <= 800
value = 131

;-------------------------------------------------------------------------
; A.I. - Crouching to Standing Guard

[State -2, 4]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 152
trigger1 = 1
value = 150

;-------------------------------------------------------------------------
; A.I. - Jumping Guard

[State -2, 5]
type = changestate
triggerall = RoundState = 2 && AiLevel
triggerall = StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = ctrl
;trigger1 = random <= 800
value = 132

;-------------------------------------------------------------------------
; A.I. - Guard Push
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
; A.I. - Standing Guard Push

[State -1, Standing Guard Push]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = (StateType = S) && (StateType != L)
triggerall = P2Life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5
value = 6300

;-------------------------------------------------------------------------
; A.I. - Crouching Guard Push

[State -1, Crouching Guard Push]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = (StateType = C) && (StateType != L)
triggerall = P2Life != 0
trigger1 = StateNo = [150,153]
value = 6310

;-------------------------------------------------------------------------
; A.I. - Jumping Guard Push

[State -1, Jumping Guard Push]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = (StateType = A) && (StateType != L)
triggerall = P2Life != 0
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
;trggier2 = P2MoveType = A
;trggier2 = Time > 2
value = 6320

;---------------------------------------------------------------------------
; A.I. - Jump Over Projectiles

[State -2]
type = ChangeState
triggerall = RoundState = 2 && AiLevel
triggerall = (StateType != A) && (StateType != L)
triggerall = (P2MoveType = A) && (P2StateType != A)
triggerall = StateNo != 40
triggerall = (Enemy, NumProj >0)
trigger1 = Ctrl
trigger1 = Random = [0,500]
value =ifelse(random>500,1200+random%3,1400);80

;---| AI Supers |----------------------------------------------------------------
;-------------------------------------------------------------------------
; A.I. - Box Elec

[State -1, 1]
type = changestate
Triggerall = roundstate = 2 && AiLevel && ctrl && NumHelper(9010) = 0
trigger1 = (statetype != A) && (p2statetype = A) && P2MoveType != H
trigger1 = EnemyNear, Pos Y > -40 && p2dist x <= 100 && FrontEdgeDist >= 40
value = 1030

;---------------------------------------------------------------------------
;Box Explode
[State -1, Shadow]
type = ChangeState
value = 1040
triggerall = roundstate = 2 && AiLevel
triggerall = (statetype = S) && (ctrl)
trigger1 = (enemynear,statetype = L)

;Air projectiles
[State 0, ChangeState]
type = ChangeState
triggerall = AiLevel && time>5
trigger1 = Ctrl && Statetype = A && stateno !=[700,701]
value = ifelse(random<500,1205+random%3,ifelse(random<750,1300,1300))
ctrl = 0

;---| Combos | -----------------------------------------------------------------

;---------------------------------------------------------------------------
; A.I. - Combos Starters
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Combo 1 - CLK
[State -2, CLK]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = S)&& (p2statetype != A)
Triggerall = Ctrl && prevstateno !=52 ;&& (p2statetype !=L)
trigger1 = (p2bodydist X <=45); && time > 3
;trigger2 = stateno = 52 && Anim = 47 && Prevstateno = 1250
value = ifelse((random <350)&&(p2bodydist x <=25),800,430)

;---------------------------------------------------------------------------
; Combo 1b - CLK
[State -2, CHK]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = S)&& (p2statetype != A)
Triggerall = Ctrl && prevstateno !=52; && (p2statetype !=L)
trigger1 = (p2bodydist X =[46,76]); && time > 3
value = 440

;---------------------------------------------------------------------------
; Combo 2 - CLP > CHK/CHP
[State -2, CLP > CHK/CHP]
type = changestate
Triggerall = roundstate = 2 && AiLevel
trigger1 = (stateno = 430) && (movehit);&& time > 3
trigger2 = (stateno = 440) && (movehit)
trigger3 = stateno = 52 && Prevstateno = 1410
value = ifelse(power>=1000,ifelse(random>500,3100,3300),420)

;---------------------------------------------------------------------------
; Combo 2b - CHK> Hyper
[State -2, CHK> Hyper]
type = changestate
Triggerall = roundstate = 2 && AiLevel
trigger1 = (stateno = 440) && (movehit);&& time > 3
value = ifelse(power>=1000,ifelse(random>500,3100,3300),1400);ifelse (random < 500,450,420)

;---------------------------------------------------------------------------
; Combo 3a - CHP > Aerial Rave
[State -2,  CHP > Aerial Rave]
type = changestate
Triggerall = roundstate = 2 && AiLevel
trigger1 = (stateno = 420)&& (movehit) && time > 5;  && (statetype = S)
value = 700


;---------------------------------------------------------------------------
; A.I. - Air Combos

;---------------------------------------------------------------------------
; Air Combo 1 - JLP / JLK

[State -1, JLP / JLK]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A) && NumHelper(9010) = 0
triggerall = (time > 4) && ctrl && prevstateno != [620,650]
trigger1 = (stateno = 700||stateno = 701) && EnemyNear, Pos X <=160;  && EnemyNear, Pos Y <0
value = 600;ifelse (random <=500,600,630)

;---------------------------------------------------------------------------
; Air Combo 2 - Jumping Light Punch > Jumping Light Kick

[State -1, 2]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A)
trigger1 = (stateno = 600)
trigger1 = (movecontact)
value = 630

;---------------------------------------------------------------------------
; Air Combo 3 - Jumping Light Kick > Jumping Medium Punch

[State -1, 3]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A)
triggerall = (movecontact)
trigger1 = (p2bodydist X <= 100)
trigger1 = (stateno = 630)
trigger1 = (prevstateno = 600)
value = 610

;---------------------------------------------------------------------------
; Air Combo 4 - Jumping Medium Punch > Jumping Medium Kick

[State -1, 4]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A)
triggerall = (movecontact)
trigger1 = (p2bodydist X <= 100)
trigger1 = (stateno = 610)
trigger1 = (prevstateno = 630)
value = 640;ifelse (power>=1000,3200,640)

;---------------------------------------------------------------------------
; Air Combo 5 - Jumping Medium Kick > Jumping Heavy Punch

[State -1, 5]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A)
triggerall = (movecontact)
trigger1 = (p2bodydist X <= 100)
trigger1 = (stateno = 640)
trigger1 = (prevstateno = 610)
trigger1 = Power <1000
value = ifelse(random>500,620,1300)

[State -1, 5]
type = changestate
Triggerall = roundstate = 2 && AiLevel && (statetype = A)
trigger1 = (stateno = 620) && (movecontact)
trigger1 = Power <1000
value = 1300

;[State -1, 5]
;type = changestate
;Triggerall = roundstate = 2 && AiLevel && (statetype = A)
;triggerall = (movecontact)
;trigger1 = (p2bodydist X <= 100)
;trigger1 = (stateno = 640)
;trigger1 = (prevstateno = 610)
;trigger1 = Power >=1000
;value = 4000;ifelse(random>500,3600,3700);ifelse (power>=1000,3200,620)

[State -1, attack]
type=changestate
value=ifelse(power>=1000,ifelse(random>500,3000,3300),1000*random%6*10)
triggerall= AiLevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1)
trigger1= ctrl && p2bodydist x<160 && random<700
trigger2= (stateno=210 || stateno=225 || stateno=240) && movehit=1 && random<150

;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, Hyper 1 Robot]
type = ChangeState
value = 3000
triggerall = !AiLevel
triggerall = command = "Hyper 1"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper 2 What Comes Down But Does Not Come Up?]
type = ChangeState
value = 3100
triggerall = !AiLevel
triggerall = command = "Hyper 2"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, Hyper 3 Riddle]
type = ChangeState
value = 3300
triggerall = !AiLevel
triggerall = command = "Hyper 3"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper 3 Hologram]
type = ChangeState
value = 3200
triggerall = !AiLevel
triggerall = command = "Hyper 4"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440;Except for sweep kick
trigger2 = stateno != 215
trigger2 = stateno != 245
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
[State -1, Special 1.0]
type = ChangeState
triggerall = !AiLevel  && !NumExplod(1048)
triggerall = command = "Special 1" || command = "Special 2" || command = "Special 3"; || command = "Special 4" || command = "Special 5" || command = "Special 6"
triggerall = NumprojID(1001)=0; && NumHelper(1045)=0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1000+(command = "Special 2"*10)+(command = "Special 3"*20);+(command = "Special 4"*30)+(command = "Special 5"*40)+(command = "Special 6"*50)

[State -1, Special 1.1]
type = ChangeState
triggerall = !AiLevel&& !NumExplod(1048)
triggerall = command = "Special 4" || command = "Special 5" || command = "Special 6"
triggerall = NumprojID(1001)=0; && NumHelper(1045)=0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1000+(command = "Special 4"*30)+(command = "Special 5"*40)+(command = "Special 6"*50)

[State -1, Swing Kick]
type = ChangeState
triggerall = !AiLevel&& !NumExplod(1048)
triggerall = command = "Special 4" || command = "Special 5" || command = "Special 6"
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = A, NA) && (MoveContact)
value = 1300


[State -1, Projectiles]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "Special 7A"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1200

[State -1, Rolling]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "Special 7B"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1201


[State -1, Projectiles]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "Special 7C"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1202


[State -1, Special1]
type = ChangeState
value = 1400
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Special 8A") || (command = "Special 8B") || (command = "Special 8C")



;Surprise1
[State 0, ChangeState]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "x" || command = "y" || command = "z"
triggerall = time > 4
trigger1 = stateno = 1200
trigger2 = stateno = 1202
value = ifelse(command = "x",1205,ifelse(command = "y", 1206,1207))
ctrl = 0

;Air Surprise
[State 0, ChangeState]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "Special 7A" || command = "Special 7B" || command = "Special 7C"
trigger1 = Ctrl && Statetype = A
value = ifelse(command = "Special 7A",1205,ifelse(command = "Special 7B", 1206,1207))
ctrl = 0

;Surprise2
[State 0, ChangeState]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "x"
triggerall = time > 4
trigger1 = stateno = 1201
value = 1210
ctrl = 0


;crouchedBox
[State 0, ChangeState]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "y"
triggerall = time > 4
trigger1 = stateno = 1201
value = 1211
ctrl = 0

;Sword slash
[State 0, ChangeState]
type = ChangeState
triggerall = !AiLevel
triggerall = command = "z"
triggerall = time > 4
trigger1 = stateno = 1201
value = 1250
ctrl = 0


;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AiLevel
triggerall = command = "recovery" 
triggerall = statetype = S
triggerall = ctrl
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !AiLevel
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !AiLevel
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"


[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AiLevel
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = !AiLevel
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250 && var(18) < 7

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !AiLevel
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !AiLevel
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !AiLevel
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !AiLevel
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;Extra stuff if you want to use just remove the ;
;[State -1, FM Dash Forward]
;type = ChangeState
;value = 2005
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2500)
;trigger1 = Command = "FF"

;[State -1, FM Dash Back]
;type = ChangeState
;value = 2006
;triggerall = MoveType = I
;triggerall = (stateno >2000) && (stateno <2999)
;trigger1 = Command = "BB"

;[State -1, FM LP]
;type = ChangeState
;value = 2010
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "x"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MP]
;type = ChangeState
;value = 2011
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "y"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SP]
;type = ChangeState
;value = 2012
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "z"
;trigger1= Movetype = I

;[State -1, FM LK]
;type = ChangeState
;value = 2013
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "a"
;trigger1= Movetype = I
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM MK]
;type = ChangeState
;value = 2014
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "b"
;trigger1= (Movetype = I)
;trigger2= (HitdefAttr = A, NA) && (MoveContact)

;[State -1, FM SK]
;type = ChangeState
;value = 2015
;triggerall=AiLevel  != 1
;triggerall = (stateno >2000) && (stateno <2500)
;triggerall = command = "c"
;trigger1= Movetype = I

;[State -1, Guard Push Stand]
;type = ChangeState
;value = 6300
;triggerall = command = "guardpush" && statetype = S
;trigger1 = stateno = [150,153]

;[State -1, Guard Push Crouch]
;type = ChangeState
;value = 6310
;triggerall = command = "guardpush" && statetype = C
;trigger1 = stateno = [150,153]

;[State -1, Dodge]
;type = ChangeState
;value = 7010
;triggerall = StateType != A
;triggerall = (Ctrl)
;trigger1 = Command = "dodge"


