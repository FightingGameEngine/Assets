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
; command = ~D, DF, B, F, y
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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Desperate Knife"
command = ~D,DB,B,a+x 
time = 20
[Command]
name = "Desperate Knife"
command = ~D,DB,B,c+z
time = 20
[Command]
name = "Desperate Knife"
command = ~D,DB,B,y+b
time = 20

[Command]
name = "HYPER Psi-Blast"
command = ~D, DF, F, x+y
time = 32

[Command]
name = "HYPER Psi-Blast"
command = D, DF, F, ~x+y
time = 32

[Command]
name = "HYPER Psi-Blast"
command = ~D, DF, F, y+z
time = 32

[Command]
name = "HYPER Psi-Blast"
command = D, DF, F, ~y+z
time = 32

[Command]
name = "HYPER Psi-Blast"
command = ~D, DF, F, x+z
time = 32

[Command]
name = "HYPER Psi-Blast"
command = D, DF, F, ~x+z
time = 32

[Command]
name = "Psi-Thrust MAX"
command = ~D, DB, B, x+y
time = 32

[Command]
name = "Psi-Thrust MAX"
command = D, DB, B, ~x+y
time = 32

[Command]
name = "Psi-Thrust MAX"
command = ~D, DB, B, y+z
time = 32

[Command]
name = "Psi-Thrust MAX"
command = D, DB, B, ~y+z
time = 32

[Command]
name = "Psi-Thrust MAX"
command = ~D, DB, B, x+z
time = 32

[Command]
name = "Psi-Thrust MAX"
command = D, DB, B, ~x+z
time = 32

[Command]
name = "Yami Shigure"
command = ~D, DB, B, a+c

[Command]
name = "Yami Shigure"
command = D, DB, B, ~a+c

[Command]
name = "Yami Shigure"
command = ~D, DB, B, b+c

[Command]
name = "Yami Shigure"
command = D, DB, B, ~b+c

[Command]
name = "Yami Shigure"
command = ~D, DB, B, a+b

[Command]
name = "Yami Shigure"
command = D, DB, B, ~a+b

[Command]
name = "Maelstrom"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "Maelstrom"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "Maelstrom"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "KongouKokuretsuZan"
command = ~D, DF, F, a+x
time = 20
[Command]
name = "KongouKokuretsuZan"
command = ~D, DF, F, b+y
time = 20
[Command]
name = "KongouKokuretsuZan"
command = ~D, DF, F, z+c
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "Shield"
command = ~B, F, x
time = 15

[Command]
name = "Shield"
command = B, F, ~x
time = 15

[Command]
name = "Shield"
command = ~B, F, y
time = 15

[Command]
name = "Shield"
command = B, F, ~y
time = 15

[Command]
name = "Shield"
command = ~B, F, z
time = 15

[Command]
name = "Shield"
command = B, F, ~z
time = 15

[Command]
name = "Ninjitsu"
command = ~D, DB, B, a
time = 15

[Command]
name = "Ninjitsu"
command = ~D, DB, B, b
time = 15

[Command]
name = "Ninjitsu"
command = ~D, DB, B, c
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, x
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, y
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, z
time = 15

[Command]
name = "Psi-Blast"
command = ~D, DF, F, x
time = 15

[Command]
name = "Psi-Blast"
command = ~D, DF, F, y
time = 15

[Command]
name = "Psi-Blast"
command = ~D, DF, F, z
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, ~x
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, ~y
time = 15

[Command]
name = "Psi-Blast"
command = D, DF, F, ~z
time = 15

[Command]
name = "AirPsi-Blade"
command = ~D, DF, F, a
time = 15

[Command]
name = "AirPsi-Blade"
command = ~D, DF, F, b
time = 15

[Command]
name = "AirPsi-Blade"
command = ~D, DF, F, c
time = 15

[Command]
name = "Psi-Blade"
command = ~D, DF, F, a
time = 15

