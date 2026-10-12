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
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI |-------------------------------------------------------------
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


;-| Super Motions |--------------------------------------------------------

;Starbolt Storm X+Y
[Command]
name = "Storm_X"
command = ~D, DF, F, x+y
time = 30

;Starbolt Storm X+Z
[Command]
name = "Storm_Z"
command = ~D, DF, F, x+z
time = 30

;Starbolt Storm Y+Z
[Command]
name = "Storm_Y"
command = ~D, DF, F, y+z
time = 30

;============================
;Clash of the Titans X+Y
[Command]
name = "Go_X"
command = ~D, DB, B, x+y
time = 30

;Clash of the Titans Y+Z
[Command]
name = "Go_Y"
command = ~D, DB, B, y+z
time = 30

;Clash of the Titans X+Z
[Command]
name = "Go_Z"
command = ~D, DB, B, x+z
time = 30

;============================
;Koriand'r Special A+B
[Command]
name = "Kori_A"
command = ~D, DB, B, a+b
time = 30

;Koriand'r Special B+C
[Command]
name = "Kori_B"
command = ~D, DB, B, b+c
time = 30

;Koriand'r Special A+C
[Command]
name = "Kori_C"
command = ~D, DB, B, a+c
time = 30

;============================
;Howl of Tamaran A+B
[Command]
name = "Howl_A"
command = ~D, DF, F, a+b
time = 30

;Howl of Tamaran B+C
[Command]
name = "Howl_B"
command = ~D, DF, F, b+c
time = 30

;Howl of Tamaran A+C
[Command]
name = "Howl_C"
command = ~D, DF, F, a+c
time = 30

;============================
;Flight Mode A+B+C
[Command]
name = "Flight"
command = ~D, DB, B, a+b+c
time = 30

;============================
;Amalgam Hyper: Shatterstarfire Z+C
;============================
[Command]
name = "Shatter_Z"
command = ~D, DF, F, z+c
time = 30

;-| Special Motions |------------------------------------------------------
;==============================
;Titans Raven
[Command]
name = "Raven"
command = ~D, DB, B, x
time = 15

;Titans Cyborg
[Command]
name = "Cyborg"
command = ~D, DB, B, y
time = 15

;Titans Robin
[Command]
name = "Robin"
command = ~D, DB, B, z
time = 15

;Titans Beast Boy Gorilla
[Command]
name = "BBGorilla"
command = ~D, DB, B, a
time = 15

;Titans Beast Boy Pterodactyl
[Command]
name = "BBPtero"
command = ~D, DB, B, b
time = 15

;Titans Beast Boy Bear
[Command]
name = "BBBear"
command = ~D, DB, B, c
time = 15
;------------------------------
;Titans Raven
[Command]
name = "Raven"
command = ~D, DB, B, ~x
time = 15

;Titans Cyborg
[Command]
name = "Cyborg"
command = ~D, DB, B, ~y
time = 15

;Titans Robin
[Command]
name = "Robin"
command = ~D, DB, B, ~z
time = 15

;Titans Beast Boy Gorilla
[Command]
name = "BBGorilla"
command = ~D, DB, B, ~a
time = 15

;Titans Beast Boy Pterodactyl
[Command]
name = "BBPtero"
command = ~D, DB, B, ~b
time = 15

;Titans Beast Boy Bear
[Command]
name = "BBBear"
command = ~D, DB, B, ~c
time = 15
;==============================
;Starbolt X
[Command]
name = "Bolt_X"
command = ~D, DF, F, x
time = 30

;Starbolt Y
[Command]
name = "Bolt_Y"
command = ~D, DF, F, y
time = 30

;Starbolt Z
[Command]
name = "Bolt_Z"
command = ~D, DF, F, z
time = 30
;--------------------------------
;Starbolt X
[Command]
name = "Bolt_X"
command = ~D, DF, F, ~x
time = 15

;Starbolt Y
[Command]
name = "Bolt_Y"
command = ~D, DF, F, ~y
time = 15

;Starbolt Z
[Command]
name = "Bolt_Z"
command = ~D, DF, F, ~z
time = 15
;==============================
;Rocket Knee A  (Rocket Slide)
[Command]
name = "Knee_A"
command = ~D, DF, F, a
time = 15

