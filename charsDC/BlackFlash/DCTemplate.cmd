

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

[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0


;-| Double Tap |-----------------------------------------------------------


[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

[Command]
name = "DU"
command = D, U
time = 18

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


;-| Hypers |-----------------------------------------------------------
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
name = "chain"
command = ~D, DB, B, a+x
[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y
[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z

[command]
name = "Around The World"
command = D,B,y+z
time = 25

[command]
name = "Hyper SpeedPunch"
command = D,F,b+c
time = 25
;-| Specials |-----------------------------------------------------------
[command]
name = "Mad Dash"
command = B,F,z
time = 25
[command]
name = "Mad Dash"
command = B,F,y
time = 25
[command]
name = "Mad Dash"
command = B,F,x
time = 25


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

[command]
name = "Sneak Attack"
command = D,B,z
time = 25

[command]
name = "Sneak Attack"
command = D,B,y
time = 25

[command]
name = "Sneak Attack"
command = D,B,x
time = 25

[command]
name = "Flash Kick"
command = D,B,c
time = 25

[command]
name = "Flash Kick"
command = D,B,b
time = 25

[command]
name = "Flash Kick"
command = D,B,a
time = 25
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
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
var(59) = 1

[State -1]
Type = DisplayToClipBoard
Trigger1 = 1
Text = "P2BodyDist X=%f, \t P2Dist Y=%f"
Params = P2BodyDist X, P2Dist Y
IgnoreHitPause = 1


;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------
[State -1, Touch of Death]
type = ChangeState
value = 3320
triggerall = var(51) = 1
triggerall = var(55) = 0
triggerall = power >= 3000 && var(59) && life <= 500
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = !enemynear,ishelper
triggerall = P2stateno != 2651
triggerall = numhelper(2556) = 0
trigger1 = ctrl || stateno = 103
trigger1 = P2bodydist X = [-30,64]
trigger1 = P2statetype != L
trigger1 = P2statetype = A && P2movetype != H && P2bodydist Y > -80 && enemynear,vel Y > 1 || P2statetype != A
trigger2 = ctrl || stateno = 103
trigger2 = P2bodydist X = [-30,64]
trigger2 = P2stateno = 5120 
trigger3 = ctrl || stateno = 103
trigger3 = P2bodydist X = [64,160]
trigger3 = enemynear,vel x >= 6
trigger3 = P2statetype = A && P2movetype != H && P2bodydist Y > -90 && enemynear,vel Y > 1 || P2statetype != A
trigger4 = ctrl || stateno = 103
trigger4 = P2bodydist X = [-30,64]
trigger4 = P2stateno = [120,155]
trigger5 = P2statetype = A && P2movetype != H && P2bodydist Y > -80 && enemynear,vel Y > 1 || P2statetype != A ; -100
trigger5 = P2bodydist X = [-30,64]
trigger5 = stateno = 220 && moveguarded ||  stateno = 250 && moveguarded ||  stateno = 420 && moveguarded ||  stateno = 450 && moveguarded || stateno = 1220 && moveguarded && animtime = -1
trigger6 = P2bodydist X = [-30,64]
trigger6 = stateno = 2001 && moveguarded && animtime = -1
trigger6 = P2statetype != A

[State -1, Around the World]
type = ChangeState
value = 3000
triggerall = var(59) = 1 
triggerall = StateType != A && RoundState = 2 && !IsHelper
triggerall = !enemynear,ishelper
triggerall = enemynear, Facing != Facing
triggerall = enemynear,hitdefattr != SCA,SP,HP
triggerall = power >= 1000
triggerall = var(57) != 1 || var(57) = 1 && var(55) = 1
triggerall = var(56) != 1 
triggerall = stateno != [3000,3002]
triggerall = anim != 5550
triggerall = Life > 500 && enemynear,Life >= 500 && power >= 1500 || (Life = [301,500]) && power >= 2500  || Life < 500 && (power = [1000,1400]);<= 2200 ;!!
trigger1 = stateno = 5120 || prevstateno = 5120 || (stateno = [120,141]) || stateno = 46001 ;[140,141]) 
trigger1 = P2movetype = A
trigger1 = (P2bodydist X = [10,51]) && P2statetype != A || (P2bodydist X = [0,64]) && P2statetype = A
trigger1 = (P2bodydist Y = [-165,0])
trigger2 = movetype != H
trigger2 = enemynear,vel x >= 2
trigger2 = ctrl || (stateno = [120,142]) || (stateno = [200,250]) || (stateno = [400,450]) || stateno = 46001
trigger2 = P2movetype = A || P2movetype != A && random < 100
trigger2 = Enemynear,hitdefattr != SCA,AP
trigger2 = P2bodydist X = [10,64];&& inguarddist
trigger2 = P2statetype = A && (P2bodydist Y = [-165,0]) || P2statetype != A && (P2bodydist Y = [-110,0])

[State -1, Hyper Speed]
type = ChangeState
value = 2000;3500
triggerall = var(59) ;power >= 1000 && 
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = !enemynear,ishelper
trigger1 = (enemynear,stateno = [3000,3999]) 
trigger1 = enemynear,numproj > 0 || enemynear,numhelper > 0
trigger1 = ctrl = 1 || (stateno = [120,141])  || stateno = 46001;(stateno = [1000,1999]) || (stateno = [200,450]) || 
;triggerall = var(57) != 1 || var(57) = 1 && var(55) = 1
;triggerall = var(56) != 1 
;triggerall = Life > 500 && power >= 1500 || (Life = [301,500]) && power >= 2500  || Life < 300 && (power = [1000,1400]);power <= 2200 ;!!

[State -1, Warp Punch (Anti Proj)]
type = ChangeState
value = 2000
Triggerall = (RoundState = 2) && var(59)
Triggerall = StateType != L
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,stateno != [5100,5120]
triggerall = enemynear,anim!=5120
trigger1 = ctrl || (stateno = [120,141]) || stateno = 46001
trigger1 = P2bodydist X > 110
trigger1 = enemynear,numproj > 0 && enemynear,movetype = A || (enemynear,stateno = [1000,2999])

[State -1, Throw1]
type = ChangeState
value = 800
triggerall = var(59) && RoundState = 2 
triggerall = statetype != A && enemynear, statetype != L 
triggerall = P2statetype = S || P2statetype = C && (enemynear,vel X = [-2.5,2.5])
triggerall = P2stateno != [5000,5150]
triggerall = !enemynear,hitdefattr = SC,HA,HT
triggerall = P2movetype != H
trigger1 = (P2BodyDist X = [-10,25]) 
trigger1 = ctrl || stateno = 46001

[State -1, Launcher]
type = ChangeState
value = 420
triggerall = var(59) && RoundState = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A
triggerall = enemynear,Pos Y > -128 && enemynear,vel Y > -1
triggerall = ctrl || stateno = 100 || stateno = 46001
trigger1 = P2bodydist X = [0,55]
trigger1 = enemynear,vel x >= 2
trigger2 = P2bodydist X = [0,40]
trigger2 = enemynear,vel x < 2

; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 103
triggerall = var(59) && RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 1
triggerall = !inguarddist
trigger1 = P2bodydist X >=35
trigger1 = power >= 3000 && Life <= 500
trigger1 = ctrl

;--------------------------------------------------------------------
;GUARD 2
;--------------------------------------------------------------------
[State -1,C guard]
Type = ChangeState
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = p2Statetype != A
Trigger1 = Ctrl || (stateno = [100,103]) || stateno = 46001
Value = 131

[State -1, C guard 2]
type = ChangeState
triggerall = life <= 400
triggerall = var(59) 
triggerall = roundstate = 2
triggerall = ctrl || (stateno = [100,103]) || stateno = 46001
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = enemynear,movetype != H || enemynear,statetype != L || enemynear,movetype != I
triggerall = enemynear, movetype= A
trigger1 = !inguarddist
trigger1 = helper(8600),inguarddist || helper(8610),inguarddist
trigger1 = enemy,p2dist x < 0 && Facing = enemy,facing
value = 131

[State -1,S guard]
Type = ChangeState
Value = 130
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Trigger1 = Ctrl || (stateno = [100,103]) || stateno = 46001

[State -1, S guard 2]
type = ChangeState
triggerall = life <= 400
triggerall = var(59) 
triggerall = roundstate = 2
triggerall = ctrl || (stateno = [100,103]) || stateno = 46001
triggerall = statetype != A
triggerall = enemynear,statetype = A
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = enemynear,movetype != H || enemynear,statetype != L || enemynear,movetype != I
triggerall = enemynear, movetype= A
trigger1 = !inguarddist
trigger1 = helper(8600),inguarddist || helper(8610),inguarddist
trigger1 = enemy,p2dist x < 0 && Facing = enemy,facing
value = 130

[State -1,A Guard]
Type = ChangeState
value = 132
Triggerall = var(59) > 0
TriggerAll = StateType = A
Triggerall = inguarddist
Trigger1 = Ctrl

[State -1, A guard 2]
type = ChangeState
triggerall = life <= 400
triggerall = var(59) 
triggerall = roundstate = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = enemynear,movetype != H || enemynear,statetype != L || enemynear,movetype != I
triggerall = enemynear, movetype= A
trigger1 = !inguarddist
trigger1 = helper(8600),inguarddist || helper(8610),inguarddist
trigger1 = enemy,p2dist x < 0 && Facing = enemy,facing
value = 132

;--------------------------------------------------------------------
;GUARD 1
;--------------------------------------------------------------------

[State -1, standGuard]
type = ChangeState
triggerall = life > 400
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (Ctrl) || stateno = 46001
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = life > 400
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)  
trigger1 = StateNo = 150
;trigger2 = inguarddist  
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = life > 400
triggerall = var(59) && random <= 777
triggerall = (StateType != A) && (enemynear, Facing != Facing) 
triggerall = (Ctrl) || stateno = 46001
trigger1 = (P2StateType = C) && (P2MoveType = A)  
;trigger2 = inguarddist  
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = life > 400
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
;trigger2 = inguarddist  
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = life > 400
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
;trigger2 = inguarddist  
value = 132

;====================================================================

[State -1, Flash Kick For Combo]
type = ChangeState
value = 2580
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (!IsHelper)
trigger1 = power < 3000 || power >= 3000 && life > 500
trigger1 = stateno = 1220 && movehit && animtime = -1;0
trigger2 = stateno = 3002 && animtime = 0

; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 103
triggerall = var(59) && RoundState = 2
triggerall = (statetype = S)
trigger1 = stateno != 100
trigger1 = power >= 3000 && life <= 500
trigger1 = stateno = 1220 && movehit && animtime = -1

;====================================================================
; Main Hyper - Long Range
;====================================================================

[State -1, Eat Dirt]
type = ChangeState
triggerall = var(59)
triggerall = StateType != A && MoveType != H && !IsHelper
triggerall = roundstate = 2
triggerall = Life > 600 && enemynear,Life >= 500 && power >= 2000 || (Life = [401,600]) && power >= 2500  || Life < 400 && (power = [1000,1400]);(power >= 1000)
triggerall = P2statetype != L;trigger1 = power <= 2200 ;!!
trigger1 = var(57) != 1 || var(57) = 1 && var(55) = 1
trigger1 = var(56) != 1 
trigger1 = numproj = 0
trigger1 = !inguarddist
trigger1 = enemynear,hitdefattr = SCA,AA,AT
trigger1 = ctrl
trigger1 = P2bodydist X > 100 ;(random = [0,150])
trigger1 = P2statetype = A && (P2bodydist Y = [-105,0]) && enemynear,vel Y > 1 || P2statetype != A && (P2bodydist Y = [-100,0])
trigger1 = (P2stateno = [200,650]) && time <=12 || (P2stateno = [1000,1999]) && time <=12 || (P2stateno = [2000,3999])
trigger2 = var(57) != 1 && random < 60 || var(56) != 1 && random < 60 || var(57) = 1 && var(55) = 1 && random <= 999
trigger2 = (P2bodydist Y = [-87,0]) && enemynear,vel Y > 1 && (P2bodydist X  = [-10,100]) || (P2bodydist Y = [-105,0]) && enemynear,vel Y > 1 && (P2bodydist X  = [100,180])
trigger2 = P2stateno = 5020 || P2stateno = 5050 || (P2stateno = [5400,5401])
trigger2 = ctrl = 1 || (stateno = [200,450]) || stateno = 46001
trigger3 = (P2bodydist Y = [-100,0]) && enemynear,vel Y > 1
trigger3 = numhelper(2555) >= 1 && P2movetype = H
trigger3 = ctrl = 1 || (stateno = [200,450]) || stateno = 46001
trigger3 = P2bodydist X = [0,180]
value = 3700

;---------------------------------------------------------------------------
; E Charge
[State -1, E Charge]
type = ChangeState
value = 46001
triggerall = Var(59) = 1 && !WinKo && ctrl
triggerall = (statetype != A) 
triggerall = !inguarddist
triggerall = power < 3000
triggerall = stateno != 46001
triggerall = stateno != [100,103]
trigger1 = p2bodydist x > 70
trigger1 = enemynear,stateno = [5100,5120]
trigger2 = p2bodydist x > 100
trigger2 = enemynear,statetype = A && enemynear,movetype = H
trigger2 = random >= 800
trigger3 = p2bodydist x > 140
trigger3 = enemynear,vel X < 5
trigger3 = random >= 800

; logo flurry
[State -1, longHyper]
type = ChangeState
value = 3500
triggerall = power >= 1000 && var(59) 
triggerall = ctrl || stateno = 46001
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2stateno != [5020,5030]
triggerall = P2stateno != 5050 
triggerall = P2stateno != [5400,5401]
triggerall = P2statetype != L
triggerall = P2stateno != [5100,5120]
triggerall = P2stateno != [120,155]
triggerall = P2bodydist Y > - 130 && P2statetype = A && enemynear,vel Y > 0 || P2statetype != A
triggerall = var(57) != 1 
triggerall = var(56) != 1 || var(57) = 1 && var(55) = 1
triggerall = Life > 600 && enemynear,Life >= 500 && power >= 2000 || (Life = [401,600]) && power >= 2500 || Life < 400 && (power = [1000,1400]) ;power <= 2200 ;!!
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 50;75

[State -1, longHyper]
type = null;ChangeState
value = 9930
triggerall = Life > 500 && power >= 1500 || Life <= 500 && power >= 2500 ;power >= 1000 
triggerall = var(59) && ctrl && StateType != A && Random <= 350&& p2statetype = A&& (stateno!=100)
trigger1 = (p2bodydist X <= 60)&&(EnemyNear, Pos Y > -60)

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) 
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = P2statetype != L
triggerall = P2stateno != [5100,5120]
trigger1 = ctrl || stateno = 46001
trigger1 = p2statetype = A && vel Y > 1
trigger1 = P2bodydist X = [-10,30]
trigger1 = P2bodydist Y = [-128,-50]
trigger2 = ctrl
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850]  ;&& (StateNo = 420) && (MoveHit = 1)
trigger3 = stateno = 431 && movehit

