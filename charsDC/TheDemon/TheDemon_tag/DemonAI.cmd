;The Demon 1.3 beta file
;

-| AI |-------------------------------------------------------------
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
name = "hb"
command = z+c
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
name = "yc"
command = y+c
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

[Command]
name = "superjump"
command = $D, $U

;-| Hold Dir |--------------------------------------------------------------
;-| Twelve commands |-

[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1



;-| Supers |-----------------------------------------------------------

[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "Amalgam"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "air_2p"
command = ~D, DF, F, x+y

[Command]
name = "air_2p"
command = ~D, DF, F, x+z

[Command]
name = "air_2p"
command = ~D, DF, F, y+z

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
name = "TeleportX"
command = ~D,D,x

[Command]
name = "TeleportY"
command = ~D,D,y

[Command]
name = "TeleportZ"
command = ~D,D, z



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

[State -1, tag]
type = ChangeState
value = 4502
triggerall = command = "c" && command = "z"
triggerall = Var(51) = 1
triggerall = partner, life > 0
trigger1 = (StateType != A) && (Ctrl = 1)


[State -1, AIActivate]
type = VarSet
triggerall = var(2) != 1
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
var(2) = 1

;===========================================================================
;Player Input Attacks
;---------------------------------------------------------------------------

; Head Stomp (alternate air kick; HK + down)
[State -1, Air Head butt]
type = ChangeState
value = 660
triggerall = Var(2) = 0
triggerall = (command = "hb")
triggerall = statetype = A
trigger1 = ctrl = 1

;  Teleport X
[State -1]
type = ChangeState
value = 1200
triggerall = command = "TeleportX"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;  Teleport Y
[State -1]
type = ChangeState
value = 1200
triggerall = command = "TeleportY"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;  Teleport Z
[State -1]
type = ChangeState
value = 1200
triggerall = command = "TeleportZ"
trigger1 = ctrl = 1

;[State -1, powercharge]
;type=changestate
;value=740
;trigger1=var(59)<=0&&roundstate=2&&command="holdback"&&command="y"&&statetype!=A&&power<3000
;trigger1=!var(20)&&!numhelper(775)&&!var(40)&&ctrl

;---------------------------------------------------------------------------
; Sped Victory
[State -1, Amalgam]
type = ChangeState
value = 9920
triggerall = Var(2) = 0
triggerall = command = "Amalgam"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(2) = 0
trigger1 = (statetype = S) && (command = "BB") && (ctrl = 1)
trigger2 = (statetype = S) && (command = "3P") && (command = "holdback") && (ctrl = 1)

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(2) = 0
trigger1 = (statetype = S) && (command = "FF") && (ctrl = 1)
trigger2 = (statetype = S) && (command = "3P") && (ctrl = 1)

;---------------------------------------------------------------------------
;hitman
[State -1]
type = ChangeState
value = 8999
triggerall = power >= 500
triggerall = command = "yc"
triggerall = numhelper(8999) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = numhelper(8989) = 1


;---------------------------------------------------------------------------
; Demon Glare(QCF+2P)
[State -1, demonglare]
type = ChangeState
value = 3000
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Demonuppercut - Z
[State -1, demonuppercut - x]
type = ChangeState
value = 1102
triggerall = command = "anti_z"
trigger1 = statetype = S
trigger1 = ctrl
; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 260) || (stateno = 230) || (stateno = 260) || (stateno = 250)) && (movecontact = 1)

;Demonuppercut- Y
[State -1, demonuppercut - y]
type = ChangeState
value = 1106
triggerall = command = "anti_y"
trigger1 = statetype = S
trigger1 = ctrl
; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 260) || (stateno = 230) || (stateno = 260) || (stateno = 250)) && (movecontact = 1)

;Demonuppercut - X
[State -1, demonuppercut - z]
type = ChangeState
value = 1107
triggerall = command = "anti_x"
trigger1 = statetype = S
trigger1 = ctrl
; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 260) || (stateno = 230) || (stateno = 260) || (stateno = 250)) && (movecontact = 1)


; Air Glare (air) (QCF+2P)
[State -1, airglare]
type = ChangeState
value = 738
triggerall = command = "air_2p"
trigger1 = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------------------------------------------------------------------
; Hellfire (QCB+2K)
[State -1, hellfire]
type = ChangeState
value = 3500
triggerall = Var(2) = 0
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(20) = 0
trigger1 = (ctrl = 1) && (command = "qcf_2k")   ;qcb_2k")