;Rocket Knee B  (Rocket Knee)
[Command]
name = "Knee_B"
command = ~D, DF, F, b
time = 15

;Rocket Knee C (Rocket Catch)
[Command]
name = "Knee_C"
command = ~D, DF, F, c
time = 15
;--------------------------------
;Rocket Knee A  (Rocket Slide)
[Command]
name = "Knee_A"
command = ~D, DF, F, ~a
time = 15

;Rocket Knee B  (Rocket Knee)
[Command]
name = "Knee_B"
command = ~D, DF, F, ~b
time = 15

;Rocket Knee C (Rocket Catch)
[Command]
name = "Knee_C"
command = ~D, DF, F, ~c
time = 15

;==============================
;Star Cyclone A
[Command]
name = "Cyclone_A"
command = ~F, DF, D, DB, B, a
time = 20

;Star Cyclone B
[Command]
name = "Cyclone_B"
command = ~F, DF, D, DB, B, b
time = 20

;Star Cyclone C
[Command]
name = "Cyclone_C"
command = ~F, DF, D, DB, B, c
time = 20
;--------------------------------
;Star Cyclone A
[Command]
name = "Cyclone_A"
command = ~F, DF, D, DB, B, ~a
time = 20

;Star Cyclone B
[Command]
name = "Cyclone_B"
command = ~F, DF, D, DB, B, ~b
time = 20

;Star Cyclone C
[Command]
name = "Cyclone_C"
command = ~F, DF, D, DB, B, ~c
time = 20
;==============================
;Star Sphere A
[Command]
name = "Sphere_A"
command = ~F, D, DF, a
time = 15

;Star Sphere B
[Command]
name = "Sphere_B"
command = ~F, D, DF, b
time = 15

;Star Sphere C
[Command]
name = "Sphere_C"
command = ~F, D, DF, c
time = 15

;Star Sphere A (keyboard)
[Command]
name = "Sphere_A"
command = ~F, D, F, a
time = 15

;Star Sphere B (keyboard)
[Command]
name = "Sphere_B"
command = ~F, D, F, b
time = 15

;Star Sphere C (keyboard)
[Command]
name = "Sphere_C"
command = ~F, D, F, c
time = 15
;--------------------------------
;Star Sphere A
[Command]
name = "Sphere_A"
command = ~F, D, DF, ~a
time = 15

;Star Sphere B
[Command]
name = "Sphere_B"
command = ~F, D, DF, ~b
time = 15

;Star Sphere C
[Command]
name = "Sphere_C"
command = ~F, D, DF, ~c
time = 15

;Star Sphere A (keyboard)
[Command]
name = "Sphere_A"
command = ~F, D, F, ~a
time = 15

;Star Sphere B (keyboard)
[Command]
name = "Sphere_B"
command = ~F, D, F, ~b
time = 15

;Star Sphere C (keyboard)
[Command]
name = "Sphere_C"
command = ~F, D, F, ~c
time = 15
;==============================
;Falling Star A
[Command]
name = "Fall_A"
command = ~D, DB, B, a
time = 15

;Falling Star B
[Command]
name = "Fall_B"
command = ~D, DB, B, b
time = 15

;Falling Star C
[Command]
name = "Fall_C"
command = ~D, DB, B, c
time = 15
;--------------------------------
;Falling Star A
[Command]
name = "Fall_A"
command = ~D, DB, B, ~a
time = 15

;Falling Star B
[Command]
name = "Fall_B"
command = ~D, DB, B, ~b
time = 15

;Falling Star C
[Command]
name = "Fall_C"
command = ~D, DB, B, ~c
time = 15

;-------------------------------
;Recovery Roll A
[Command]
name = "RecovRoll"
command = ~B, DB, D, a
time = 10

;Recovery Roll A
[Command]
name = "RecovRoll"
command = B, DB, D, a
time = 10

;Recovery Roll B
[Command]
name = "RecovRoll"
command = ~B, DB, D, b
time = 10

;Recovery Roll B
[Command]
name = "RecovRoll"
command = B, DB, D, b
time = 10

