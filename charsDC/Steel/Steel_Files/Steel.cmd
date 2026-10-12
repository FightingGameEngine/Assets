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
name = "holdx"
command = /$x
time = 10

[Command]
name = "holdy"
command = /$y
time = 10

[Command]
name = "holdz"
command = /$z
time = 10

[Command]
name = "holda"
command = /$a
time = 10

[Command]
name = "holdb"
command = /$b
time = 10

[Command]
name = "holdc"
command = /$c
time = 10

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
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command] ; QCB + punch & kick of equal strength
name = "chainb"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chainb"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chainb"
command = ~D, DB, B, c+z

[Command]
name = "chainf"
command = ~D, DF, F, a+x

[Command]
name = "chainf"
command = ~D, DF, F, b+y

[Command]
name = "chainf"
command = ~D, DF, F, c+z

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
command = ~F, D, DF, x

[Command]
name = "anti_y"
command = ~F, D, DF, y

[Command]
name = "anti_z"
command = ~F, D, DF, z

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

[Command]
name = "dpunch_x"
command = ~F, D, DF, x

[Command]
name = "Throw 1"
command = /$F, x+y
time = 3

[Command]
name = "2_Kick"
command = a+b

[command]; Alpha Counter
name = "alphacounter"
command = x+a

[command]
name = "alphacounter"
command = y+b

[command]
name = "alphacounter"
command = z+c

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

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing) 
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)  
trigger1 = StateNo = 150
;trigger2 = inguarddist  
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = (P2StateType = C) && (P2MoveType = A)  
;trigger2 = inguarddist  
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
;trigger2 = inguarddist  
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
;trigger2 = inguarddist  
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================

; logo flurry
;[State -1, longHyper]
;type = ChangeState
;value = 3000
;triggerall = power >= 1000 && var(59) && ctrl
;triggerall = StateType != A && MoveType != H && RoundState = 2
;trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
;trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;======================================================================
;User Input Attacks
;---------------------------------------------------------------------------
[State -1, alpha counter]
type = ChangeState
value = 1080
triggerall = power >= 1000
triggerall = command = "alphacounter"
trigger1 = StateNo = 150 || StateNo = 151
trigger1 = StateType = S

;---------------------------------------------------------------------------
; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 1050
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"

;---------------------------------------------------------------------------
; Hyper2
[State -1, Hyper2]
type = ChangeState
value = 1056
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"

;----------------------------------------------------------------------
; Hyper3
[State -1, Hyper3]
type = ChangeState
value = 1070
triggerall = power >= 3000 && !Var(59)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "chainf"

;---------------------------------------------------------------------------
;Special 1
[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "anti_x")

;---------------------------------------------------------------------------
;Special 2
[State -1, Special 2]
type = ChangeState
value = 1004
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "anti_y")

;---------------------------------------------------------------------------
;Special 3
[State -1, Special 3]
type = ChangeState
value = 1007
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "anti_z")

;---------------------------------------------------------------------------
;Special 4
[State -1, Special 4]
type = ChangeState
value = 1012
triggerall = command = "qcf_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 5
[State -1, Special 5]
type = ChangeState
value = 1015
triggerall = command = "qcf_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 6
[State -1, Special 6]
type = ChangeState
value = 1018
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "qcf_z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Special 7
[State -1, Special 7]
type = ChangeState
value = 1045
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_y")
trigger2 = stateno = [200,450]
trigger2 = movecontact > 0 && (command = "qcb_y")

;---------------------------------------------------------------------------
;Special 8
[State -1, Special 8]
type = ChangeState
value = 1042
triggerall = stateno < 3000
triggerall = command = "qcb_z" && !Var(59)
triggerall = numhelper(1043) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;Special 9
[State -1, Special 9]
type = ChangeState
value = 1010
triggerall = command = "qcf_a" && !Var(59)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 10
[State -1, Special 10]
type = ChangeState
value = 1022
triggerall = command = "qcf_b" && !Var(59)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 11
[State -1, Special 11]
type = ChangeState
value = 1026
triggerall = command = "qcf_c" && !Var(59)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 12
[State -1, Special 12]
type = ChangeState
value = 1021
triggerall = power < 3000 && !Var(59)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdc"
trigger1 = command = "holdz"

