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
[command]
name = "CPU1"
command = D,D,D
time = 0

[Command]
name = "CPU2"
command = U,U,D
time = 0

[Command]
name = "CPU3"
command = U,U,D
time = 0

[Command]
name = "CPU4"
command = U,U,D
time = 0

[Command]
name = "CPU5"
command = U,U,D
time = 0

[Command]
name = "CPU6"
command = U,U,D,D
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU26"
command = U,U,D,D
time = 0

[Command]
name = "CPU27"
command = U,U,D,D
time = 0

[Command]
name = "CPU28"
command = U,U,D,D
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU31"
command = U,U,D,D
time = 0

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,z
time = 25

[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,y
time = 25

[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,x
time = 25

[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,~z
time = 25

[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,~y
time = 25

[command]
name = "DM"
command = ~D,DF,F,DF,D,DB,B,~x
time = 25

[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,z
time = 25

[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,y
time = 25

[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,x
time = 25
[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,~z
time = 25
buffer.time=7

[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,~y
time = 25
buffer.time=7
[command]
name = "supercharge"
command = ~D,DF,F,D,DF,F,~x
time = 25
buffer.time=7
[command]
name = "superg"
command = ~D,DB,B,D,DB,B,c
time = 25

[command]
name = "superg"
command = ~D,DB,B,D,DB,B,b
time = 25

[command]
name = "superg"
command = ~D,DB,B,D,DB,B,a
time = 25
[command]
name = "superg"
command = ~D,DB,B,D,DB,B,~c
time = 25
buffer.time=7
[command]
name = "superg"
command = ~D,DB,B,D,DB,B,~b
time = 25
buffer.time=7
[command]
name = "superg"
command = ~D,DB,B,D,DB,B,~a
time = 25
buffer.time=7


[command]
name = "baton"
command = ~D,DF,F,D,DF,F,c
time = 25

[command]
name = "baton"
command = ~D,DF,F,D,DF,F,b
time = 25

[command]
name = "baton"
command = ~D,DF,F,D,DF,F,a
time = 25
[command]
name = "baton"
command = ~D,DF,F,D,DF,F,~c
time = 25
buffer.time=7

[command]
name = "baton"
command = ~D,DF,F,D,DF,F,~b
time = 25
buffer.time=7

[command]
name = "baton"
command = ~D,DF,F,D,DF,F,~a
time = 25
buffer.time=7
[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,z
time = 25

[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,x
time = 25

[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,x
time = 25

[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,~z
time = 25
buffer.time=7
[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,~x
time = 25
buffer.time=7
[command]
name = "magnumforce"
command = ~D,DB,B,D,DB,B,~y
time = 25
buffer.time=7
;-| Special Motions |------------------------------------------------------
[command]
name = "beating"
command = ~D,DF,F,c
time = 15

[command]
name = "beating2"
command = ~D,DF,F,b
time = 15

[command]
name = "beating3"
command = ~D,DF,F,a
time = 15

[command]
name = "exstomp"
command = ~F,D,DF,c+b
time = 15

[command]
name = "exstomp"
command = ~F,D,DF,a+b
time = 15

[command]
name = "exstomp"
command = ~F,D,DF,c+a
time = 15
[command]
name = "excharge"
command = ~D,DF,F,z+y
time = 18

[command]
name = "excharge"
command = ~D,DF,F,x+y
time = 18
[command]
name = "stomp"
command = ~F,D,DF,c
time = 15

[command]
name = "stomp2"
command = ~F,D,DF,b
time = 15

[command]
name = "stomp3"
command = ~F,D,DF,a
time = 15

[command]
name = "expw"
command = ~D,DB,B,c+b
time = 15

[command]
name = "expw"
command = ~D,DB,B,c+a
time = 15

[command]
name = "expw"
command = ~D,DB,B,a+b
time = 15

[command]
name = "pw"
command = ~D,DB,B,c
time = 15

[command]
name = "pw"
command = ~D,DB,B,b
time = 15

[command]
name = "pw"
command = ~D,DB,B,a
time = 15



[command]
name = "excharge"
command = ~D,DF,F,z+x
time = 15

[command]
name = "charge"
command = ~D,DF,F,z
time = 15

[command]
name = "charge2"
command = ~D,DF,F,y
time = 15

[command]
name = "charge3"
command = ~D,DF,F,x
time = 15

[command]
name = "judge"
command = ~D,DB,B,y
time = 15

[command]
name = "judgeL"
command = ~D,DB,B,x
time = 15

[command]
name = "judgeH"
command = ~D,DB,B,z
time = 15

[command]
name = "reloadsg"
command = ~D,D,c
time = 15

[command]
name = "reloadsg"
command = ~D,D,b
time = 15

[command]
name = "reloadsg"
command = ~D,D,a
time = 15

[command]
name = "reload"
command = ~D,D,z
time = 15

[command]
name = "reload"
command = ~D,D,y
time = 15

[command]
name = "reload"
command = ~D,D,x
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
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 59
value = 1
;=================================================================
;DM
[State -1, DM]
type = ChangeState
value = 4000
triggerall = life <= 250
triggerall = var(11) = 0
triggerall = p2stateno != [150,155]
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = movetype!=H
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,60]
trigger1 = ctrl
trigger2= p2movetype=A && ctrl
;---------------------------------------------------------------------
;supercharge
[State -1, supercharge]
type = ChangeState
value = 2600
triggerall = power >= 3000
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = movetype!=H
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-60,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [0,200])
trigger1= ctrl
;-------------------------------------------------------
;superg
[State -1, superg]
type = ChangeState
value = 2050
triggerall = power >= 2000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [60,250]
Triggerall = Random <149
triggerall = movetype!=H
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------
;magnumforce
[State -1, magnumforce]
type = ChangeState
value = 2500
triggerall = power >= 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [60,250]
Triggerall = Random <149
triggerall = movetype!=H
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------
;baton
[State -1, baton]
type = ChangeState
value = 3002
triggerall = power >= 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [20,80]
Triggerall = Random <149
triggerall = movetype!=H
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = p2movetype!=A
trigger1 = ctrl
;trigger2=
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light PunchAI]
type = ChangeState
value = 200
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType = S)
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [0,40]
Triggerall = Random <250
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand strong PunchAI]
type = ChangeState
value = 210
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,60]
trigger1 = ctrl
trigger2 = stateno = 200&&movecontact
trigger3 = stateno = 230 &&movecontact
trigger4 = stateno = 400 &&movecontact
trigger5 = stateno = 430 &&movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand strong PunchAI]
type = ChangeState
value = 221
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,60]
trigger1 = ctrl
trigger2 = stateno = 200&&movecontact
trigger3 = stateno = 230 &&movecontact
trigger4 = stateno = 400 &&movecontact
trigger5 = stateno = 430 &&movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch  2
[State -1, Stand strong Punch2AI]
type = ChangeState
value = 220
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall =(p2bodydist y = 0) && enemy,vel y >=0
triggerall = p2bodydist x = [0,65]
trigger1 = ctrl
trigger2 = stateno = 210 &&movecontact
trigger3 = stateno = 240 &&movecontact
trigger4 = stateno = 410 &&movecontact
trigger5 = stateno = 440 &&movecontact




;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light KickAI]
type = ChangeState
value = 230
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType = S)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,25]
trigger1 = ctrl


;--------------------------------------------------------
;Stand hard Kick
;立ち弱キック
[State -1, Stand hard KickAI]
type = ChangeState
value = 240
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall = enemy, statetype != A

triggerall = p2bodydist x = [0,80]
trigger1 = ctrl
trigger2 = stateno = 200 &&movecontact
trigger3 = stateno = 230 &&movecontact
trigger4 = stateno = 400 &&movecontact
trigger5 = stateno = 430 &&movecontact

;--------------------------------------------------------
;Stand hard Kick
;立ち弱キック
[State -1, Stand hard KickAI]
type = ChangeState
value = 250
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = Random <300
triggerall = p2statetype !=L
triggerall =(p2bodydist y =[-40,0]) && enemy,vel y >=0
triggerall = p2bodydist x = [0,75]
trigger1 = ctrl
trigger2 = stateno = 210 &&movecontact
trigger3 = stateno = 240 &&movecontact
trigger4 = stateno = 410 &&movecontact
trigger5 = stateno = 440 &&movecontact


;------------------------------------------------------
[State -1, AI5]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = (P2BodyDist X = [0,40])&&(P2BodyDist Y = 0 )
Triggerall = Random < 300
triggerall = (p2statetype !=L)
triggerall = (movetype !=H)
trigger1 = ctrl
value = 400
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = StateType != A
triggerall = stateno != [1046,3999]
Triggerall = (P2BodyDist X = [0,60])&&(P2BodyDist Y = 0 )
Triggerall = Random < 300
triggerall = p2statetype !=L
triggerall = (movetype !=H)
triggerall = enemy, statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 &&movecontact
trigger3 = stateno = 230 &&movecontact
trigger4 = stateno = 400 &&movecontact
trigger5 = stateno = 430 &&movecontact
value = 410
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall =  (StateType != A)
triggerall = stateno != [1046,3999]
Triggerall = (P2BodyDist X = [0,70]) && (P2BodyDist Y = [-65,0])&&enemy,vel y >=0
Triggerall = enemy, statetype != A
Triggerall = Random < 500
triggerall = p2statetype !=L
triggerall = (movetype !=H)
trigger1 = ctrl
trigger3 = stateno = 210 &&movecontact
trigger4 = stateno = 240 &&movecontact
trigger5 = stateno = 410 &&movecontact
trigger6 = stateno = 440 &&movecontact
value = 420
;------------------------------------------------------
[State -1, AI9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = StateType != A
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [0,55]
triggerall = (movetype !=H)
Triggerall = ( Random < 300) && (enemy, statetype != A && enemy,statetype !=L)
trigger1 = ctrl
value = 430
;------------------------------------------------------
[State -1, AI 9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = StateType != A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,80]) && (P2BodyDist Y = 0 )
Triggerall = ( Random < 300) && (enemy, statetype != A && enemy,statetype !=L)
triggerall = stateno != [1046,4999]
Trigger1 = ctrl
trigger2 = enemy,statetype = C && ctrl
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact
value = 440

;------------------------------------------------------
[State -1, AI8]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = StateType != A
triggerall = stateno != [1046,3999]
Triggerall = P2BodyDist X = [0,80]
triggerall = (movetype !=H)
Triggerall = ( Random < 200) && (enemy, statetype != A && enemy,statetype !=L)
trigger1 = ctrl
trigger2 = enemy,statetype = C && ctrl
trigger3= stateno = 210 &&movecontact
trigger4 = stateno = 240 &&movecontact
trigger5 = stateno = 410 &&movecontact
trigger6 = stateno = 440 &&movecontact
value = 450
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, AI9]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,40])
triggerall = roundstate = 2
triggerall = vel y <= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,25]
triggerall = p2statetype=A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, AI9]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,35])
triggerall = roundstate = 2
triggerall = vel y <= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,25]
triggerall = p2statetype=A
trigger1 = ctrl
trigger2 = stateno = 600 &&movecontact
trigger3 = stateno = 630 && movecontact




