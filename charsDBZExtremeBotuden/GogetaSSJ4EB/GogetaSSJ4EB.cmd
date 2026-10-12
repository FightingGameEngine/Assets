

[command]
name = "Big Bang Kamehameha"
command = y+b
time = 15

[command]
name = "Polvo Estrella"
command = c+z
time = 15

[command]
name = "Final Flast"
command = a+x
time = 15


[Command]
name = "holdz"
command = /z
time = 1

[command]
name = "c"
command = c
time = 15

[Command]
name = "up_a"
command = /$U,a
time = 1

[command]
name = "B"
command = b
time = 15

[command]
name = "A"
command = a
time = 15

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
[statedef -1]


;Big bang KamehamehaX100
[State -1, Big Bang Kamehameha]
type = ChangeState
value = 9017
triggerall = power >= 2000
triggerall = command = "Big Bang Kamehameha"
trigger1 = (statetype = s) && ctrl

;Polvo Estrella
[State -1, Polvo Estrella]
type = ChangeState
value = 8017
triggerall = power >= 3000
triggerall = command = "Polvo Estrella"
trigger1 = (statetype = s) && ctrl

;Big bang Kamehameha
[State -1, Final Flast]
type = ChangeState
value = 6017
triggerall = power >= 1000
triggerall = command = "Final Flast"
trigger1 = (statetype = s) && ctrl

; Float System (By Axellord)
[State -1, Taunt]
type = ChangeState
triggerall = pos y < 0
triggerall = ctrl
trigger1 = command = "down"
value = 50

; Taunt (Teleport)
[State -1, Taunt]
type = ChangeState
triggerall = command = "FF" && stateno!=1013
trigger1 = statetype != A
trigger1 = ctrl
value = 1013

; Taunt (Teleport)
[State -1, Taunt]
type = ChangeState
triggerall = command = "down" && stateno!=1013
trigger1 = statetype != A
trigger1 = ctrl
value = 1013

; Taunt (Teleport)
[State -1, Taunt]
type = ChangeState
triggerall = command = "holddown" && stateno!=1013
trigger1 = statetype != A
trigger1 = ctrl
value = 1013

; Taunt (Teleport)
[State -1, Taunt]
type = ChangeState
triggerall = command = "s" && stateno!=1013
trigger1 = statetype != A
trigger1 = ctrl
value = 1013

;z
[State -1, z]
type = ChangeState
value = 240
triggerall = power >= 50
triggerall = command = "z"
trigger1 = (statetype = s) && ctrl

;c
[State -1, c]
type = ChangeState
value = 250
triggerall = command = "c"
trigger1 = (statetype = s) && ctrl

;y
[State -1, y]
type = ChangeState
value = 220
triggerall = command = "y"
trigger1 = (statetype = s) && ctrl

;x
[State -1, x]
type = ChangeState
value = 210
triggerall = command = "x"
trigger1 = (statetype = s) && ctrl

;b
[State -1, b]
type = ChangeState
value = 230
triggerall = command = "b"
trigger1 = (statetype = s) && ctrl

;a
[State -1, a]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = (statetype = s) && ctrl


; Float System (By Axellord)
[State -1, Taunt]
type = ChangeState
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x" && stateno!=0
trigger2 = command = "y" && stateno!=0
trigger3 = command = "z" && stateno!=0
trigger4 = command = "a" && stateno!=0
trigger5 = command = "b" && stateno!=0
trigger6 = command = "c" && stateno!=0
trigger7 = command = "s" && stateno!=0
trigger8 = command = "down" && stateno!=0
value = 0


; Float System (By Axellord)
[State -1, Taunt]
type = ChangeState
triggerall = statetype = A
triggerall = anim != 44
triggerall = ctrl
trigger1 = command = "fwd" && stateno!=0
trigger2 = command = "back" && stateno!=0
value = 20
