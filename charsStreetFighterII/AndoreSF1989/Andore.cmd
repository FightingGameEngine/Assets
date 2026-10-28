[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
Name = "360"
Command = ~B,BF,F,x
time = 40

[Command]
Name = "360"
Command = ~B,BF,F,y
time = 40

[Command]
Name = "360"
Command = ~$U,$B,$D,$F, x
time = 40

[Command]
Name = "360"
Command = ~$U,$F,$D,$B, x
time = 40

[Command]
Name = "360"
Command = ~$B,$D,$F,$U, x
time = 40

[Command]
Name = "360"
Command = ~$B,$U,$F,$D, x
time = 40

[Command]
Name = "360"
Command = ~$D,$F,$U,$B, x
time = 40

[Command]
Name = "360"
Command = ~$D,$B,$U,$F, x
time = 40

[Command]
Name = "360"
Command = ~$F,$U,$B,$D, y
time = 40

[Command]
Name = "360"
Command = ~$F,$D,$B,$U, y
time = 40

[Command]
Name = "360"
Command = ~$U,$B,$D,$F, y
time = 40

[Command]
Name = "360"
Command = ~$U,$F,$D,$B, y
time = 40

[Command]
Name = "360"
Command = ~$B,$D,$F,$U, y
time = 40

[Command]
Name = "360"
Command = ~$B,$U,$F,$D, y
time = 40

[Command]
Name = "360"
Command = ~$D,$F,$U,$B, y
time = 40

[Command]
Name = "360"
Command = ~$D,$B,$U,$F, y
time = 40

[Command]
name = "Butt"
command = ~F, D, DF, b
time=40

[Command]
name = "Butt"
command = ~F, D, DF, a
time=40

[Command]
name = "Crash"
command = ~30$B, F, x
time=40

[Command]
name = "Crash"
command = ~45$B, F, y
time=40




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
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]

;===========================================================================
; HELLS YES ANDORE HAS MORE THAN ONE MOVE LOLOLOLOLOL
;---------------------------------------------------------------------------
;Piledriver
;---------------------------------------------------------------------------
[State -1, SPD]
type = ChangeState
value = 819
triggerall = command = "360"
triggerall = statetype != A || stateno = 40
trigger1 = ctrl || stateno = 40
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = movehit

;---------------------------------------------------------------------------
;Butt Bomber
;---------------------------------------------------------------------------
[State -1, Ass]
type = ChangeState
value = 299
triggerall = command = "Butt"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = [200,400]

;---------------------------------------------------------------------------
; Andore Crash
;---------------------------------------------------------------------------
[State -1, Crash]
type = ChangeState
value = 399
triggerall = command = "Crash"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = movehit

;---------------------------------------------------------------------------
;Choke Throw
[State -1, Choke]
type = ChangeState
value = 799
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x <= 13

;---------------------------------------------------------------------------
;Light Punch
[State -1, LP]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Hard Punch
[State -1, HP]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Light Kick
[State -1, LK]
type = ChangeState
value = 202
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Hard Kick
[State -1, HK]
type = ChangeState
value = 203
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Crouch LP
[State -1, CLP]
type = ChangeState
value = 204
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Crouch HP
[State -1, CHP]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Crouch LK
[State -1, CLK]
type = ChangeState
value = 206
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Crouch HK
[State -1, CHK]
type = ChangeState
value = 207
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 204 || stateno = 206
trigger2 = (time >= 11 || movehit||moveguarded)

;---------------------------------------------------------------------------
;Air Jab
[State -1, ALP]
type = ChangeState
value = 208
triggerall = command = "x"
trigger1 = statetype = A && stateno != [300,400]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air HP
[State -1, AHP]
type = ChangeState
value = 209
triggerall = command = "y"
trigger1 = statetype = A && stateno != [300,400]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air LK
[State -1, ALK]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = statetype = A && stateno != [300,400]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air HK
[State -1, AHK]
type = ChangeState
value = 211
triggerall = command = "b"
trigger1 = statetype = A && stateno != [300,400]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl