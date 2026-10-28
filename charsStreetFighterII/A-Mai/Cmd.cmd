;Mai's CMD file

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Shinobi Flame_a"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "Shinobi Flame_a"
command = ~D, DF, F, D, DF, F, b
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ka-cho-sen_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "Ka-cho-sen_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "Ryu-Enbu_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "Ryu-Enbu_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "Shinobi - Elbow_a"
command = ~DB, D, DF, F, a
time = 20

[Command]
name = "Shinobi - Elbow_b"
command = ~DB, D, DF, F, b
time = 20

[Command]
name = "Shinobi - Swan dive_a"
command = ~45$D,U, a

[Command]
name = "Shinobi - Swan dive_b"
command = ~45$D,U, b

[Command]
name = "Shinobi - Swan dive#2_a"
command = ~D, DB, B, a
time = 10

[Command]
name = "Shinobi - Swan dive#2_b"
command = ~D, DB, B, b
time = 10

[Command]
name = "Downfwd"
command = /$DF
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "y+b"
command = y+b
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "Downbck_a"
command = /DB, a
time = 1

[Command]
name = "Downfwd_b"
command = /DF, b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

;-| Hold Button |-----------------------------------------------------------
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------
;Taunt
;--------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "x+a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------
;Taunt(alternate)
;--------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;-----------
;Throwing p2
;-----------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 6
trigger1 = command = "holdfwd"
trigger1 = p2bodydist y > -65 && p2bodydist y < 65
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;=================================================
;================ SUPER ATTACKS ==================
;=================================================
;---------------
;Shinobi Flame_a
;---------------
[State -1]
type = ChangeState
value = 4000
triggerall = command = "Shinobi Flame_a"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430

;=================================================
;=============== SPECIAL ATTACKS =================
;=================================================
;------------
;Ka-cho-sen_x
;------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Ka-cho-sen_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430 

;------------
;Ka-cho-sen_x
;------------
[State -1]
type = ChangeState
value = 1001
triggerall = command = "Ka-cho-sen_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430   

;----------
;Ryu-Enbu_x
;----------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Ryu-Enbu_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430 

;----------
;Ryu-Enbu_y
;----------
[State -1]
type = ChangeState
value = 1060
triggerall = command = "Ryu-Enbu_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430  

;-----------------
;Shinobi - Elbow_a
;-----------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Shinobi - Elbow_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430 

;-----------------
;Shinobi - Elbow_b
;-----------------
[State -1]
type = ChangeState
value = 2020
triggerall = command = "Shinobi - Elbow_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430 

;---------------------
;Shinobi - Swan dive_A
;---------------------
[State -1]
type = ChangeState
value = 2050
triggerall = command = "Shinobi - Swan dive_a"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430 

;---------------------
;Shinobi - Swan dive_B
;---------------------
[State -1]
type = ChangeState
value = 2075
triggerall = command = "Shinobi - Swan dive_b"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact && stateno = 205
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 400 
trigger5 = movecontact && stateno = 410 
trigger6 = movecontact && stateno = 430

;---------------------------------
;Shinobi - Swan dive#2_a (Mid Air)
;---------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = Pos Y <= -50
triggerall = command = "Shinobi - Swan dive#2_a"
trigger1 = statetype = A && ctrl
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 620

;---------------------------------
;Shinobi - Swan dive#2_B (Mid Air)
;---------------------------------
[State -1]
type = ChangeState
value = 3020
triggerall = Pos Y <= -50
triggerall = command = "Shinobi - Swan dive#2_b"
trigger1 = statetype = A && ctrl
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 620

;--------------------------------------
;--------------------------------------
; Wall jump back
[State -1]
type = ChangeState
value = 3100
trigger1 = command = "holdfwd" 
trigger1 = Vel X < 0 && BackEdgeBodyDist <= 15
trigger1 = ctrl
trigger1 = (stateno = 50 && time > 5) || (stateno = 51 && time < 18)|| (stateno = 41 && time < 18)

; Wall jump front
[State -1]
type = ChangeState
value = 3110
trigger1 = command = "holdback"
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 15
trigger1 = ctrl
trigger1 = (stateno = 50 && time > 5) || (stateno = 51 && time < 18)|| (stateno = 41 && time < 18)

;-----------
;Crouch Walk
;-----------
[State -1]
type = ChangeState
value = 13
triggerall = command = "Downfwd"
triggerall = stateno != 13
trigger1 = statetype = C
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------

;======================================
;============ Heavy Attacks ===========
;======================================
;-------------------------
;Fatal Fury Counter Attack
;-------------------------
[State -1]
type = ChangeState
value = 4050
triggerall = power >= 1000
triggerall = command = "holdfwd" && command = "y+b"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152

;------------
;Heavy Strike
;------------
[State -1]
type = ChangeState
value = 240
triggerall = command = "y+b"
trigger1 = (Statetype = S) && ctrl

;==========================================
;============= Close Attacks ==============
;==========================================
;-----------
;Light Punch
;-----------
[State -1]
type = ChangeState
value = 205
triggerall = Command = "x"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 30 
trigger1 = (Statetype = S) && ctrl

;----------
;Close Hard 
;----------
[State -1]
type = ChangeState
value = 215
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 30 
trigger1 = (Statetype = S) && ctrl

;----------
;Light Kick
;----------
[State -1]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 20 
trigger1 = (Statetype = S) && ctrl

;----------
;Roundhouse
;----------
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 20 
trigger1 = (Statetype = S) && ctrl

;=======================================
;============= Stand Attacks ===========
;=======================================

;-----------
;Light Punch
;-----------
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------
;Hard Punch
;----------
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------
;Light Kick
;----------
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------
;Roundhouse
;----------
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 215 

;========================================
;============ Crouch Attacks ============
;========================================

;-----------
;Light Punch
;-----------
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 400

;-----------
;Heavy Punch
;-----------
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;----------
;Light kick
;----------
[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 420

;----------------
;Roundhouse/sweep
;----------------
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;========================================
;============ Air Attacks ===============
;========================================

;-----------
;Light Punch
;-----------
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------
;Heavy Punch
;-----------
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------
;Neutral jump hardkick
;---------------------
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b"
triggerall = Vel X = 0
trigger1 = (Statetype = A) && ctrl

;----------
;Light Kick
;----------
[State -1]
type = ChangeState
value = 620
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;----------
;Heavy Kick
;----------
[State -1]
type = ChangeState
value = 630
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1





















