;---------------------------------------------------------------------------
;Special 13
[State -1, Special 13]
type = ChangeState
value = 1084
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = (Command = "qcf_a") || (Command = "qcf_b") || (Command = "qcf_c")&& !Var(59)

;---------------------------------------------------------------------------
;Special 14
[State -1, Special 14]
type = ChangeState
value = 3000
triggerall = command = "2_Kick"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Special 15
[State -1, Special 15]
type = ChangeState
value = 1088
triggerall = (Command = "qcf_x")&& !Var(59) = 1
triggerall = ctrl = 1
trigger1 = statetype = A
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 16
[State -1, Special 16]
type = ChangeState
value = 1100
triggerall = (Command = "qcf_z")&& !Var(59) = 1
triggerall = ctrl = 1
trigger1 = statetype = A
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 17
[State -1, Special 17]
type = ChangeState
value = 1105
triggerall = (Command = "qcf_y")&& !Var(59) = 1
triggerall = ctrl = 1
trigger1 = statetype = A
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special 1
[State -1, AI Special 1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=40 && p2bodydist X < 70 && enemynear, p2dist y >= 50

;---------------------------------------------------------------------------
;Special 2
[State -1, AI Special 2]
type = ChangeState
value = 1004
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=40 && p2bodydist X < 70 && enemynear, p2dist y >= 50

;---------------------------------------------------------------------------
;Special 3
[State -1, AI Special 3]
type = ChangeState
value = 1007
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& RoundState = 2
trigger1 = random <=60 && p2bodydist X < 120 && enemynear, p2dist y >= 50
;trigger2 = random <=130 && p2bodydist X < 100 ;&& enemynear, p2dist y >= 10

;---------------------------------------------------------------------------
;Special 4
[State -1, AI Special 4]
type = ChangeState
value = 1012
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
triggerall = random <=100 && p2bodydist X > 155
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Special 5
[State -1, AI Special 5]
type = ChangeState
value = 1015
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
triggerall = random <=105 && p2bodydist X > 156
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Special 6
;[State -1, AI Special 6]
;type = ChangeState
;value = 1018
;triggerall = Var(59) = 1
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Special 7
[State -1, AI Special 7]
type = ChangeState
value = 1045
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& RoundState = 2
trigger1 = random <=100 && p2bodydist X < 100
trigger2 = stateno = [200,450]
trigger2 = movecontact > 2 && random <=300 && p2bodydist X < 100

;---------------------------------------------------------------------------
;Special 8
[State -1, AI Special 8]
type = ChangeState
value = 1042
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& RoundState = 2
triggerall = numhelper(1043) = 0
trigger1 = random <=340 && p2bodydist X < 30 && enemynear, p2dist y >= 40

;---------------------------------------------------------------------------
;Special 9
[State -1, AI Special 9]
type = ChangeState
value = 1010
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& RoundState = 2
trigger1 = random <=100 && p2bodydist X > 150

;---------------------------------------------------------------------------
;Special 10
[State -1, AI Special 10]
type = ChangeState
value = 1022
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)  && RoundState = 2
trigger1 = random <=140 && p2bodydist X < 25

;---------------------------------------------------------------------------
;Special 11
[State -1, AI Special 11]
type = ChangeState
value = 1026
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=140 && p2bodydist X < 30

;---------------------------------------------------------------------------
;Special 12
[State -1, AI Special 12]
type = ChangeState
value = 1021
triggerall = power < 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=140 && p2bodydist X > 210

;---------------------------------------------------------------------------
;Special 13
[State -1, AI Special 13]
type = ChangeState
triggerall = p2bodydist Y >= 150
triggerall = (StateType != A) && (MoveType != H) && Var(59)
trigger1 = random <= 750 && IfElse(p2bodydist X >= 60,12200,12100)
value = 1084

;---------------------------------------------------------------------------
; Hyper1
[State -1, AI Hyper1]
type = ChangeState
value = 1050
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=50 && p2bodydist X < 130

;---------------------------------------------------------------------------
; Hyper2
[State -1, AI Hyper2]
type = ChangeState
value = 1056
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=40 && p2bodydist X < 150

;----------------------------------------------------------------------
; Hyper3
[State -1, AI Hyper3]
type = ChangeState
value = 1070
triggerall = power >= 3000 && Var(59)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=140 && p2bodydist X > 170

