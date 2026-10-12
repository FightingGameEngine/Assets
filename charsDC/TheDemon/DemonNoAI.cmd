; Ice's CMD file
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


;-| Overrides to Basic Behavior |------------------------------------------
; (for future development)
;[Command]
;name = "icecharge"
;command = x+y
;
;[Command]
;name = "icecharge"
;command = x+z
;
;[Command]
;name = "icecharge"
;command = y+z
;
;[Command]
;name = "maiden"
;command = x+y, B
;
;[Command]
;name = "maiden"
;command = x+z, B
;
;[Command]
;name = "maiden"
;command = y+z, B



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
name = "DU"
command = D, U
time = 8

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
;command = ~s       ; this would trigger off the start button's RELEASE, instead of PRESS
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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


;-| Supers |-----------------------------------------------------------
[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
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

;-| Specials |-----------------------------------------------------------
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
name = "dd_a"
command = ~D, /$D, a

[Command]
name = "dd_b"
command = ~D, /$D, b

[Command]
name = "dd_c"
command = ~D, /$D, c



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

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (statetype = S) && (command = "BB") && (ctrl = 1)
trigger2 = (statetype = S) && (command = "3P") && (command = "holdback") && (ctrl = 1)

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (statetype = S) && (command = "FF") && (ctrl = 1)
trigger2 = (statetype = S) && (command = "3P") && (ctrl = 1)

;---------------------------------------------------------------------------
; Iceberg (Amalgam) (QCF+HP+HK)
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = command = "Amalgam"
triggerall = power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hyper Ice Ball (QCF+2P)
[State -1, HyperIceBall]
type = Null    ;ChangeState
value = 3000
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Ice Quake (QCB+2P)
[State -1, IceQuake]
type = ChangeState
value = 4500
triggerall = command = "qcb_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Blizzard (QCB+2K)
[State -1, Blizzard]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(20) = 0
trigger1 = (ctrl = 1) && (command = "qcf_2p")


;---------------------------------------------------------------------------
; Ice Wave-Weak (D,D+K)
[State -1, IceWave]
type = ChangeState
value = 2505    ;2500
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_a")

;---------------------------------------------------------------------------
; Ice Wave-Medium (D,D+K)
[State -1, IceWave]
type = ChangeState
value = 2505    ;2501
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_b")

;---------------------------------------------------------------------------
; Ice Wave-Hard (D,D+K)
[State -1, IceWave]
type = ChangeState
value = 2505    ;2502
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_c")


;---------------------------------------------------------------------------
; Ice Maiden (QCB+K)
[State -1, IceMaiden]
type = ChangeState
value = 2000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
;trigger1 = (ctrl = 1) && (command = "maiden")
trigger1 = (ctrl = 1) && (command = "qcb_a")
trigger2 = (ctrl = 1) && (command = "qcb_b")
trigger3 = (ctrl = 1) && (command = "qcb_c")


;---------------------------------------------------------------------------
; Ice Ball (QCF+P)
[State -1, IceBall]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055])
trigger1 = (ctrl = 1) && (command = "qcf_x")
trigger2 = (ctrl = 1) && (command = "qcf_y")
trigger3 = (ctrl = 1) && (command = "qcf_z")

;---------------------------------------------------------------------------
; Ice Ball (air) (QCF+P)
[State -1, IceBallAir]
type = ChangeState
value = 1100
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_x")
trigger2 = (ctrl = 1) && (command = "qcf_y")
trigger3 = (ctrl = 1) && (command = "qcf_z")


;---------------------------------------------------------------------------
; Ice Slick (QCB+P)
[State -1, IceSlick]
type = ChangeState
value = 1200
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(12) = 0
trigger1 = (ctrl = 1) && (command = "qcb_x")
trigger2 = (ctrl = 1) && (command = "qcb_y")
trigger3 = (ctrl = 1) && (command = "qcb_z")

;---------------------------------------------------------------------------
; Ice Slick (air) (QCB+K)
[State -1, IceSlickAir]
type = ChangeState
value = 1300
triggerall = StateType = A
triggerall = MoveType != H
triggerall = NumHelper(12) = 0
trigger1 = (ctrl = 1) && (command = "qcb_x")
trigger2 = (ctrl = 1) && (command = "qcb_y")
trigger3 = (ctrl = 1) && (command = "qcb_z")


;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "start")

;---------------------------------------------------------------------------
; Throws/grapples
; 
; Standing freeze/push: 300
;---------------------------------------------------------------------------
; Standing freeze/push
[State -1, Throw1]
type = ChangeState
value = 300
triggerall = (command = "z") && (command = "holdfwd")
triggerall = statetype = S
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) ;&& (P2statetype != A)


;---------------------------------------------------------------------------
; Wall jump
[State -1, Wall jump]
type = ChangeState
value = 40
triggerall = (StateType = A) && (Ctrl) && (Pos Y < -30)
trigger1 = ((command = "holdup") && (command = "holdfwd") && (Vel X <= 0) && (backedgebodydist <= 10) && (backedgebodydist > -10)) 
trigger2 = ((command = "holdup") && (command = "holdback") && (Vel X >= 0) && (frontedgebodydist <= 10) && (frontedgebodydist > -10)) 
persistent = 0

[State -1, StateTypeSet]
type = StateTypeSet
trigger1 = (StateNo = 40) && (Pos Y < 0)
statetype = A


;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
;triggerall = stateno != 100
triggerall = (StateType != A) && (Var(0) = 0)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 210) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = (command = "c") && (statetype = S) && (P2BodyDist X < 32) && (command = "holdfwd")
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (far-range)
[State -1, Stand Hard Kick2]
type = ChangeState
value = 265
triggerall = (command = "c") && (statetype = S)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 410) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440) || (stateno = 450)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 610) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 630
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Head Stomp (alternate air kick; HK + down)
[State -1, Air Head Stomp]
type = ChangeState
value = 680
triggerall = (command = "c") && (command = "holddown") && (Vel X > 0)
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 660
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)) && (movecontact = 1)


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
