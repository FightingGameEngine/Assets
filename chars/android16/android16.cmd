
[Command]
name = "AI1"
command = U, D, U, D, U, D, U, D
time = 1
[Command]
name = "AI2"
command = U, D, U, D, U, D, U ,D,U
time = 1
[Command]
name = "AI3"
command = U, D, U, D, U, D, U ,D ,U ,D
time = 1
[Command]
name = "AI4"
command = U, D, U, D, U, D, U, D ,b
time = 1
[Command]
name = "AI5"
command = U, D, D, D, U, D, U, D, U
time = 1
[Command]
name = "AI6"
command = U, U, U, D, U, D, U ,D ,U ,D
time = 1
[Command]
name = "AI7"
command = U, D, U, D, U, D, U, D ,x
time = 1
[Command]
name = "AI8"
command = U, D, U, D, U, D, U ,D,U ,y
time = 1
[Command]
name = "AI9"
command = U, D, U, D, U, D, U ,D ,U ,D ,z
time = 1
[Command]
name = "AI10"
command = U, D, U, D, U, D, U, D ,U ,D ,a
time = 1
[Command]
name = "AI11"
command = U, D, U, D, U, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI12"
command = U, D, U, D, U, D, U ,D ,U ,D,c
time = 1
[Command]
name = "AI13"
command = U, D, U, D, U, D, U, D ,U ,D ,F
time = 1
[Command]
name = "AI14"
command = U, D, U, D, U, D, U ,D,U,D,U,B
time = 1
[Command]
name = "AI15"
command = U, D, U, D, U, D, U ,D ,U ,D,D,D
time = 1
[Command]
name = "AI16"
command = U, F, U, D, U, D, U ,D ,U ,D ,z
time = 1
[Command]
name = "AI17"
command = U, F, U, D, U, D, U, D ,U ,D ,a
time = 1
[Command]
name = "AI18"
command = U, F, U, D, U, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI19"
command = U, F, U, D, U, D, U ,U ,U ,D ,z
time = 1
[Command]
name = "AI20"
command = U, F, U, D, U, D, U, B ,U ,D ,a
time = 1
[Command]
name = "AI21"
command = U, F, U, D, B, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI22"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b
time = 1
[Command]
name = "AI23"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c
time = 1
[Command]
name = "AI24"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a
time = 1
[Command]
name = "AI25"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b,U
time = 1
[Command]
name = "AI26"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c,D
time = 1
[Command]
name = "AI27"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,F
time = 1
[Command]
name = "AI28"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,a,a
time = 1
[Command]
name = "AI29"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b,U,a,b
time = 1
[Command]
name = "AI30"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c,D,a,c
time = 1
[Command]
name = "AI31"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,F,a,c
time = 1

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Super Motions |--------------------------------------------------------

[Command]
name = "shinku"
command = ~D, F, D, F, y
time = 25

[Command]
name = "hellsattack"
command = ~D, F, D, F, b
time = 25

[Command]
name = "super"
command = ~D, B, F, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "dynamite"
command = ~D, B, F, y
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 15

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 15

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "shoulder"
command = ~D, F, a
time = 20

[Command]
name = "shoulder2"
command = ~D, F, b
time = 20

[Command]
name = "upper"
command = ~D, B, x
time = 25

[Command]
name = "upper2"
command = ~D, B, y
time = 25

[command]
name = "slashdown"
command = ~F, D, a
time = 20

[command]
name = "slashdown2"
command = ~F, D, b
time = 20

[Command]
name = "barrier"
command = ~D, D, x
time = 15

[Command]
name = "barrier2"
command = ~D, D, y
time = 15

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

[Command]
name = "counter"
command = x+a
time = 1

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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
time = 1

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

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]
[State -1,2]
type = Varset
triggerall = var(51) != 1
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
v = 51
value = 1;AI no settei

[state -2, ]
type = ChangeState
value = Ifelse(EnemyNear,StateType = C,131,130)
triggerall = Var(51) = 1
triggerall = Random <= ifelse (StateType = A, 100, 500) && Ctrl
trigger1 = StateType != A && (Enemy, HitDefAttr = SCA, AA, SA ,HA ,AP, SP, HP)
trigger1 = MoveType = I && ((EnemyNear, MoveType = A  && P2BodyDist X <= 50) || (Enemy, NumProj >= 1)) && Ctrl


