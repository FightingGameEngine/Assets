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
command.buffer.time = 3

;MvC2 Features
[Command]
name = "SnapBack"
command = D,F,D,F,z
time = 20 

[Command]
name = "Counter"
command = a+b+c
time = 10

[Command]
name = "X-Over Combo"
command = ~D,DF,F,x+a
time = 20

;Hypers
;-----------------------------
;Cyclone
[Command]
name = "Cyclone"
command = ~D, DF, F, x+y

[Command]
name = "Cyclone"
command = ~D, DF, F, x+z

[Command]
name = "Cyclone"
command = ~D, DF, F, y+z

;-----------------------------
;Rockets
[Command]
name = "Rockets"
command = ~D, DB, B, x+y

[Command]
name = "Rockets"
command = ~D, DB, B, x+z

[Command]
name = "Rockets"
command = ~D, DB, B, y+z

;-----------------------------
;Shockwave
[Command]
name = "Shockwave"
command = ~D, DF, F, a+b

[Command]
name = "Shockwave"
command = ~D, DF, F, a+c

[Command]
name = "Shockwave"
command = ~D, DF, F, b+c

;-----------------------------
;Plasma Beam
[Command]
name = "Plasma Beam"
command = ~D, DB, B, a+b

[Command]
name = "Plasma Beam"
command = ~D, DB, B, a+c

[Command]
name = "Plasma Beam"
command = ~D, DB, B, b+c

;Specials
;-----------------------------
;Drill
[Command]
name = "Drill X"
command = ~D, DF, F, x

[Command]
name = "Drill Y"
command = ~D, DF, F, y

[Command]
name = "Drill Z"
command = ~D, DF, F, z

;-----------------------------
;Plasma Bomb
[Command]
name = "Plasma Bomb"
command = ~D, DB, B, x

[Command]
name = "Plasma Bomb"
command = ~D, DB, B, y

[Command]
name = "Plasma Bomb"
command = ~D, DB, B, z

;-----------------------------
;Electric Terrain
[Command]
name = "Electric Terrain"
command = ~D, DF, F, a

[Command]
name = "Electric Terrain"
command = ~D, DF, F, b

[Command]
name = "Electric Terrain"
command = ~D, DF, F, c

;-----------------------------
;Teleport
[Command]
name = "Teleport A"
command = ~D, DB, B, a

[Command]
name = "Teleport B"
command = ~D, DB, B, b

[Command]
name = "Teleport C"
command = ~D, DB, B, c

;-----------------------------

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[command]
name = "throw"
command = a+b
time = 15

;Required (do not remove)

[Command]
name = "highjump"
command = $D
time = 1
buffer.time = 8

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1

[Statedef -1];Counter
[State -1, Counter]
type = ChangeState
value = 50100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Counter"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
triggerall = power >= 1000
trigger1 = stateno = [150,152]
ignorehitpause = 1



[State -1, Partner Assist]
type = ChangeState
value = 100700
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "b"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact
trigger2 = (stateno = [600, 650]) && MoveContact
trigger3 = (stateno = [1000, 2999]) && MoveContact

[State -1, Partner Change]
type = ChangeState
value = 100510
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "z"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact

;SnapBack
[State -1, SnapBack]
type = ChangeState
value = 50000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "SnapBack"
triggerall = var(33) = 1
triggerall = Power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && MoveContact

;X-Over Combination
[State -1]
type = ChangeState
value = 150099
triggerall = !numhelper(160000)
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "X-Over Combo"
triggerall = power >= 2000
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;Guard Push buffer reset
[State -1, buffer reset]
type = VarSet
trigger1 = stateno != [150,155]
var(11) = 0

;Guard Push buffer reset
[State -1, buffer for stuff]
type = VarSet
trigger1 = stateno = [150,155]
trigger1 = command = "recovery"
var(11) = 1

;Hyper Combos
;-----------------------------

;Cyclone
[State -1]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Cyclone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1100
trigger16 = stateno = 1300
trigger17 = stateno = 1400

;Shockwave
[State -1]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "Shockwave"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1100
trigger16 = stateno = 1300
trigger17 = stateno = 1400

;Plasma Beam
[State -1]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = command = "Plasma Beam"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1100
trigger16 = stateno = 1300
trigger17 = stateno = 1400

;Rockets
[State -1]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = command = "Rockets"
triggerall = power >= 1000
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 600
trigger15 = stateno = 610
trigger16 = stateno = 620
trigger17 = stateno = 630
trigger18 = stateno = 640
trigger19 = stateno = 650
trigger20 = stateno = 1000
trigger21 = stateno = 1001
trigger22 = stateno = 1100
trigger23 = stateno = 1300
trigger24 = stateno = 1400

;Cyclone
[State -1, Supercombo]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Cyclone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1100
trigger16 = stateno = 1300
trigger17 = stateno = 1400

;Cyclone
[State -1, Supercombo]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Cyclone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1100
trigger16 = stateno = 1300
trigger17 = stateno = 1400


;Specials
;-----------------------------

;Drill
[State -1]
type = ChangeState
value = 1000
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Drill X" || command = "Drill Y" || command = "Drill Z"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

;Air Drill
[State -1]
type = ChangeState
value = 1001
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Drill X" || command = "Drill Y" || command = "Drill Z"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
triggerall = stateno != 948
triggerall = prevstateno != 1001
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650

;Electric Terrain
[State -1]
type = ChangeState
value = 1100
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Electric Terrain"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

;Plasma Bomb
[State -1]
type = ChangeState
value = 1300
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Plasma Bomb"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

;Teleport
[State -1]
type = ChangeState
value = 1400
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Teleport A" || command = "Teleport B" || command = "Teleport C"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

 
[State -1]
type = null;ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl
;
;; ‹ó’†“Š‚°1
;[State -1]
;type = ChangeState
;value = 910
;triggerall = roundstate = 2 && !var(59)
;trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
;trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
;trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Throw
[State -1]
type = ChangeState
value = 800
triggerall = enemynear,statetype = S
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = ctrl = 1 && (command = "holdfwd") && (statetype = S) && !Var(59)
trigger1 = (command = "c") || (command = "z")

;Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810



;Standing Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;Standing Fierce Punch
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;Standing Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact


;Standing Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact


;Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger3 = stateno = 200 && animelem = 3,> 0

;Crouching Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


;Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;Crouching Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouching Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 630 && movecontact

;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact


;Dash Forwards
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "FF"
trigger1 = statetype != A && ctrl


;Dash Backwards
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;Double Jump
[State -1]
type = null;ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

;Jump
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = 420 && movehit &&  animelem = 3, > 0

;Crouch
[State -1]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
value = 10
ctrl = 1

;Guard Push
[State -1, Guard-push]
type = ChangeState
value = 160
triggerall = roundstate = 2 && !var(59)
trigger1 = var(11) = 1
trigger1 = stateno = 151 || stateno = 153 || stateno = 155

;Roll Backwards
[State -1, Roll Back]
type = ChangeState
value = 5121
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5110) && (alive = 1)
trigger2 = (stateno = 5120) && (alive = 1)

;Roll Foward
[State -1, Roll Foward]
type = ChangeState
value = 5122
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5110) && (alive = 1)
trigger2 = (stateno = 5120) && (alive = 1)

;Taunt
[State -1]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start" 
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101&& time > 3
value = 195