;---------------------------------------------------------------------------
; Dash B
[State -1, dash B]
type = ChangeState
value = 105
triggerall = var(59) && RoundState = 2
triggerall = statetype != A
triggerall = Backedgedist > 40
triggerall = P2bodydist X = [-10,70]
triggerall = power < 3000
trigger1 = ctrl
trigger1 = enemynear,stateno = [5100,5120]
trigger2 = ctrl
trigger2 = enemynear,statetype =L

;---------------------------------------------------------------------------
; Dash F
[State -1, dash F]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2
triggerall = statetype != A
triggerall = Backedgedist <= 40
triggerall = P2bodydist X = [-10,70]
trigger1 = ctrl
trigger1 = enemynear,stateno = [5100,5120]
trigger2 = ctrl
trigger2 = enemynear,statetype =L

;------------------------------------------------------------------------------
;Recover Rolls

[state -1, recover roll Fwd]
type = changestate
value = 777
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = enemynear,facing != facing
triggerall = power >= 3000
trigger1 = P2bodydist x > 50
trigger2 = enemynear,numproj > 0
trigger2 = frontedgedist > 40

[state -1, recover roll Fwd]
type = changestate
value = 778
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = enemynear,facing = facing
triggerall = power >= 3000
trigger1 = P2bodydist x < -50
trigger2 = enemynear,numproj > 0
trigger2 = backedgedist > 40