;Recovery Roll C
[Command]
name = "RecovRoll"
command = ~B, DB, D, c
time = 10

;Recovery Roll C
[Command]
name = "RecovRoll"
command = B, DB, D, c
time = 10

;Recovery Roll A
[Command]
name = "RecovRoll"
command = ~B, DB, D, ~a
time = 10

;Recovery Roll A
[Command]
name = "RecovRoll"
command = B, DB, D, ~a
time = 10

;Recovery Roll B
[Command]
name = "RecovRoll"
command = ~B, DB, D, ~b
time = 10

;Recovery Roll B
[Command]
name = "RecovRoll"
command = B, DB, D, ~b
time = 10

;Recovery Roll C
[Command]
name = "RecovRoll"
command = ~B, DB, D, ~c
time = 10

;Recovery Roll C
[Command]
name = "RecovRoll"
command = B, DB, D, ~c
time = 10

;-------------------------------
;Counterattack X
[Command]
name = "Counter"
command = ~B, DB, D, x
time = 10

;Counterattack X
[Command]
name = "Counter"
command = /B, DB, D, x
time = 10

;Counterattack Y
[Command]
name = "Counter"
command = ~B, DB, D, y
time = 10

;Counterattack Y
[Command]
name = "Counter"
command = /B, DB, D, y
time = 10

;Counterattack Z
[Command]
name = "Counter"
command = ~B, DB, D, z
time = 10

;Counterattack Z
[Command]
name = "Counter"
command = /B, DB, D, z
time = 10

;Counterattack X
[Command]
name = "Counter"
command = ~B, DB, D, ~x
time = 10

;Counterattack X
[Command]
name = "Counter"
command = /B, DB, D, ~x
time = 10

;Counterattack Y
[Command]
name = "Counter"
command = ~B, DB, D, ~y
time = 10

;Counterattack Y
[Command]
name = "Counter"
command = /B, DB, D, ~y
time = 10

;Counterattack Z
[Command]
name = "Counter"
command = ~B, DB, D, ~z
time = 10

;Counterattack Z
[Command]
name = "Counter"
command = /B, DB, D, ~z
time = 10

;-----------------------------------------
;Push Block (X+A)
[Command]
name = "PushBlock"
command = x+a
time = 15

;Push Block (Y+B)
[Command]
name = "PushBlock"
command = y+b
time = 15

;Push Block (Z+C)
[Command]
name = "PushBlock"
command = z+c
time = 15

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
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

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

[Command]
name = "superj3press"
command = a+b+c
time = 1

;Superjump 2
[Command]
name = "superjump"
command = $D, $U
time = 10

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


; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
[State -1, AIActivate]
type = VarSet
triggerall = var(12) != 1
triggerall = RoundState != 3
trigger1  = IsHelper(10) || IsHelper(11)
;trigger1  = command = "CPU1"
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
var(12) = 1

;======================================================================
;===========================================================================

;===========================================================================
;Hypers & Etc.
;---------------------------------------------------------------------------
;Flight Mode
[State -1, State]
type = ChangeState
value = 12000
triggerall = command = "Flight"
triggerall = StateNo != 2999
triggerall = StateNo != 2998
trigger1 = StateType != C
trigger1 = ctrl
;=====================================
;Counterattack
[State -1, State]
type = ChangeState
value = 700
triggerall = Power >= 1000
triggerall = command = "Counter"
trigger1 = StateNo = 150
trigger2 = StateNo = 151

;=====================================
;Recovery Roll (by Flowagirl)
[State -1]
type = VarSet
trigger1 = (Var(0) = 0) && (MoveType = H) && (command = "RecovRoll")
;trigger2 = (Var(0) = 0) && (MoveType = H) && (command = "RecovRoll_B")
;trigger3 = (Var(0) = 0) && (MoveType = H) && (command = "RecovRoll_C")
v = 0
value = 1

[State -1]
type = VarSet
trigger1 = ((Var(0) = 1) && (MoveType != H)) || (Lose)
v = 0
value = 0
;=====================================
;Push Block (Standing)
[State -1, State]
type = ChangeState
value = 950
triggerall = command = "PushBlock"
trigger1 = StateNo = 150
trigger2 = StateNo = 151