;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI9]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,75])
triggerall = roundstate = 2
triggerall = vel y >= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,75]
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, AI9]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,45])
triggerall = roundstate = 2
triggerall = vel y <= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,25]
triggerall = p2statetype=A
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, AI9]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,55])
triggerall = roundstate = 2
triggerall = vel y >= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,55]
trigger1 = ctrl
trigger2 = stateno = 600 &&movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
[State -1, AI9]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,65])
triggerall = roundstate = 2
triggerall = vel y >= 0
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,75]
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
;------------------------------------
[State -1, pw]
type = ChangeState
value = 2000
triggerall = roundstate=2
triggerall = random <499
triggerall = var(59)=1
triggerall = statetype!=A
triggerall = p2movetype = A
triggerall = movetype!=H
triggerall = p2statetype!=A
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = p2stateno!=[120,155]
triggerall = p2bodydist x =[0,80]
trigger1 =  ctrl
;---------------------------------------------
[State -1, expw]
type = ChangeState
value = 6000
triggerall = power >=500
triggerall = roundstate=2
triggerall = random <499
triggerall = var(59)=1
triggerall = statetype!=A
triggerall = p2movetype = A
triggerall = movetype!=H
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = p2stateno!=[120,155]
triggerall = p2bodydist x =[0,80]
trigger1 =  ctrl
;-----------------------------------------------
;beating
[State -1, beating]
type = ChangeState
value = 3100
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,80])
triggerall = roundstate = 2
triggerall = random<99
triggerall = p2statetype=S
triggerall = stateno!=[100,105]
trigger1 = ctrl
trigger2=p2statetype=S&&ctrl
;---------------------------------------------
;beating2
[State -1, beating2]
type = ChangeState
value = 3101
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,65])
triggerall = roundstate = 2
triggerall = random<99
triggerall = p2statetype=S
triggerall = stateno!=[100,105]
trigger1 = ctrl
trigger2=p2statetype=S&&ctrl
;-----------------------------------------
;beating3
[State -1, beating3]
type = ChangeState
value = 3102
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (movetype !=H)
Triggerall = (P2BodyDist X = [0,55])
triggerall = roundstate = 2
triggerall = random<99
triggerall = p2statetype=S
triggerall = stateno!=[100,105]
trigger1 = ctrl
trigger2=p2statetype=S&&ctrl
;------------------------------------------------
;stomp
[State -1, stomp]
type = ChangeState
value = 2100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
triggerall =p2stateno!=[120,155]
Triggerall = (P2BodyDist X = [60,120])
trigger1= ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3= p2statetype=C &&ctrl
;------------------------------------------------------
;stomp2
[State -1, stomp2]
type = ChangeState
value = 2101
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
triggerall =p2stateno!=[120,155]
Triggerall = (P2BodyDist X = [40,100])
trigger1= ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3= p2statetype=C &&ctrl
;-----------------------------------------------
;stomp3
[State -1, stomp3]
type = ChangeState
value = 2102
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
triggerall =p2stateno!=[120,155]
Triggerall = (P2BodyDist X = [20,70])
trigger1= ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3= p2statetype=C &&ctrl
;-----------------------------------------
;exstomp
[State -1, exstomp]
type = ChangeState
value = 2103
triggerall = power >= 500
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
triggerall =p2stateno!=[120,155]
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [20,150])
trigger1= ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3= enemynear,hitdefattr=SCA,AP && ctrl
trigger4= enemynear,numproj >0 && ctrl
trigger5= p2statetype=C &&ctrl

