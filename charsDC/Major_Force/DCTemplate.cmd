; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

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

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

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
time = 10

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

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

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


;-| Hypers |-----------------------------------------------------------
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
name = "powerdive"
command = ~D, DB, B, a+b

[Command]
name = "powerdive"
command = ~D, DB, B, a+c

[Command]
name = "powerdive"
command = ~D, DB, B, b+c

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z





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
name = "Uperforce a"
command = ~D, DB, B, a

[Command]
name = "Uperforce b"
command = ~D, DB, B, b

[Command]
name = "Uperforce c"
command = ~D, DB, B, c

[Command]
name = "airforce"
command = ~D, DF, F, x

[Command]
name = "airforce"
command = ~D, DF, F, y

[Command]
name = "airforce"
command = ~D, DF, F, z

[Command]
name = "ForceBlast x"
command = ~D, DF, F, x

[Command]
name = "ForceBlast y"
command = ~D, DF, F, y

[Command]
name = "ForceBlast z"
command = ~D, DF, F, z

[Command]
name = "Powerforce x"
command = ~F, DF, D, x

[Command]
name = "Powerforce y"
command = ~F, DF, D, y

[Command]
name = "Powerforce z"
command = ~F, DF, D, z



[Command]
name = "DarkMatter"
command = D, c

[Command]
name = "reflection"
command = ~D, DB, B, x

[Command]
name = "reflection"
command = ~D, DB, B, y

[Command]
name = "reflection"
command = ~D, DB, B, z

[Command]
name = "darkmatterp1"
command = ~D, DF, F, a

[Command]
name = "darkmatterp2"
command = ~D, DF, F, b

[Command]
name = "darkmatterp3"
command = ~D, DF, F, c



[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
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
;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 150
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1

;Super Jump follow
[State -1, super_jump]
type = ChangeState
value = 9004
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = numenemy > 0
trigger1 = (enemynear, Vel X >= 4) && ctrl
;---------------------------------------------------------------------------
; AI Standing basics
;---------------------------------------------------------------------------
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
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1) && (Random <= 500)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
trigger2 = (stateno = 9004) && (vel y > -6) && (random < 500)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact && (random < 600)
trigger2 = stateno = 630 && movecontact && (random < 300)


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact && (random < 100)
trigger2 = stateno = 610 && movecontact && (random < 800)
trigger3 = stateno = 630 && movecontact && (random < 100)
trigger4 = stateno = 640 && movecontact && (random < 500)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 9004) && (vel y > -6)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact && (random < 400)
trigger3 = (stateno = 610) && movecontact && (random < 800)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact


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

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

[State -1, throw ai]
type = ChangeState
value = 900
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;====================================================================
; Main Hyper - Long Range
;====================================================================

; Major Force bolt blast
[State -1, hyperbeam]
type = ChangeState
triggerall = numhelper(3001)=0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,400])
value = 3000


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L) && numhelper(3014) < 1
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [0,700])
value = 3100



[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,500])
value = 3200




[State -3, swoop down]
type = ChangeState
value = 3210
triggerall = Alive&&var(59) && roundstate = 2
triggerall = stateno = 3201
triggerall   = ctrl = 0
Trigger1 =Random<= 400

[State -3, multi hit]
type = ChangeState
value = 3160
triggerall = Alive&&var(59) && roundstate = 2
triggerall = stateno = 3201
triggerall   = ctrl = 0
Trigger1 =Random<= 500



[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,700])
value = 3300

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L) && numhelper(3014) < 1
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && (random = [0,800])
value = 4000




;====================================================================
; Main Standing Special
;====================================================================
[State -1, megaBeam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numhelper(1050) = 0
triggerall = (random = [0,150])  && (p2statetype != A)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = (Ctrl) && (Statetype != A)
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger3 = stateno = 1402 && movecontact
value = 1000

;---------------------------------------------------------------------------
[State -1, megaBeam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numhelper(1051) = 0
triggerall = (random = [0,150]) && (p2statetype != A)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = (Ctrl) && (Statetype != A)
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger3 = stateno = 1402 && movecontact
value = 1001

[State -1, megaBeam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numhelper(1052) = 0
triggerall = (random = [0,150]) && (p2statetype != A)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = (Ctrl) && (Statetype != A)
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger3 = stateno = 1402 && movecontact
value = 1002


[State -1:  Dark Barrier]
type = changestate
triggerall = var(59)&&roundstate=2&&statetype!=A
triggerall = (p2bodydist x=[0,140])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1 = ctrl&&random<100
value = 1200

[State -1, Cyber Lariat]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,75])
trigger1 = p2bodydist X >-50 && p2bodydist y <50
trigger1 = p2bodydist Y >-70 && p2bodydist y <70
trigger1 = p2bodydist Z >-90 && p2bodydist y <90
value = 1300



[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 15) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-15 && p2bodydist y <15
value = 1402

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 30) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-30 && p2bodydist y <30
value = 1401

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,90])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-90 && p2bodydist y <90
value = 1400


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-50 && p2bodydist y <50
value = 1500

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1501

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-90 && p2bodydist y <90
value = 1502


type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x < 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = p2bodydist y > 30
value = 1800

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numprojid(7738) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,10])
triggerall =  (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = P2bodydist Y > 30
value = 1700

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

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
triggerall = (statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 230)) && (movecontact = 1)
trigger2 = ((stateno = 400) || (stateno = 430)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger3 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch (combo)
[State -1, Stand Hard Punch (combo)]
type = ChangeState
value = 221
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S
; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype != A) && var(59) && p2statetype != L && p2statetype !=A && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 400)) && (movecontact = 1)
trigger3 = ((stateno = 410) || (stateno = 430)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype != A && p2statetype !=A

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
trigger3 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A

; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2
triggerall = p2statetype != L  && p2statetype !=A

; (chain combos)
trigger1 = (stateno = [200,440]) && movecontact && stateno != 420 && stateno !=220 && stateno !=250

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != L && p2statetype !=A
; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
trigger6 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2
triggerall = p2statetype != L && p2statetype !=A
; (chain combos)
trigger1 = (stateno = 200) && movecontact
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 430) && movecontact
trigger8 = (stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl && p2bodydist x < 100
triggerall = p2statetype != L
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
trigger2 = stateno = 700

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && p2bodydist x < 100
triggerall = p2statetype != L
; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)
trigger2 = stateno = 700

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = p2statetype != L
; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl
triggerall = p2statetype != L
; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;======================================================================
;User Input Attacks

;----------------------------------------------------------------------
; Amalgam Hyper
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power = 3000 && !Var(59)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Amalgam"
trigger2 = (stateno = [200,450]) && (MoveContact)
trigger3 = (stateno = [1000,1002]) && (enemynear, movetype = H)
trigger4 = stateno = 1402 && movecontact

;---------------------------------------------------------------------------
; Hyper1 (Super Forceblast)
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"
trigger2 = (stateno = [200,450]) && (MoveContact)
trigger3 = (stateno = [1000,1002]) && (enemynear, movetype = H)
trigger4 = stateno = 1402 && movecontact

; Hyper1 (Super Forceblast)
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"
trigger2 = (stateno = [200,450]) && (MoveContact)
trigger3 = (stateno = [1000,1002]) && (enemynear, movetype = H)
trigger4 = stateno = 1402 && movecontact


;------------------------------------------------------------------------------

[State -1, powerdiveheavy]
type = ChangeState
value = 3210
TriggerAll = !var(59)
triggerall = command = "x"
triggerall = statetype != L
trigger1 = stateno = 3201

[State -1, powerdiveheavy]
type = ChangeState
value = 3210
TriggerAll = !var(59)
triggerall = command = "y"
triggerall = statetype != L
trigger1 = stateno = 3201

[State -1, powerdiveheavy]
type = ChangeState
value = 3210
TriggerAll = !var(59)
triggerall = command = "z"
triggerall = statetype != L
trigger1 = stateno = 3201
;------------------------------------------------------------------------------
[State -1, powerdiveregular]
type = ChangeState
value = 3160
TriggerAll = !var(59)
triggerall = command = "a"
triggerall = statetype != L
trigger1 = stateno = 3201

[State -1, powerdiveregular]
type = ChangeState
value = 3160
TriggerAll = !var(59)
triggerall = command = "b"
triggerall = statetype != L
trigger1 = stateno = 3201

[State -1, powerdiveregular]
type = ChangeState
value = 3160
TriggerAll = !var(59)
triggerall = command = "c"
triggerall = statetype != L
trigger1 = stateno = 3201
;------------------------------------------------------------------------------

[State -1, powerdivestart]
type = ChangeState
value = 3200
TriggerAll = !var(59)
triggerall = power >= 1000
triggerall = command = "powerdive"
triggerall = statetype != A
triggerall = statetype != L
triggerall = stateno != [100,110]
trigger1 = ctrl
trigger2 = (anim = 200) &&Animelem = 4,>= 1
trigger3 = (anim = 201) &&Animelem = 3,>= 3
trigger4 = (anim = 211) &&  movecontact
trigger5 = (anim = 230) &&Animelem = 3,>= 6
trigger6 = (anim = 231) &&  movecontact
trigger7 = (anim = 241) &&  movecontact
trigger8 = (anim = 400) &&Animelem = 3,>= 2
trigger9 = (anim = 410) &&Animelem = 3,<= 1
trigger10 = (anim = 430) &&Animelem = 3,>= 3


