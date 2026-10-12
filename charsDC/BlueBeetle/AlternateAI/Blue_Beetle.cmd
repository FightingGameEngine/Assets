; Character's CMD file
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

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1
;-------------------------------------------------------------------------------------------------------------------
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
name = "3K"
command = a+b+c
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
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command]
name = "SonicShockwave"
command = ~D, DF, F, a+b

[Command]
name = "SonicShockwave"
command = ~D, DF, F, a+c

[Command]
name = "SonicShockwave"
command = ~D, DF, F, b+c


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
command = ~D, DB, B, x

[Command]
name = "qcf_y"
command = ~D, DB, B, y

[Command]
name = "qcf_z"
command = ~D, DB, B, z

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
command = ~D, DF, F, x

[Command]
name = "qcb_y"
command = ~D, DF, F, y

[Command]
name = "qcb_z"
command = ~D, DF, F, z


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

;==================================================================================
;======| RELACIONADO À AI - AI RELATED - By Colosse|===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
;===========================================================================

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

[State -1, AI Deactivate] 
type = VarSet
triggerall = var(59)= 1
trigger1 = win = 1
trigger2 = loseko = 1
trigger3 = life <= 0
v = 59
value = 0
;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

;--|-AI Defense-|-----------------------------------------------------------
[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 132

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S) && (p2statetype != C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 130

;====================================================================
; Main Hyper - Long Range
;====================================================================

; mega beam


[State -1] ;Super 3
type = ChangeState
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
triggerall =  ((p2bodydist x = [80,130]))
trigger1 = (power >1000) && (random = [0,500])
value = 3100

[State -1] ;Super 3
type = ChangeState
triggerall = (roundstate = 2) && (var(59)=1)
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
triggerall =  ((p2bodydist x = [100,130]))
trigger1 = (power >1000) && (random = [0,500])
value = 3000

[State -1,hypercharge]
type = ChangeState
value = 3200
triggerall = enemynear,life > 300
triggerall = (var(59)=1) && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall =  (var(8) = [-20,20])
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact



; Hyper Explosion
[State -1, MegaFrag]
type = ChangeState
value = 3300
triggerall = (var(59)=1) && StateType != A && (power = [1000,1999])
triggerall = roundstate = 2
triggerall = stateno !=[800,899]
triggerall = stateno !=[3100,3801]
trigger1 = ctrl
triggerall = p2bodydist x<=50&&random<100 && enemy, movetype != A
triggerall = p2statetype != L
trigger2 = movehit
;---------------------------------------------------------------------------

[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = (var(59) = 1) && ctrl
triggerall = (stateno != [3000,4000])
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,250]

[State -1, Crouch launcher]
type = ChangeState
value = 200
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
value = 210
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=200 && movecontact>0


;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (var(59) = 1)
;trigger1 = stateno = 420 && (movehit) && (command = "holdup") 
trigger1 = stateno = 420 && animelemtime(3) > 0 && movecontact ;&& var(10) <= 0
trigger2 = ctrl && frontedgedist > 180
trigger2 = p2bodydist x > 120 && random < 100
trigger2 = p2bodydist y = 0 && p2movetype = A

;====================================================================
; Main Standing Special
;====================================================================

[State -1, Hyper1]
type = ChangeState
value = 1100
triggerall = var(59)=1 && ctrl && prevstateno != 1100 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 150  && Random < 80  && enemynear,statetype =S
trigger2 = P2BodyDist X < 150  && Random < 120  && enemynear,statetype =C

[State -1, Hyper1]
type = ChangeState
value = 1300
triggerall = var(59)=1 && ctrl && prevstateno != 1300 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 180  && (random = [0,110])  && enemynear,statetype =A
trigger2 = P2BodyDist X > 180  && (random = [0,110])  && enemynear,statetype !=A

[State -1, AI Gadouken]
type = ChangeState
value = 1350
Triggerall = numhelper(1092) < 1
triggerall = stateno != [3000,4000]
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,110])
trigger1 = ((p2bodydist x = [80,130])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI upward energy beam]
type = ChangeState
value = 1375
triggerall = var(59) = 1
triggerall = stateno != 1375
trigger1 = ctrl
trigger1 = random <= 110 
trigger1= (P2BodyDist Y = [-170, -60]) 


[State -1, Berserker Claw]
type = ChangeState
value = ifelse((p2bodydist x = [0,90]),1000,1400)
triggerall = var(59)=1
triggerall = stateno != [3000,4000]
triggerall = statetype != A
triggerall = p2bodydist Y = [-35,5]
;triggerall =  -80 <= p2bodydist y <= -80+var(7)
triggerall = random < 100
trigger1 = ctrl


