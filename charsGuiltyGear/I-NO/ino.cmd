;-| Super Motions |--------------------------------------------------------
[Command]
name = "ˆâŒ¾"
command = ~D, F, D, F, b
time = 20
[Command]
name = "ˆâŒ¾"
command = ~D, F, D, F, ~b
time = 20

[Command]
name = "ŒÀŠE"
command = ~D, y
time = 30

[Command]
name = "ŒÀŠE"
command = ~D, ~y
time = 30

[Command]
name = "‘‹Û"
command = ~D, F, D, F, b
time = 25

[Command]
name = "‘‹Û"
command = ~D, F, D, F, ~b
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "ˆ¤î_K"
command = ~F, F, a
time = 25

[Command]
name = "ˆ¤î_K"
command = ~F, F, ~a
time = 25

[Command]
name = "‘å–Ø_S"
command = ~F, F, y
time = 20

[Command]
name = "‘å–Ø_S"
command = ~F, F, ~y
time = 20

[Command]
name = "‘å–Ø_HS"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "‘å–Ø_HS"
command = ~B, DB, D, DF, F, ~b
time = 20

[Command]
name = "RŸT"
command = ~D, DB, B, x

[Command]
name = "RŸT"
command = ~D, DB, B, ~x

[Command]
name = "‹¶Œ¾_P"
command = ~D, DF, F, x

[Command]
name = "‹¶Œ¾_K"
command = ~D, DF, F, a

[Command]
name = "‹¶Œ¾_K"
command = ~D, DF, F, ~a

[Command]
name = "‹¶Œ¾_S"
command = ~D, DF, F, y

[Command]
name = "‹¶Œ¾_S"
command = ~D, DF, F, ~y

[Command]
name = "‹¶Œ¾_HS"
command = ~D, DF, F, b

[Command]
name = "‹¶Œ¾_HS"
command = ~D, DF, F, ~b

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF2"     ;Required (do not remove)
command = ~F, ~$UF, F
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = D, $U
time = 8

[Command]
name = "highjump_n"
command = D, U
time = 8

[Command]
name = "highjump_f"
command = D, UF
time = 8

[Command]
name = "highjump_b"
command = D, UB
time = 8

[Command]
name = "highjumpcancel"
command = U, D, U
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "ˆêŒ‚•KE€”õ"
command = a+b+x+y

[Command]
name = "ˆêŒ‚•KE€”õ"
command = c+z

[Command]
name = "rc"
command = a+b+x

[Command]
name = "rc"
command = a+b+y

[Command]
name = "rc"
command = a+y+x

[Command]
name = "rc"
command = b+x+y

[Command]
name = "rc"
command = c

[Command]
name = "fd"
command = a+x

[Command]
name = "fd"
command = a+y

[Command]
name = "fd"
command = a+b

[Command]
name = "fd"
command = b+x

[Command]
name = "fd"
command = b+y

[Command]
name = "fd"
command = x+y

[Command]
name = "burst"
command = z+a

[Command]
name = "burst"
command = z+b

[Command]
name = "burst"
command = z+x

[Command]
name = "burst"
command = z+y

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_s"
command = /F,s
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
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
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

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "!hold_x"
command = ~x
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Statedef -1];---------------------------------------------------------------

[State -3]
type = changestate
trigger1 = ishelper
trigger1 = ishelper(780+root,id)
trigger1 = stateno != 780
value = 780

[State -1]
type = varset
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(2) = 0
triggerall = command = "holdfwd"
triggerall = time > 2
trigger1 = stateno = 1300||stateno = 1350||stateno = 1150
var(2) = 11
ignorehitpause = 1

[State -1]
type = varset
triggerall = !ishelper
triggerall = var(59) = 0
trigger1 = var(2) > 0
trigger1 = command != "holdfwd"
var(1) = 1
ignorehitpause = 1

[State -1]
type = varadd
triggerall = !ishelper
trigger1 = var(2) > 0
var(2) = -1
ignorehitpause = 1

[State -1]
type = varset
triggerall = !ishelper
triggerall = var(1) != 0
trigger1 = movetype = H
trigger2 = stateno = 110
trigger3 = var(2) = 0

