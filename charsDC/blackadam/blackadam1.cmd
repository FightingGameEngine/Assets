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

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;-| Hypers |-----------------------------------------------------------


[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y
time = 50

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z
time = 40

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

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z

[Command]
name = "powercharge"
command = b+y

;-| Specials |-----------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_x"
command = ~D, DF, F, y

[Command]
name = "qcf_x"
command = ~D, DF, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_a"
command = ~D, DF, F, b

[Command]
name = "qcf_a"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_a"
command = ~D, DB, B, b

[Command]
name = "qcb_a"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_x"
command = ~D, DB, B, y

[Command]
name = "qcb_x"
command = ~D, DB, B, z

[Command]
name = "combo"
command = ~D, DB, B, z

[Command]
name = "magictouch"
command = ~F, a

[Command]
name = "Mary"
command = ~B, a+b

[Command]
name = "Isis"
command = ~B, x+y

[Command]
name = "Mary2"
command = ~B, a+x

[Command]
name = "Natzi"
command = ~D, B, F, x



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

[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movehit = 0
v = 55
range = 0,11

[State -1, Combo Limiter]
type = Varadd
trigger1 = movehit = 1
v = 18
value = 1

[State -1, Combo Reset]
type = Varset
trigger1 = var(18) = 7
trigger2 = movehit = 0
v = 18
value = 0

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

;---------------------------------------------------------------------------
;Guard (ChangeToCrouching)
[State -1, Guard (ChangeToCrouching)]
type = ChangeState
value = 152
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = stateno = 150
triggerall = p2statetype = C
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (ChangeToStanding)
[State -1, Guard (ChangeToStanding)]
type = ChangeState
value = 150
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = stateno = 152
triggerall = p2statetype = A
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype = C
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Standing)
[State -1, Guard (Standing)]
type = ChangeState
value = 130
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != C
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Air)
[State -1, Guard (Air)]
type = ChangeState
value = 132
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;====================================================================
; Main Hyper - Long Range
;====================================================================

; ; mega beam
; [State -1, megaBeam]
; type = ChangeState
; value = 3000
; triggerall = power >= 1000 && var(59) && ctrl
; triggerall = StateType != A && MoveType != H && RoundState = 2
; trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
; trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;
; ;---------------------------------------------------------------------------
; [State -1, shungokusatsu]
; type=changestate
; value=4000
; triggerall= var(59)>=1
; triggerall= roundstate=2 && statetype!=A
; triggerall= power>=3000 && !var(20)
; triggerall= (p2stateno!=40) && (p2stateno!=[5030,5119])
; triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A)
; triggerall= (p2bodydist x=[0,160]) && (p2dist y=[-120,0]) && p2statetype!=L
; triggerall= (enemynear,vel y=0) || (enemynear,vel y>0 && enemynear,vel x<0)
; trigger1= ctrl && (p2bodydist x=[0,60]) && (enemynear,statetype!=A) && random<150
; trigger2= ctrl && (p2bodydist x=[0,100]) && (p2stateno=[120,155]) && p2statetype!=A && random<500
; trigger3= stateno=1400 && animelemtime(6)>=0 && (p2bodydist x=[0,50]) && p2statetype!=A && random<250
; trigger4= p2stateno=5040 && !(enemynear,ctrl) && random<100
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
; [State -1, Crouch launcher]
; type = ChangeState
; value = 420
; triggerall = var(59) && ctrl
; triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
; trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
; trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
;trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================
; beam
[State -1, Charge]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && prevstateno != 1000 && random > 700
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper && random < 500
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 140 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

[State -1, Slide]
type = ChangeState
value = 1011
triggerall = var(59) && ctrl && prevstateno != 1000
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper && random > 800
trigger1 = P2BodyDist X > 40 && P2BodyDist X < 180 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

[State -1, Air Kick]
type = ChangeState
value = 1012
triggerall = var(59) && ctrl && prevstateno != 1117 && Random > 600 && screenpos y = [30, 200]
triggerall = StateType = A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 5 && P2BodyDist X < 40
trigger1 = P2BodyDist Y = [5,80]
trigger2 = ((stateno = 630 || stateno = 650 || stateno = 600)) && (movecontact = 1) && random > 650

[State -1, Ground Pound]
type = ChangeState
value = 1013
triggerall = var(59) && ctrl && prevstateno != 1000 && numhelper(23392) < 1 && numhelper(23393) < 1
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 50 && P2BodyDist X < 150 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

[State -1, Lightning Strike]
type = ChangeState
value = 1114
triggerall = var(59) && ctrl && prevstateno != 1000 && random > 750
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 10 && P2BodyDist X < 50 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]
trigger2 = p2stateno = 100

; [State -1, KickFire]
; type = ChangeState
; value = 1020
; triggerall = var(59) && ctrl && prevstateno != 1000
; triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
; trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
; trigger1 = P2BodyDist Y = [-50,50]
;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 750 && enemy, numproj = 0

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
;Ground Combo 1

; Stand Med Punch
[State -1, Ground Combo 1]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 0 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20 && random > 800
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 0 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 0 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && var(55) = 0 && RoundState = 2
triggerall = p2bodydist x < 10
trigger1 = (stateno = 430) && movecontact

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && var(55) = 0 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;Ground Combo 2

; Stand Light Kick
[State -1, Ground Combo 2]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 1 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && var(55) = 1 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 440
triggerall = var(59) && var(55) = 1 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 400) && movecontact

; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && var(55) = 1 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Ground Combo 3

; Stand Light Punch
[State -1, Ground Combo 3]
type = ChangeState
value = 200
triggerall = var(59) && var(55) = 2 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Med Punch
[State -1, Crouch Med Punch]
type = ChangeState
value = 410
triggerall = var(59) && var(55) = 2 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 200) && movecontact

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 2 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 410) && movecontact

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 2 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 430) && movecontact

; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && var(55) = 2 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Ground Combo 4

; Stand Light Kick 2 ; Change to 231 When Smart Palette is done
[State -1, Ground Combo 4]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 3 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 10
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && var(55) = 3 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact ; Change to 231 When Smart Palette is done

; Crouch Med Punch
[State -1, Crouch Med Punch]
type = ChangeState
value = 410
triggerall = var(59) && var(55) = 3 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 400) && movecontact

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 3 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 410) && movecontact

; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(55) = 3 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Ground Combo 5

; Crouch Light Punch
[State -1, Ground Combo 5]
type = ChangeState
value = 400
triggerall = var(59) && var(55) = 4 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 4 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 400) && movecontact

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 4 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 430) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 440
triggerall = var(59) && var(55) = 4 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && var(55) = 4 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 6

; Stand Light Kick
[State -1, Ground Combo 6]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 5 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; ; Stand Light Kick 2
; [State -1]
; type = ChangeState
; value = 231
; triggerall = var(59) && var(55) = 5 && RoundState = 2
; triggerall = p2bodydist x < 20
; trigger1 = (stateno = 230) && movecontact

; Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = var(59) && var(55) = 5 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact ; Change to 231 When Smart Palette is done

; Stand Med Punch
[State -1]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 5 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Stand Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(59) && var(55) = 5 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Stand Med Kick
[State -1]
type = ChangeState
value = 240
triggerall = var(59) && var(55) = 5 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 220) && movecontact

; Stand Hard Kick
[State -1]
type = ChangeState
value = 250
triggerall = var(59) && var(55) = 5 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 7

; Stand Med Punch
[State -1, Ground Combo 7]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = var(59) && var(55) = 6 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Crouch Med Punch
[State -1]
type = ChangeState
value = 410
triggerall = var(59) && var(55) = 6 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 400) && movecontact

; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 6 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 410) && movecontact

; Crouch Med Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(59) && var(55) = 6 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

; Crouch Hard Punch
[State -1]
type = ChangeState
value = 420
triggerall = var(59) && var(55) = 6 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 8

; Crouch Light Kick
[State -1, Ground Combo 8]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 7 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 7 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 430) && movecontact

; Crouch Med Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(59) && var(55) = 7 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

; Stand Med Punch
[State -1]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 7 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 440) && movecontact

; Stand Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(59) && var(55) = 7 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Stand Hard Kick
[State -1]
type = ChangeState
value = 250
triggerall = var(59) && var(55) = 7 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 220) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 9

; Crouch Light Punch
[State -1, Ground Combo 9]
type = ChangeState
value = 400
triggerall = var(59) && var(55) = 8 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Med Punch
[State -1]
type = ChangeState
value = 410
triggerall = var(59) && var(55) = 8 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 400) && movecontact

; Crouch Hard Punch
[State -1]
type = ChangeState
value = 420
triggerall = var(59) && var(55) = 8 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 410) && movecontact

; Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 8 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 420) && movecontact

; Crouch Med Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(59) && var(55) = 8 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 430) && movecontact

; Crouch Hard Kick
[State -1]
type = ChangeState
value = 450
triggerall = var(59) && var(55) = 8 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 10

; Stand Light Punch
[State -1, Ground Combo 10]
type = ChangeState
value = 200
triggerall = var(59) && var(55) = 9 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Stand Med Punch
[State -1]
type = ChangeState
value = 210
triggerall = var(59) && var(55) = 9 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 200) && movecontact

; Stand Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(59) && var(55) = 9 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 210) && movecontact

; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(59) && var(55) = 9 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 220) && movecontact

; Stand Med Kick
[State -1]
type = ChangeState
value = 240
triggerall = var(59) && var(55) = 9 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 230) && movecontact

; Stand Hard Kick
[State -1]
type = ChangeState
value = 250
triggerall = var(59) && var(55) = 9 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
; Ground Combo 11

; Stand Light Punch
[State -1, Ground Combo 11]
type = ChangeState
value = 200
triggerall = var(59) && var(55) = 10 && statetype = S && RoundState = 2 && ctrl && random > 500
trigger1 = p2bodydist x < 20
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

; Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(59) && var(55) = 10 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 200) && movecontact

; Shoot
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) && var(55) = 10 && RoundState = 2
triggerall = p2bodydist x < 20
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
; ;---------------------------------------------------------------------------
; ; Stand Light Punch
; [State -1, Stand Light Punch]
; type = ChangeState
; value = 200
; triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
; trigger1 = ctrl = 1
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
;
; ;---------------------------------------------------------------------------
; ; Stand Medium Punch
; [State -1, Stand Medium Punch]
; type = ChangeState
; value = 210
; triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
;
; ; (chain combos)
; trigger1 = (stateno = 200) && (movecontact = 1)
;
; ;---------------------------------------------------------------------------
; ; Stand Hard Punch
; [State -1, Stand Hard Punch]
; type = ChangeState
; value = 220
; triggerall = var(59) && p2statetype != L && RoundState = 2
; triggerall = statetype = S
;
; ; (chain combos)
; trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
;
; ;---------------------------------------------------------------------------
; ; Stand Light Kick
; [State -1, Stand Light Kick]
; type = ChangeState
; value = 230
; triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl
;
; ;---------------------------------------------------------------------------
; ; Stand Medium Kick
; [State -1, Stand Medium Kick]
; type = ChangeState
; value = 240
; triggerall = var(59) && p2statetype != L && RoundState = 2
; triggerall = statetype = S
;
; ; (chain combos)
; trigger1= (stateno = 230) && (movecontact = 1)
;
; ;---------------------------------------------------------------------------
; ; Stand Hard Kick
; [State -1, Stand Hard Kick]
; type = ChangeState
; value = 250
; triggerall = var(59) && enemynear, statetype != L && RoundState = 2
;
; ; (chain combos)
; trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

 Standing throw
