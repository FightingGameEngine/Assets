; The CMD file.
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;-|Hyper Motions |--------------------------------------------------------
[Command]
name = "monghits"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "monghits"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "monghits"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "mongaxe"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "mongaxe"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "mongaxe"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "moncyb"
command = ~D, DF, F, c+z
time = 15

[Command]
name = "moncyb"
command = ~D, DF, F, z+c
time = 15

[Command]
name = "monrcy"
command = a+y
time = 15

[Command]
name = "monrcy"
command = y+a
time = 15



;-| Special Motions |------------------------------------------------------
;Fire
[Command]
name = "yellowbeam"
command = ~D, DF, F, x
time = 15

[Command]
name = "yellowbeam"
command = ~D, DF, F, y
time = 15

[Command]
name = "yellowbeam"
command = ~D, DF, F, z
time = 15

;Earthquake
[Command]
name = "earth"
command = F, D, DF, x
time = 25

[Command]
name = "earth"
command = F, D, DF, y
time = 25

[Command]
name = "earth"
command = F, D, DF, z
time = 25

;Black Mercy
[Command]
name = "black_mercy"
command = ~D, DB, B, x
time = 15

[Command]
name = "black_mercy"
command = ~D, DB, B, y
time = 15

[Command]
name = "black_mercy"
command = ~D, DB, B, z
time = 15

;Teleport
[Command]
name = "teleport"
command = D, D
time = 10

;Battle Axes
[Command]
name = "axe_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "axe_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "axe_c"
command = ~D, DF, F, c
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

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "guardpush"
command = z+y
time = 1

[Command]
name = "DU"
command = a+b+c
time = 1

[Command]
name = "run"
command = x+y+z
time = 1

[Command]
name = "throw"
command = x
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

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "henshaw"
command = a+x
time = 15

[Command]
name = "henshaw"
command = x+a
time = 15

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

;---------------------------------------------------------------------------
[Statedef -1]
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Counter
;[State -1, Counter]
;type = ChangeState
;value = 8100
;trigger1 = command = "ball_x" || command = "ball_y" || command = "ball_z"
;trigger1 = stateno = [150, 151]
;trigger1 = statetype != A
;trigger1 = power >= 1000

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 8200
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153]

;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;===========================================================================
;---------------------------------------------------------------------------
;Mongul Cyborg
[State -1, Beam X]
type = ChangeState
value = 3400
triggerall = command = "moncyb"
triggerall = power > 2000
triggerall = !NumHelper(4000)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 410 && MoveContact

;Mongul Insanity
[State -1, Beam X]
type = ChangeState
value = 3000
triggerall = command = "monghits"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact

;Hyper Axe Attack
[State -1, Beam X]
type = ChangeState
value = 3100
triggerall = command = "mongaxe"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact

;Mongul Mercy
[State -1, Throw 2]
type = ChangeState
value = 3500
triggerall = command = "monrcy"
triggerall = statetype = S
triggerall = ctrl
triggerall = power >= 3000
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H




;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Quake
;Earth Quake
[State -1, Quake1]
type = ChangeState
value = 1100
ctrl = 0
triggerall = command = "earth"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact

; Eye Beam
[State -1, yellowbeam]
type = ChangeState
value = 1400
triggerall = command = "yellowbeam"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact




;Black Mercy
[State -1, blackmercy]
type = ChangeState
value = 1000
triggerall = command = "black_mercy"
triggerall = p2stateno !=  7670
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact


;Axe A
[State -1, axe A]
type = ChangeState
value = 1450
triggerall = command = "axe_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact

;Axe B
[State -1, axe B]
type = ChangeState
value = 1451
triggerall = command = "axe_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 1450 && MoveContact
trigger8 = stateno = 250 && MoveContact

;Axe C
[State -1, axe C]
type = ChangeState
value = 1452
triggerall = command = "axe_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 220 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 1451 && MoveContact
trigger9 = stateno = 250 && MoveContact


; Teleport
[State -1]
type = ChangeState
value = 1200
triggerall = statetype = S
triggerall = command = "teleport"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact



;---------------------------------------------------------------------------
;Henshaw Striker
[State -1,cyborg]
type = changestate
value = 4100
triggerall = command = "henshaw"
trigger1 = statetype = S
triggerall = power > 500
triggerall = numhelper(4000)=0
trigger1 = ctrl = 1
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 250 && MoveContact

;===========================================================================
;Throw
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 220
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"
trigger2 = command = "run"

;Dash Forward (Air)
;[State -1, Dash Fwd Air]
;type = ChangeState
;value = 101
;triggerall = statetype = A
;triggerall = ctrl
;triggerall = stateno != 105
;triggerall = stateno != 101
;trigger1 = command = "FF"
;trigger2 = command = "run"

;---------------------------------------------------------------------------
;Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
;triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "BB"

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact

;Stand Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Stand Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 430 && MoveContact

;Crouch Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && MoveContact
trigger3 = stateno = 440 && MoveContact

;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 430 && MoveContact

;Crouch Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && MoveContact
trigger3 = stateno = 440 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact

;Jump Strong Punch A
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 640 && MoveContact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
;----------------------------------------------------------------------------

