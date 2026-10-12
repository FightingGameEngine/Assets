
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

[Command]
name = "ax";Required (do not remove)
command = a+x
time = 1

[Command]
name = "by";Required (do not remove)
command = b+y
time = 1

[Command]
name = "cz";Required (do not remove)
command = c+z
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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
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

;---------------------------------------------------------------------------

[State -1, Taunt]
type = null;ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

[State 0, DisplayToClipboard]
type = null;DisplayToClipboard
trigger1 = 1
text = "P2body X: %d\n P2body Y: %d , roundstate = %d var(1) = %d var(20) = %d "
params = p2bodydist X, p2bodydist Y, roundstate, var(1), var(20)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(1) = %d var(3) = %d var(21) = %d Orb Shield = %d"
params = var(1), var(3), var(21), numhelper(60)

[State 0,Orb]
type = ChangeState
value = 660
trigger1 = var(59) < 1
trigger1 = numhelper(60)<3
trigger1 = (command = "by") || (command = "b" && command = "y")
trigger1 = statetype != A
trigger1 = ctrl

[State 0,Orb]
type = ChangeState
value = 660
trigger1 = var(59) > 0
trigger1 = numhelper(60) < 3
trigger1 = random < var(58) * 0.2
trigger1 = random < var(57)
trigger1 = statetype != A
trigger1 = ctrl

[State 0, Giga Plasma]
type = ChangeState
value = 650
trigger1 = var(59) < 1
trigger1 = (command = "ax") || (command = "a" && command = "x")
trigger1 = statetype != A
trigger1 = ctrl

[State 0, AI Giga Plasma]
type = ChangeState
value = 650
triggerall = var(55) >= 50
triggerall = AILevel > 2
triggerall = Life>Lifemax*0.2
triggerall =numhelper(10000) > 1
triggerall =numhelper(10001) > 1
triggerall = var(59) > 0
triggerall = var(51) = 1
trigger1 = random < var(58) * 0.9 + (life>lifemax*0.2&&(life<lifemax*0.8))
trigger1 = random < var(57)
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Teleport Back]
type = ChangeState
value = 105
trigger1 = var(59) < 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Teleport Back]
type = ChangeState
value = 105
triggerall = var(55) >= 50
triggerall = enemynear,facing = facing
triggerall = var(59) > 0
triggerall= random < var(58) * 0.2 + fvar(4) + (p2movetype = A) * 2.2
;trigger1 = random < var(57)
trigger1 = fvar(4)
trigger1 = statetype = S
trigger1 = ctrl

trigger2 = p2movetype = A
trigger2 = statetype = S
trigger2 = ctrl



[State -1, Teleport Forward]
type = ChangeState
value = 100
trigger1 = var(59) < 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Teleport Forward]
type = ChangeState
value = 100
triggerall = var(55) >= 50
triggerall = enemynear,facing != facing
triggerall = var(59) > 0
triggerall = random < var(58) * 0.2 + fvar(4) + (p2movetype = A) * 2.2
;trigger1 = random < var(57)
trigger1 = fvar(4)
trigger1 = statetype = S
trigger1 = ctrl

trigger2 = p2movetype = A
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Portal Laser]
type = ChangeState
value = 640
trigger1 = var(59) < 1
trigger1 = (command = "y" && command = "holdup") || command = "up_y"
trigger1 = numhelper (90641) < 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Portal Laser]
type = ChangeState
value = 640
triggerall = var(55) >= 200
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.2
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.4
trigger1 = numhelper (90641) < 1
trigger1 = numenemy
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Spawn Minion Darkness Shade]
type = ChangeState
value = 630
trigger1 = var(59) < 1
trigger1 = (command = "x" && command = "holdup") || command = "up_x"
trigger1 = numhelper(10001) < 2
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Spawn Minion Darkness Shade]
type = ChangeState
value = 630
trigger1 = var(55) >= 100
trigger1 = prevstateno != 630
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.1 + numenemy
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.7
trigger1 = numenemy
trigger1 = numhelper(10001) < 2
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Plasma Spiral]
type = ChangeState
value = 610
trigger1 = var(59) < 1
trigger1 = (command = "b" && command = "holdup") || command = "up_b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Plasma Spiral]
type = ChangeState
value = 610
trigger1 = var(55) >= 350
trigger1 = var(59) > 0
trigger1 = prevstateno != 610
trigger1 = random < var(58) * 0.8
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.5
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Spawn Minion Mecha Ball]
type = ChangeState
value = 600
trigger1 = var(59) < 1
trigger1 = (command = "a" && command = "holdup") || command = "up_a"
trigger1 = numhelper(10000) < 2
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Spawn Minion Mecha Ball]
type = ChangeState
value = 600
trigger1 = var(55) >= 100
trigger1 = prevstateno != 600
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.1
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.9
trigger1 = numenemy
trigger1 = numhelper(10000) < 2
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Ice Spike]
type = ChangeState
value = 440
trigger1 = var(59) < 1
trigger1 = (command = "y" && command = "holddown")|| command = "down_y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Ice Spike]
type = ChangeState
value = 440
trigger1 = var(55) >= 750
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.4
trigger1 = random < var(57)
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Eletric Shock]
type = ChangeState
value = 430
trigger1 = var(59) < 1
trigger1 = (command = "x" && command = "holddown") || command = "down_x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,AI Eletric Shock]
type = ChangeState
value = 430
trigger1 = var(55) >= 600
trigger1 = var(59) > 0
trigger1 = random < var(58) * 0.8
trigger1 = random < var(57)
trigger1 = p2bodydist X = [0,100]
trigger1 = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Fire Ball Launcher]
type = ChangeState
value = 410
trigger1 = var(59) < 1
trigger1 = (command = "b" && command = "holddown") || command = "down_b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Fire Ball Launcher]
type = ChangeState
value = 410
trigger1 = var(55) >= 850
trigger1 = var(59) > 0
trigger1 = random < var(58) * 0.5
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.9
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Eletric Rain]
type = ChangeState
value = 400
trigger1 = var(59) < 1
trigger1 = (command = "a" && command = "holddown") || command = "down_a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Eletric Rain]
type = ChangeState
value = 400
trigger1 = var(55) >= 850
trigger1 = var(59) > 0
trigger1 = random < var(58) * 0.2
trigger1 = random < var(57)
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Shot Bullet]
type = ChangeState
value = 240
trigger1 = var(59) < 1
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger1 = command != "up_y"
trigger1 = command != "down_y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Shot Bullet]
type = ChangeState
value = 240
trigger1 = var(55) >= 350
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.9
trigger1 = random < var(57)
trigger1 = life < lifemax * 0.45
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y = [-90,10]
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Laser Eye]
type = ChangeState
value = 230
trigger1 = var(59) < 1
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger1 = command != "up_x"
trigger1 = command != "down_x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Laser Eye]
type = ChangeState
value = 230
trigger1 = var(55) >= 450
trigger1 = var(59) > 0
trigger1 = random < var(58) * 0.3
trigger1 = random < var(57)
trigger1 = p2bodydist X = [0,150]
trigger1 = p2bodydist Y = [-80,30]
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Atk 2]
type = ChangeState
value = 210
trigger1 = var(59) < 1
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger1 = command != "up_b"
trigger1 = command != "down_b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Basic Attack 2]
type = ChangeState
value = 210
trigger1 = var(55) >= 200
trigger1 = var(59) > 0
trigger1 = random < var(58) * 1.5
trigger1 = random < var(57)
trigger1 = p2bodydist X = [20,210]
trigger1 = p2bodydist Y > -100
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Atk 1]
type = ChangeState
value = 200
trigger1 = var(59) < 1 
trigger1 = command = "a"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "up_a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Basic Attack 1]
type = ChangeState
value = 200
trigger1 = var(55) >= 200
trigger1 = var(59) > 0 
trigger1 = random < var(58) * 1.3
trigger1 = random < var(57)
trigger1 = p2bodydist X = [0,100]
trigger1 = p2bodydist Y = [-100,0]
trigger1 = statetype = S
trigger1 = ctrl



[State 0, AI On]
type = VarSet
trigger1 = AILevel
trigger1 = Roundstate = 2
;trigger1 = ctrl
v = 59
value = 1

[State 0, AI Off]
type = VarSet
trigger1 = !AILevel
trigger2 = Roundstate != 2
v = 59
value = 0

[State 0, Difficult]
type = VarSet
trigger1 = 1
v = 58
value = (AILevel=[1,2])*5 + (AILevel=[3,5]) * 20 + (AILevel >= 6) * 50

[State 0, Balance AI]
type = VarRandom
trigger1 = time = 0
v = 57
range = 1000,1000