[state -1, recover roll Fwd]
type = changestate
value = 777
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = backedgedist <= 40
triggerall = enemynear,facing != facing
triggerall = power < 3000
trigger1 = P2bodydist x = [-10,70]
trigger2 = inguarddist
trigger2 = P2bodydist x > 150
trigger3 = enemynear,numproj > 0
trigger3 = P2bodydist x > 150

[state -1, recover roll Fwd]
type = changestate
value = 777
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = frontedgedist >= 40
triggerall = enemynear,facing = facing
triggerall = power < 3000
trigger1 =  P2bodydist x = [-70,10]
trigger2 = inguarddist 
trigger3 = enemynear,numproj > 0

[state -1, recover roll Back]
type = changestate
value = 778
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = backedgedist > 40
triggerall = enemynear,facing != facing
triggerall = power < 3000
trigger1 =  P2bodydist x = [-10,70]
trigger2 = inguarddist 
trigger3 = enemynear,numproj > 0

[state -1, recover roll Back]
type = changestate
value = 778
triggerall = var(59) 
triggerall = RoundState = 2
TriggerAll = alive 
Triggerall = stateno = 5120
triggerall = frontedgedist >= 40
triggerall = enemynear,facing = facing
triggerall = power < 3000
trigger1 = P2bodydist x = [-70,10]
trigger2 = inguarddist
trigger2 = P2bodydist x >= -150
trigger3 = enemynear,numproj > 0
trigger3 = P2bodydist x >= -150