var(1) = 0
ignorehitpause = 1

[State -1]
type = varset
triggerall = !ishelper
triggerall = var(2) != 0
trigger1 = movetype = H
trigger2 = stateno = 110
var(2) = 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 961
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 500
triggerall = statetype = A
triggerall = movetype != H
trigger1 = stateno = 1150
trigger1 = time = [15,21]
trigger2 = stateno = 1231
trigger2 = animelemtime(18) >= 0
trigger2 = animelemtime(19) < 0
trigger3 = stateno = 1300||stateno = 1350
trigger3 = time = [15,17]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 960
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 500
triggerall = statetype != A
triggerall = movetype != H
trigger1 = stateno = 1050
trigger1 = time = [22,24]
trigger2 = stateno = 1100
trigger2 = time = [22,23]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 950
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [196,899]) && (movecontact||fvar(28))
trigger2 = (stateno = [1000,3999]) && (movecontact||fvar(28))
trigger3 = (stateno = [196,3999]) && (var(6)||fvar(28))
trigger4 = (stateno = [196,451]) && var(29)

[State -1]
type = ChangeState
value = 951
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,899]) && (movecontact||fvar(28))
trigger2 = (stateno = [1000,3999]) && (movecontact||fvar(28))
trigger3 = (var(6)||fvar(28))
trigger4 = (stateno = [600,640]) && var(29)

[State -2]
type = ChangeState
value = 750
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"
triggerall = alive
trigger1 = (ctrl||fvar(28)) = 1
trigger2 = stateno = [100,101]
trigger3 = time <= 1
trigger3 = movetype = A
trigger3 = stateno = [200,640]
trigger3 = prevstateno != [200,640]

[State -1]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = command = "holdfwd"
triggerall = command = "fd"||(command = "holdx")+(command ="holda")+(command ="holdy")+(command ="holdb")>=2
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = Stateno = [150,153]

;---------------------------------------------------------------------------

[State -1, 3000]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(25) = 0
triggerall = power >= 1000
triggerall = command = "‘‹Û"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52

trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

trigger5 = (stateno = [200,451]) && var(29)
trigger5 = stateno != 241

[State -1, 3000]
type = ChangeState
value = 3100
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(25) = 0
triggerall = power >= 1000
triggerall = command = "ŒÀŠE"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10

;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4001
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(25) = 0
triggerall = var(40) = 1
triggerall = command = "ˆâŒ¾"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 40 || stateno = 52

trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)

;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(25) = 0
triggerall = var(40) < 2
triggerall = command = "ˆêŒ‚•KE€”õ"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 40 || stateno = 52

trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 1350
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ˆ¤î_K"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))||(stateno = 961&&movetype != H)
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10


[State -1]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(48) = 0
triggerall = var(30) = 0
triggerall = command = "ˆ¤î_K"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52

trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

trigger5 = (stateno = [200,451]) && var(29)
trigger5 = stateno != 241

[State -1]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "‹¶Œ¾_P"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10

[State -1]
type = ChangeState
value = 1210
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "‹¶Œ¾_K"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10

[State -1]
type = ChangeState
value = 1220
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "‹¶Œ¾_S"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10

[State -1]
type = ChangeState
value = 1230
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "‹¶Œ¾_HS"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10

[State -1]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(30) = 0
triggerall = command = "‘å–Ø_S"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52

trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

trigger5 = (stateno = [200,451]) && var(29)
trigger5 = stateno != 241

[State -1]
type = ChangeState
value = 1050
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(30) = 0
triggerall = command = "‘å–Ø_HS"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52

trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

trigger5 = (stateno = [200,451]) && var(29)
trigger5 = stateno != 241

[State -1]
type = ChangeState
value = 1150
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(48) = 0
triggerall = command = "RŸT"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,650]) && (movecontact || var(29))
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10


[State -1]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(48) = 0
triggerall = command = "RŸT"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = var(3) = 0
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52

trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

trigger5 = (stateno = [200,451]) && var(29)
trigger5 = stateno != 241

