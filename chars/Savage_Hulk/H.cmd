;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;-| Special Motions |------------------------------------------------------
[command]
name = "SPECIAL1"
command = D,F,x
time = 15

[command]
name = "SPECIAL2"
command = D,F,y
time = 15

[command]
name = "SPECIAL3"
command = D,F,z
time = 15

[command]
name = "SPECIAL7"
command = D,B,x
time = 15

[command]
name = "SPECIAL7"
command = D,B,y
time = 15

[command]
name = "SPECIAL7"
command = D,B,z
time = 15

[command]
name = "SPECIAL4"
command = D,F,a
time = 15

[command]
name = "SPECIAL5"
command = D,F,b
time = 15

[command]
name = "SPECIAL6"
command = D,F,c
time = 15

[command]
name = "SPECIAL8"
command = D,B,a
time = 15

[command]
name = "SPECIAL8"
command = D,B,b
time = 15

[command]
name = "SPECIAL8"
command = D,B,c
time = 15

[command]
name = "HYPER1"
command = D,F,x+y
time = 15

[command]
name = "HYPER1"
command = D,F,x+y
time = 15

[command]
name = "HYPER1"
command = D,F,x+z
time = 15

[command]
name = "HYPER1"
command = D,F,y+z

[command]
name = "HYPER2"
command = D,B,x+y
time = 15

[command]
name = "HYPER2"
command = D,B,x+z
time = 15

[command]
name = "HYPER2"
command = D,B,y+z
time = 15

[command]
name = "HYPER3"
command = D,F,a+b
time = 15

[command]
name = "HYPER3"
command = D,F,a+c
time = 15

[command]
name = "HYPER3"
command = D,F,b+c
time = 15

[command]
name = "HYPER4"
command = D,B,a+b
time = 15

[command]
name = "HYPER4"
command = D,B,a+c
time = 15

[command]
name = "HYPER4"
command = D,B,b+c
time = 15
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
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;----AI-----------------------------------------------------------------------
[Command]
name = "CPU1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "CPU2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "CPU3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "CPU4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "CPU5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "CPU6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "CPU7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "CPU8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "CPU9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "CPU10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "CPU11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "CPU12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "CPU13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "CPU14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "CPU15"
command = y, x, b, b, a, x, y
time = 1

[Statedef -1]

