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
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
 

;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[command]
name = "SuperJump"
command = ~$D, U
time = 12

[command]
name = "SuperJump_Fwd"
command = ~$D, UF
time = 12

[command]
name = "SuperJump_Back"
command = ~$D, UB
time = 12

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; wave charge
;---------------------------------------------------------------------------
[Command]
name = "wave charge"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "wave charge"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "wave charge"
command = ~D, DF, F, z+x
time = 40

;---------------------------------------------------------------------------
; Fist Flurry
;---------------------------------------------------------------------------
[Command]
name = "FistFlurry"
command = ~D, DF, F, a+b
time = 40

[Command]
name = "FistFlurry"
command = ~D, DF, F, b+c
time = 40

[Command]
name = "FistFlurry"
command = ~D, DF, F, c+a
time = 40

;---------------------------------------------------------------------------
; wizard ; level 2
;---------------------------------------------------------------------------
[Command]
name = "wizard"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "wizard"
command = ~D, DB, B, y+z
time = 40
[Command]
name = "wizard"
command = ~D, DB, B, z+x
time = 40

;---------------------------------------------------------------------------
; ground hit
;--------------------------------------------------------------------------
[Command]
name = "ground hit"
command = ~D, DB, B, a+b
time = 25

[Command]
name = "ground hit"
command = ~D, DB, B, b+c
time = 25

[Command]
name = "ground hit"
command = ~D, DB, B, c+a
time = 25

 
[Command]
name = "214214_X"
command = ~D,DB,$B,D,DB,$B,x
time = 24
buffer.time = 3
[Command]
name = "214214_X"
command = ~D,DB,$B,D,DB,$B,~x
time = 24
buffer.time = 3
[Command]
name = "214214_Y"
command = ~D,DB,$B,D,DB,$B,y
time = 24
buffer.time = 3
[Command]
name = "214214_Y"
command = ~D,DB,$B,D,DB,$B,~y
time = 24
buffer.time = 3

[Command]
name = "214214_Z"
command = ~D,DB,$B,D,DB,$B,z
time = 24
buffer.time = 3
[Command]
name = "214214_Z"
command = ~D,DB,$B,D,DB,$B,~z
time = 24
buffer.time = 3


[Command]
name = "236236_X"
command = ~D,DF,$F,D,DF,$F,x
time = 24
buffer.time = 3
[Command]
name = "236236_X"
command = ~D,DF,$F,D,DF,$F,~x
time = 24
buffer.time = 3
[Command]
name = "236236_Y"
command = ~D,DF,$F,D,DF,$F,y
time = 24
buffer.time = 3
[Command]
name = "236236_Y"
command = ~D,DF,$F,D,DF,$F,~y
time = 24
buffer.time = 3

[Command]
name = "236236_Z"
command = ~D,DF,$F,D,DF,$F,z
time = 24
buffer.time = 3
[Command]
name = "236236_Z"
command = ~D,DF,$F,D,DF,$F,~z
time = 24
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,x
time = 45
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,y
time = 45
buffer.time = 3

[Command]
name = "Power Giant Swing Circle"
command = ~F,$D,$B,$F,$D,$B,z
time = 45
buffer.time = 3

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; handshock
;---------------------------------------------------------------------------

[Command]
name = "handshock"
command = ~D, DF, F, x
time = 20

[Command]
name = "handshock"
command = ~D, DF, F, y
time = 20

[Command]
name = "handshock"
command = ~D, DF, F, z
time = 20

;---------------------------------------------------------------------------
;quick fists
;---------------------------------------------------------------------------
[Command]
name = "quick fists"
command = ~x,x,x
time = 22

[Command]
name = "quick fists"
command = ~y,y,y
time = 22

[Command]
name = "quick fists"
command = ~z,z,z
time = 22

[Command]
name = "HCF_X"

command = ~B,DB,$D,DF,$F,x
time = 16
buffer.time = 3
[Command]
name = "HCF_X"
command = ~B,DB,$D,DF,$F,~x

time = 16
buffer.time = 3

[Command]
name = "HCF_Y"
command = ~B,DB,$D,DF,$F,y