;Push Block (Crouching)
[State -1, State]
type = ChangeState
value = 952
triggerall = command = "PushBlock"
trigger1 = StateNo = 152
trigger2 = StateNo = 153

;Push Block (Jumping)
[State -1, State]
type = ChangeState
value = 954
triggerall = command = "PushBlock"
trigger1 = StateNo = 154
trigger2 = StateNo = 155

;=====================================
;Starbolt Storm X+Y/Y+Z/X+Z (ground)
[State -1, State]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "Storm_X" || command = "Storm_Y" || command = "Storm_Z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;=====================================
;Clash of the Titans X+Y/Y+Z/X+Z
[State -1, State]
type = ChangeState
value = 3003
triggerall = Power >= 1000
triggerall = command = "Go_X" || command = "Go_Y" || command = "Go_Z"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
trigger1 = statetype != A
trigger1 = ctrl

;=====================================
;Starbolt Storm X+Y/Y+Z/X+Z (air)
[State -1, State]
type = ChangeState
value = 3050
triggerall = Power >= 1000
triggerall = command = "Storm_X" || command = "Storm_Y" || command = "Storm_Z"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 12001

;=====================================
;Koriand'r Special A+B/B+C/A+C
[State -1, State]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "Kori_A" || command = "Kori_B" || command = "Kori_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;=====================================
;Howl of Tamaran A+B/B+C/A+C (Ground)
[State -1, State]
type = ChangeState
value = 3200
triggerall = Power >= 1000
triggerall = command = "Howl_A" || command = "Howl_B" || command = "Howl_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;=====================================
;Howl of Tamaran A+B/B+C/A+C (Air and Flight)
[State -1, State]
type = ChangeState
value = 3250
triggerall = Power >= 1000
triggerall = command = "Howl_A" || command = "Howl_B" || command = "Howl_C"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact
trigger8 = stateno = 12001
trigger9 = stateno = 601
trigger9 = movecontact
trigger10 = stateno = 611
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = movecontact
trigger12 = stateno = 631
trigger12 = movecontact
trigger13 = stateno = 641
trigger13 = movecontact
trigger14 = stateno = 651
trigger14 = movecontact

;---------------------------------------------------------------------------
;=====================================
;Amalgam Hyper: Shatterstarfire Z+C
[State -1, State]
type = ChangeState
value = 4000
triggerall = Power >= 3000
triggerall = command = "Shatter_Z"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;Specials
;---------------------------------------------------------------------------
;Starbolt X (ground)
[State -1, State]
type = ChangeState
value = 1000
triggerall = command = "Bolt_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Starbolt Y (ground)
[State -1, State]
type = ChangeState
value = 1003
triggerall = command = "Bolt_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Starbolt Z (ground)
[State -1, State]
type = ChangeState
value = 1006
triggerall = command = "Bolt_Z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact
;===================================
;Rocket Knee A (Slide)
[State -1, State]
type = ChangeState
value = 1018
triggerall = command = "Knee_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Rocket Knee B
[State -1, State]
type = ChangeState
value = 1013
triggerall = command = "Knee_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Rocket Knee C
[State -1, State]
type = ChangeState
value = 1009
triggerall = command = "Knee_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;===================================
;Star Cyclone A
[State -1, State]
type = ChangeState
value = 1100
triggerall = command = "Cyclone_A"
trigger1 = statetype != A
trigger1 = ctrl

;Star Cyclone B
[State -1, State]
type = ChangeState
value = 1101
triggerall = command = "Cyclone_B"
trigger1 = statetype != A
trigger1 = ctrl

;Star Cyclone C
[State -1, State]
type = ChangeState
value = 1102
triggerall = command = "Cyclone_C"
trigger1 = statetype != A
trigger1 = ctrl