[State -1, AI Kouryouken1]
type = ChangeState
value = 2300
triggerall = var(59) = 1 && StateType != A
triggerall = stateno != [3000,4000]
triggerall = roundstate = 2
trigger3 = (p2bodydist y < -1)&&  (random = [12,46])
triggerall = p2bodydist x<=30
triggerall = stateno !=[800,4999]
triggerall = !(EnemyNear,IsHelper)
triggerall = stateno !=440
triggerall = var(7) < 8
triggerall = p2statetype != L
triggerall = movetype != H
trigger1= ctrl &&  (random = [12,46])
trigger2 = (stateno=[200,440])&&movehit &&  (random = [12,46])
triggerall = p2stateno !=[120,150]



;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59)=1 && RoundState = 2 && ctrl && stateno != 100 && prevstateno != 100
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 

[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(59)=1
triggerall = stateno != 105 && backedgedist > 50 && p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70 && statetype = S && ctrl && random < 80
trigger2 = p2statetype = L && statetype = S && ctrl && random < 80 && (p2bodydist x = [0,40])

[State -1, Projectile]
type = ChangeState
triggerall = var(59)=1 && p2life!= 0 && Random < 550 && Life != 0 && stateno != [800,899] 
triggerall = StateType = S
triggerall = ctrl && p2life!= 0 
triggerall = p2movetype = A
triggerall = p2statetype != L
triggerall = Stateno!= 40 && Prevstateno!= 40
trigger1 = P2BodyDist X = [100,250]
trigger1 = enemy, Numproj <= 0&&enemy,stateno<2999
trigger2 = P2BodyDist X = [100,250]
trigger2 = enemy, Numhelper <= 0&&enemy,stateno<2999
trigger3 = Stateno = 140
trigger3 = ctrl && enemynear,movetype=A && (p2bodydist x=[20,200])
trigger3 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100)
trigger4 = (enemynear,movetype=A) && (enemynear,hitdefattr=SCA,AT) && (p2bodydist x=[-20,200])
trigger4 = (enemy,vel X != [-2,2]) && (P2BodyDist Y >= -100) 
trigger4 = Stateno = 140
trigger4 = (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger4 = random<ifelse((enemy,hitdefattr=SC,AT),500,100)
value = 40

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
triggerall = (statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = p2statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl
trigger1 = random < 500

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59)=1 && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59)=1 && p2statetype != L && RoundState = 2
triggerall = stateno != [3000,4000]
triggerall = statetype = S
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl && p2statetype = S && random < 300
Triggerall = stateno !=450
Triggerall = stateno !=450
Triggerall = stateno !=230
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

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
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;[State -1, AirThrow1]
;type = ChangeState
;value = 800
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = A && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59)=1 && statetype = C && RoundState = 2 && ctrl
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 35
trigger1 = statetype != A
trigger1 = ctrl && random < 500 

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
triggerall = (var(59)=1) && p2statetype != A ;&& P2statetype = S
triggerall = stateno != [3000,4000]
triggerall = stateno != 430
trigger1 = p2bodydist x <= 40
trigger1 = statetype != A 
trigger1 = ctrl && random < 800

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


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Hyper1 (whatever it may be...)
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)


;Sonic Shockwave
[State -1, Sonic]
type = ChangeState
value = 3100
triggerall = command = "SonicShockwave"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact
trigger8 = stateno = 245 && MoveContact
;trigger9 = stateno = 765

[State -1, Hyper1]
type = ChangeState
value = 3200
triggerall = command = "qcb_2k"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)


[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = command = "qcb_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
trigger2 = ((stateno = 1000) || (stateno = 1100)) && (movecontact >= 1)
trigger3 = ((stateno = 1200) || (stateno = 1300)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 2300
triggerall = (command = "anti_z") || (command = "anti_y") || (command = "anti_x")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1000
triggerall = (command = "qcf_z") || (command = "qcf_y") || (command = "qcf_x")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1100
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1300
triggerall = (command = "qcb_x")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1350
triggerall = (command = "qcb_y")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1375
triggerall = (command = "qcb_z")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)

[State -1, Hyper1]
type = ChangeState
value = 1400
triggerall = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = (ctrl = 1)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((StateNo = 250) || (stateno = 220)) && (movecontact >= 1)
trigger5 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)
trigger6 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger7 = ((StateNo = 450) || (stateno = 420)) && (movecontact >= 1)


;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S; || statetype = A
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
;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = var(59) != 1
trigger1 = command = "holdup"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 420 && movecontact
trigger2 = command = "holdup"


;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
;Launch Magic AX
;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "holddown" && command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (StateNo = 240) && (movecontact >= 1)
trigger3 = (StateNo = 210) && (movecontact >= 1)

;===========================================================================
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 440
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 440
trigger11 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact = 1
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