[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
v = 59
value = 1

;===========================================================================
;---------------------------------------------------------------------------

[State -1, HYPER1]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [200,450]
trigger1 = command = "HYPER1"
trigger2 = movehit = 1
trigger2 = command = "HYPER1"
trigger3 = moveguarded = 1
trigger3 = command = "HYPER1"
trigger4 = statetype = S
trigger4 = command = "HYPER1"
trigger4 = ctrl

[State -1, HYPER2]
type = ChangeState
value = 3004
triggerall = var(59) != 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [200,450]
trigger1 = command = "HYPER2"
trigger2 = movehit = 1
trigger2 = command = "HYPER2"
trigger3 = moveguarded = 1
trigger3 = command = "HYPER2"
trigger4 = statetype = S
trigger4 = command = "HYPER2"
trigger4 = ctrl

[State -1, HYPER3]
type = ChangeState
value = 3009
triggerall = var(59) != 1
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = stateno = [200,450]
trigger1 = command = "HYPER3"
trigger2 = movehit = 1
trigger2 = command = "HYPER3"
trigger3 = moveguarded = 1
trigger3 = command = "HYPER3"
trigger4 = statetype = S
trigger4 = command = "HYPER3"
trigger4 = ctrl

[State -1, HYPER4]
type = ChangeState
value = 3012
triggerall = var(59) != 1
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = stateno = [200,450]
trigger1 = command = "HYPER4"
trigger2 = movehit = 1
trigger2 = command = "HYPER4"
trigger3 = moveguarded = 1
trigger3 = command = "HYPER4"
trigger4 = statetype = S
trigger4 = command = "HYPER4"
trigger4 = ctrl

[State -1, SPECIAL1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL1"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL1"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL1"
trigger4 = statetype = S
trigger4 = command = "SPECIAL1"
trigger4 = ctrl

[State -1, SPECIAL2]
type = ChangeState
value = 1002
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL2"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL2"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL2"
trigger4 = statetype = S
trigger4 = command = "SPECIAL2"
trigger4 = ctrl

[State -1, SPECIAL3]
type = ChangeState
value = 1004
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL3"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL3"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL3"
trigger4 = statetype = S
trigger4 = command = "SPECIAL3"
trigger4 = ctrl

[State -1, SPECIAL4]
type = ChangeState
value = 1006
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL4"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL4"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL4"
trigger4 = statetype = S
trigger4 = command = "SPECIAL4"
trigger4 = ctrl

[State -1, SPECIAL5]
type = ChangeState
value = 1007
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL5"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL5"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL5"
trigger4 = statetype = S
trigger4 = command = "SPECIAL5"
trigger4 = ctrl

[State -1, SPECIAL6]
type = ChangeState
value = 1008
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL6"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL6"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL6"
trigger4 = statetype = S
trigger4 = command = "SPECIAL6"
trigger4 = ctrl

[State -1, SPECIAL7]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL7"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL7"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL7"
trigger4 = statetype = S
trigger4 = command = "SPECIAL7"
trigger4 = ctrl

[State -1, SPECIAL8]
type = ChangeState
value = 1014
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL8"
trigger2 = movehit = 1
trigger2 = command = "SPECIAL8"
trigger3 = moveguarded = 1
trigger3 = command = "SPECIAL8"
trigger4 = statetype = S
trigger4 = command = "SPECIAL8"
trigger4 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Off screen Run
[State -1, Off Screen Run Fwd]
type = ChangeState
value = 102
triggerall = statetype = S
triggerall = ctrl
trigger1 = backedgedist < -25
;---------------------------------------------------------------------------
[State -1, SCPARRY]
type = ChangeState
value = 700
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = stateno = [150,153]
trigger1 = command = "z"

;---------------------------------------------------------------------------
[State -1, APARRY]
type = ChangeState
value = 701
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = stateno = [154,155]
trigger1 = command = "z"
;---------------------------------------------------------------------------
; Super Jump
[State -1, super jump ]
type = ChangeState
value = 900
triggerall = var(59) != 1
trigger1 = command = "holdup"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 410 && movecontact
trigger2 = command = "holdup"
;---------------------------------------------------------------------------
[State -1, Throw1]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 4 ;Near P2
trigger1 = command = "fwd_z";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_z";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -1, Throw2]
type = ChangeState
value = 2006
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 4 ;Near P2
trigger1 = command = "fwd_c";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -1, Throw2]
type = ChangeState
value = 2010
triggerall = var(59) != 1
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 4 ;Near P2
trigger1 = command = "fwd_z";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger2 = command = "fwd_c";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = A
trigger2 = p2movetype != H
;===========================================================================
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = stateno = 210
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = command = "b"
trigger3 = stateno = 210
trigger3 = movecontact
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = stateno = 240
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "x"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = command = "y"
trigger3 = stateno = 210
trigger3 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = stateno = 410
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = command = "a"
trigger3 = stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = command = "b"
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = command = "b"
trigger4 = stateno = 240
trigger4 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;===================ARTIFICIAL==INTELIGENCE=================================
[State -3, AI GUARD STAND]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

[State -3,AI GUARD AIR]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = p2movetype = A || (enemy, NumProj >= 1) ;
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = roundstate = 2 && movetype != H
triggerall = statetype = A
triggerall = random <= 600
triggerall = ctrl
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

[State -3, PARRY AI]
type = ChangeState
triggerall = facing = 1
triggerall = roundstate = 2 && movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = stateno != 100
triggerall = stateno = 130
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = random = [200,300]
value = 700

[State -3, DASH AI]
type = ChangeState
triggerall = facing = 1
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = stateno != 100
triggerall = prevstateno = 650
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = P2bodydist X <= 60
value = 100

[State -1, THROW/ATKAI]
type = ChangeState
triggerall = movetype != H
triggerall = stateno != 9000
value = ifelse(random < 500, 220,2000)
triggerall = var(59) = 1
triggerall = alive = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = stateno != 9000
triggerall = ctrl = 1
triggerall = p2bodydist X < 4 ;Near P2
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -3, LAND SPECIAL AI]
type = ChangeState
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 52
trigger1 = var(59) = 1
value = ifelse(random < 500, 250,1008)

