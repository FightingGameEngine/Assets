; The CMD file.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Moves |--------------------------------------------------------

;---------------------------------------------------------------------------
;Level 3 (requires 3000 power)

[command]
name = "super_masenko"
command = ~D,B,F,B,D,F,a

[command]
name = "super_masenko"
command = ~D,B,F,B,D,F,b

;---------------------------------------------------------------------------

;Level 2 (requires 2000 power)
[command]
name = "renzoku_energy_dan"
command = ~D,DF,F,DF,B,x

[command]
name = "renzoku_energy_dan"
command = ~D,DF,F,DF,B,y

;---------------------------------------------------------------------------

;Level 1 (requires 1000 power)
[command]
name = "masenko_x"
command = ~F,B,D,F,x
time = 20

[command]
name = "masenko_y"
command = ~F,B,D,F,y
time = 20

;-| Special Moves |------------------------------------------------------
[Command]
name = "kiblast_x"
command = ~D, DF, F, x

[Command]
name = "kiblast_y"
command = ~D, DF, F, y

[Command]
name = "punch_flurry_x"
command = ~x, x, x
time = 20

[Command]
name = "punch_flurry_y"
command = ~y, y, y
time = 20

[command]
name = "dropkick_a"
command = ~F,D,B,a

[command]
name = "dropkick_b"
command = ~F,D,B,b

[Command]
name = "dashpunch_x"
command = ~B, D, DB, x

[Command]
name = "dashpunch_y"
command = ~B, D, DB, y

[command]
name = "doublekick_a"
command = ~30$DB,F,a

[command]
name = "doublekick_b"
command = ~30$DB,F,b

[Command]
name = "longjump"
command = ~D, U

[Command]
name = "dodgeroll" ;Required (do not remove)
command = x+a

[Command]
name = "knockdown" ;Required (do not remove)
command = y+b

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
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
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
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; State entry
[Statedef -1]

;---------------------------------------------------------------------------
;===========================================================================
; AI Section
;===========================================================================
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;===========================================================================
;  End of AI Section
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Masenko (fast)
[State -1]
type = ChangeState
value = 3010
triggerall = command = "masenko_y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Masenko (slow)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "masenko_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Forward double kick combo (strong)
[State -1]
type = ChangeState
value = 1410
triggerall = command = "doublekick_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
;Forward double kick combo (weak)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "doublekick_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
;Forward dash punch (strong)
[State -1]
type = ChangeState
value = 1310
triggerall = command = "dashpunch_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Forward dash punch (weak)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "dashpunch_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Drop Kick (strong)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "dropkick_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
;Drop Kick (weak)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "dropkick_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

;---------------------------------------------------------------------------
;Rapid Punch (strong)
[State -1]
type = ChangeState
value = 1110
triggerall = command = "punch_flurry_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Rapid Punch (weak)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "punch_flurry_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Ki Blast shooting (weak - slow)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kiblast_x"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Ki Blast shooting (strong - fast)
[State -1]
type = ChangeState
value = 1001
triggerall = command = "kiblast_y"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Dodge (a la KOF'96-2002)
[State -1]
type = ChangeState
value = 702
triggerall = command = "dodgeroll"  || command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;dodge cancel
[State -1]
type = ChangeState
value = 712
triggerall = command = "dodgeroll"  || command = "c"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = stateno = [150,151]

;---------------------------------------------------------------------------
;Knockdown (a la KOF'96-2002)
[State -1]
type = ChangeState
value = 720
triggerall = command = "knockdown"  || command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Knockdown Air (a la KOF'96-2002)
[State -1]
type = ChangeState
value = 722
triggerall = command = "knockdown"  || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Knockdown cancel
[State -1]
type = ChangeState
value = 721
triggerall = command = "knockdown"  || command = "z"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = stateno = [150,151]
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
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
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
