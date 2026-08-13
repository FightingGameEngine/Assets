; The CMD file.

;-| AI Command |--------------------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = c, c, c
time = 1

[Command]
name = "AI3"
command = x, x, x
time = 1

[Command]
name = "AI4"
command = z, z, z
time = 1

[Command]
name = "AI5"
command = a, c
time = 1

[Command]
name = "AI6"
command = c, a
time = 1

[Command]
name = "AI7"
command = x, z
time = 1

[Command]
name = "AI8"
command = z, x
time = 1

[Command]
name = "AI9"
command = a, c, a
time = 1

[Command]
name = "AI10"
command = c, a, c
time = 1

[Command]
name = "AI11"
command = x, z, x
time = 1

[Command]
name = "AI12"
command = z, x, z
time = 1

[Command]
name = "AI13"
command = D, DB, B ,a, a, a
time = 1

[Command]
name = "AI14"
command = D, DB, B ,c, c, c
time = 1

[Command]
name = "AI15"
command = D, DB, B ,x, x, x
time = 1

[Command]
name = "AI16"
command = D, DB, B ,z, z, z
time = 1

[Command]
name = "AI17"
command = D, DB, B ,a, c
time = 1

[Command]
name = "AI18"
command = D, DB, B ,c, a
time = 1

[Command]
name = "AI19"
command = D, DB, B ,x, z
time = 1

[Command]
name = "AI20"
command = D, DB, B ,z, x
time = 1

[Command]
name = "AI21"
command = D, DB, B ,a, c, a
time = 1

[Command]
name = "AI22"
command = D, DB, B ,c, a, c
time = 1

[Command]
name = "AI23"
command = D, DB, B ,x, z, x
time = 1

[Command]
name = "AI24"
command = D, DB, B ,z, x, z
time = 1

[Command]
name = "AI25"
command = a, a, a+b
time = 1

[Command]
name = "AI26"
command = b, c, a+b
time = 1

[Command]
name = "AI27"
command = a, c, a+b
time = 1

[Command]
name = "AI28"
command = c, a, a+b
time = 1

[Command]
name = "AI29"
command = x, x, x+y
time = 1

[Command]
name = "AI30"
command = y, y, x+y
time = 1

[Command]
name = "AI31"
command = x, y, x+y
time = 1

[Command]
name = "AI32"
command = z, x, x+y
time = 1

[Command]
name = "AI33"
command = a, a, a, a+b
time = 1

[Command]
name = "AI34"
command = x, x, x, x+y
time = 1


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;================
   ;hypers
;=============
[command]
name = "hyper"
command = D,DB,B,F,b
time = 100

;============
  ;supers
;==========

[command]
name = "masenko"
command = ~D,DF,F,D,DF,F,y
time = 100


[Command]
name = "super_spinning_kick"
command = ~D, DF, F, D, DF, F, x
time = 20


[Command]
name = "upper_super_cut"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[command]
name = "rush1"
command = D,DB,B,F,y
time = 60

;======================
     ;normal stuff
;==================

[command]
name = "Megakick"
command = D,DB,B,a
time = 15

[Command]
name = "SlideKickCombo"
command = D, DB, B, y

[command]
name = "back"
command = D,B,b
time = 20



[Command]
name = "dive"
command = ~D, DB, B, x


[command]
name = "power"         ;CHARGE (POWERUP)
command = /c
time = 1

[command]
name = "upper"
command = D,DF,F,a
time = 15


[command]
name = "shield"
command = ~D,DF,F,b
time = 100



[Command]
name = "Smallblast"
command = ~D, DF, F, x

[Command]
name = "Bigblast"
command = ~D, DF, F, y