;--------------------------------------------------
;charge
[State -1, charge]
type = ChangeState
value = 1060
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [80,150])
trigger1= ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;-----------------------------------------------------
;charge2
[State -1, charge2]
type = ChangeState
value = 1061
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-40,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [60,130])
trigger1= ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;------------------------------------------------------------
;charge3
[State -1, charge3]
type = ChangeState
value = 1067
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = ((p2bodydist y = [-60,-20])||p2bodydist y=0)&& enemy,vel y >=0
triggerall = p2statetype !=L
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [0,80])
trigger1= ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;------------------------------------------
;excharge
[State -1, excharge]
type = ChangeState
value = 1070
triggerall = power >= 500
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = (statetype != A)
triggerall = p2bodydist y=0
triggerall = p2statetype !=L
Triggerall = Random <=99
Triggerall = (P2BodyDist X = [60,150])
trigger1= ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13= p2movetype=A && ctrl
;-----------------------------------------
[State -1, reload]
type = ChangeState
value = 1015
triggerall = roundstate=2
triggerall =  var(45)!=5&&var(12)=0 || var(12)=1
triggerall = var(45)=0 || (var(45)>0 && random<49)
triggerall= p2movetype=H||p2stateno=5120
triggerall = var(59) = 1
triggerall = p2bodydist x >40
trigger1 = (statetype != a) && ctrl

