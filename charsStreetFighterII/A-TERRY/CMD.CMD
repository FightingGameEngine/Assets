;Terry's CMD file

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Power Geyser"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "Power Geyser"
command = ~D, DF, F, D, DF, F, y
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "PowerWave_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "PowerWave_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "Burn Knuckle_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "Burn Knuckle_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "Crack Shoot_a"
command = ~D, DB, B, a
time = 10

[Command]
name = "Crack Shoot_b"
command = ~D, DB, B, b
time = 10

[Command]
name = "Rising Tackle_x"
command = ~15$D,U, x
time = 10

[Command]
name = "Rising Tackle_y"
command = ~15$D,U, y
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
;[State -1]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

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

;=================================================
;================ SUPER ATTACKS ==================
;=================================================
;--------------
;Power Geyser!!
;--------------
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Power Geyser"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;=================================================
;=============== SPECIAL ATTACKS =================
;=================================================
;-----------
;PowerWave_X
;-----------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "PowerWave_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;-----------
;PowerWave_Y
;-----------
[State -1]
type = ChangeState
value = 1001
triggerall = command = "PowerWave_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;--------------
;Burn Knuckle_X
;--------------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Burn Knuckle_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;--------------
;Burn Knuckle_Y
;--------------
[State -1]
type = ChangeState
value = 1070
triggerall = command = "Burn Knuckle_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;-------------
;Crack Shoot_A
;-------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Crack Shoot_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;-------------
;Crack Shoot_B
;-------------
[State -1]
type = ChangeState
value = 2020
triggerall = command = "Crack Shoot_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;---------------
;Rising Tackle_X
;---------------
[State -1]
type = ChangeState
value = 2050
triggerall = command = "Rising Tackle_x"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

;---------------
;Rising Tackle_Y
;---------------
[State -1]
type = ChangeState
value = 2070
triggerall = command = "Rising Tackle_y"
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact
trigger2 = anim = 215 && time >= 10
trigger3 = movecontact
trigger3 = anim = 235 && time >= 15
trigger4 = movecontact
trigger4 = anim = 410 && time <= 15
trigger5 = movecontact
trigger5 = anim = 430 && time <= 15

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
value = 4000
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
triggerall = P2BodyDist X < 15
trigger1 = (Statetype = S) && ctrl

;----------
;Close Hard 
;----------
[State -1]
type = ChangeState
value = 215
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 15 
trigger1 = (Statetype = S) && ctrl

;----------
;Light Kick
;----------
[State -1]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 15 
trigger1 = (Statetype = S) && ctrl

;----------
;Roundhouse
;----------
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 15 
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
trigger2 = movecontact
trigger2 = anim = 215 && time <= 10 

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

;----------------------
;Neutral Jump Lightkick
;----------------------
[State -1]
type = ChangeState
value = 625
triggerall = Command = "a"
triggerall = Vel X = 0
trigger1 = (Statetype = A) && ctrl

;---------------------
;Neutral Jump hardkick
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





