;-----------------------------------------------------------------------------------
; Air Recovers

[state -1, Air recovers]
type = changestate
value = 5040
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
TriggerAll = alive && canrecover
Trigger1 = Ctrl  

[state -1, Air recovers]
type = changestate
value = 5200
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
TriggerAll = alive && canrecover
Trigger1 = Ctrl  

[state -1, Air recovers]
type = changestate
value = 5201
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
TriggerAll = alive && canrecover
Trigger1 = Ctrl  

[state -1, Air recovers]
type = changestate
value = 5210
triggerall = var(59) 
triggerall = RoundState = 2
triggerall = statetype = L
TriggerAll = alive && canrecover
Trigger1 = Ctrl 

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)



;====================================================================
; Main Standing Special
;====================================================================
; logo attack
[State -1, logoAttack]
type = ChangeState
value = 2600
triggerall = var(59) && prevstateno != 1000
triggerall = ctrl  || stateno = 46001
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

; logo attack
[State -1, logoAttack]
type = ChangeState
value = 2700
triggerall = var(59)  && prevstateno != 1000
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250 
trigger1 = P2BodyDist Y = [-50,50]
trigger1 = ctrl  || stateno = 46001
trigger2 = P2statetype != A
trigger2 = (stateno = [440,450]) && moveguarded