;reloadsg
[State -1, reloadsg]
type = ChangeState
value = 1016
triggerall = var(45)!=5&&var(12)=1 || var(12)=0
triggerall = var(59) = 1
triggerall = roundstate=2
triggerall= p2movetype=H||p2stateno=5120
triggerall = p2bodydist x >40
triggerall = var(45)=0 || (var(45)>0 && random<49)
trigger1 = (statetype != a) && ctrl
;-----------------------------------------------
;judge
[State -1, judge]
type = ChangeState
value = 1000
triggerall = roundstate=2
triggerall = var(59) = 1
triggerall = (movetype !=H)
triggerall = random<99
triggerall = var(45)!=0
triggerall = (statetype != a)
triggerall = (p2bodydist y =[-60,0])&& enemy,vel y>=0
triggerall = (p2bodydist x >60 && p2movetype!=H &&var(12)=0) || ((p2bodydist x =[0,60])&&p2movetype=H)||((p2bodydist x =[40,200]) && p2movetype!=H&&var(12)=1)
trigger1= ctrl

[State -1, firejudge]
type = ChangeState
value = 1005
triggerall = movehit|| (p2stateno!=[120,155])||projhit(1000)=1 || p2movetype=A
triggerall = var(59) = 1
triggerall = (p2bodydist x >=0 &&var(12)=0) ||((p2bodydist x =[40,200]) &&var(12)=1)
trigger1 = stateno = 1000 && time = [17,46]
trigger2 = stateno = 1005 && time = [16,25]
trigger3 = stateno = 1105 && time = [23,32]