;---------------------------------------------------------------------------
; Magic-weak(D,D+K)
[State -1, magic_weak]
type = ChangeState
value = 2010    ;2500
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_a")

;---------------------------------------------------------------------------
; Magic-Medium (D,D+K)
[State -1, magic_medium]
type = ChangeState
value = 2020    ;2501
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_b")

;---------------------------------------------------------------------------
; Magic-Hard (D,D+K)
[State -1, magic_strong]
type = ChangeState
value = 2030    ;2502
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "dd_c")

;---------------------------------------------------------------------------
; demonbeam weak(QCF+P)
[State -1, demonbeam_weak]
type = ChangeState
value = 1680
triggerall = Var(2) = 0
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055])
trigger1 = (ctrl = 1) && (command = "qcf_x")

; demonbeam medium(QCF+P)
[State -1, demonbeam_medium]
type = ChangeState
value = 1690
triggerall = Var(2) = 0
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055])
trigger1 = (ctrl = 1) && (command = "qcf_y")

; demonbeam strong(QCF+P)
[State -1, demonbeam_strong]
type = ChangeState
value = 1700
triggerall = Var(2) = 0
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055])
trigger1 = (ctrl = 1) && (command = "qcf_z")

;---------------------------------------------------------------------------
; Air beam (air) (QCB+P)
[State -1, airbeam x]
type = ChangeState
value = 8080
triggerall = Var(2) = 0
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_x")


;---------------------------------------------------------------------------
; Air beam (QCF+P)
[State -1, airbeam y]
type = ChangeState
value = 8070
triggerall = Var(2) = 0
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_y")



;---------------------------------------------------------------------------
; Air beam (QCF+P)
[State -1, airbeam z]
type = ChangeState
value = 8060
triggerall = Var(2) = 0
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_z")


;---------------------------------------------------------------------------
; Demonfire (QCF+P)
[State -1, demonfire]
type = ChangeState
value = 1100
triggerall = Var(2) = 0
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcb_x")
trigger2 = (ctrl = 1) && (command = "qcb_y")
trigger3 = (ctrl = 1) && (command = "qcb_z")
 ;-----------------------------------------------------
;Demons from hell
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 3040
;triggerall = command = "qcb_a"
;triggerall = command = "qcb_b"
;;triggerall = command = "qcb_c"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 3040)
;trigger2 = (time > 9) || (movecontact && time > 5)
;

;---------------------------------------------------------------------------
; Flame -weak(QCB+P)
[State -1, flame_weak]
type = ChangeState
value = 1906
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(12) = 0
trigger1 = (ctrl = 1) && (command = "qcb_x")
; Flame -medium(QCB+P)
[State -1, flame_medium]
type = ChangeState
value = 1905
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(12) = 0
trigger1 = (ctrl = 1) && (command = "qcb_y")
; Flame -hard (QCB+P)
[State -1, flame_hard]
type = ChangeState
value = 1900
triggerall = Var(2) = 0
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(12) = 0
trigger1 = (ctrl = 1) && (command = "qcb_z")

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
triggerall = (command = "z") && (command = "holdfwd")
triggerall = statetype = S
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) ;&& (P2statetype != A)


;---------------------------------------------------------------------------
; Wall jump
[State -1, Wall jump]
type = ChangeState
value = 40
triggerall = Var(2) = 0
triggerall = (StateType = A) && (Ctrl) && (Pos Y < -30)
trigger1 = ((command = "holdup") && (command = "holdfwd") && (Vel X <= 0) && (backedgebodydist <= 10) && (backedgebodydist > -10)) 
trigger2 = ((command = "holdup") && (command = "holdback") && (Vel X >= 0) && (frontedgebodydist <= 10) && (frontedgebodydist > -10)) 
persistent = 0

[State -1, StateTypeSet]
type = StateTypeSet
trigger1 = (StateNo = 40) && (Pos Y < 0)
statetype = A
 ;---------------------------------------------------------------------------