time = 16
buffer.time = 3
[Command]
name = "HCF_Y"
command = ~B,DB,$D,DF,$F,~y

time = 16
buffer.time = 3

[Command]
name = "HCF_Z"
command= ~B,DB,$D,DF,$F,z

time = 16
buffer.time = 3
[Command]
name = "HCF_Z"
command = ~B,DB,$D,DF,$F,~z

time = 16
buffer.time = 3


[Command]
name = "HCB_X"

command = ~F,DF,$D,DB,$B,x
time = 16
buffer.time = 3
[Command]
name = "HCB_X"
command = ~F,DF,$D,DB,$B,~x

time = 16
buffer.time = 3

[Command]
name = "HCB_Y"
command = ~F,DF,$D,DB,$B,y

time = 16
buffer.time = 3
[Command]
name = "HCB_Y"
command = ~F,DF,$D,DB,$B,~y

time = 16
buffer.time = 3

[Command]
name = "HCB_Z"
command = ~F,DF,$D,DB,$B,z

time = 16
buffer.time = 3
[Command]
name = "HCB_Z"
command = ~F,DF,$D,DB,$B,~z

time = 16
buffer.time = 3

;---------------------------------------------------------------------------
[Command]
name = "623_X"
command = ~F,D,$F,x
time = 12
buffer.time = 3

[Command]
name = "623_X"
command = ~F,D,$F,~x
time = 12
buffer.time = 3

[Command]
name = "623_Y"
command = ~F,D,$F,y
time = 12
buffer.time = 3

[Command]
name = "623_Y"
command = ~F,D,$F,~y
time = 12
buffer.time = 3

[Command]
name = "623_Z"
command = ~F,D,$F,z
time = 12
buffer.time = 3

[Command]
name = "623_Z"
command = ~F,D,$F,~z
time = 12
buffer.time = 3




[Command]
name = "421_X"
command = ~B,D,$B,x
time = 12
buffer.time = 3
[Command]
name = "421_X"
command = ~B,D,$B,~x
time = 12
buffer.time = 3

[Command]
name = "421_Y"
command = ~B,D,$B,y
time = 12
buffer.time = 3
[Command]
name = "421_Y"
command = ~B,D,$B,~y
time = 12
buffer.time = 3

[Command]
name = "421_Z"
command = ~B,D,$B,z
time = 12
buffer.time = 3
[Command]
name = "421_Z"
command = ~B,D,$B,~z
time = 12
buffer.time = 3

;---------------------------------------------------------------------------
; Lightning Kicks
;---------------------------------------------------------------------------

[Command]
name = "TripleHit"
command = ~D, DB, B, x
time = 20

[Command]
name = "TripleHit"
command = ~D, DB, B, y
time = 20

[Command]
name = "TripleHit"
command = ~D, DB, B, z
time = 20

;---------------------------------------------------------------------------
;Flight
;---------------------------------------------------------------------------
[Command]
name = "Flight"
command = a+x
time = 30
;---------------------------------------------------------------------------
;highbeam
;---------------------------------------------------------------------------
[Command]
name = "airbeamdown"
command = ~D,DF,F, x
time = 20

[Command]
name = "airbeamdown"
command = ~D,DF,F, y
time = 20

[Command]
name = "airbeamdown"
command = ~D,DF,F, z
time = 20

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

[Command]
name = "release_c"
command = ~c
time = 1

[Command]
name = "release_x"
command = ~x
time = 1

[Command]
name = "release_y"
command = ~y
time = 1

[Command]
name = "release_z"
command = ~z
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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


;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
[Statedef -1]


[State -1, AIActivate]
type = VarSet
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

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = p2statetype != L
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = p2statetype != L
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0 

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
triggerall = p2statetype != L
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132
;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher) 
;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
triggerall = p2statetype != L
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = p2statetype != L && p2statetype !=A
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59)>=1 && numenemy&&roundstate=2&&StateType != A
triggerall =(p2bodydist x = [0, 40])&&(p2bodydist y = [-80,5])&&P2statetype != C&&P2statetype != L
trigger1 = ctrl && random < 500
trigger2 = (stateno = [100,101]) && random < 150
trigger3 = ctrl&&(enemynear,ctrl) && random < 600

