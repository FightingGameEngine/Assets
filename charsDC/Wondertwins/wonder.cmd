; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[command]
name = "3500"
command = D,B,c
time = 15

[command]
name = "3000"
command = D,B,b
time = 15

[Remap]
[command]
name = "2800"
command = D,F,a
time = 15

x = x
[command]
name = "2500"
command = D,B,a
time = 15

y = y
[command]
name = "2400"
command = D,F,z
time = 15

z = z
[command]
name = "6900"
command = D,B,z
time = 15

a = a
[command]
name = "6600"
command = B,F,y
time = 15

b = b
[command]
name = "6700"
command = D,F,y
time = 15

c = c
[command]
name = "6500"
command = D,B,y
time = 15

s = s

[Command]
name = "tiger"
command = D,B,y
time = 10

;-| Default Values |-------------------------------------------------------
[command]
name = "6400"
command = ~B,F,x
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "6100"
command = D,F,x
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "6050"
command = D,B,x
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "SJ"
command = $D, $U

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;====================<CPU>===========================

[Command]
name = "CPU0"
command = ~D, DB, B, c
time = 0

[Command]
name = "CPU1"
command = ~D, DF, F, x
time = 0

[Command]
name = "CPU2"
command = ~D, DF, F, y
time = 0

[Command]
name = "CPU3"
command = ~D, DF, F, z
time = 0

[Command]
name = "CPU4"
command = ~D, DF, F, a
time = 0

[Command]
name = "CPU5"
command = ~D, DB, B, a
time = 0

[Command]
name = "CPU6"
command = ~D, DB, B, b
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,a,a,s
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,a,a,a,a,s
time = 0

[Command]
name = "CPU9"
command = U,D,B,F,b,b,s
time = 0

[Command]
name = "CPU10"
command = D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU11"
command = U,D,D,B,F,b,b,s
time = 0

[Command]
name = "CPU12"
command = U,U,D,F,B,F,b,s
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,x,x,s
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,x,s
time = 0

[Command]
name = "CPU15"
command = D,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU16"
command = D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU18"
command = U,U,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU19"
command = U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU20"
command = U,U,D,B,F,B,F,y,y,s
time = 0

[Command]
name = "cpu21"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu22"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu23"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu24"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu25"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu26"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu27"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu28"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu29"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2


[Command]
name = "cpu30"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "start"
command = s
time = 1
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;-|-AI-|--------------------------------------------------------------------


[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState = 2
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = numhelper(99000)
trigger31 = Helper(99000),var(59) = 1
v = 59
value = 1

[State -1, AI Deactivate] 
type = VarSet
triggerall = var(59)= 1
trigger1 = win = 1
trigger2 = loseko = 1
trigger3 = life <= 0
v = 59
value = 0



;--|-AI Defense-|-----------------------------------------------------------
[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 132

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S) && (p2statetype != C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 130

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 7000
triggerall = (var(59) = 1)
;trigger1 = stateno = 420 && (movehit) && (command = "holdup") 
trigger1 = stateno = 6700 && animelemtime(8) > 0 && movecontact
trigger1 = ctrl && frontedgedist > 180
trigger1 = p2bodydist x > 120 && random < 100
trigger1 = p2bodydist y = 0 && p2movetype = A

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = (var(59) = 1)
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 

[State -1,BACKDASH]
type = ChangeState
value = 105
triggerall = (var(59) >= 1) 
trigger1 = (stateno != [100,107]) && statetype = S && ctrl
trigger1 = p2bodydist x > 100 &&  p2movetype != A && random < 100


; Standing Low Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = StateType = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = Ctrl
triggerall = P2BodyDist X <= 30
trigger1 = p2movetype = I
trigger1 = Random <= 100

; Stand Medium Punch
[State -1, Stand Medium Punch_AI]
type = ChangeState
value = 210
triggerall =(statetype = S) && (var(59)=1) && p2statetype != L && RoundState = 2
trigger1 = (stateno = 200) 
trigger1= movecontact && animelemtime(3)>0

; Stand Hard Punch
[State -1, Stand Hard Punch_AI]
type = ChangeState
value = 220
triggerall = (var(59)=1) && p2statetype != L && RoundState = 2
triggerall = statetype = S
trigger1 =  (stateno = 210)
trigger1= movecontact && animelemtime(3)>0


;Standing Low Kick
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != C && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [400,409])&& movehit
trigger1 = random < 100

;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59)=1
triggerall = statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))


; Crouch Medium Punch
[State -1, Crouch Medium Punch_AI]
type = ChangeState
value = 410
triggerall = (var(59)=1) && statetype = C && RoundState = 2 && ctrl
trigger1 = (stateno = 400)
trigger1= movecontact && (animelemtime(3)>0)


; Crouch Light Kick
[State -1, Crouch Light Kick_AI]
type = ChangeState
value = 430
triggerall = var(59)=1 && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))