[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "superjump"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 1045
trigger2 = movehit

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = Var(2) = 0
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)
;------------------------------------------------------------------------
; Stand Hard punch(close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 270
triggerall = Var(2) = 0
triggerall = (command = "z") && (statetype = S) && (P2BodyDist X < 32)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 260) || (stateno = 230) || (stateno = 260) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = Var(2) = 0
triggerall = (command = "c") && (statetype = S) && (P2BodyDist X < 32) && (command = "holdfwd")
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (far-range)
[State -1, Stand Hard Kick2]
type = ChangeState
value = 265
triggerall = Var(2) = 0
triggerall = (command = "c") && (statetype = S)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)|| (stateno = 265)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = Var(2) = 0
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 455)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = Var(2) = 0
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)

; Crouch Hard Punch (close-range)
[State -1, Crouch Hard Punch]
type = ChangeState
value = 455
triggerall = Var(2) = 0
triggerall = (command = "x") && (statetype = C) && (P2BodyDist X < 32) && (command = "holddown")
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 455)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
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
triggerall = Var(2) = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630)) && (movecontact = 1)
;------------------------------------------------------------------------------------------------------------------
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = Var(2) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)|| (stateno = 8080)) && (movecontact = 1)
 ;----------------------------------------------------------------------------------------------------------------------
; Air Head Stomp
[State -1, Air Head Stomp]
type = ChangeState
value = 680
triggerall = Var(2) = 0
triggerall = (command = "c") && (command = "holddown") && (Vel X > 0)
triggerall = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 655
triggerall = Var(2) = 0
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)|| (stateno = 8080)) && (movecontact = 1)

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
;CPU Input Attacks
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
;CPU Input Attacks

; Air Head butt(close-range)
[State -1, Air Head Butt]
type = ChangeState
value = 660
triggerall = (command = "hb") && (statetype = A) && (P2BodyDist X < 32) && (command = "holdfwd")&& p2statetype != L
trigger1 = ctrl = 1
;----------------------------------------------------------------------
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
triggerall = Var(2) = 1 && !WinKo
trigger1 = (statetype = S) &&  (ctrl = 1) && enemynear, p2dist X >= 100
trigger1 = enemynear, movetype != A

; hitman
[State -1, demonbeam_weak]
type = ChangeState
value = 8999    ;2502
triggerall= var(2) = 1 && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && enemynear, p2dist X < 100 && enemynear, statetype = L && random <= 500

;---------------------------------------------------------------------------
; (Amalgam) (QCF+HP+HK)
;Hell Fire--------------------------------------------------------------------
[State -1, hellfire]
type = ChangeState
value = 9200
triggerall = !WinKo && Var(2) = 1 && ctrl
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1 && (enemynear, backedgebodydist <= 120 && enemynear, Vel X <= 0) && enemynear, pos y >= 50 && enemynear, vel y > 0
trigger2 = enemynear, movetype = I && random <= 500
trigger3 = enemynear, movetype = A && enemynear, p2dist X >= 200 && enemynear, numproj = 0 && enemynear, vel X = 0