;---------------------------------------------------------------------------


[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State ‹ó’†“Š‚°]
type = ChangeState
value = 850
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 56
triggerall = p2bodydist Y > -80
triggerall = p2bodydist Y < 20
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;---------------------------------------------------------------------------
[State “Š‚°]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 23
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 40
triggerall = command = "fwd_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52
[State “Š‚°]
type = ChangeState
value = 805
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 23
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 40
triggerall = command = "back_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52
;===========================================================================

[State -1]
type = ChangeState
value = 130+(statetype = C)+(statetype = A)*2
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = power > 0
triggerall = var(25) = 1
triggerall = stateno != [110,115]
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 100 && time >= 9
trigger3 = stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)

;===========================================================================
[State -1]
type = ChangeState
value = 450
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_z"
triggerall = var(3) = 0
trigger1 = movecontact
trigger1 = (stateno = [200,230])||(stateno = [400,430])

[State -1]
type = ChangeState
value = 450
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno=12||stateno = 52

trigger4 = var(29)
trigger4 = (stateno = [200,230])||(stateno = [400,430])

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = var(3) = 0
trigger1 = (stateno = [200,230])||(stateno = [400,430])
trigger1 = movecontact

[State -1]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

trigger4 = (stateno = [200,230])||(stateno = [400,430])
trigger4 = var(29)

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_x"
triggerall = var(3) = 0
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

trigger4 = stateno = 200
trigger4 = time >= 7
trigger5 = stateno = 400
trigger5 = time >= 10

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "back_x"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))

[State -1]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = (command = "fwd_x")||((!movecontact&&(stateno!=[950,961]))&&(command = "x"&&command="holdfwd"&&command!="holddown"))
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 200||(stateno = [210,220])
trigger2 = movecontact&&var(3) = 0
trigger3 = stateno = [400,410]
trigger3 = movecontact&&var(3) = 0
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)
trigger5 = stateno = 12||stateno = 52

trigger6 = stateno = 200
trigger6 = time >= 7
trigger7 = stateno = 400
trigger7 = time >= 10

[State -1]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

trigger4 = stateno = 200
trigger4 = time >= 7
trigger5 = stateno = 400
trigger5 = time >= 10


[State -1]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_a"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 196]
trigger2 = time > ifelse(anim = 196,20,63)
trigger3 = stateno = 12||stateno = 52


trigger4 = stateno = 200
trigger4 = time >= 7
trigger5 = stateno = 400
trigger5 = time >= 10

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = var(3) = 0
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = stateno = 400
trigger2 = movecontact

[State -1]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

trigger4 = stateno = 200
trigger4 = time >= 7
trigger5 = stateno = 400
trigger5 = time >= 10

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_y"
triggerall = var(3) = 0
trigger1 = (stateno = [200, 225])
trigger1 = movecontact
trigger2 = stateno = 400||stateno = 410
trigger2 = movecontact

[State -1]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 196]
trigger2 = time > ifelse(anim = 196,20,63)
trigger3 = stateno = 12||stateno = 52

[State -1]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = p2bodydist X=[-30,32]
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 205||stateno = 210
trigger1 = movecontact
trigger2 = stateno = 400||stateno = 410
trigger2 = movecontact

[State -1]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = p2bodydist X=[-30,32]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28)) = 1
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 225
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = var(3) = 0
trigger1 = p2bodydist X > 32
trigger1 = stateno = 200||stateno = 205||stateno = 210
trigger1 = movecontact
trigger2 = p2bodydist X > 32
trigger2 = stateno = 400||stateno = 410
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact

[State -1]
type = ChangeState
value = 225
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 32
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28)) = 1
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "down_b"
triggerall = var(3) = 0
trigger1 = (stateno = [200,230])||(stateno = [400,420])
trigger1 = movecontact

[State -1]
type = ChangeState
value = 430
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [195, 196]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52

[State -1]
type = ChangeState
value = 235
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "back_b"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))

[State -1]
type = ChangeState
value = 235
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = (command = "fwd_b")||((!movecontact&&(stateno!=[950,961]))&&(command = "b"&&command="holdfwd"&&command!="holddown"))
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [200,205])
trigger2 = movecontact && var(3) = 0
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 12||stateno = 52