;===================================
;Star Sphere A
[State -1, State]
type = ChangeState
value = 1150
triggerall = command = "Sphere_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Star Sphere B
[State -1, State]
type = ChangeState
value = 1152
triggerall = command = "Sphere_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;Star Sphere C
[State -1, State]
type = ChangeState
value = 1154
triggerall = command = "Sphere_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;===================================
;Star Sphere A (Air & Flight)
[State -1, State]
type = ChangeState
value = 1170
triggerall = command = "Sphere_A"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact
trigger8 = stateno = 12001
trigger9 = stateno = 601
trigger9 = movecontact
trigger10 = stateno = 611
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = movecontact
trigger12 = stateno = 631
trigger12 = movecontact
trigger13 = stateno = 641
trigger13 = movecontact
trigger14 = stateno = 651
trigger14 = movecontact
;===================================
;Star Sphere B (Air & Flight)
[State -1, State]
type = ChangeState
value = 1172
triggerall = command = "Sphere_B"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact
trigger8 = stateno = 12001
trigger9 = stateno = 601
trigger9 = movecontact
trigger10 = stateno = 611
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = movecontact
trigger12 = stateno = 631
trigger12 = movecontact
trigger13 = stateno = 641
trigger13 = movecontact
trigger14 = stateno = 651
trigger14 = movecontact
;===================================
;Star Sphere C (Air & Flight)
[State -1, State]
type = ChangeState
value = 1174
triggerall = command = "Sphere_C"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact
trigger8 = stateno = 12001
trigger9 = stateno = 601
trigger9 = movecontact
trigger10 = stateno = 611
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = movecontact
trigger12 = stateno = 631
trigger12 = movecontact
trigger13 = stateno = 641
trigger13 = movecontact
trigger14 = stateno = 651
trigger14 = movecontact
;===================================
;Falling Star A
[State -1, State]
type = ChangeState
value = 1156
triggerall = Pos Y < -55
triggerall = command = "Fall_A"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 12001

;Falling Star B
[State -1, State]
type = ChangeState
value = 1158
triggerall = Pos Y < -55
triggerall = command = "Fall_B"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 12001

;Falling Star C
[State -1, State]
type = ChangeState
value = 1160
triggerall = Pos Y < -55
triggerall = command = "Fall_C"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 12001

;===================================
;Starbolt X/Y/Z (air)
[State -1, State]
type = ChangeState
value = 1500
triggerall = command = "Bolt_X" || command = "Bolt_Y" || command = "Bolt_Z"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
trigger1 = StateNo != 12001

;===================================
;Starbolt X/Y/Z (Flight)
[State -1, State]
type = ChangeState
value = 1503
triggerall = command = "Bolt_X" || command = "Bolt_Y" || command = "Bolt_Z"
trigger1 = StateNo = 12001
trigger2 = stateno = 601
trigger2 = movecontact
trigger3 = stateno = 611
trigger3 = movecontact
trigger4 = stateno = 621
trigger4 = movecontact
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = stateno = 641
trigger6 = movecontact
trigger7 = stateno = 651
trigger7 = movecontact

;===================================
;Titans Raven
[State -1, State]
type = ChangeState
value = 2000
triggerall = command = "Raven"
triggerall = Life <= 500
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;Titans Cyborg
[State -1, State]
type = ChangeState
value = 2003
triggerall = command = "Cyborg"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;Titans Robin
[State -1, State]
type = ChangeState
value = 2006
triggerall = command = "Robin"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;Titans BB Bear
[State -1, State]
type = ChangeState
value = 2009
triggerall = command = "BBBear"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;Titans BB Gorilla
[State -1, State]
type = ChangeState
value = 2012
triggerall = command = "BBGorilla"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;Titans BB Ptero
[State -1, State]
type = ChangeState
value = 2015
triggerall = command = "BBPtero"
triggerall = NumHelper(2000) != 1
triggerall = NumHelper(2003) != 1
triggerall = NumHelper(2006) != 1
triggerall = NumHelper(2009) != 1
triggerall = NumHelper(2012) != 1
triggerall = NumHelper(2015) != 1
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 100
triggerall = command != "holdback"
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = command = "x" && command = "y"
trigger3 = statetype = S
trigger3 = ctrl
trigger3 = command = "x" && command = "y" && command = "z"
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = command != "holdfwd"
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = command = "x" && command = "y"
trigger3 = statetype = S
trigger3 = ctrl
trigger3 = command = "x" && command = "y" && command = "z"
;---------------------------------------------------------------------------
; Throw 1 (Choke Slam)
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