; Crouch Medium Kick
[State -1, Crouch Medium Kick_AI]
type = ChangeState
value = 440
triggerall = var(59)=1 && statetype = C && RoundState = 2 && ctrl
trigger1 = (stateno = 430) 
trigger1=movecontact && animelemtime(3)>0


; Crouch Hard Kick
[State -1, Crouch Hard Kick_AI]
type = ChangeState
value = 450
triggerall = var(59)=1 && statetype != A && RoundState = 2
trigger1 = (stateno = 440) 
trigger1=movecontact && animelemtime(4)>0

; Special1
[State -1, Special1]
type = ChangeState
value = 800
triggerall = (var(59)=1)
trigger1 = var(4) <= 0 && random <= 400 && stateno != [100,107]
trigger1 = p2stateno != 131 && p2stateno != 130 && P2bodydist X <= 20 && p2stateno != 1302 && statetype != A && p2statetype != A && p2statetype != L && p2stateno != 5120
trigger1 = p2movetype != H && p2movetype != A && ctrl


[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)>0
triggerall = stateno != [3000,8000]
triggerall = (prevstateno != [3000,8000])
trigger1 = statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y >=-25
trigger1 = p2movetype= H

[State -1, Jump mp]
type = ChangeState
value = 610
triggerall = var(59)>0
triggerall = stateno != [3000,8000]
triggerall = (prevstateno != [3000,8000])
trigger1 = statetype = A
trigger1 = stateno = 600 && movehit

[State -1, AI Jump hp]
type = ChangeState
value = 620
triggerall = var(59)>0
triggerall = stateno != [3000,8000]
triggerall = (prevstateno != [3000,8000])
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 610 && movehit


[State -1, AI Gadouken]
type = ChangeState
value = 6050
Triggerall = numhelper(1092) < 1
triggerall = stateno != [6000,7000]
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [40,60])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 6900
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = stateno != [6000,7000]
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [60,90])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 6500
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = stateno != [6000,7000]
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [60,90])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 6400
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = stateno != [6000,7000]
triggerall = (Ctrl) && (Statetype = S) && (random = [0,200])
trigger1 = ((p2bodydist x >= 90)) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, Crouch launcher]
type = ChangeState
value = 6700
triggerall = (var(59) = 1) && ctrl
triggerall = (stateno != [3000,4000])
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 410) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,400]

[State -1, Striker Gleek]
type = ChangeState
value = 2400
triggerall = (roundstate = 2) && var(59) =1 && (Statetype != A)
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(2300) = 0
triggerall = NumHelper(2400) = 0
trigger1 = (p2movetype != H) && (p2statetype != A) && ctrl && (random%10 = 4)
trigger1 = (p2bodydist x = [120,180]) && (p2bodydist y >= 0)

[State AI]
type = ChangeState
value = 2800
triggerall = var(59) =1
triggerall = random <= 20
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [80,100]
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 3000
triggerall = var(59) =1
triggerall = random <= 20
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [80,100]
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = statetype = S
trigger1 = ctrl


[State -1, tsunami]
type = ChangeState
value = 3500
triggerall = (var(59)=1)  && StateType != A && power >=1000
triggerall = roundstate = 2
triggerall = stateno !=[800,899]
triggerall = stateno !=[3500,3520]
triggerall = prevstateno !=[3500,3520]
trigger1 = ctrl
triggerall = p2bodydist x<=50&&random<150 && enemy, movetype != A
triggerall = p2statetype != L
trigger2 = movehit


[State -1, Wonder Twins Power Activate One / T-Rex] 
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = stateno != [3000,8000]
triggerall = (prevstateno != [3000,8000])
triggerall= p2bodydist x>=95
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
trigger1 = (power = [1500,2500]) && (random = [0,200])
value = ifelse(random<250,2500,6100)
;===================================================================================
;====================================================================================
;=====================================================================================
;=====================================================================================
;3500
[State -1, Zan Tidal Wave]
type = ChangeState
value = 3500
triggerall = command = "3500"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 6500
trigger4 = time >= 25
trigger5 = stateno = 6400
trigger5 = time >= 33
trigger6 = stateno = 6100
trigger6 = movecontact
trigger7 = stateno = 6050
trigger7 = time <= 2

;3000
[State -1, Sliding Elephant]
type = ChangeState
value = 3000
triggerall = command = "3000"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 6500
trigger4 = time >= 25
trigger5 = stateno = 6400
trigger5 = time >= 33
trigger6 = stateno = 6100
trigger6 = movecontact
trigger7 = stateno = 6050
trigger7 = time <= 2

;2800
[State -1, Gorilla Major Hammer]
type = ChangeState
value = 2800
triggerall = command = "2800"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 6500
trigger4 = time >= 25
trigger5 = stateno = 6400
trigger5 = time >= 33
trigger6 = stateno = 6100
trigger6 = movecontact
trigger7 = stateno = 6050
trigger7 = time <= 2