[State -1]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = var(3) = 0
trigger1 = (stateno = [200,225])||stateno = 400||stateno = 420
trigger1 = movecontact

[State -1]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = (ctrl||fvar(28)) = 1
trigger2 = stateno = [195, 197]
trigger2 = time > ifelse(anim = 196,18,64)
trigger3 = stateno = 12||stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];ŒhˆÓ
type = ChangeState
value = 196
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "fwd_s"
trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 40 || stateno = 52
trigger3 = stateno = [195,196]
trigger3 = time > ifelse(anim = 195,64,18)
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "start"

trigger1 = statetype != A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = 196
trigger4 = time > ifelse(anim = 195,64,18)

;---------------------------------------------------------------------------
[State ‚Q’iƒWƒƒƒ“ƒv]
type = ChangeState
value = 99
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) != 1
triggerall = var(12) = 0
trigger1 = var(13) = 2
trigger1 = ctrl
trigger1 = stateno != [120,155]
trigger2 = var(13) = 2
trigger2 = stateno = 620 && (movecontact||fvar(28))
trigger3 = var(13) = 2
trigger3 = stateno = 640 && (movecontact||fvar(28))
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "highjump" && var(17) = 1
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||fvar(28))
trigger2 = stateno = 210 && (movecontact||fvar(28))
trigger3 = stateno = 220 && (movecontact||fvar(28))
trigger4 = stateno = 230 && (movecontact||fvar(28))
;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||fvar(28))
trigger2 = stateno = 210 && (movecontact||fvar(28))
trigger3 = stateno = 220 && (movecontact||fvar(28))
trigger4 = stateno = 230 && (movecontact||fvar(28))
ignorehitpause = 1
[State -1];ƒWƒƒƒ“ƒv‘®«ƒeƒXƒg
type = varset
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||fvar(28))
trigger2 = stateno = 210 && (movecontact||fvar(28))
trigger3 = stateno = 220 && (movecontact||fvar(28))
trigger4 = stateno = 230 && (movecontact||fvar(28))
var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && (movecontact||fvar(28))
trigger2 = stateno = 210 && (movecontact||fvar(28))
trigger3 = stateno = 220 && (movecontact||fvar(28))
trigger4 = stateno = 230 && (movecontact||fvar(28))
;---------------------------------------------------------------------------
[State ‹ó’†ƒ_ƒbƒVƒ…]
type = ChangeState
value = 110
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF";||command = "FFG"
triggerall = pos y <= ifelse(vel y < 0,-30,-10)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = 241
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2

[State ‹ó’†ƒ_ƒbƒVƒ…]
type = ChangeState
value = 110
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "holdfwd"
triggerall = pos y <= ifelse(vel y < 0,-30,-10)

trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(1) = 1
trigger2 = stateno = 650 && ctrl
trigger2 = var(1) = 1
trigger3 = stateno = 961 && movetype != H
trigger3 = var(1) = 1
;---------------------------------------------------------------------------
[State ‹ó’†ƒ_ƒbƒVƒ…]
type = ChangeState
value = 115
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= ifelse(vel y < 0,-30,-10)
trigger1 = ((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger1 = var(13) < 2
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
trigger3 = stateno = 241
trigger3 = var(13) < 2
trigger4 = stateno = 650 && ctrl
trigger4 = var(13) < 2

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = (stateno = [600,630])
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 99 && prevstateno = 620

trigger5 = stateno = 100
trigger5 = time >= 10


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 99 && prevstateno = 620

trigger5 = stateno = 100
trigger5 = time >= 10
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6

trigger4 = stateno = 100
trigger4 = time >= 10
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6
trigger4 = stateno = 99 && prevstateno = 620

trigger5 = stateno = 100
trigger5 = time >= 10

;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 120
triggerall = var(59) = 0
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "holdback"
triggerall = command = "holdup"
triggerall = statetype = A
trigger1 = ctrl&&(Stateno!=[120,154])
trigger1 = inguarddist