; Throw 2 (Belly-To-Belly Release Suplex)
[State -1, Throw]
type = ChangeState
value = 900
triggerall = command = "b" || command = "c"
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

; Throw 3 (Back Snapper)
[State -1, Throw]
type = ChangeState
value = 830
triggerall = command = "b" || command = "c"
triggerall = statetype != S
triggerall = statetype != C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype != S) && (p2statetype != C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype != S) && (p2statetype != C)
trigger2 = p2movetype != H

;===========================================================================
;Super Jump
[State -1, sjump]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && Ctrl && (Random >= 700) && (enemynear, numproj = 0)
trigger1 = (P2bodydist X >= 130)
value = 2999

[State -1, Super Jump]
type = ChangeState
triggerall = Var(59) <= 0 && statetype != A && ctrl
trigger1 = command = "superjump"
trigger2 = command = "superj3press"
value = 2999

;---------------------------------------------------------------------------
; Taunt 2
[State -1, Taunt]
type = ChangeState
value = 19500
triggerall = command = "s"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt 1
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = command != "holdback"
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

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
;trigger3 = stateno = 210
;trigger3 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch - Flying Body Splash
[State -1, Jump Strong Punch]
type = ChangeState
value = 622
triggerall = command = "holddown" && command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;======================================================================
; A.I Attacks





;====================================================================
[State -1, standGuard]
type = ChangeState
triggerall = var(12) && random <= 877
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing) 
trigger1 = (P2StateType != C) && (P2MoveType = A)
trigger2 = (enemynear, numproj != 0) && (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(12) && random <= 877
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)  
trigger1 = StateNo = 150
;trigger2 = inguarddist  
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(12) && random <= 877
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = (P2StateType = C) && (P2MoveType = A)
trigger2 = (enemynear, numproj != 0) && (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(12) && random <= 877
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
;trigger2 = inguarddist  
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(12) && random <= 877
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
trigger2 = (enemynear, numproj != 0) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 132

;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
[State -1, SPushBlock]
type = ChangeState
value = 950
triggerall = backedgebodydist <= 9 && StateType = S && Var(12)
trigger1 = StateNo = 130&& !winko
trigger2 = StateNo = [150, 151]

;---------------------------------------------------------------------------
; Crouching Push Block
[State -1, CPushBlock]
type = ChangeState
value = 952
triggerall = backedgebodydist <= 9 && StateType = C && Var(12)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]

;---------------------------------------------------------------------------
; Air Push Block
[State -1, APushBlock]
type = ChangeState
value = 954
triggerall = backedgebodydist <= 9 && StateType = A && Var(12)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = Var(12) = 1 && !WinKo && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 100 && stateno != 100
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && Var(12) && ctrl
trigger1 = enemynear, p2dist x <= 100 && enemynear,movetype != A 
trigger1 =  stateno != 105 && random <= 100
trigger2 = enemynear, statetype = L && enemynear, numproj = 0
trigger2 = random >= 500 && roundstate = 2
trigger2 = p2bodydist x < 100 && enemynear, life > 0

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 2999
triggerall = (StateType != A) && (Var(0) = 0) && Var(12)
triggerall = Var(20) != 2 && enemynear, statetype != L
trigger1 = (enemynear, Vel X >= 3) && ctrl

;---------------------------------------------------------------------------
;Recovery Roll (by Flowagirl)
[State -1]
type = VarSet
triggerall = Var(12)
triggerall = canrecover = 1 && roundstate = 2
triggerall = alive
trigger1 = (Var(0) = 0) && (MoveType = H)
trigger1 = stateno = 5050
trigger2 = (Var(0) = 0) && (MoveType = H)
trigger2 = stateno = 5071
v = 0
value = 1

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
triggerall = (statetype = S) && Var(12) && p2statetype != L && !WinKo
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 200)