; logo attack
[State -1, logoAttack]
type = ChangeState
value = 2700
triggerall = var(59)  && prevstateno != 1000
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2statetype != A
trigger1 = (stateno = [440,450]) && moveguarded

; logo attack
[State -1, logoAttack]
type = ChangeState
value = 2500
triggerall = var(59)  && prevstateno != 1000
triggerall = ctrl  || stateno = 46001
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = (P2stateno != [5020,5050]) || (P2stateno = [5400,5401])
triggerall = P2stateno != [5100,5120]
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

; logo attack
[State -1, logoAttack]
type = ChangeState
value = 2000
triggerall = var(59)  && prevstateno != 1000
triggerall = ctrl  || stateno = 46001
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
triggerall = P2stateno != [5100,5120]
triggerall = (P2stateno != [5020,5050]) || (P2stateno = [5400,5401])
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

[State -1, Special1 -> Cancel]
type = ChangeState
value = 1220
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (!IsHelper) && (enemynear, Facing != Facing) 
triggerall = P2bodydist X = [-10,77]
triggerall = P2bodydist Y > -102 && vel Y > 1 && P2statetype = A || P2statetype != A
trigger1 = power >= 2950
trigger1 = stateno = 2601 && moveguarded && time >= 27 || stateno = 2701 && moveguarded && time >= 21
trigger2 = power <= 2800
trigger2 = random <= 100 || (random = [500,599])
trigger2 = stateno = 2601 && movecontact && time >= 27
trigger3 = stateno = 2701 && movecontact && time >= 21