[Command]
name = "Psi-Blade"
command = ~D, DF, F, ~a
time = 15

[Command]
name = "Psi-Blade2"
command = ~D, DF, F, b
time = 15

[Command]
name = "Psi-Blade2"
command = ~D, DF, F, ~b
time = 15

[Command]
name = "Psi-Blade3"
command = ~D, DF, F, c
time = 15

[Command]
name = "Psi-Blade3"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "Psi-Drill"
command = ~D, DB, B, x
time = 16

[Command]
name = "Psi-Drill"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "Psi-Drill"
command = ~D, DB, B, y
time = 16

[Command]
name = "Psi-Drill"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "Psi-Drill"
command = ~D, DB, B, z
time = 16

[Command]
name = "Psi-Drill"
command = ~D, DB, B, ~z
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
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
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
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
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

[Command]
name = "DU"
command = D, U
time = 20

[Command]
name = "recoverf"
command = /$F
time = 10

[Command]
name = "recoverb"
command = /$B
time = 10

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

;===========================================================================
[State -1, AI Helper]
type=changestate
trigger1= ishelper(9741)
value=9741

[State -2]
type = displaytoclipboard
trigger1 = gametime%10 = 0
params = random, random, random
text = "%d %d %d"
;---------------------------------------------------------------------------
[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1
;===========================================================================
;supers

[State -1, Desperate Knife]
type = ChangeState
value = 3800
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = power >=3000
triggerall = Life <= 250
triggerall = command = "Desperate Knife"
triggerall = statetype != A
triggerall = stateno!=241
trigger1 = ctrl

[State -1, Kongou Kokuretsu Zan]
type = ChangeState
value = 3600
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = power >=3000
triggerall = Life >= 250
triggerall = command = "KongouKokuretsuZan"
triggerall = statetype != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) 

[State -1, Air HYPER Psi-Blast]
type = ChangeState
value = 3200
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "HYPER Psi-Blast"
triggerall = RoundState = 2 && StateType = A
triggerall = power >= 1000
triggerall = NumHelper(1050) <= 0
triggerall = NumHelper(1050) <= 1
triggerall = stateno!=241
triggerall = stateno!=1750
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact

[State -1, HYPER Psi-Blast]
type = ChangeState
value = 3100
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "HYPER Psi-Blast"
triggerall = RoundState = 2 && StateType != A
triggerall = power >= 1000
triggerall = NumHelper(1050) <= 0
triggerall = NumHelper(1050) <= 1
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact

[State -1, Air Psi-Thrust Hyper]
type = ChangeState
value = 3010
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Thrust MAX"
triggerall = RoundState = 2 && StateType = A
triggerall = power >= 1000
triggerall = stateno!=241
triggerall = stateno!=1750
trigger1 = ctrl && pos y <= -50
trigger2=(stateno=[600,699]) && movecontact
trigger3=(stateno=[1200,2999])&& movecontact

[State -1, Psi-Thrust Hyper]
type = ChangeState
value = 3000
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Thrust MAX"
triggerall = RoundState = 2 && StateType != A
triggerall = power >= 1000
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,299]) && movecontact
trigger3=(stateno=[1200,2999])&& movecontact

[State -1,Yami Shigure]
type = ChangeState
value = 3400
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Yami Shigure"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,299]) && movecontact
trigger3=(stateno=[1200,2999])&& movecontact

; PsyMaelstrom
[State -1, Maelstrom]
type = ChangeState
value = 3500
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Maelstrom"
triggerall = statetype = S || statetype = C
triggerall = power >= 1000
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,299]) && movecontact
trigger3=(stateno=[1200,2999])&& movecontact


;===========================================================================
;specials

[State -1, Shield]
type = ChangeState
value = 1300
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Shield"
triggerall = statetype != A
triggerall = stateno != 1300
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact
trigger4=(stateno=[5155,5156]) 

[State -1, Ninjitsu]
type = ChangeState
value = 1750
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Ninjitsu"
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,699]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact
trigger4=(stateno=[5155,5156]) 