; superspeed combo
;trigger2 = Var(20)=3 && (enemynear, p2dist x <= 90 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger2 = (StateNo = 200) && (MoveContact = 1)

; superspeed combo
;trigger3 = Var(20)=3 && (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger4 = (StateNo = 200) && (MoveContact = 1) && Var(20)=3


;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = ((stateno = 200) || (stateno = 230)) && (movecontact = 1)
; standard medium punch at close range, P2 in air (can't headbutt a flying Superman =P)
trigger2 = (ctrl = 1) && (P2BodyDist X <= 25) 
trigger2 = (P2statetype = A) && enemynear, movetype != A

; superspeed combo
;trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1= ((stateno = 200) || (stateno = 230) || (stateno = 210)) && (movecontact = 1)
trigger2 = (enemynear, p2dist x <= 50) && enemynear, movetype != A && (ctrl = 1)

; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 200) || (stateno = 230) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 230) || (stateno = 210) || (stateno = 240)) && (movecontact = 1)
trigger2 = (enemynear, p2dist x <= 60) && enemynear, movetype != A && (ctrl = 1)

; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 200) || (stateno = 230) || (stateno = 220) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = Var(12) = 1 && enemynear, statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 230) || (stateno = 210) || (stateno = 220)) && (movecontact = 1)
trigger2 = (enemynear, p2dist x <= 40) && enemynear, movetype != A && (ctrl = 1)
; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl
trigger1 = (enemynear, p2dist x <= 30 && enemynear, movetype != A && (Random <= 600&& random >400))

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl
trigger1 = p2bodydist x <= 90 && enemynear, movetype != A && (Random = [600,900])

; (chain combos)
trigger2 = (stateno = 400) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl

; (chain combos)
trigger1 = (stateno = 400 || stateno = 430) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(12) = 1 && statetype = C && !WinKo && ctrl

; (chain combos)
trigger1 = (stateno = 400 || stateno = 430 || stateno = 410) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch (1-2 punch, for combos)
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = Var(12) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 440) && movecontact
trigger2 = p2bodydist x <= 90 && enemynear, movetype != A && (Random = [600,900])

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = Var(12) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 420) && movecontact
trigger2 = p2bodydist x <= 90 && enemynear, movetype != A && (Random = [600,900])

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A && ctrl
;trigger1 = p2dist X < 115 && (p2dist Y > -3 && p2dist Y < 17)
trigger1 = P2BodyDist X = [0,40]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-50,10]

; superspeed combo
trigger2 = Var(20)=3 && p2dist X < 80 && (p2dist Y > -3 && p2dist Y < 17) && enemynear, movetype != A

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 630 && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 610 && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = Var(12) = 1 && !winko&& stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact
trigger1 = p2bodydist y < -50 || p2bodydist y > 40
trigger2 = enemynear, statetype = C && enemynear, movetype != A && enemynear, p2dist X <= 60 && ctrl

; superspeed combo
trigger3 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = Var(12) = 1 && !winko && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact
trigger2 = enemynear, p2dist X <= 100 && enemynear, movetype = A && enemynear, time <= 5 && enemy, numproj = 0 && ctrl

; superspeed combo
trigger3 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Standing throw
[State -1, Throw1]
type = ChangeState
value = 900
triggerall = Var(12) && !winko && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C

; Air throw
[State -1, AirThrow1]
type = ChangeState
value = 1009
triggerall = Var(12)&& !winko && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 300
trigger1 = (P2BodyDist X <= 50) && P2BodyDist Y < 0
trigger1 = enemy, vel y > -10

;Falling Star
[State -1, Taunt]
type = ChangeState
value = 1160
triggerall = statetype = A && Var(12) && ctrl && !IsHelper
trigger1 = Var(5) = 0 && enemynear, movetype != A && enemynear, numproj = 0 && !winko
trigger1 = Pos y < -55 && p2dist y > 0 && p2dist x < 25
trigger1 = random = [600,1000]

;---------------------------------------------------------------------------
; Star Cyclone
[State -1, Star Cyclone]
type = ChangeState
value = 1100
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = p2statetype != L
triggerall = NumHelper(10) = 0 && random < 650
triggerall = enemynear, stateno != 5300 && P2BodyDist y >= 0
trigger1 = P2BodyDist X < 60 && enemynear, numproj = 0
trigger2 = P2BodyDist X < 60 && (enemynear, stateno = [130,152]) && enemynear, numproj = 0