[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life > 500
trigger1 = stateno = 201
trigger1 = movecontact
value = ifelse(random<=333,410,251)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life < 500
trigger1 = stateno = 201
trigger1 = movecontact
value = ifelse(random<=333,251,450)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life > 500
trigger1 = stateno = 251
trigger1 = movecontact
value = ifelse(random<=333,261,211)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life < 500
trigger1 = stateno = 251
trigger1 = movecontact
value = ifelse(random<=333,211,410)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 211
trigger1 = movecontact
value = 260

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 261
trigger1 = movehit
trigger2 = stateno = 420
trigger2 = movehit
value = 40

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 261
trigger1 = moveguarded
value = 2105

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = power >= 3000
trigger1 = stateno = 260
trigger1 = movehit
trigger1 = time >= 12
trigger2 = stateno = 210
trigger2 = p2statetype = S
trigger2 = movehit
value = 3200

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 260
trigger1 = movecontact
trigger1 = time >= 12
trigger1 = p2bodydist X <= 50
value = 2105

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 260
trigger1 = movecontact
trigger1 = time >= 12
trigger1 = p2bodydist X > 50
value = 2100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 400
trigger1 = movecontact
value = 450

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 450
trigger1 = movecontact
value = 410

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 410
trigger1 = movehit
trigger1 = time >= 11
trigger1 = p2bodydist X <= 25
value = 420

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 410
trigger1 = movecontact
trigger1 = time >= 11
value = 460

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 200
trigger1 = movecontact
value = 250

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
trigger1 = stateno = 250
trigger1 = movecontact
value = 210

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life > 500
trigger1 = stateno = 210
trigger1 = movecontact
value = ifelse(random<=333,260,2105)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = life < 500
trigger1 = stateno = 210
trigger1 = movecontact
value = ifelse(random<=333,2100,260)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2stateno = [190111,190116]
triggerall = power < 3000
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 0
value = 4500

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2moveType = A
triggerall = life = [250,500]
triggerall = power >= 2222
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [51,70]
value = 3100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2stateno != [0,20]
triggerall = p2moveType != H
triggerall = life = [501,750]
triggerall = power >= 2222
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 30
value = 3100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != H
triggerall = life < 500
triggerall = power >= 1000
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 200
value = 3000

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != H
triggerall = life < 500
triggerall = power >= 1000
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = prevstateno = 3000
triggerall = ctrl
trigger1 = p2bodydist X > 200
value = 3000

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2StateType != L
triggerall = p2moveType != A
triggerall = p2moveType != H
triggerall = life > 500
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 10
value = 800

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2StateType != L
triggerall = p2moveType != H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = ctrl
trigger1 = p2bodydist X <= 10
trigger2 = ctrl
trigger2 = p2moveType = A
trigger2 = p2bodydist X = [41,50]
trigger3 = stateno = 52 || stateno = 101
trigger3 = p2bodydist X = [11,40]
trigger4 = ctrl
trigger4 = life < 500
trigger4 = p2bodydist X <= 50
value = 2300

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = random <= (time%10)*111
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 100
value = ifelse(random<=333,2500,2550)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = power < 500
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 100
value = 4500

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = A
triggerall = p2moveType != H
triggerall = power >= 150
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [80,100]
trigger1 = p2bodydist Y <= -100
value = ifelse(random<=333,2450,2400)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType = A
triggerall = random <= 111
triggerall = prevstateno != 1001
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [16,20]
trigger2 = p2bodydist X = [36,40]
trigger3 = p2bodydist X = [56,60]
trigger4 = p2bodydist X = [76,80]
trigger5 = p2bodydist X = [96,100]
value = 1001

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2stateno = [5120,5201]
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 50
value = 1001

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = L
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 50
value = 1000

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = L
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 0
value = 195

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2moveType = H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 15
value = 211

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = p2moveType != H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 15
value = 201

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = life < 500
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 15
value = 251

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = p2moveType != H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [21,39]
value = 200

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = p2moveType != H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [31,49]
value = 250

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != C
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [61,70]
value = 210

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [25,45]
value = 260

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X <= 10
value = 400

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [31,40]
value = 450

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [11,30]
trigger2 = p2bodydist X = [41,60]
value = 410

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = p2moveType != H
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [85,100]
value = 460

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = p2moveType != H
triggerall = power >= 100
triggerall = numproj = 0
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [61,80]
trigger2 = p2bodydist X = [181,200]
value = 2010

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = S
triggerall = p2moveType != H
triggerall = power >= 100
triggerall = numproj = 0
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [161,180]
trigger2 = p2bodydist X > 240
value = 2000

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 100
trigger1 = prevstateno = [2000,2010]
value = 100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = p2bodydist X = [121,135]
trigger1 = stateno = [100,101]
value = 900

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2stateType = S
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = p2bodydist X = [181,195]
trigger1 = stateno = [100,101]
value = 910

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = p2bodydist X = [51,80]
trigger1 = stateno = [100,101]
value = 920

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype = A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = p2bodydist X = [101,130]
trigger1 = stateno = [100,101]
value = 930

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
trigger1 = p2bodydist X <= 15
trigger1 = stateno = 101
value = 102

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType = H
triggerall = life > 500
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = prevstateno = 2200 || prevstateno = 2250
triggerall = ctrl
trigger1 = p2bodydist X > 200
value = ifelse(random<=333,2105,100)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType = H
triggerall = life < 500
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = prevstateno = 2200 || prevstateno = 2250
triggerall = ctrl
trigger1 = p2bodydist X > 200
value = ifelse(random<=333,40,2100)

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType = A
triggerall = p2moveType != H
triggerall = power >= 150
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [135,150]
value = 2200

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2stateno = 40 || p2stateno = 52 || p2stateno >= 1000
triggerall = power >= 150
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [215,225]
trigger2 = p2bodydist X > 240
value = 2250

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [151,160]
trigger2 = p2bodydist X = [171,180]
trigger3 = p2bodydist X = [191,200]
value = 2100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X = [161,165]
trigger2 = p2bodydist X = [181,185]
trigger3 = p2bodydist X = [201,205]
trigger4 = p2bodydist X = [221,225]
trigger5 = p2bodydist X = [241,245]
value = 2105

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType = A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 150
value = 1001

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = life - p2life > 500
triggerall = prevstateno != 195
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = stateno != 191
triggerall = ctrl
trigger1 = p2bodydist X > 150
value = 195

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = prevstateno = 40
triggerall = ctrl
trigger1 = stateno = 50
trigger1 = p2bodydist X > 150
value = 110
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================必殺技========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; ヘルズアタック
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "hellsattack"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; ダイナマイトクラッシャー
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "super"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

; ヘルズフラッシュMAX
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; 空中ヘルズフラッシュMAX
[State -1,]
type = ChangeState
value = 3050
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------

; ハリケーンクラッシュ
[State -1,]
type = ChangeState
value = 2300
triggerall = command = "dynamite" && (P2BodyDist X <= 50) && (P2Movetype != H) && (p2statetype != A)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1


;---------------------------------------------------------------------------

; ロケットパンチ（弱）
[State -1]
type = ChangeState
value = 2010
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; ロケットパンチ（強）
[State -1]
type = ChangeState
value = 2000
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

; ショルダータックル（強）
[State -1]
type = ChangeState
value = 2105
triggerall = command = "shoulder2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact

; ショルダータックル（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = command = "shoulder"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact


;---------------------------------------------------------------------------

; ヘルズフラッシュ（弱）
[State -1]
type = ChangeState
value = 2200
triggerall = command = "tatsumaki"
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; ヘルズフラッシュ（強）
[State -1]
type = ChangeState
value = 2250
triggerall = command = "tatsumaki2"
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

;ロケットアッパー（強）
[State -1, ]
type = ChangeState
value = 2400
triggerall = (command = "upper2")
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;ロケットアッパー（弱）
[State -1, ]
type = ChangeState
value = 2450
triggerall = (command = "upper")
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && var(51)  != 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

;スーパードロップキック(弱)
[State -1, ]
type = ChangeState
value = 2500
triggerall = (command = "tatsumaki")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;スーパードロップキック(強)
[State -1, ]
type = ChangeState
value = 2550
triggerall = (command = "tatsumaki2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 700
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
; 気力溜め
[State -1]
type = ChangeState
value = 4500
triggerall = var(51) != 1
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;投げ
[State -1, ]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;---------------------------------------------------------------------------
;=======================ダッシュ攻撃========================================
;---------------------------------------------------------------------------

;ダッシュ弱パンチ
[State -1, ]
type = ChangeState
value = 900
triggerall = stateno = 101
trigger1 = command = "hold_x"

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = stateno = 101
trigger1 = command = "hold_y"

;ダッシュ強キック
[State -1, ]
type = ChangeState
value = 930
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 261
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 15) && (P2statetype != A)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
;trigger5 = stateno = 211 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 251
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger7 = stateno = 211 && movecontact

;---------------------------------------------------------------------------

;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 201
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201) && (AnimElem = 2,>3 || MoveContact)
trigger3 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 201 && MoveContact

;---------------------------------------------------------------------------
浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 201 && MoveContact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 201 && MoveContact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 201) && (movecontact)
trigger4 = (stateno = 250 || stateno = 251) && (movecontact)
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 611
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact)