[State -3, LAND SPECIAL2 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 1009
trigger1 = var(59) = 1
trigger1 = movecontact && time >= 5
value = ifelse(random < 500, 105,1010)

[State -3, LAND SPECIAL3 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 250
trigger1 = var(59) = 1
trigger1 = movecontact
trigger2 = prevstateno  = 2001
trigger2 = var(59) = 1
trigger3 = prevstateno  = 1015
trigger3 = var(59) = 1
value = ifelse(random < 500, 220,1007)

[State -3, LAND SPECIAL4 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 250
trigger1 = var(59) = 1
trigger1 = movecontact
trigger2 = prevstateno  = 1011
trigger2 = var(59) = 1
value = ifelse(random < 500, 1014,250)

[State -3, PUNCH1 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H && p2statetype != L && p2stateno != 3015 && p2stateno != 3007
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = stateno != 100
triggerall = P2bodydist X <= 30
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random = [200,300]
trigger2 = stateno  = 700
trigger2 = var(59) = 1
trigger2 = movecontact && time = 10
value = 200

[State -3, PUNCH2 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 200
trigger1 = var(59) = 1
trigger1 = movecontact
value = 210

[State -3, PUNCH3 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 210
trigger1 = var(59) = 1
trigger1 = movecontact
value = ifelse(random < 500, 410,1008)

[State -3, SUPERJUMP AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 410 && movehit && time = 20
trigger1 = var(59) = 1
value = 900

[State -3, AIR PUNCH1 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = statetype = A
trigger1 = prevstateno  = 900
trigger1 = var(59) = 1
trigger2 = prevstateno  = 1007
trigger2 = var(59) = 1
value = 600

[State -3, AIR PUNCH2 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = statetype = A
trigger1 = stateno  = 600
trigger1 = var(59) = 1
trigger1 = movecontact
value = 610

[State -3, AIR PUNCH3 AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = statetype = A
trigger1 = stateno  = 610
trigger1 = var(59) = 1
trigger1 = movecontact
value = 620

[State -1, AIR PUNCH4 AI]
type = ChangeState
value = 620
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
triggerall = var(59) = 1
triggerall = pos y < -60
triggerall = stateno != 620
triggerall = roundstate = 2 && movetype != H
trigger1 = statetype = A
trigger1 = ctrl

[State -1,LVL1 HYPER AI]
type = ChangeState
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1 && p2stateno != 3015 && p2stateno != 3007
value = ifelse(random < 500, 3000,3004)
triggerall = roundstate = 2 && movetype != H
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 1000
trigger1 = power != 3000

[State -1,LVL2 HYPER AI]
type = ChangeState
value = 3009
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1 && p2stateno != 3015 && p2stateno != 3007
triggerall = roundstate = 2 && movetype != H
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 2000
trigger1 = power != 3000

[State -1,LVL4 HYPER AI]
type = ChangeState
value = 3012
trigerrall = prevstateno != 2500
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1 && p2stateno != 3015 && p2stateno != 3007
triggerall = movetype != H
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 3000

[State -3, TAUNT AI]
type = ChangeState
triggerall = roundstate = 2 && movetype != H
triggerall = movetype != H
triggerall = stateno != 9000
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 3014
trigger1 = var(59) = 1
trigger1 = animtime = 0
value = 195