;Hell Fire--------------------------------------------------------------------
[State -1, hellfire]
type = ChangeState
value = 3500
triggerall = !WinKo && Var(2) = 1 && ctrl
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1 && (enemynear, backedgebodydist <= 120 && enemynear, Vel X <= 0) && enemynear, pos y >= 50 && enemynear, vel y > 0
trigger2 = enemynear, movetype = I && random <= 500
trigger3 = enemynear, movetype = A && enemynear, p2dist X >= 200 && enemynear, numproj = 0 && enemynear, vel X = 0
;---------------------------------------------------------------------------
; demon glare
[State -1, demonglare]
type = ChangeState
value = 3000
triggerall = !WinKo && Var(2) = 1 && ctrl
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1 && (enemynear, backedgebodydist <= 120 && enemynear, Vel X <= 0) && enemynear, pos y >= 50 && enemynear, vel y > 0
trigger2 = enemynear, movetype = I && random <= 500
trigger3 = enemynear, movetype = A && enemynear, p2dist X >= 200 && enemynear, numproj = 0 && enemynear, vel X = 0
;----------------------------------------------------------------------
; uppercut (D,D+K)
[State -1, uppercut - y]
type = ChangeState
value = 1102    ;2502
triggerall= var(2) = 1 && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && enemynear, p2dist X < 100 && enemynear, statetype = L && random <= 500
;---------------------------------------------------------------------------
[State -1, uppercut - x]
type = ChangeState
value = 1106
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
;---------------------------------------------------------------------------
[State -1, uppercut - z]
type = ChangeState
value = 1107
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
;----------------------------------------------------------------------
; beam-Hard (D,D+K)
[State -1, demonbeam_weak]
type = ChangeState
value = 1680    ;2502
triggerall= var(2) = 1 && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && enemynear, p2dist X < 100 && enemynear, statetype = L && random <= 500
;---------------------------------------------------------------------------
[State -1, teleport]
type = ChangeState
value = 1200
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
; demon beam (QCB+K)
[State -1, demonbeam_medium]
type = ChangeState
value = 1690
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
;---------------------------------------------------------------------------
; demon beam (QCF+P)
[State -1, demonbeam_strong]
type = ChangeState
value = 1700
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055]) && var(2) = 1 && ctrl && p2statetype != L
triggerall = !WinKo
trigger1 = enemynear, p2dist x >= 200 && enemynear, movetype = A
trigger2 = Random <= 300 && p2dist y > -15
;---------------------------------------------------------------------------
;----------------------------------------------------------------------
; flame (D,D+K)
[State -1, flame_weak]
type = ChangeState
value = 1900    ;2502
triggerall= var(2) = 1 && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && enemynear, p2dist X < 100 && enemynear, statetype = L && random <= 500
;---------------------------------------------------------------------------
; flame (QCB+K)
[State -1, flame_medium]
type = ChangeState
value = 1905
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
;---------------------------------------------------------------------------
; flame(QCF+P)
[State -1, flame_hard]
type = ChangeState
value = 1906
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055]) && var(2) = 1 && ctrl && p2statetype != L
triggerall = !WinKo
trigger1 = enemynear, p2dist x >= 200 && enemynear, movetype = A
trigger2 = Random <= 300 && p2dist y > -15
;---------------------------------------------------------------------------
;----------------------------------------------------------------------
; magic (D,D+K)
[State -1, magic_weak]
type = ChangeState
value = 2010    ;2502
triggerall= var(2) = 1 && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && enemynear, p2dist X < 100 && enemynear, statetype = L && random <= 500
;---------------------------------------------------------------------------
; magic  (QCB+K)
[State -1, magic_medium]
type = ChangeState
value = 2020
triggerall = Var(2) = 1 && ctrl && !WinKo
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(15) = 0
trigger1 = enemynear, p2dist x <= 100 && (enemynear, movetype = A || (enemynear, Vel x > 0 && enemynear, vel y > -3))
trigger1 = random <= 700
;---------------------------------------------------------------------------
; magic (QCF+P)
[State -1, magic_strong]
type = ChangeState
value = 2030
triggerall = (StateType != A) && (MoveType != H) && (NumProjID(1) = 0) && (P2StateNo != [1050,1055]) && var(2) = 1 && ctrl && p2statetype != L
triggerall = !WinKo
trigger1 = enemynear, p2dist x >= 200 && enemynear, movetype = A
trigger2 = Random <= 300 && p2dist y > -15
;---------------------------------
; fire (air) (QCB+P)
[State -1, demonfire]
type = ChangeState
value = 1100
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcb_x")
trigger2 = (ctrl = 1) && (command = "qcb_y")
trigger3 = (ctrl = 1) && (command = "qcb_z")

; airbeam (air) (QCF+P)
[State -1, airbeam x]
type = ChangeState
value = 8080
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_x")


; airbeam (air) (QCF+P)
[State -1, airbeam y]
type = ChangeState
value = 8070
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_y")


; airbeam (air) (QCF+P)
[State -1, airbeam z]
type = ChangeState
value = 8060
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "qcf_z")




; air glare (air) (QCF+P)
[State -1, airglare]
type = ChangeState
value = 738
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = (ctrl = 1) && (command = "air_2p")


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
triggerall = Var(2) = 1 && !WinKo
triggerall = statetype = S
triggerall = (ctrl = 1) && (P2BodyDist X <= 25) && (P2statetype != A)
trigger1 = enemynear, movetype != A && random <= 200
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
[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "superjump"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 1045
trigger2 = movehit
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = Var(2) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && Random <= 200) && ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = Var(2) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger2 = (StateNo = 210) && (MoveContact = 1)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 230
triggerall = Var(2) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Var(2) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1= ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 250
triggerall = Var(2) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)|| (stateno = 265)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch(close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 270
triggerall = (command = "c") && (statetype = S) && (P2BodyDist X < 32) && (command = "holdfwd")&& p2statetype != L
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 230) || (stateno = 270) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = (command = "c") && (statetype = S) && (P2BodyDist X < 32) && (command = "holdfwd")&& p2statetype != L
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick (far-range)
[State -1, Stand Hard Kick2]
type = ChangeState
value = 265
triggerall = Var(2) = 1 && enemynear, statetype != L && !WinKo
; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)|| (stateno = 265)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = Var(2) = 1 && statetype != A && !WinKo
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 600&& random >400)) && ctrl

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = Var(2) = 1 && statetype != A && !WinKo
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 900&& random >600)) && ctrl