;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1,Push Stand]
type = ChangeState
value = 900
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;---------------------------------------------------------------------------
;Push Block (crouching)
[State -1,Push crouching]
type = ChangeState
value = 950
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;---------------------------------------------------------------------------
;Push Block (aerial)
[State -1,Push aerial]
type = ChangeState
value = 960
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = Var(59) && RoundState = 2
triggerall = statetype = S
triggerall = ctrl
trigger1 = random <=100 && p2bodydist X > 150

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl && random <= 350
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) ;&& Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================
; logo attack
;[State -1, logoAttack]
;type = ChangeState
;value = 1000
;triggerall = var(59) && ctrl && prevstateno != 1000
;triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
;trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
;trigger1 = P2BodyDist Y = [-50,50]

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
trigger1 = (stateno = 200) && (movecontact >= 1)  && random < 300

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1) && random < 300

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
trigger1= (stateno = 230) && (movecontact >= 1)  && random < 300

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1) && random < 300

;---------------------------------------------------------------------------

; Throws
; Standing : 800
; Air : 810

;---------------------------------------------------------------------------
; Standing throw
[State -1, Throw1]
type = ChangeState
value = 800
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && RoundState = 2
trigger1 = random <=140 && p2bodydist X < 35

;---------------------------------------------------------------------------
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
trigger1 = (stateno = 400) && movecontact > 0 && random < 300

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact > 0  && random < 300

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
trigger1 = (stateno = 430) && movecontact > 0  && random < 300
;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact > 0  && random < 300
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
trigger1 = (stateno = 630) && movecontact > 0 && random < 300

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact > 0  && random < 300

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact > 0  && random < 300

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact > 0 && random < 300

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact > 0 && random < 300

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && movecontact > 0 && random < 300
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && movecontact > 0  && random < 300
value = IfElse(StateNo = 630,610,620)

;---------------------------------------------------------------------------
; Standing Push Block
[State -1, SPushBlock]
type = ChangeState
value = 900
triggerall = var(59) = 1
triggerall = random < 50
trigger1 = stateno = [150,151]

;---------------------------------------------------------------------------
; Crouching Push Block
[State -1, CPushBlock]
type = ChangeState
value = 950
triggerall = var(59) = 1
triggerall = random < 51
trigger1 = stateno = [152,153]

;---------------------------------------------------------------------------
; Air Push Block
[State -1, APushBlock]
type = ChangeState
value = 960
triggerall = var(59) = 1
triggerall = random < 52
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
; Ai Alpha Counter
[State -1, Ai AlphaCounter]
type = ChangeState
value = 1080
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = stateno = [150,151]
trigger1 = random < 55 && p2bodydist X < 45

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S ;|| statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl
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
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "z") || (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = (P2StateType = S) || (P2StateType = C)
triggerall = P2MoveType != H
trigger1 = Command = "holdfwd"
trigger1 = P2BodyDist X < 10
trigger2 = Command = "holdback"
trigger2 = P2BodyDist X < 15

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
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = 210 || StateNo = 240 || StateNo = 310 || StateNo = 340
trigger4 = MoveContact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 300
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact
trigger3 = StateNo = 210 || StateNo = 310
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact
trigger3 = StateNo = 210 || StateNo = 310 || StateNo = 240 || StateNo = 340
trigger3 = MoveContact
trigger4 = StateNo = 220 || StateNo = 320
trigger4 = (movecontact >= 1)

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
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 300 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = 210 || StateNo = 240 || StateNo = 310 || StateNo = 340
trigger4 = MoveContact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || Stateno = 300
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact
trigger3 = StateNo = 210 || StateNo = 310
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 200 || StateNo = 230 || StateNo = 300 || StateNo = 330
trigger2 = MoveContact
trigger3 = StateNo = 210 || StateNo = 310 || StateNo = 240 || StateNo = 340 || StateNo = 220 || StateNo = 320
trigger3 = MoveContact

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
trigger2 = StateNo = 600 || StateNo = 630
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 600 || StateNo = 610
trigger2 = MoveContact
trigger3 = StateNo = 630 || StateNo = 640
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = StateNo = 600 || StateNo = 610
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = Stateno = [600,620]
trigger2 = MoveContact
trigger3 = StateNo = 630 || StateNo = 640
trigger3 = MoveContact

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

