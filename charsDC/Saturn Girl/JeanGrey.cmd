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

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, x+z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[command]
name = "QCF_AA"
command = ~D,DF,F,a
time = 15

[command]
name = "QCF_BB"
command = ~D,DF,F,b
time = 15

[command]
name = "QCF_CC"
command = ~D,DF,F,c
time = 15

[command]
name = "TK_Shld"
command = /$s,B
time = 15

[command]
name = "TK1"
command = /$B, x
time = 15

[command]
name = "TK2"
command = /$B, y
time = 15

[command]
name = "TK3"
command = /$B, z
time = 15

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "Psi-Blade_L"
command = ~D,DB,B,a

[Command]
name = "Psi-Blade_M"
command = ~D,DB,B,b

[Command]
name = "Psi-Blade_H"
command = ~D,DB,B,c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Grab Attack"
command = /$s,F
time = 1

[Command]
name = "Xmen"
command = /$s,D
time = 1

[Command]
name = "Fly"
command = /$s,U
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
name = "holdstart";Required (do not remove)
command = /$s
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

;---------------------------------------------------------------------------
;
;
;Added by Vagopublico
;
;Super Jump system from "Cyclops" by "Reza"
;
;Advance Guard system from "Cyclops" by "Reza"
;
; Super Jump
[Command]
name = "Super Jump"
command = ~$D, $U
time = 20

;Advance Guard
[Command]
name = "Advance Guard Standing/Jumping"
command = c+z
time = 10

[Command]
name = "Advance Guard Crouching"
command = c+z
time = 10

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Telekinetic Rock Shower (uses one super bar)
[State -1, Telekinetic Rock ShoweC]
type = ChangeState
value = 3000
triggerall = command = "QCF_PP"
triggerall = statetype = S
triggerall = Numprojid(3002) = 0
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Phoenix Super (uses two super bars)
[State -1, Phoenix Super]
type = ChangeState
value = 3100
triggerall = command = "QCF_KK"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Memories of the Past (uses one super bar)
[State -1, Memories of the Past]
type = ChangeState
value = 3200
triggerall = command = "QCB_PP"
triggerall = statetype = S
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Added by Vagopublico
;
;Super Jump system from "Cyclops" by "Reza"
;
;Mind Blast (Air)
;
;Advance Guard system from "Cyclops" by "Reza"
;
;
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1


;Mind Blast X (Air) 
[State -1, Mind Blast]
type = ChangeState
value = 1011
triggerall = numhelper(1012) = 0
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])

;Mind Blast Y (Air) 
[State -1, Mind Blast]
type = ChangeState
value = 1041
triggerall = numhelper(1042) = 0
triggerall = command = "QCF_y"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])

;Mind Blast Z (Air) 
[State -1, Mind Blast]
type = ChangeState
value = 1081
triggerall = numhelper(1082) = 0
triggerall = command = "QCF_z"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])

;---------------------------------------------------------------------------;
;                         CUSTOM MVC2 SYSTEM                                ;
;---------------------------------------------------------------------------;
; Advance Guard
[State -1, Advance Guard Standing]
type = ChangeState
value = 909
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = S
trigger1 = stateno = [150,153]

[State -1, Advance Guard Crouching]
type = ChangeState
value = 910
triggerall = command = "Advance Guard Crouching"
triggerall = statetype = C
trigger1 = stateno = [150,153]

[State -1, Advance Guard Jumping]
type = ChangeState
value = 911
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;Helper1
;[State -1, 9995]
;type = ChangeState
;value = 9995
;triggerall = command = "Xmen"
;triggerall = power >= 500
;trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Helper1
[State -1, Helper1]
type = ChangeState
value = 9995
triggerall = StateType != A
triggerall = power >= 500
triggerall = NumHelper = 0
;triggerall = Var(21) != 0
triggerall = Ctrl = 1
;triggerall = NumHelper(10000+(10*(Var(20)-1))) = 0
trigger1 = command = "Xmen"

;---------------------------------------------------------------------------

;Mind Blast X
[State -1, Mind Blast]
type = ChangeState
value = 1000
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Mind Blast Y
[State -1, Mind Blast]
type = ChangeState
value = 1040
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_y"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Mind Blast Z
[State -1, Mind Blast]
type = ChangeState
value = 1080
triggerall = NumProjID(1011) = 0
triggerall = command = "QCF_z"
triggerall = EnemyNear, stateno != 3040
triggerall = numHelper(3050) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Telekinetic Attack X
[State -1, Telekinetic Attack]
type = ChangeState
value = 1400
triggerall = command = "QCB_x" 
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Telekinetic Attack Y
[State -1, Telekinetic Attack]
type = ChangeState
value = 1420
triggerall = command = "QCB_y"
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Telekinetic Attack Z
[State -1, Telekinetic Attack]
type = ChangeState
value = 1430
triggerall = command = "QCB_z"
triggerall = numprojid(1) = 0
triggerall = numprojid(2) = 0
triggerall = numprojid(3) = 0
triggerall = numprojid(4) = 0
triggerall = numprojid(5) = 0
triggerall = numprojid(6) = 0
triggerall = numprojid(7) = 0
triggerall = numprojid(8) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Telekinetic Grab Attack
[State -1, Telekinetic Grab Attack]
type = ChangeState
value = 1440
triggerall = command = "Grab Attack"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Telekinetic Shield
[State -1, Telekinetic Shield]
type = ChangeState
value = 1100
triggerall = command = "TK_Shld"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = statetype = A && stateno = 1702
trigger3 = ctrl