[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A  && P2statetype != C
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L
trigger1 = ctrl && random < 100
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit
trigger2 = random < 500
 
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -80, 80]) && p2statetype != L
trigger1 = ctrl && random < 150
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 300

[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && (p2bodydist x = [0, 35]) && p2statetype != L
trigger1 = ctrl && random < 200
trigger2 = (stateno = [100,101]) && random < 100
trigger3 = ctrl&&(enemynear,ctrl) && random < 300
 

[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -70, 50]) && p2statetype != L
trigger1 = ctrl && random < 200
;trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit
trigger2 = random < 800

[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 30]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L
trigger1 = ctrl && random < 150
trigger2 = stateno = [100,101]
  
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A
trigger1 = ctrl && random < 150 && P2statetype != L
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit
trigger2 = random < 350 && P2statetype != L
trigger3 = ctrl && random < 100 && (enemynear,stateno=5110)&&(p2bodydist x = [-8, 22])
trigger3 = enemynear,statetype=L && enemynear,stateno!=5120 && p2dist y=0

[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = var(59)>=1 && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S
trigger1 = ctrl && random < 200
trigger2 = ((stateno = [200,219])|| (stateno = [230,249])||(stateno = [400,419])||(stateno = [430,449]))&& movehit
trigger2 = random < 250

[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && stateno != 600
triggerall = (p2bodydist x = [0,70]) && (p2bodydist y = [ -40, 70]) && p2statetype != L
trigger1 = ctrl && random < 450

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -60, 50]) && p2statetype != L
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 150, 50))
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 500

[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(59)>=1 && numenemy &&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -80, 40]) && p2statetype != L
trigger1 = ctrl && random < 150 && p2statetype != A
trigger2 = (stateno = 600||stateno = 630)&& movehit && random < 350 && enemynear,Statetype=A
trigger3 = (stateno = 610||stateno = 640)&& movehit && random < 700 && enemynear,Statetype=A
 
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(59)>=1 && numenemy&&roundstate=2&&statetype = A && (enemynear,Statetype=A)
triggerall = (p2bodydist x = [5, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < 250
 

;----------------------------------------------------------------------
 
 

;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && numprojid(1001) = 0
triggerall = p2statetype != L
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1000
;---------------------------------------------------------------------------
[State -1, javelinepunch]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

[State -1, javelinepunch]
type = ChangeState
value = 650
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType = A
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100
;---------------------------------------------------------------------------
; quick fists
[State -1, quick fists]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

[State -1, TripleHit]
type = ChangeState
value = 1300
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)

[State -1, Shazam Bolt]
type = ChangeState
value = 1000
triggerall= var(59)>=1 && numenemy && roundstate = 2 && statetype != A
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall)&&(enemynear,stateno!=[5100,5220])
triggerall=(p2bodydist x =[15,80]) && (p2bodydist y =[-70,5]) && (enemynear,statetype != A)
triggerall = var(10) := 3
trigger1 = ctrl && (Random<250)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 220)) && movehit && (Random<250)
trigger3 = ((stateno = 230) || (stateno = 240) || (stateno = 250)) && movehit && (Random<250)
trigger4 = ((stateno = 400) || (stateno = 410)) && movehit && (Random<150)
trigger5 = ((stateno = 430) || (stateno = 440)) && movehit && (Random<150)


;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;---------------------------------------------------------------------------
[State -1, FistFlurry]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;---------------------------------------------------------------------------
[State -1, wizard]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;---------------------------------------------------------------------------
[State -1, shazam]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;--------------------------------------------------------------------------- 

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155] 

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------

[State -1]
type = ChangeState 
value = 3100
triggerall = power >= 1000
triggerall = ctrl  || stateno = 40 || stateno = 52 || ((stateno = [200,650]) && (movecontact)) || ((stateno = 841) && (AnimElemtime(5) >= 0))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="236236_X",command="214214_X")
trigger1 = var(10) := 1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="236236_Y",command="214214_Y")
trigger2 = var(10) := 2
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="236236_Z",command="214214_Z")
trigger3 = var(10) := 3