[State -1, Throw1]
type = ChangeState
value = ifelse(statetype=A,800,800)
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; ; Crouch Light Punch
; [State -1, Crouch Light Punch]
; type = ChangeState
; value = 400
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))
;
; ;---------------------------------------------------------------------------
; ; Crouch Medium Punch
; [State -1, Crouch Medium Punch]
; type = ChangeState
; value = 410
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
;
; ; (chain combos)
; trigger1 = (stateno = 400) && movecontact
;
; ;---------------------------------------------------------------------------
; ; Crouch Hard Punch
; [State -1, Crouch Hard Punch]
; type = ChangeState
; value = 420
; triggerall = var(59) && statetype != A && RoundState = 2
;
; ; (chain combos)
; trigger1 = (stateno = 410) && movecontact
;
; ;---------------------------------------------------------------------------
; ; Crouch Light Kick
; [State -1, Crouch Light Kick]
; type = ChangeState
; value = 430
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))
;
; ;---------------------------------------------------------------------------
; ; Crouch Medium Kick
; [State -1, Crouch Medium Kick]
; type = ChangeState
; value = 440
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
;
; ; (chain combos)
; trigger1 = (stateno = 430) && movecontact
;
; ;---------------------------------------------------------------------------
; ; Crouch Hard Kick
; [State -1, Crouch Hard Kick]
; type = ChangeState
; value = 450
; triggerall = var(59) && statetype != A && RoundState = 2
;
; ; (chain combos)
; trigger1 = (stateno = 440) && movecontact

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

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact

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




;---------------------------------------------------------------------------
; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = var(5) = 0
triggerall = command = "qcf_x"
triggerall = statetype = S
trigger1 = ctrl

[State -1, special2]
type = ChangeState
value = 1011
triggerall = var(5) = 0
triggerall = command = "qcf_a"
triggerall = statetype = S
trigger1 = ctrl

[State -1, special3]
type = ChangeState
value = 1012
triggerall = var(5) = 0
triggerall = command = "qcf_a"
triggerall = statetype = A
trigger1 = ctrl

[State -1, special4]
type = ChangeState
value = 1013
triggerall = numhelper (23392)< 1
triggerall = var(5) = 0
triggerall = command = "qcb_x"
triggerall = statetype = s
trigger1 = ctrl

[State -1, shazam]
type = ChangeState
value = 1114
triggerall = var(5) = 0
triggerall = command = "qcb_a"
triggerall = statetype = s
trigger1 = ctrl

[State -1, touch]
type = ChangeState
value = 800
triggerall = var(5) = 0
triggerall = command = "magictouch"
triggerall = statetype = s
trigger1 = ctrl

[State -1, touch]
type = ChangeState
value = 1010
triggerall = power>=1000
triggerall = var(5) = 0
triggerall = command = "qcf_2p"
triggerall = statetype = S
trigger1 = ctrl

[State -1, mary1]
type = ChangeState
value = 20005
triggerall = power>=500
triggerall = var(5) = 0
triggerall = command = "Mary"
triggerall = statetype = S
trigger1 = ctrl

[State -1, Isis1]
type = ChangeState
value = 20014
triggerall = power>=500
triggerall = var(5) = 0
triggerall = command = "Isis"
triggerall = statetype = S
trigger1 = ctrl

[State -1, Mary2]
type = ChangeState
value = 20015
triggerall = power>=500
triggerall = var(5) = 0
triggerall = command = "Mary2"
triggerall = statetype = S
trigger1 = ctrl

[State -1, combo]
type = ChangeState
value = 1119
triggerall = var(5) = 0
triggerall = command = "combo"
triggerall = statetype = S
trigger1 = ctrl

[State -1, power charge]
type = Changestate
value = 10001
triggerall = command = "powercharge" || (command = "holdy" && command = "holdb")
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = !Var(59)
trigger1 = ctrl
triggerall = power < 3000

[State -1, Captain Nazi]
type = changestate
value = 10002
triggerall = power>=3000
triggerall = command = "Natzi"
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = !Var(59)
trigger1 = ctrl
;triggerall = power = 3000

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


;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S || statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


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
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 400) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 430) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