;2500
[State -1, Wonder Twins Power Activate One]
type = ChangeState
value = 2500
triggerall = var(59)!=1
triggerall = command = "2500"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2800
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;2400
[State -1, Gleek Crunches]
type = ChangeState
value = 2400
triggerall = command = "2400"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 3000
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6900
[State -1, Panther Rage]
type = ChangeState
value = 6900
triggerall = command = "6900"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 3500
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6600
[State -1, Panther Weary Attack]
type = ChangeState
value = 6600
triggerall = command = "6600"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6700
trigger7 = time <= 2

;6700
[State -1, Ape Hyper Form]
type = ChangeState
value = 6700
triggerall = command = "6700"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 2800
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6500
[State -1, Tiger Attacks]
type = ChangeState
value = 6500
triggerall = command = "6500"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6400
[State -1, Ox Attacks]
type = ChangeState
value = 6400
triggerall = command = "6400"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6100
[State -1, Te-Rex Attack]
type = ChangeState
value = 6100
triggerall = command = "6100"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;6050
[State -1, Big Bear Special Attack ]
type = ChangeState
value = 6050
triggerall = command = "6050"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6700
trigger3 = movecontact
trigger4 = stateno = 2500
trigger4 = time >= 25
trigger5 = stateno = 2400
trigger5 = time >= 33
trigger6 = stateno = 6900
trigger6 = movecontact
trigger7 = stateno = 6600
trigger7 = time <= 2

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1,Change]
type = ChangeState
value = 19300
triggerall = command = "tiger"
trigger1 = ctrl = 1
triggerall = StateType = S
trigger1 = power >= 2000
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 420) && (movecontact = 1)
trigger5 = (stateno = 430) && (movecontact = 1)
trigger6 = (stateno = 440) && (movecontact = 1)
trigger7 = (stateno = 450) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;----------------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Bear Morphing]
type=changestate
value=19300
triggerall=var(40)&&roundstate=2&&statetype!=A&&power>=2000&&P2Life>1 ;--->depende de si es super o hyper, se puede mdificar el power necesario
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
trigger1=ctrl&&(p2bodydist x=[15,120])&&random<50
trigger2=((stateno=[200,440]))&&movehit&&random<50
persistent=1

;----------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
trigger1 = prevstateno = 1056
trigger1 = enemy,backedgebodydist<=20
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,170]
trigger1 = p2stateno = [5030,5100]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X<50
trigger2 = p2statetype = S
trigger2 = random>900
trigger3 = prevstateno = [810,811]
trigger3 = p2bodydist X = [0,15]
trigger3 = enemy,backedgebodydist<=20
trigger4 = p2stateno = 821
trigger4 = p2bodydist X = [0,20]

[State -1, AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype = S
trigger1 = stateno = 200
trigger1 = p2stateno = [5030,5100]
trigger1 = enemy,backedgebodydist<=20
trigger1 = time > 5
trigger1 = movehit
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = p2dist X<60
trigger2 = ctrl
trigger2 = random>980

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=55
trigger1 = p2statetype = S
trigger1 = p2stateno = [200,250]
trigger1 = p2movetype = A

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = p2dist X-(vel X*7)<=40
trigger1 = prevstateno != 600
trigger2 = stateno != 600
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist X<=30
trigger2 = p2statetype = A
trigger2 = p2dist Y = [-60,10]

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = (prevstateno = 600) || (p2dist X-(vel X*7)>40)

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)
triggerall = p2dist Y>20
triggerall = p2dist X = [0,40]
triggerall = statetype = A
trigger1 = p2statetype = S
trigger1 = vel Y>0
trigger1 = ctrl
trigger2 = vel Y>0
trigger2 = ctrl

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = C
trigger1 = vel Y>0
trigger1 = pos Y>-60
trigger1 = p2dist X<80
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(20)
trigger1 = ctrl
trigger1 = p2dist X>160





[State -1, Special2]
type = ChangeState
value = 6900
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 200
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special3]
type = ChangeState
value = 6400
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 490
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special4]
type = ChangeState
value = 6700
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 590
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special5]
type = ChangeState
value = 2800
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 690
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special6]
type = ChangeState
value = 2400
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 190
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special7]
type = ChangeState
value = 6600
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 290
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special7]
type = ChangeState
value = 3500
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 290
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special7]
type = ChangeState
value = 6500
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 490
triggerall = ctrl
triggerall = stateno != 400
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Hyper 2]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 3000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special7]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 190
triggerall = ctrl
triggerall = stateno != 500
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Hyper 1]
type = ChangeState
value = 2500
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Hyper 2]
type = ChangeState
value = 6100
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 2000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;--------------------------------------------------------

;--------------------------------------------------------