;---------------------------------------------------------------------------
;TelekineTic Force 1 - TK1
[State -1, Telekinesis 1]
type = ChangeState
value = 1300
triggerall = var(7) = 0
triggerall = command = "TK1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1
trigger3 = statetype = A && stateno = 1702
trigger3 = ctrl

;---------------------------------------------------------------------------
;Telekinetic Force 2 - TK2
[State -1, Telekinesis 2]
type = ChangeState
value = 1320
triggerall = var(7) = 0
triggerall = command = "TK2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1
trigger3 = statetype = A
trigger3 = stateno = 1702
trigger3 = ctrl

;---------------------------------------------------------------------------
;Telekinetic Force 3 - TK3
[State -1, Telekinesis 3]
type = ChangeState
value = 1340
triggerall = var(7) = 0
triggerall = command = "TK3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1
trigger3 = statetype = A
trigger3 = stateno = 1702
trigger3 = ctrl

;---------------------------------------------------------------------------
;Phoenix Slide (short)
[State -1, Phoenix Slide]
type = ChangeState
value = 2000
triggerall = var(7) = 0
triggerall = command = "QCF_AA"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Phoenix Slide (mid)
[State -1, Phoenix Slide]
type = ChangeState
value = 2010
triggerall = var(7) = 0
triggerall = command = "QCF_BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Phoenix Slide (long)
[State -1, Phoenix Slide]
type = ChangeState
value = 2020
triggerall = command = "QCF_CC"
triggerall = var(7) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Phoenix Slide (short) - Air
[State -1, Phoenix Slide]
type = ChangeState
value = 2040
triggerall = var(7) = 0
triggerall = command = "QCF_AA"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Phoenix Slide (mid) - Air
[State -1, Phoenix Slide]
type = ChangeState
value = 2060
triggerall = var(7) = 0
triggerall = command = "QCF_BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Phoenix Slide (long) - Air
[State -1, Phoenix Slide]
type = ChangeState
value = 2080
triggerall = var(7) = 0
triggerall = command = "QCF_CC"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact = 1

;---------------------------------------------
;Psi-Blade_L
[State -1, Psi-Blade_L]
type = ChangeState
value = 1210
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_L"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blade_M
[State -1, Psi-Blade_M]
type = ChangeState
value = 1200
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_M"
trigger1 = ctrl

;---------------------------------------------
;Psi-Blade_H
[State -1, Psi-Blade_H]
type = ChangeState
value = 1220
triggerall = StateType = S || Statetype = A
trigger1 = Command = "Psi-Blade_H"
trigger1 = ctrl

;---------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,101]

;---------------------------------------------------------------------------
;Air Run Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 102

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [105,106]

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; s. Flying Start
[State -1, Flight]
type = ChangeState
value = 1700
;triggerall = !var(10)
triggerall = StateType != A
triggerall = command = "Fly"
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [200,499]

;---------------------------------------------------------------------------
; j. Flying Start
[State -1, Air Flight]
type = ChangeState
value = 1701
;triggerall = !var(10)
triggerall = StateType = A
triggerall = command = "Fly"
triggerall = Pos Y >= -270
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Flying End
[State -1, End Flight]
type = ChangeState
value = 1704
;triggerall = !var(10)
triggerall = StateType = A
triggerall = command = "Fly"
triggerall = var(49) > 1
trigger1 = StateNo = 1702
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (movecontact >= 1) ;-standing light punch
trigger3 = (StateNo = 230) && (movecontact >= 1) ;-standing light kick
trigger4 = (StateNo = 240) && (movecontact >= 1) ;-standing medium kick

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 420) && (movecontact >= 1) ;-crouch strong punch
trigger3 = (StateNo = 430) && (movecontact >= 1) ;-crouck light kick
trigger4 = (StateNo = 440) && (movecontact >= 1) ;-crouch medium kick

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)
trigger3 = (stateno = 230) && (MoveContact >= 1)

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 251
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact >= 1)
trigger3 = (stateno = 440) && (MoveContact >= 1)
trigger4 = (stateno = 240) && (MoveContact >= 1)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = null  ;ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1);-crouch light punch
trigger3 = (StateNo = 430) && (movecontact >= 1);-crouch light kick
trigger4 = (StateNo = 440) && (movecontact >= 1);-crouch medium kick

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 410) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 451;450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (movecontact >= 1)
trigger3 = (StateNo = 430) && (movecontact >= 1)
trigger4 = (StateNo = 440) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 640) && (movecontact >= 1)
trigger4 = (StateNo = 630) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = numprojid(221) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1);-light punch
trigger3 = (StateNo = 630) && (movecontact >= 1);-light kick
trigger4 = (StateNo = 640) && (movecontact >= 1);-medium kick
trigger5 = (StateNo = 610) && (movecontact >= 1);-medum punch

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1) ;-light punch
trigger3 = (StateNo = 630) && (movecontact >= 1);light kick
trigger4 = (StateNo = 610) && (movecontact >= 1);medium kick

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (movecontact >= 1)
trigger3 = (StateNo = 630) && (movecontact >= 1)
trigger4 = (StateNo = 640) && (movecontact >= 1)
trigger2 = (StateNo = 610) && (movecontact >= 1)