;---------------------------------------------------------------------------
; Starblast (ground, weak)
[State -1, Frag]
type = ChangeState
value = 1000
triggerall = Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
;triggerall = NumHelper(10) = 0 && Var(5) >= 1 && Var(21) = 0
trigger1 = (p2bodydist x = [0,100]) && enemynear, movetype != A && random <= 450
trigger1 = enemynear, StateType != A
trigger2 = p2bodydist x > 180 && random >= 450 && enemynear, numproj = 0 && enemynear, statetype = S

; Frag! (ground, medium)
[State -1, Frag]
type = ChangeState
value = 1003
triggerall = Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
;triggerall = NumHelper(10) = 0 && Var(5) >= 2 && Var(21) = 0
trigger1 = p2bodydist x > 80 && random <= 750 && enemynear, movetype != A
trigger2 = p2bodydist x > 180 && random >= 450 && enemynear, numproj = 0

; Frag! (ground, strong)
[State -1, Frag]
type = ChangeState
value = 1006
triggerall = Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
;triggerall = NumHelper(10) = 0 && Var(5) >= 3 && Var(21) = 0
trigger1 = enemynear, movetype != A && random <= 750
trigger1 = p2bodydist x <= 80

;----------------------------------------------------------------------
; Amalgam Hyper (The Main Mallard)
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power >= 3000 && Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
trigger1 = Life > 450 && random = [150,300]


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[State -1, MainManAir]
type = ChangeState
value = 3200
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21)= 0 && NumHelper(10) = 0 && NumHelper(25) = 0
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [550,850] 
trigger1 = enemynear, pos y >= -50
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 850
trigger2 = enemynear, pos y >= -50

;---------------------------------------------------------------------------
; Big Friggin' Gun
[State -1, MegaFrag]
type = ChangeState
value = 3000
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = NumHelper(3305) = 0 && Var(21) = 0 && NumHelper(10) = 0
trigger1 = p2dist x >= 80 && enemynear, movetype != A && random < 600
trigger2 = enemynear, movetype = H && random <= 500
trigger2 = enemynear, vel y > -5

;---------------------------------------------------------------------------
; Main Men Hyper
[State -1, MainMen]
type = ChangeState
value = 3100
triggerall = Var(12) && power >= 1000 && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && NumHelper(10) = 0
triggerall = Var(21) = 0
trigger1 = Life > 250 && random = [150,500]
trigger1 = enemynear, pos y >= -50

;---------------------------------------------------------------------------
; Clash of the Titans
[State -1, Titans]
type = ChangeState
value = 3003
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [200,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 600

;---------------------------------------------------------------------------
; Fraggaboom!
[State -1, Grenade]
type = ChangeState
value = 1018
triggerall = Var(12) && ctrl
triggerall = p2statetype != L
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 80 && Random < 450
trigger2 = enemynear, numproj != 0 && enemynear, statetype = S
trigger2 = Random < 750

;---------------------------------------------------------------------------
; Star Bolt! (air)
[State -1, StarboltAir]
type = ChangeState
value = 1500
triggerall = Var(12) && ctrl
triggerall = StateType = A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-40, 5]
trigger1 = (p2bodydist X > 80)
trigger1 = random < 400

;---------------------------------------------------------------------------
; RotGut
[State -1, RotGut]
type = ChangeState
value = 1150
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21) = 0
trigger1 = enemynear, pos Y >= -40 && enemynear, MoveType = H
trigger1 = p2bodydist X <= 180 && Random < 650
trigger2 = p2bodydist X <= 200 && enemynear, MoveType != A 
trigger2 = enemynear, numproj != 0 && Random < 650


; Rising Knee
[State -1, Rising Knee]
type = ChangeState
value = 1013
triggerall = numhelper(1301)=0 && numhelper(1302)=0 ;bolha
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = p2bodydist y <= 0 && p2bodydist X < 60 && random <= 700
trigger1 = enemynear, vel y > -5