[State -1, Air Psi-Blade]
type = ChangeState
value = 1230
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "AirPsi-Blade"
triggerall = RoundState = 2 && StateType = A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, High Psi-Blade]
type = ChangeState
value = 1200
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Blade3" 
triggerall = RoundState = 2 && StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact
trigger4=(stateno=[5155,5156]) 

[State -1, Med Psi-Blade]
type = ChangeState
value = 1210
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Blade2" 
triggerall = RoundState = 2 && StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact
trigger4=(stateno=[5155,5156]) 

[State -1, Psi-Blade]
type = ChangeState
value = 1220
triggerall = command = "Psi-Blade" 
triggerall = RoundState = 2 && StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,2999]) && movecontact
trigger4=(stateno=[5155,5156]) 

[State -1, Air Psi-Blast]
type = ChangeState
value = 1100
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Blast" 
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 
triggerall = p2stateno != 5300
triggerall = stateno!=241
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1014,1016]
trigger3=(stateno=[600,699]) && movecontact


[State -1, Psi-Blast]
type = ChangeState
value = 1000
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Blast" 
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
triggerall = p2stateno != 5300
triggerall = stateno!=241
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1014,1016]
trigger3=(stateno=[200,499]) && movecontact
trigger4=(stateno=[1200,2999]) && movecontact

[State -1, Psi-Drill]
type = ChangeState
value = 1400
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Drill" 
triggerall = RoundState = 2 && StateType != A
triggerall = stateno !=[1400,1401]
triggerall = stateno!=241
trigger1 = ctrl 
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1200,1240]) && movecontact

[State -1, Air Psi-Drill]
type = ChangeState
value = 1520
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "Psi-Drill"
triggerall = RoundState = 2 && StateType = A
triggerall = stateno!=241
trigger1= ctrl && pos y <= -50
trigger2=(stateno=[600,699]) && movecontact
trigger3=(stateno=[1200,1230]) && movecontact


;---------------------------------------------------------------------------
[State -1, Roll Forward]
type = ChangeState
value = 781
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 782
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 780
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))


[State -1, Spike Heel]
type = Changestate
value = 241
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "b" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = stateno!=241
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno=[400,449])&& movecontact
trigger4 = stateno = 100

[State -1, Rebound Kick]
type = Changestate
value = 255
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "c" && command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = stateno!=241
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])


[State -1, Moonsault]
type = ChangeState
value = 651
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "holdup" && command = "c"
trigger1 = statetype = A
trigger1 = ctrl && pos y <= -30
trigger2 = (stateno = [600,649])&& movecontact

;---------------------------------------------------------------------------

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall= var(59)<=0
triggerall= !AIlevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall= var(59)<=0
triggerall= !AIlevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Wall Jump Forward]
type = ChangeState
value = 60
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = StateNo != 60 && PrevStateNo != 60
trigger1 = command = "holdup" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && BackEdgeBodyDist <= 0

[State -1, Wall Jump Backwards]
type = ChangeState
value = 61
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = StateNo != 61 && PrevStateNo != 61
trigger1 = command = "holdup" && command = "holdback"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && FrontEdgeBodyDist <= 0

;---------------------------------------------------------------------------
;Super Jump
[State -1, super jump ]
type = ChangeState
value = 9996
triggerall= var(59)<=0
triggerall= !AIlevel
trigger1 = command = "DU"
trigger1 = ctrl 
trigger1 = statetype != A 
trigger2 = (stateno = 420) && (movecontact) && (command = "holdup") 

;---------------------------------------------------------------------------
[State -1, airrecover]
type =changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall= roundstate=2 && stateno=5050
triggerall=ctrl&&statetype=A
trigger1= command = "recovery"

[State -1, recover forward]
type = ChangeState
value = 5155
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = (stateno = 5120) && (anim = 5120) && time >= 5
trigger1 =  Life
triggerall = Command = "recoverf"