;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = Var(2) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 410) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(2) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 420) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = Var(2) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 455)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch hard Punch(close-range)
[State -1, Stand Hard Kick]
type = ChangeState
value = 455
triggerall = (command = "c") && (statetype = S) && (P2BodyDist X < 32) && (command = "holdfwd")&& p2statetype != L
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 440) || (stateno = 450)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = Var(2) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440) || (stateno = 450)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = Var(2) = 1 && !winko && stateno != 100
trigger1 = statetype = A
trigger1 = ctrl && p2dist X < 80 && (p2dist Y > -3 && p2dist Y < 17)
trigger1 = enemynear, movetype != A

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = Var(2) = 1 && !winko&& stateno != 100
triggerall = statetype = A
; (chain combos)
trigger1 = (stateno = 610) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 630
triggerall = Var(2) = 1 && !winko&& stateno != 100
triggerall = statetype = A

; (chain combos)
trigger1 = (stateno = 620) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Var(2) = 1 && !winko&& stateno != 100
triggerall = statetype = A

; (chain combos)
trigger1 = ((stateno = 610) || (stateno = 620) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = Var(2) = 1 && !winko&& stateno != 100
triggerall = statetype = A

; (chain combos)
trigger1 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)|| (stateno = 8080)) && (movecontact = 1)

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
value = 655
triggerall = Var(2) = 1 && !winko&& stateno != 100
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)|| (stateno = 8080)) && (movecontact = 1)

;----------------------------------------------------------------------
[State -1, StandGuard]
type = ChangeState
triggerall = (Var(2) = 1) && (StateType = S) && (Pos Y >= 0) && (P2BodyDist Y <= 0)
triggerall = (P2BodyDist Y >= -120) && (P2StateType != C) && (P2MoveType = A)
trigger1 = (P2Dist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
trigger3 = (enemynear, hitdefattr = SCA,NP,SP,HP || enemynear,ishelper) && enemynear, p2dist X < 100
value = 130

[State -1, CrouchGuard]
type = ChangeState
triggerall = (Var(2) = 1) && (StateType != A) && (Pos Y >= 0) && (P2BodyDist Y <= 0)
triggerall = (P2BodyDist Y >= -50) && (P2StateType = C) && (P2MoveType = A)
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
value = 131

[State -1, AirGuard]
type = ChangeState
triggerall = Var(2) = 1 && StateType = A && Pos Y < 0 && P2BodyDist Y >= -120
trigger1 = P2BodyDist X <= 120 && (Ctrl || (StateNo = [140, 155])) && enemynear,movetype = A
value = 132

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;

;----------------------------------------------------------------------
[State -1, StandGuard]
type = ChangeState
triggerall = (Var(2) = 1) && (StateType = S) && (Pos Y >= 0) && (P2BodyDist Y <= 0)
triggerall = (P2BodyDist Y >= -120) && (P2StateType != C) && (P2MoveType = A)
trigger1 = (P2Dist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
trigger3 = (enemynear, hitdefattr = SCA,NP,SP,HP || enemynear,ishelper) && enemynear, p2dist X < 100
value = 130

[State -1, CrouchGuard]
type = ChangeState
triggerall = (Var(2) = 1) && (StateType != A) && (Pos Y >= 0) && (P2BodyDist Y <= 0)
triggerall = (P2BodyDist Y >= -50) && (P2StateType = C) && (P2MoveType = A)
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
value = 131

[State -1, AirGuard]
type = ChangeState
triggerall = Var(2) = 1 && StateType = A && Pos Y < 0 && P2BodyDist Y >= -120
trigger1 = P2BodyDist X <= 120 && (Ctrl || (StateNo = [140, 155])) && enemynear,movetype = A
value = 132

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