;---------------------------------------------------------------------------
;Crouching Low Kick - AI
[State -1, Crouching Low Kick]
type = ChangeState
value = 431
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59) && p2statetype != L
triggerall = statetype != A
trigger1 = stateno = 1220 && moveguarded && animtime = -1

;----------------------------- Flash Kick A.I. projectile detection
[State -1, Flash Kick A.I. projectile detection]
type = null;ChangeState
triggerall = Var(59)>=1 && (StateType != A) && (inguarddist) && !(enemynear,hitdefattr = SCA,HA);&& !(enemynear,hitdefattr = SCA,HA)
trigger1 =  (enemynear, vel x=0) && (P2MoveType = A)&& (enemynear,time=[0,4]) && (enemynear, NumHelper > 0) && (ctrl) ;&& (P2bodydist X >= 80) 
trigger2 = (ctrl) && (p2movetype!=A) 
trigger3 = (p2movetype!=A)  && (stateno = 100) ;cancel
trigger4 = (p2movetype!=A)  && (stateno = [200,450]);cancel
value = 2500
ignorehitpause = 1

[State -1, Flash Kick A.I.2 projectile detection]
type = null;ChangeState
triggerall = Var(59)>=1 && (enemynear, numproj != 0) && (StateType != A)
trigger1 =  ctrl ;&& inguarddist
trigger2 =(stateno = [200,450]);cancel
trigger3 = stateno = 100
value = 2500
ignorehitpause = 1

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
triggerall = stateno != 100
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0 

;---------------------------------------------------------------------------
; Hyper1
[State -1, Hyper2]
type = ChangeState
value = 3700
triggerall = power >= 2000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"

; Hyper1
[State -1, Hyper2]
type = ChangeState
value = 3320
triggerall = power >= 3000 && life <= 500
triggerall = var(55) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2k"

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"

; Hyper1
[State -1, Hyper2]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59) && (!IsHelper) 
triggerall = (ctrl = 1) || stateno = 5120 || stateno = 140 
trigger1 = command = "qcf_2k"
;---------------------------------------------------------------------------
; Special1
[State -1, Special1]
type = ChangeState
value = 2600
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1= ctrl
trigger2=(stateno=[200,450]) && movecontact

[State -1, Special1 -> Cancel]
type = ChangeState
value = 1220
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
trigger1 = (command = "x") || (command = "y") || (command = "z")
trigger1 = stateno = 2601
trigger2 = (command = "a") || (command = "b") || (command = "c")
trigger2 = stateno = 2701