[State -1, recover back]
type = ChangeState
value = 5156
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = (stateno = 5120) && (anim = 5120) && time >= 5
trigger1 = life
trigger1 =  command = "recoverb"

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall= var(59)<=0
triggerall= !AIlevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk") 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl
trigger1 = p2bodydist x<=15

[State -1, Air Throw]
type = ChangeState
value = 900
triggerall= var(59)<=0
triggerall= !AIlevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S
trigger1 = p2bodydist x<=15


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno!=241
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "y"
triggerall = command != "holddown"  
triggerall = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall= var(59)<=0
triggerall= !AIlevel 
triggerall = command = "z"
triggerall = command != "holddown" 
triggerall = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = 100

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno!=241
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command != "holddown" && command = "b"
triggerall = command != "holdfwd"
triggerall = stateno!=241
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100


[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command != "holddown" && command = "c"
triggerall = command != "holdback"
triggerall = stateno!=241
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno=[400,449])&& movecontact
trigger4 = stateno = 100

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact 

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact 

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100 

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall= var(59)<=0
triggerall= !AIlevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
triggerall = stateno!=241
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact   

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "x"
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "y"
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "z"
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = (command = "a") && (Vel X != 0)
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact

[State -1, Jump Light Kick No Vel]
type = ChangeState
value = 631
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = (command = "a") && (Vel X = 0)
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact


[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command = "b"
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall= var(59)<=0
triggerall= !AIlevel
triggerall = command != "holdup" && command = "c"
triggerall = stateno!=241
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact

;---------------------------------------------------------------------------
;===========================================================================
; SYSTEM AI
;===========================================================================

[State -1, airrecover]
type =changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
triggerall=ctrl&&statetype=A
trigger1= vel y>-1 && alive && canrecover && random < (250 * (AIlevel ** 2 / 64.0))
[State -1, run]
type = changestate
value = 100
triggerall=ctrl&&statetype!=A
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (330 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype != A && p2bodydist x > 120
trigger1 = frontedgebodydist!=0
trigger1 = facing = 1

[State -1, Dash Backward]
type=changestate
value=105
triggerall=ctrl&&statetype!=A
triggerall= var(59)>=1 && numenemy||var(59)>=1 && numhelper(9801)
triggerall= roundstate=2 && statetype=S
triggerall= ctrl && (stateno!=[100,105])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)
trigger1= random<ifelse((enemynear,hitdefattr=SC,AT),150,50)
trigger2= (p2bodydist x=[0,80]) && backedgebodydist>=80
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random < 225*(AILevel**2/64.0)
;--------------------------------------------------------------------------
[State -1, Guard]
type=changestate
value=120
triggerall= var(59)>=1 && numenemy||var(59)>=1 && numhelper(9801)
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155])&& !(enemynear,ctrl)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 350, ifelse((p2stateno=[1000,2999]), 750, 1000))
trigger1=random < 250*(AILevel**2/64.0)
trigger1 = inguarddist

[State -1, Guard]
type = ChangeState
value = 120
triggerall= var(59)>=1 && numenemy||var(59)>=1 && numhelper(9801)
triggerall= var(59)>=1 && numenemy&& StateNo!=[120,155]
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A
trigger1=random < 250 * (AILevel**2/64.0)
trigger1 = inguarddist

[State -1, AI roll/dodge]
type=changestate
value=ifelse(random<250,901,900)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && random < 75 * (AILevel**2/64.0)
trigger1= enemynear,movetype=A
trigger1= (p2bodydist x=[0,25])

