
;-| Default Values |-------------------------------------------------------
[Command]
name = "FATALITY"
command = ~D,DF,F,x+y
time = 100

[command]
name = "SPECIAL 8"
command = ~D,F,F,x
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 15

[command]
name = "SPECIAL 2"
command = ~D,DB,B,a
time = 15

[command]
name = "SPECIAL 3"
command = ~D,DF,F,b
time = 15

[command]
name = "SPECIAL 4"
command = ~D,DB,B,b
time = 15

[command]
name = "SPECIAL 5"
command = ~D,DF,F,c
time = 15

[command]
name = "SPECIAL 6"
command = ~D,DB,B,c
time = 15

[command]
name = "SPECIAL 8"
command = ~D,DF,F,x
time = 15


[command]
name = "SPECIAL 7"
command = ~D,DF,F,D,DF,F,a+b
time = 30


;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = z
time = 1

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
name = "Dx"
command = D,x
time = 20

[Command]
name = "Da"
command = D,a
time = 20

[Command]
name = "Db"
command = D,b
time = 20

[Command]
name = "Dc"
command = D,c
time = 20

[Command]
name = "Dy"
command = D,y
time = 20

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

[Command]
name = "holdupfwd"
command = /$UF
time = 1
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
[statedef -1]
[State -1]
type = Changestate
trigger1 = ctrl
trigger1 = P2Life <= 1
trigger1 = NumHelper(7000) = 0
trigger1 = P2StateNo != 867031
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 100000

[State -1, Fatality]
type = ChangeState
trigger1 = ctrl; The character must have control.
trigger1 = P2Life = 1; opponent of life should be equal to 1.
trigger1 = NumHelper (7000) = 1; must be at least 1 invisible helper on the screen.
trigger1 = P2StateNo = 867031; Opponent should be in this state.
trigger1 = RoundNo != 1; Round can not be the first.
triggerall = P2BodyDist X >= 150
trigger1 = var (58) ; you must win at least one round before.
trigger1 = command = "FATALITY" ; Place the command to the fatality to run.
trigger1 = statetype = S; Your character should be standing.
trigger1 = (p2statetype = S) || (P2statetype = C); P2 can not be flying.
value = 9100


[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
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

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 600
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 600
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150
;trigger2 = inguarddist
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 600
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 600
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152
;trigger2 = inguarddist
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 600
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
;trigger2 = inguarddist
value = 132

;---------------------------------------------------------------------------
;&& (StateNo = 420) && (MoveHit = 1)


;====================================================================
; Main Standing Special

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl  && prevstateno != 100 && random < 200
triggerall = (statetype = S) && enemynear, p2dist X >= 50
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 50
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850]
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 201
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 202
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 203
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 204
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 210
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 211
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 212
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 213
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 214
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 215
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 500
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger2 = ctrl = 1
trigger2 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 300
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 310
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 320
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 330
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 340
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 350
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact


;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 410
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 420
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 430
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 500
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact >= 1)
;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

[State -1, SPECIAL 7]
type = ChangeState
value = 30017
triggerall =  !var(59) && command = "SPECIAL 7"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 3000


[State -1, SPECIAL 1]
type = ChangeState
value = 6017
triggerall =  !var(59) && command = "SPECIAL 1"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

[State -1, SPECIAL 2]
type = ChangeState
value = 7017
triggerall =  !var(59) && command = "SPECIAL 2"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

[State -1, SPECIAL 3]
type = ChangeState
value = 8017
triggerall =  !var(59) && command = "SPECIAL 3"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

[State -1, SPECIAL 4]
type = ChangeState
value = 9017
triggerall =  !var(59) && command = "SPECIAL 4"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

[State -1, SPECIAL 5]
type = ChangeState
value = 10017
triggerall =  !var(59) && command = "SPECIAL 5"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

[State -1, SPECIAL 6]
type = ChangeState
value = 20017
triggerall =  !var(59) && command = "SPECIAL 6"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = power >= 2000

;FF
[State -1, FF]
type = ChangeState
value = 100
triggerall =  !var(59) && command = "FF"
trigger1 = (statetype!=A) && ctrl

;BB
[State -1, BB]
type = ChangeState
value = 105
triggerall =  !var(59) && command = "BB"
trigger1 = (statetype!=A) && ctrl


;start
[State -1, start]
type = ChangeState
value = 195
triggerall =  !var(59) && command = "start"
trigger1 = (statetype = s) && ctrl


;a
[State -1, a]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = (statetype = s) && ctrl


;b
[State -1, b]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = (statetype = s) && ctrl

;a
[State -1, a]
type = ChangeState
value = 300
triggerall = command = "a"
trigger1 = (statetype = C) && ctrl


;b
[State -1, b]
type = ChangeState
value = 310
triggerall = command = "b"
trigger1 = (statetype = C) && ctrl

;c
[State -1, c]
type = ChangeState
value = 320
triggerall = command = "c"
trigger1 = (statetype = C) && ctrl

;x
[State -1, x]
type = ChangeState
value = 330
triggerall = command = "x"
trigger1 = (statetype = C) && ctrl

;y
[State -1, y]
type = ChangeState
value = 340
triggerall = command = "y"
trigger1 = (statetype = C) && ctrl

;z
[State -1, z]
type = ChangeState
value = 350
triggerall = command = "z"
trigger1 = (statetype = C) && ctrl

;a
[State -1, a]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = (statetype = A) && ctrl

;b
[State -1, b]
type = ChangeState
value = 410
triggerall = command = "b"
trigger1 = (statetype = A) && ctrl

;x
[State -1, x]
type = ChangeState
value = 420
triggerall = command = "x"
trigger1 = (statetype = A) && ctrl

;y
[State -1, y]
type = ChangeState
value = 430
triggerall = command = "y"
trigger1 = (statetype = A) && ctrl


;---------------------------------------------------------------------------
;c
[State -1, c]
type = ChangeState
value = 500
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
; AI
[State -1, SPECIAL 1]
type = ChangeState
value = 6017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 2]
type = ChangeState
value = 7017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = A && p2statetype != L
trigger1 = p2bodydist x <= 50
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 3]
type = ChangeState
value = 8017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x = (50,200)
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 4]
type = ChangeState
value = 9017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 5]
type = ChangeState
value = 10017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 60
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 6]
type = ChangeState
value = 20017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 7]
type = ChangeState
value = 30017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 201
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 202
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 201) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 203
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 202) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 204
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 203) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 211
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 210) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 212
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 211) && time > 5

;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 213
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 212) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 214
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 213) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 215
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 214) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, c]
type = ChangeState
value = 320
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, x]
type = ChangeState
value = 330
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, y]
type = ChangeState
value = 340
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, z]
type = ChangeState
value = 350
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, Golpeando En El Aire]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 50
trigger1 = ctrl && random <10


;---------------------------------------------------------------------------
[State -1, Golpeando En El Aire 2]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 50
trigger1 = ctrl && random <10

;---------------------------------------------------------------------------
[State -1, Golpeando En El Aire 3]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 50
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, Golpeando En El Aire 4]
type = ChangeState
value = 430
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 50
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, c]
type = ChangeState
value = 500
triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