[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y





;-| Default Values |-------------------------------------------------------

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.


command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

command.buffer.time = 1



;[Command]
;name = "FF_a"
;command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
name = "hold_c" ;Required (do not remove)
command = /$c
time = 2
[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1


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

;back
[State -1, Back]
type = ChangeState
value = 9000
triggerall = command = "back"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 6090
trigger2 = movecontact
trigger3 = stateno = 1050
trigger3 = movecontact
trigger4 = stateno = 1060
trigger4 = movecontact
trigger5 = stateno = 1020
trigger5 = movecontact
trigger6 = stateno = 1000
trigger6 = movecontact
trigger7 = stateno = 1010
trigger7 = movecontact
trigger8 = stateno = 1220
trigger8 = movecontact
trigger9 = stateno = 6080
trigger9 = movecontact





;kick
[State -1, kick]
type = ChangeState
value = 6090
triggerall = command = "b"
triggerall = p2bodydist x < 15
trigger1 = (statetype = s) && ctrl





;masenko
[State -1, masenko]
type = ChangeState
value = 6040
trigger1=power>=2000
triggerall = command = "masenko"
trigger1 = (statetype = s) && ctrl

;masenko2    (in the air)
[State -1, masenko]
type = ChangeState
value = 6041
trigger1=power>=1000
triggerall = command = "masenko"
trigger1 = (statetype = a) && ctrl


;hyper
[State -1, hyper]
type = ChangeState
value = 360
triggerall = command = "hyper"
trigger1=power>=3000
trigger1 = (statetype = s) && ctrl


;upper
[State -1, upper]
type = ChangeState
value = 6015
triggerall = command = "upper"
trigger1 = p2bodydist x > 64
trigger1 = (statetype = s) && ctrl


;teleport
[State -1, Mega kick]
type = ChangeState
value = 6030
triggerall = command = "Megakick"
trigger1 = (statetype = s) && ctrl


;rush1
[State -1, rush1]
type = ChangeState
value = 6010
triggerall = command = "rush1"
trigger1 = (statetype = s) && ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, upper_super_cut]
type = ChangeState
value = 3050
triggerall = command = "upper_super_cut"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Super_Spinning_kick]
type = ChangeState
value = 3000
triggerall = command = "super_spinning_kick"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1


;---------------------------------------------------------------------------

;[State -1, Forward Forward A]
;type = ChangeState
;value = 1050
;triggerall = command = "FF_a"
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -1, up kick]
type = ChangeState
value = 6020
;1060      !!!!!!
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Dive]
type = ChangeState
value = 1000
triggerall = p2bodydist x < 50
triggerall = command = "dive"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Dive]
type = ChangeState
value = 6050
triggerall = command = "dive"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Dive]
type = ChangeState
value = 6055
triggerall = command = "dive"
trigger1 = (statetype = a) && ctrl
trigger2 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;down
;カンフー突き手（強）
[State -1, Slide_Kick_Combo]
type = ChangeState
value = 1010
;1010
triggerall = command = "SlideKickCombo"
trigger1= power >=500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Gohans upper]
type = ChangeState
value = 1120
triggerall = command = "upper_xy"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Upper
;カンフー・ウッパー（弱）
[State -1, Gohans upper]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;カンフー・ウッパー（強）
[State -1, Gohans upper]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Blast1
[State -1, Smallblast]
type = ChangeState
value = 6080
;6030
;1200
triggerall = command = "Smallblast"
trigger1 = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Bigblast
[State -1, Bigblast]
type = ChangeState
value = 6081
;1210
triggerall = command = "Bigblast"
trigger1= power >=800
trigger1 = var(1) ;Use combo condition (above)

;Shield
[State -1, Shield]
type = ChangeState
value = 1200
triggerall = command = "shield"
trigger1 = var(1) ;Use combo condition (above)
trigger1=ctrl=1
trigger2 = statetype=S && ctrl

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = var(1)
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = (stateno = 400) || (stateno = 430)
trigger3 = (time > 9) || (movecontact && time > 5)



[State -1, Stand Light Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = var(1)
trigger2 = statetype = S
trigger2 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
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


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;-------------------------------------


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
;
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;teleportation
[State -1, Stand teleport]
type = ChangeState
value = 1001
triggerall = command = "z"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand teleport]
type = ChangeState
value = 1001
triggerall = command = "z"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand teleport]
type = ChangeState
value = 1002
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl




;Crouching Light Kick
;しゃがみ弱キック


[State -1, Power Up!]
type = ChangeState
value = 6008
triggerall = command = "power"
trigger1=power<3000
trigger1 = statetype = S
trigger1 = ctrl



;==============
     ;rush1
;=========
;http://www.mediafire.com/?btu1xx9f5yw






[State -1, Kick Counter]
type = ChangeState
value = 3434
triggerall = p2bodydist x = [0,50] ;the distance range your opponent is from you (x axis)
triggerall = p2bodydist y = [-5,5] ;the distance range your opponent is from you  (y axis)
trigger1 = stateno >= 150 && stateno <= 153 ; Guarding states
trigger1 = command = "z"




;==================
      ;piccolo
;==================
;[State -1, Piccolo]
;type = ChangeState
;value = 740
;triggerall = life < 500
;trigger1 = statetype = S
;trigger1 = ctrl


[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
v = 59
value = 1

[State -1, AI]
type = Varset
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
v = 59
value = 1

;:::::::::::::::::::::::::::::::
;--|GOHANS'S AI|----------------
;:::::::::::::::::::::::::::::::

[State -1, AI Standing Guard]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999
value = 130

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 999
value = 132







;combo1
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (random < 999) && (p2bodydist x >= 35)
value = 6030

;combo2
[State -1, fthfghfghfgh]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (random < 999) && (p2bodydist x >= 35)
value = 6030

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 =  (random < 900) && (p2bodydist x >= 35)
value = 1500

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 900) && (p2bodydist x >= 35)
value = 1550

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 900) && (p2bodydist x < 15) && (p2movetype != A)
value = 200

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 900) && (p2bodydist x < 15) && (p2movetype != A)
value = 230

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 999) && (p2bodydist x < 15) && (p2movetype != A)
value = 210

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 990) && (p2bodydist x < 15) && (p2movetype != A)
value = 200

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 999) && (p2bodydist x < 15) && (p2movetype != A)
value = 230

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 900) && (p2bodydist x < 15) && (p2movetype != A)
value = 220

;;;;;;;;;;;;;;;;;;
;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 900) && (p2bodydist x > 100) && (p2movetype != A)
value = 6050

;;;;;;;;;;;;;;;;
;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 999) && (p2bodydist x < 15) && (p2movetype != A)
value = 210

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2movetype != H)
trigger1 = (power < 3000) && (random < 940) && (p2bodydist x < 20) && (p2movetype != A)
value = 230


;==========Blast
;Kamehameha
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (power >= 500) && (random < 500) && (power < 500)
value = 6081

;============Blast
;Kamehameha
[State -1]
type = changestate
Triggerall = roundstate = 2 &&(p2bodydist x <65)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (power >= 500) && (random < 900) && (power < 1001)
value = 1010




;=================================
;Sdoppiamento
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = A)
trigger1 = (power >= 1000) && (random < 500)
value = 3000


;================Kick

;Charge
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (ctrl) && (p2movetype = A)
trigger1 = (random < 999) && (p2bodydist x < 10) && (p2movetype = A)
value = 230

;Kamehameha
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (power >= 1000) && (random < 999) && (power < 3001)
value = 6040


;Kamehameha
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (p2statetype != L)
trigger1 = (power >= 1000) && (random < 999) && (power < 3001)
value = 6041

;Sdoppiamento
[State -1]
type = changestate
Triggerall = roundstate = 2 && numhelper = 0
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
triggerall= p2bodydist x <400
trigger1 = (power >= 3000) && (random < 999)
value = 360

[State -1, AI Run Fwd]              ; taken from a ub22 character
type = ChangeState
value = 100
triggerall = var(59) != 0            ; AI is activated
triggerall = stateno != 100         ;character is not in running state
;trigger1 = p2bodydist y = [-5,5]   ; p2 is not too far below or too high
trigger1 = statetype = S && ctrl
trigger1 = P2Movetype != A          ; p2 is not going to attack
trigger1 = enemy,numproj = 0        ; p2 does not have any projectiles
trigger1 = p2bodydist x > 20        ; p2 is too far away to use stand light punch
trigger1 = random <800
[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(59) != 0
triggerall = stateno = 100            ;character is in running state
trigger1 = p2bodydist x <= 20         ; p2 is close enough
trigger2 = P2movetype = A             ; p2 is going to attack
value = 0
ctrl = 1

[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = var(59) != 0            ; AI is activated
;trigger1 = p2bodydist y = [-5,5]   ; p2 is not too far below or too high
trigger1 = statetype = S && ctrl
trigger1 = P2Movetype != A          ; p2 is not going to attack
trigger1 = enemy,numproj = 0        ; p2 does not have any projectiles
trigger1 = p2bodydist x > 150
trigger1 =random < 500
value = 6008