[State -1, Jump]
type = changestate
value = 50
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AIlevel && numenemy&&random < (120 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && (p2bodydist x = [10,160]) && enemynear, hitdefattr = SC, AP
trigger1=ctrl&&statetype!=A
trigger1 = inguarddist

[State -1, Super Jump]
type = ChangeState
value = 9996
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && var(55)=2 && statetype != A && roundstate = 2 && (p2bodydist y = [-320,5])
triggerall = stateno != 100 && pos y = 0 && (enemynear,Statetype!=C)
triggerall=ctrl&&statetype!=A
trigger1 = ctrl && enemy,vel y < -1 && (p2bodydist x = [10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear,movetype = H && (enemynear,stateno=5040)
trigger2 = p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4 = stateno=420 && anim=425 && movecontact && random < (800 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype =A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))
;----------------------------------------------------------------
[State -1, AI Parry Stand]
type = HitOverride
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel&&statetype = S
triggerall= ctrl && !stateno = [700,702]
trigger1 = random < (45 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 700
attr = SA, AA, AP
time = 16
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type = HitOverride
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel&&statetype = C
triggerall= ctrl && !stateno = [700,702]
trigger1 =random < (45 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 701
attr = C, AA, AP
time = 16
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type = HitOverride
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel&&statetype = A
triggerall= ctrl && !stateno = [700,702]
trigger1 = random < (45 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 702
attr = SCA, AA, AP
time = 16
;-------------------------------------------------------------------------
[State -1, taunt]
type=changestate
value=195
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall= var(59)>=1 && numenemy && roundstate=2 && statetype!=A
triggerall= power<const(data.power) && Movetype!=A && !(enemynear,ctrl)
triggerall=  power > const(data.power) && power > powermax 
triggerall= !inguarddist && p2bodydist x>=120 && random < 100*(AILevel**2/64.0)
triggerall = stateno != 195
triggerall= ctrl
trigger1=(enemynear,Movetype=H||enemynear,statetype=L)
trigger2=enemynear,vel x<0
trigger3=enemynear,stateno=[120,155]
trigger4= p2stateno = 5300

;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) 
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;-------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = 900
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype =A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) 
triggerall = enemynear,movetype!=H&&enemynear,statetype =A&&enemynear,Hitover&&(p2bodydist x =[0,30])&&(p2bodydist y =[-50,0])
triggerall = ctrl
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3=(p2bodydist x=[0,30])&&random<250
trigger4=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random < (500 * (AIlevel ** 2 / 64.0))
;Normals========================================================================
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,105]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movecontact
trigger2 = random < (350 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movecontact
trigger2 = random < (450 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movecontact
trigger2 = random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [100,105])
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick spike heel AI]
type = ChangeState
value = 241
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (210 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movecontact
trigger2 = p2movetype = A 
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -70, 50])  
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))&& StateType != A
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 255
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 20]) && (p2bodydist y = [ -70, 50])  
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))&& StateType != A
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movecontact && stateno != 225&& StateType != A
trigger2 = random < (100 * (AIlevel ** 2 / 64.0))&& StateType != A
trigger3 = ctrl && enemynear,statetype=L  && random < (300 * (AIlevel ** 2 / 64.0))&& StateType != A
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,105]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movecontact
trigger2 = random < (800 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L 
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movecontact
trigger2 = random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && (Numtarget(250)||(enemynear, hitfall)) && random<(250* (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movecontact
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movecontact
trigger2 = random < (750 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movecontact && random < (750 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [630,639])&& movecontact && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movecontact && random < (700 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [640,649])&& movecontact && random < (200 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movecontact && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movecontact && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [630,639])&& movecontact && random < (750 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movecontact && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [640,649])&& movecontact && random < (750 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 651
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movecontact && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [640,649])&& movecontact && random < (750 * (AIlevel ** 2 / 64.0))
;Specials========================================================================
[State -1, Psy Blast AI]
type =ChangeState
value=1003
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall= AILevel && RoundState=2 && numenemy && StateType != A
Triggerall = ctrl && statetype!=A  && random < (100 * (AIlevel ** 2 / 64.0))  
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact

[State -1, Psy Blast AI]
type =ChangeState
value=1004
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall= AILevel && RoundState=2 && numenemy && StateType != A
Triggerall = ctrl && statetype!=A  && random < (150 * (AIlevel ** 2 / 64.0))  
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact

[State -1, Psy Blast AI]
type =ChangeState
value=1005
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (100 * (AIlevel ** 2 / 64.0)) 
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
;-----------------------------------------------------------------------
[State -1, Air Psy Blast AI]
type =ChangeState
value=1103
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall= AILevel && RoundState=2 && numenemy && StateType != A
Triggerall = ctrl && statetype =A  && random < (100 * (AIlevel ** 2 / 64.0))  
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact

[State -1, Air Psy Blast AI]
type =ChangeState
value=1104
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2
triggerall= AILevel && RoundState=2 && numenemy && StateType != A
Triggerall = ctrl && statetype =A  && random < (150 * (AIlevel ** 2 / 64.0))  
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact

[State -1, Air Psy Blast AI]
type =ChangeState
value=1105
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype =A  && random < (100 * (AIlevel ** 2 / 64.0)) 
triggerall = numhelper(1010)=0 && numhelper(1050)=0 && (stateno !=[1100,1303]) && p2stateno!=5300 
triggerall=(enemynear,stateno!=[5120,5220])
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact

;-----------------------------------------------------------------------
[State -1, Psy Drill AI]
type =ChangeState
value=1400
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (200 * (AIlevel ** 2 / 64.0))  
triggerall=(p2bodydist x<= 50) && (p2bodydist y = [ -120, 5]) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
trigger3=prevstateno=1751
trigger4= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, air Psy drill AI]
type =ChangeState
value=1520
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype =A  && random < (200 * (AIlevel ** 2 / 64.0))
trigger1=(p2bodydist x>= 50) && (p2bodydist y = [ -70, 0]) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
trigger3= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, Psy Blade 1 AI]
type =ChangeState
value=1200
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (400 * (AIlevel ** 2 / 64.0))   
triggerall=(p2bodydist x<= 40) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
trigger3= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, Psy Blade 2 AI]
type =ChangeState
value=1210
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (300 * (AIlevel ** 2 / 64.0))   
triggerall=(p2bodydist x<= 30) && (p2bodydist y = [ -120, 5]) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
trigger3= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, Psy Blade 2 AI]
type =ChangeState
value=1220
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (250 * (AIlevel ** 2 / 64.0))  
triggerall=(p2bodydist x<= 20) && (p2bodydist y = [ -120, 5]) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(StateNo=40 || StateNo=52 || (StateNo=[100,101]))
trigger2=(stateno=[200,450]) && movecontact
trigger3= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, Air Psy Blade 3 AI]
type =ChangeState
value=1230
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype =A  && random < (350 * (AIlevel ** 2 / 64.0))  
triggerall=(p2bodydist x<= 15) && (p2bodydist y = [ -80, 5]) && (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=(stateno=[600,650]) && movecontact
;-----------------------------------------------------------------------
[State -1, Shield AI]
type =ChangeState
value=1300
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (275 * (AIlevel ** 2 / 64.0))  
triggerall=(p2bodydist x= [0, 20])&& (enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L 
trigger1=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2= p2stateno = 5300 
;-----------------------------------------------------------------------
[State -1, teleport AI]
type =ChangeState
value=1750
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && random < (45 * (AIlevel ** 2 / 64.0))  
triggerall=(p2bodydist x= [0,125])
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])) && enemynear,vel x<=0
trigger2=(stateno=[200,450]) && movecontact 
trigger3=(stateno=[5155,5156])
trigger4=enemy,movetype=A
;Hypers========================================================================
[State -1, Desperate AI]
type =ChangeState
value=3800
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (175 * (AIlevel ** 2 / 64.0)) 
Triggerall = power >= 3000 && life <= 250
trigger1=(p2bodydist x<=60) && (p2bodydist y = [ -110, 5])
trigger2=(enemynear,stateno!=[0,155]) 
trigger3= StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact
trigger6= p2stateno = 5300 
;--------------------------------------------------------------------
[State -1, LVL3 AI]
type =ChangeState
value=3500
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (375 * (AIlevel ** 2 / 64.0)) 
Triggerall = power >= 3000 && life >= 250
trigger1=(p2bodydist x<=60)
trigger2=(enemynear,stateno!=[0,155]) 
trigger3= StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact
trigger6= p2stateno = 5300 
;----------------------------------------------------------------------
[State -1, air Hyper psy blast AI]
type =ChangeState
value=3200
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (255 * (AIlevel ** 2 / 64.0)) 
triggerall = numhelper(1010)=0 && numhelper(1050)=0  && pos y<-10 
triggerall = power >= 1000 
trigger1=(p2bodydist x=[50,80]) && (p2bodydist y = [ -50, 225]) && enemynear,statetype!=C && !(enemynear,canrecover)
trigger2=(enemynear,stateno!=[120,155]) 
trigger3=(stateno = [600,655]) && movecontact
trigger4=(stateno = [1000,2999]) && movecontact
trigger6= p2stateno = 5300 
;----------------------------------------------------------------------
[State -1, Hyper psy blast AI]
type =ChangeState
value=3100
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (75 * (AIlevel ** 2 / 64.0))  
triggerall = numhelper(1010)=0 && numhelper(1050)=0  && pos y<-10 
triggerall = power >= 1000  
trigger1=(p2bodydist x=[40,220]) && (p2bodydist y = [ -80, 5]) && enemynear,statetype!=L && !(enemynear,canrecover)
trigger2=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger3=(enemynear,stateno!=[0,155]) 
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact 
trigger6= p2stateno = 5300 
;----------------------------------------------------------------------
[State -1, air psy thrust AI]
type =ChangeState
value=3010
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype=A  && random < (75 * (AIlevel ** 2 / 64.0)) 
triggerall = power >= 1000  
trigger1=(p2bodydist x=[0,90]) && (p2bodydist y = [ -50, 225]) && enemynear,statetype!=C && !(enemynear,canrecover)
trigger2=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger3=(enemynear,stateno!=[0,155]) 
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact 
trigger6= p2stateno = 5300 
;----------------------------------------------------------------------
[State -1, psy thrust AI]
type =ChangeState
value=3000
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (150 * (AIlevel ** 2 / 64.0)) 
triggerall = power >= 1000
trigger1=(p2bodydist x=[0,75]) && !(enemynear,canrecover)
trigger2=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger3=(enemynear,stateno!=[0,155]) 
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact 
trigger6= p2stateno = 5300 
;----------------------------------------------------------------------
[State -1, Yami AI]
type =ChangeState
value=3400
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (70 * (AIlevel ** 2 / 64.0)) 
triggerall = power >= 1000
triggerall=(p2bodydist x=[0,25]) && (p2bodydist y = [ -20, 5]) && enemynear,statetype!=L && !(enemynear,canrecover)
trigger1=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220])
trigger2=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger3=(enemynear,stateno!=[0,155]) 
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact
trigger6= p2stateno = 5300  
;----------------------------------------------------------------------
[State -1, Maelstrom AI]
type =ChangeState
value=3500
triggerall= var(59)>=1 && numenemy&& roundstate = 2|| numhelper(9801)&& roundstate = 2 
triggerall= AILevel && numenemy|| AILevel && numhelper(9801)
Triggerall = ctrl && statetype!=A  && random < (120 * (AIlevel ** 2 / 64.0)) 
triggerall = power >= 1000
triggerall=(p2bodydist x=[0,30]) && (p2bodydist y = [ -60, 0]) 
trigger1=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) 
trigger2=StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger3=(enemynear,stateno!=[0,155]) 
trigger4=(stateno = [200,299]) && movecontact
trigger5=(stateno = [1000,2999]) && movecontact 
trigger6= p2stateno = 5300 