[State -1, Power Giant Swing Circle]
type = ChangeState 
value = 3000
triggerall = !AILevel && RoundState = 2 && Alive
triggerall = power >= 1000
triggerall = ctrl  || stateno = 40 || stateno = 52 || ((stateno = [200,650]) && (movecontact)) || ((stateno = 841) && (AnimElemtime(5) >= 0))
triggerall = statetype != A 
trigger1 = command = "Power Giant Swing Circle"

[State -1, Fist Flurry]
type = ChangeState
value = 3001
triggerall = !Var(59)
triggerall = command = "FistFlurry"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1999]

[State -1, wizard]
type = ChangeState
value = 3008
triggerall = !Var(59)
triggerall = command = "wizard"
trigger1 = power >= 1000                                   
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1999]

[State -1, ground hit]
type = ChangeState
value = 3040
triggerall = command = "ground hit"
triggerall = !var(59)
trigger1 = power >= 1000
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,699] 
trigger3 = StateNo = [1000,1999]

 
[State -1]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,625]) && (movecontact))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="HCB_X",command="HCF_X")
trigger1 = (var(10) := 1)||1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="HCB_Y",command="HCF_Y")
trigger2 = (var(10):=2)||1
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="HCB_Z",command="HCF_Z")
trigger3 = (var(10):=3)||1
 
[State -1]
type = ChangeState 
value = 1300
triggerall = statetype != A
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,625]) && (movecontact))
trigger1 = AILevel <= 0
trigger1 = ifelse((anim!=[5,6]),command="623_X",command="421_X")
trigger1 = (var(10):=1)||1
trigger2 = AILevel <= 0
trigger2 = ifelse((anim!=[5,6]),command="623_Y",command="421_Y")
trigger2 = (var(10):=2)||1
trigger3 = AILevel <= 0
trigger3 = ifelse((anim!=[5,6]),command="623_Z",command="421_Z")
trigger3 = (var(10):=3)||1

;---------------------------------------------------------------------------
; Specials
;-------------------------------------------------------- 

[State -1, Shazam Bolt]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = statetype != A
triggerall = numhelper(150000) = 0
triggerall = ctrl|| ((stateno=[100,109])&&animelemtime(2)>1)||(stateno=110)||(stateno=101)||(stateno=106) || stateno = 40 || stateno = 52 || ((stateno = [200,625]) && (movecontact))
trigger1= command = "c" 

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !Var(59)
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl 


[State -1, Run Fwd]
type = ChangeState 
value = 100
triggerall = stateno != [100,109] 
trigger1 = AILEVEL <= 0
trigger1 = command = "FF" || (command = "holdfwd" && command!="holdback" && (command="a"))
trigger1 = ctrl 
trigger1 = (var(10):=1)||1



[State -1, Run Back]
type = ChangeState 
value = 105
triggerall = stateno != [100,109] 
trigger1 = AILEVEL <= 0
trigger1 = command = "BB" || (command = "holdback" && command!="holdfwd" && (command="a"))
trigger1 = ctrl 
trigger1 = (var(10):=-1)||1
 
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
 
[State -1, SuperJump]
type = ChangeState 
value = 702
triggerall = Command = "SuperJump_Fwd"
trigger1 = StateType != a
trigger1 = Ctrl

[State -1, SuperJump]
type = ChangeState 
value = 704
triggerall = Command = "SuperJump_Back"
trigger1 = StateType != a
trigger1 = Ctrl

[State -1, SuperJump]
type = ChangeState 
value = 700
trigger1 = Command = "SuperJump"
trigger1 = StateType != a
trigger1 = Ctrl

;---------------------------------------------------------------------------
;stand light punch
[state -1]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact 
trigger4 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact 
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 220) && movecontact 
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 440) && movecontact
 
 

;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact 
trigger4 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact 
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 220) && movecontact 
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 440) && movecontact
 

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = command = "x"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 630
triggerall = command = "y"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 610) && movecontact 
 
 
;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 650
triggerall = command = "z"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 610) && movecontact 
trigger4 = (stateno = 630) && movecontact 
trigger5 = (stateno = 640) && movecontact 
 