;-------------------------------------------------
;judgeL
[State -1, judgeL]
type = ChangeState
value = 1001
triggerall = roundstate=2
triggerall = var(59) = 1
triggerall = (movetype !=H)
triggerall = random<99
triggerall = var(45)!=0
triggerall = (statetype != a)
triggerall = p2statetype!=A
triggerall = (p2bodydist y =0)&& enemy,vel y>=0
triggerall = ((p2bodydist x =[30,60]) && p2movetype!=H&&var(12)=0) || ((p2bodydist x =[0,60])&&p2movetype=H&&var(12)=0)|| ((p2bodydist x =[40,200])&&var(12)=1)
trigger1= ctrl

[State -1, firejudge]
type = ChangeState
value = 10055
triggerall = movehit|| (p2stateno!=[120,155])||projhit(1000)=1
triggerall = var(59) = 1
triggerall = ((p2bodydist x =[30,80]) &&var(12)=0) || ((p2bodydist x =[0,240])&&p2movetype=H&&var(12)=1)
trigger1 = stateno = 1001 && time = [17,46]
trigger2 = stateno = 10055 && time = [16,25]
trigger3 = stateno = 1106 && time = [23,32]

;--------------------------------------------------
;judgeH
[State -1, judgeH]
type = ChangeState
value = 1002
triggerall = roundstate=2
triggerall = var(59) = 1
triggerall = (movetype !=H)
triggerall = random<99
triggerall = var(45)!=0
triggerall = (statetype != a)
triggerall = p2statetype=A
triggerall = (p2bodydist y =[-140,-20])
triggerall = ((p2bodydist x =[50,140]) && p2movetype!=H&&var(12)=0)||((p2bodydist x =[40,140]) && p2movetype!=H&&var(12)=1)
trigger1= ctrl