; Mad Dash
[State -1, Mad Dash]
type = null;ChangeState
value = 2650
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Mad Dash")

; Special2
[State -1, Special2]
type = ChangeState
value = 2700
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1= ctrl
trigger2=(stateno=[200,450]) && movecontact

; Sneak Attack
[State -1, Sneak Attack]
Type = ChangeState
Triggerall = Command = "Sneak Attack"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
trigger2=(stateno=[200,450]) && movecontact
Value = 2000

; Flash Kick
[State -1, Flash Kick]
Type = ChangeState
Triggerall = Command = "Flash Kick"
Trigger1 = ctrl = 1
Trigger1 = StateType = S
trigger2=(stateno=[200,450]) && movecontact
Value = 2500



; Power Charge
[State -1,4600]
type = ChangeState
value = 46001
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdx"
trigger1 = command = "holdy"

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================
;---------------------------------------------------------------------------
; Standing Low Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59)=1
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = p2bodydist x <=55
triggerall = p2bodydist y = [-70,5]
triggerall = statetype != A
triggerall = random < 500
trigger1 = ctrl || stateno = 46001
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439])&& movehit
trigger1 = random < 250
trigger1 = p2bodydist x <= 40
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449])&& movehit
trigger1 = random < 550
trigger1 = p2bodydist x <= 50
;---------------------------------------------------------------------------
;Standing Low Kick
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != C && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [400,409])&& movehit
trigger1 = random < 100
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439])&& movehit
trigger1 = random < 250
;---------------------------------------------------------------------------
;Standing High Kick
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1&& p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [240,249])|| (stateno = [440,449])&& movehit && stateno != 225
trigger1 = random < 800
trigger1 = p2bodydist X >= 20
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59)=1
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = p2bodydist x <=55
triggerall = statetype != A
triggerall = random < 200
trigger1 = ctrl || stateno = 46001
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439])&& movehit
trigger1 = random < 500
trigger1 = p2bodydist x <= 40
;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = p2bodydist x <= 40
trigger1 = (stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449])&& movehit
trigger1 = random < 1000
trigger2 = p2bodydist x <= 40
trigger2 = STATENO=100
trigger3 = RANDOM<20
trigger3 = p2bodydist x <= 70
trigger3 = ctrl || stateno = 46001

;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [400,409])&& movehit
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439])&& movehit
trigger1 = random < 250
trigger2 = stateno = 431 && moveguarded
;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1&& p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [240,249])|| (stateno = [440,449])&& movehit && stateno != 225
trigger1 = random < 50
trigger1 = p2bodydist x <=60

;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59)=1
trigger1 = p2bodydist x <= 40
trigger1 = P2BodyDist Y = [-70, 30]
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)=1
trigger1 = (stateno = [600,609])&& movecontact
trigger1 = random < 200
trigger2 = (stateno = [630,639])&& movecontact
trigger2 = random < 800
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(59)=1
trigger1 = (stateno = [610,619])&& movecontact
trigger1 = random < 150
trigger2 = (stateno = [630,639])&& movecontact
trigger2 = random < 800
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59)=1
trigger1 = (stateno = [600,609])&& movecontact

;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59)=1
trigger1 = (stateno = [610,619])&& movecontact
trigger1 = random < 850
trigger2 = (stateno = [630,639])&& movecontact
trigger2 = random < 150
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59)=1
trigger1 = (stateno = [620,629])&& movecontact
trigger1 = random < 800
trigger2 = (stateno = [640,649])&& movecontact
trigger2 = random < 150



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
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;======================================================================
;User Input Attacks
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
triggerall = statetype = S
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
triggerall = var(55) = 0
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Low Punch
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = 100
;---------------------------------------------------------------------------
;Standing Low Kick
[State -1, Standing Low Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact
trigger4 = stateno = 100
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact

;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger4 = stateno = 100000
;
;========================
; Chain comboes End
;========================
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
