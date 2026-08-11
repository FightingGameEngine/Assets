[command]
name = "70"
command = ~D,U
time = 15

[command]
name = "721"
command = B,B
time = 15

[command]
name = "720"
command = F,F
time = 15

[Remap]
[command]
name = "6080"
command = ~D,DF,F,c
time = 15

x = x
[command]
name = "6070"
command = z
time = 15

y = y
[command]
name = "6060"
command = ~D,DF,F,b+c
time = 15

z = z
[command]
name = "6050"
command = ~D,DF,F,a+b
time = 15

a = a
[command]
name = "6025"
command = ~D,DB,B,c
time = 15

b = b
[command]
name = "6020"
command = ~D,DF,F,c
time = 15

c = c
[command]
name = "6015"
command = ~D,DB,B,b
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "6010"
command = ~D,DF,F,b
time = 15

; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "6005"
command = ~D,DB,B,a
time = 15



; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "6000"
command = ~D,DF,F,a
time = 15
;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
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

;70
[State -1, 70]
type = ChangeState
value = 70
triggerall = command = "70"
trigger1 = (statetype = s) && ctrl

[State -1,930]
type = ChangeState
triggerall = power>200
value = 930
triggerall = command = "a"
trigger1 = Movetype = H
triggerall = stateno = 152

[State -1,930]
type = ChangeState
triggerall = power>200
value = 930
triggerall = command = "a"
trigger1 = Movetype = H
triggerall = stateno = 150

;721
[State -1, 721]
type = ChangeState
value = 721
triggerall = command = "721"
trigger1 = (statetype = a) && ctrl

;720
[State -1, 720]
type = ChangeState
value = 720
triggerall = command = "720"
trigger1 = (statetype = a) && ctrl


;6080
[State -1, 6080]
type = ChangeState
value = 6080
triggerall = command = "6080"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 631 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 641 && movecontact
trigger6 = stateno = 642 && movecontact
trigger7 = stateno = 242 && movecontact


[State -1, 6071]
type = ChangeState
value = 6071
triggerall = command = "6070"
triggerall = power >= 3000
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 631 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 641 && movecontact
trigger6 = stateno = 242 && movecontact



;6070
[State -1, 6070]
type = ChangeState
value = 6070
triggerall = command = "6070"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact

;6060
[State -1, 6060]
type = ChangeState
value = 6060
triggerall = command = "6060"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 233 && movecontact
trigger7 = stateno = 432 && movecontact && time>13
trigger8 = stateno = 6005 && movecontact

[State -1, 6051]
type = ChangeState
value = 6050
triggerall = command = "6050"
triggerall = power >= 2000
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 631 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 641 && movecontact


;6050
[State -1, 6050]
type = ChangeState
value = 6050
triggerall = command = "6050"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 242 && movecontact
trigger7 = stateno = 432 && movecontact && time>13
trigger8 = stateno = 6005 && movecontact


;6025
[State -1, 6025]
type = ChangeState
value = 6025
triggerall = command = "6025"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact

;6020
[State -1, 6020]
type = ChangeState
value = 6020
triggerall = command = "6020"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact


[State -1, 6075]
type = ChangeState
value = 6075
triggerall = command = "6015"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 640 && movecontact
trigger4 = stateno = 641 && movecontact
trigger5 = stateno = 242 && movecontact

;6015
[State -1, 6015]
type = ChangeState
value = 6015
triggerall = command = "6015"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact

;6010
[State -1, 6010]
type = ChangeState
value = 6010
triggerall = command = "6010"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact

;6005
[State -1, 6005]
type = ChangeState
value = 6005
triggerall = command = "6005"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13

;6000
[State -1, 6000]
type = ChangeState
value = 6000
triggerall = command = "6000"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact
trigger6 = stateno = 432 && movecontact && time>13
trigger7 = stateno = 6005 && movecontact



;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 195
triggerall = Power < 3000
triggerall = command = "hold_s"
triggerall = command = "hold_s"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------­------------------------------------
[State -1, 231]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230&&movehit
;---------------------------------------­------------------------------------
[State -1, 232]
type = ChangeState
value = 232
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 231&&movehit
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------­------------------------------------
[State -1, 241]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240&&movehit
;---------------------------------------­------------------------------------
[State -1, 242]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 241&&movehit
;---------------------------------------­------------------------------------
[State -1, 243]
type = ChangeState
value = 243
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 242&&movehit
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 241 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = power >= 200
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------­------------------------------------
[State -1, 631]
type = ChangeState
value = 631
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630&&movehit
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------­------------------------------------
[State -1, 641]
type = ChangeState
value = 641
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640&&movehit
;---------------------------------------­------------------------------------
[State -1, 642]
type = ChangeState
value = 642
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 641&&movehit
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = power >= 100
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