[State -1, firejudge]
type = ChangeState
value = 10056
triggerall = movehit|| (p2stateno!=[120,155])||projhit(1000)=1 || p2movetype=A||p2statetype=A
triggerall = var(59) = 1
triggerall = p2statetype=A
triggerall = ((p2bodydist x =[50,140])&&var(12)=0)||((p2bodydist x =[30,140]) &&var(12)=1)
trigger1 = stateno = 1002 && time = [17,46]
trigger2 = stateno = 10056 && time = [16,25]
trigger3 = stateno = 1107 && time = [23,32]

;-----------------------------------------------------
[State -1, OH]
type = ChangeState
value = 280
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType = S)
triggerall = stateno != [800,3999]
Triggerall = Random <300
triggerall = p2statetype !=L
triggerall =  p2statetype=C
triggerall = movetype !=H
triggerall = p2bodydist x = [0,65]
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, throwAI]
type = ChangeState
value = ifelse(random<499,801,800)
triggerall = (var(59) =1)
triggerall = random < 249
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = ctrl || stateno=20
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 22 && p2dist y <= 0
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 22 && p2dist y <= 0)
;-------------------------------------------------
[State -1, AI Jump]
type = changestate
value = 40
triggerall = roundstate = 2
triggerall = Var(59) = 1
triggerall = p2statetype !=L || p2stateno=5120
triggerall = (p2stateno!=[5090,5119]) &&(p2stateno!=[5121,5899])
triggerall = statetype != A
triggerall = var(30)=1 || (StateNo = 420) && movecontact
trigger1 = ctrl && p2movetype=A && p2statetype=C
trigger2 =p2statetype = C && (p2bodydist x = [50,90]) && ctrl&& random<249
trigger3= enemy,hitdefattr=SC,AT  && ctrl
trigger4= p2bodydist x >80 && ctrl&& random<43 && p2movetype!=A
trigger5 = (StateNo = 420) && movecontact