; Hyper1 (Super Forceblast)
[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"
trigger2 = (stateno = [200,450]) && (MoveContact)
trigger3 = (stateno = [1000,1002]) && (enemynear, movetype = H)
trigger4 = stateno = 1402 && movecontact
;---------------------------------------------------------------------------
; Special1 (Forceblast)

[State -1, Special1]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (stateno = [200,208])&&AnimElemNo(3)>0&&movehit
trigger2 = command = "reflection"

[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (stateno = [200,450]) && (MoveContact)
trigger2 = command = "darkmatterp1"


; Special1 (Forceblast)
[State -1, Special1y]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (stateno = [200,450]) && (MoveContact)
trigger2 = command = "darkmatterp2"

; Special1 (Forceblast)
[State -1, Special1z]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (stateno = [200,450]) && (MoveContact)
trigger2 = command = "darkmatterp3"





; Special1
[State -1, Special1_Beam1]
type = ChangeState
value = 1000
triggerall = (command = "ForceBlast x") && !Var(59)
triggerall = numhelper(1050) = 0
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger4 = stateno = 1402 && movecontact

; Special1
[State -1, Special1_Beam2]
type = ChangeState
value = 1001
triggerall = (command = "ForceBlast y") && !Var(59)
triggerall = numhelper(1051) = 0
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger4 = stateno = 1402 && movecontact

; Special1
[State -1, Special1_Beam3]
type = ChangeState
value = 1002
triggerall = (command = "ForceBlast z") && !Var(59)
triggerall = numhelper(1052) = 0
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,250]) && (MoveContact)
trigger4 = stateno = 1402 && movecontact

[State -1, Uperforce a]
type = ChangeState
value = 1400
triggerall = !Var(59)
triggerall = command = "Uperforce a"
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,650]) && (MoveContact)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Uperforce b]
type = ChangeState
value = 1401
triggerall = !Var(59)
triggerall = command = "Uperforce b"
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,650]) && (MoveContact)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Uperforce c]
type = ChangeState
value = 1402
triggerall = !Var(59)
triggerall = command = "Uperforce c"
trigger1 = (Statetype != A) && ctrl
trigger2 = (stateno = [200,650]) && (MoveContact)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, powerforce x]
type = ChangeState
value = 1500
triggerall = !Var(59)
triggerall = command = "Powerforce x"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (anim = 200) &&Animelem = 4,<= 0
trigger3 = (anim = 201) &&Animelem = 4,<= 0
trigger4 = (anim = 230) &&Animelem = 5,>= 0
trigger5 = (anim = 231) &&  movecontact
trigger6 = (anim = 241) &&  movecontact
trigger7 = (anim = 400) &&Animelem = 4,>= 2
trigger8 = (anim = 410) &&Animelem = 4,<= 0
trigger9 = (anim = 430) &&Animelem = 4,>= 2

[State -1, powerforce y]
type = ChangeState
value = 1501
triggerall = command = "Powerforce y"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (anim = 200) &&Animelem = 4,<= 0
trigger3 = (anim = 201) &&Animelem = 4,<= 0
trigger4 = (anim = 230) &&Animelem = 5,>= 0
trigger5 = (anim = 231) &&  movecontact
trigger6 = (anim = 241) &&  movecontact
trigger7 = (anim = 400) &&Animelem = 4,>= 2
trigger8 = (anim = 410) &&Animelem = 4,<= 0
trigger9 = (anim = 430) &&Animelem = 4,>= 2

[State -1, powerforce z]
type = ChangeState
value = 1502
triggerall = !Var(59)
triggerall = command = "Powerforce z"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (anim = 200) &&Animelem = 4,<= 0
trigger3 = (anim = 201) &&Animelem = 4,<= 0
trigger4 = (anim = 230) &&Animelem = 5,>= 0
trigger5 = (anim = 231) &&  movecontact
trigger6 = (anim = 241) &&  movecontact
trigger7 = (anim = 400) &&Animelem = 4,>= 2
trigger8 = (anim = 410) &&Animelem = 4,<= 0
trigger9 = (anim = 430) &&Animelem = 4,>= 2


[State -1, airforce]
type = ChangeState
value = 1700
triggerall = !var(59)
triggerall = var(5) = 0
triggerall = command = "airforce"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

[State -1, Infinity Drop]
type = ChangeState
value = 1800
triggerall = !var(59)
triggerall = command = "DarkMatter"
triggerall = StateType = A
trigger1 = ctrl
trigger1 = Pos Y <= -60
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


[State -1, Throw]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]


[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !Var(59)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !Var(59)
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = !Var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
; Throws
;
; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
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
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
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
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
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
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && !Var(59)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
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
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
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
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
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
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c" && !Var(59)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
;Dash Punch
;[State -1, Dash Punch]
;type = ChangeState
;value = 615
;triggerall = (command = "x") || (command = "y")
;triggerall = stateno = 100
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600



;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630



;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" && !Var(59)
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