[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=var(59) >= 1 && statetype=S && ctrl && random < 99
trigger1= (stateno!=[100,105]) && p2movetype!=A && (p2bodydist x=[100,788])

[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall=var(59) >= 1 && statetype=S && ctrl && random <149
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[0,99])


[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno !=105
triggerall = statetype = S
triggerall = random < 99
triggerall = ctrl
trigger1 = p2statetype =L && (p2bodydist x=[-99,10])
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=var(59) = 1
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
triggerall = Random < 880
triggerall =(EnemyNear, movetype=A) || enemy,var(31)=1
trigger1 = ctrl ||stateno=20
;------------------------------------------------------------------
;DM
[State -1, DM]
type = ChangeState
value = 4000
triggerall = command = "DM"
triggerall = life <= 250
triggerall = var(11) = 0
triggerall = var(59) = 0
triggerall = p2movetype != H
triggerall = p2stateno != [150,155]
trigger1 = (statetype != a) && ctrl

;supercharge
[State -1, supercharge]
type = ChangeState
value = 2600
triggerall = command = "supercharge"
triggerall = power >= 3000
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;superg
[State -1, superg]
type = ChangeState
value = 2050
triggerall = command = "superg"
triggerall = power >= 2000
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;magnumforce
[State -1, magnumforce]
type = ChangeState
value = 2500
triggerall = command = "magnumforce"
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;baton
[State -1, baton]
type = ChangeState
value = 3002
triggerall = command = "baton"
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;excharge
[State -1, excharge]
type = ChangeState
value = 1070
triggerall = command = "excharge"
triggerall = power >= 500
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;exstomp
[State -1, exstomp]
type = ChangeState
value = 2103
triggerall = command = "exstomp"
triggerall = power >= 500
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 420
trigger2 = movecontact

;expw
[State -1, expw]
type = ChangeState
value = 6000
triggerall = command = "expw"
triggerall = power >= 500
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;pw
[State -1, pw]
type = ChangeState
value = 2000
triggerall = command = "pw"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;stomp
[State -1, stomp]
type = ChangeState
value = 2100
triggerall = command = "stomp"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 420
trigger2 = movecontact

;stomp2
[State -1, stomp2]
type = ChangeState
value = 2101
triggerall = command = "stomp2"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 420
trigger2 = movecontact

;stomp3
[State -1, stomp3]
type = ChangeState
value = 2102
triggerall = command = "stomp3"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 420
trigger2 = movecontact

;charge
[State -1, charge]
type = ChangeState
value = 1060
triggerall = command = "charge"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;charge2
[State -1, charge2]
type = ChangeState
value = 1061
triggerall = command = "charge2"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;charge3
[State -1, charge3]
type = ChangeState
value = 1067
triggerall = command = "charge3"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;reload
[State -1, reload]
type = ChangeState
value = 1015
triggerall =  var(45)!=5&&var(12)=0 || var(12)=1
triggerall = command = "reload"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;reloadsg
[State -1, reloadsg]
type = ChangeState
value = 1016
triggerall = var(45)!=5&&var(12)=1 || var(12)=0
triggerall = var(59) = 0
triggerall = command = "reloadsg"
trigger1 = (statetype != a) && ctrl

;firejudge
[State -1, firejudge]
type = ChangeState
value = 1005
triggerall = command = "y"
triggerall = var(59) = 0
trigger1 = stateno = 1000 && time = [17,46]
trigger2 = stateno = 1005 && time = [16,25]
trigger3 = stateno = 1105 && time = [23,32]

;firejudgeL
[State -1, firejudgeL]
type = ChangeState
value = 10055
triggerall = command = "x"
triggerall = var(59) = 0
trigger1 = stateno = 1001 && time = [17,46]
trigger2 = stateno = 10055 && time = [16,25]
trigger3 = stateno = 1106 && time = [23,32]

;firejudgeH
[State -1, firejudgeH]
type = ChangeState
value = 10056
triggerall = command = "z"
triggerall = var(59) = 0
trigger1 = stateno = 1002 && time = [17,46]
trigger2 = stateno = 10056 && time = [16,25]
trigger3 = stateno = 1107 && time = [23,32]

;beating
[State -1, beating]
type = ChangeState
value = 3100
triggerall = command = "beating"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;beating2
[State -1, beating2]
type = ChangeState
value = 3101
triggerall = command = "beating2"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;beating3
[State -1, beating3]
type = ChangeState
value = 3102
triggerall = command = "beating3"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;judge
[State -1, judge]
type = ChangeState
value = 1000
triggerall = command = "judge"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;judgeL
[State -1, judgeL]
type = ChangeState
value = 1001
triggerall = command = "judgeL"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;judgeH
[State -1, judgeH]
type = ChangeState
value = 1002
triggerall = command = "judgeH"
triggerall = var(59) = 0
trigger1 = (statetype != a) && ctrl

;OH
[State -1, OH]
Type = changestate
value = 280
triggerall = command = "b" && command = "y"
triggerall = (statetype != a)
triggerall = var(59) = 0
trigger1 = ctrl

;launch
[State -1, upfwd]
Type = changestate
value = 40
triggerall = command = "upfwd"
triggerall = numproj = 0
triggerall = var(59) = 0
triggerall = numhelper = 0
triggerall = var(59) = 0
trigger1 = (StateNo = 420)
trigger1 = movecontact

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw2
[State -1, Throw2]
type = ChangeState
value = 801
triggerall = var(59) = 0
triggerall = command = "c" && command = "z"
triggerall = command = "holdback"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "c" && command = "z"
triggerall = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand M Punch 2
[State -1, Stand M Punch 2]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"  && command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 221
trigger6 = movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 700
triggerall = (var(59) =0)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 710
triggerall = (var(59) =0)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 720
triggerall = (var(59) =0)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 730
triggerall = (var(59) =0)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 740
triggerall = (var(59) =0)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 750
triggerall = (var(59) =0)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
