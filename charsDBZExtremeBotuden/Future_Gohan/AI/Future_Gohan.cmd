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
command.time = 15
command.buffer.time = 1

;-| CPU |-------------------------------------------------------

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpu10"
command = c,U,D,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu11"
command = a,U,D,F,F,B,B,B,D,U,U
time = 1
[Command]
name = "cpu12"
command = b,U,D,F,B,F,B,B,D,U,D
time = 1
[Command]
name = "cpu13"
command = c,U,D,B,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu14"
command = x,U,D,B,F,B,F,B,D,U,F
time = 1
[Command]
name = "cpu15"
command = y,U,D,F,F,B,B,B,D,U,a
time = 1
[Command]
name = "cpu16"
command = z,U,B,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu17"
command = s,U,D,B,F,B,F,B,D,U,c
time = 1
[Command]
name = "cpu18"
command = b,U,D,B,F,B,F,B,D,U,x
time = 1
[Command]
name = "cpu19"
command = c,U,D,F,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu20"
command = c,U,D,B,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu21"
command = a,U,D,F,F,s,B,B,D,U,U
time = 1
[Command]
name = "cpu22"
command = b,U,s,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu23"
command = c,U,D,B,F,B,F,s,D,U,B
time = 1
[Command]
name = "cpu24"
command = x,U,D,B,s,F,F,B,D,U,F
time = 1
[Command]
name = "cpu25"
command = y,U,D,s,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu26"
command = z,U,D,F,B,F,s,B,D,U,b
time = 1
[Command]
name = "cpu27"
command = s,U,D,s,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu28"
command = b,U,D,B,s,F,F,B,s,D,U,x
time = 1
[Command]
name = "cpu29"
command = c,U,D,F,s,B,F,B,D,U,y
time = 1
[Command]
name = "cpu30"
command = c,U,D,B,B,F,B,s,D,U,y
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Kamehameha1"
command = ~D, F, D, F, a
time = 25

[Command]
name = "Kamehameha2"
command = ~D, F, D, F, b
time = 25

[Command]
name = "makan1"
command = ~D, B, D, B, y
time = 25

[Command]
name = "makan2"
command = ~D, B, D, B, x
time = 25

[Command]
name = "masenko1"
command = ~D, F, D, F, y
time = 25

[Command]
name = "masenko2"
command = ~D, F, D, F, x
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "fukitobashi"
command = a+b
time = 20

[Command]
name = "fukitobashi2"
command = D+a+b
time = 10

[Command]
name = "fukitobashi3"
command = ~D,a+b
time = 10

[Command]
name = "fukitobashi4"
command = /$D,a+b
time = 10

[Command]
name = "fukitobashiue1"
command = U+a+b
time = 10

[Command]
name = "fukitobashiue2"
command = ~U,a+b
time = 10

[Command]
name = "fukitobashiue3"
command = /$U,a+b
time = 10

[Command]
name = "fukitobashimigi1"
command = F+a+b
time = 20

[Command]
name = "fukitobashimigi2"
command = ~F,a+b
time = 20

[Command]
name = "fukitobashimigi3"
command = /$F,a+b
time = 20

[Command]
name = "fukitobashihidari1"
command = B+a+b
time = 20

[Command]
name = "fukitobashihidari2"
command = ~B,a+b
time = 20

[Command]
name = "fukitobashihidari3"
command = /$B,a+b
time = 20

[Command]
name = "genkai"
command = x+y
time = 20

[Command]
name = "deathbeam"
command = ~D, B, F, y
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 20

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 20

[Command]
name = "hadouken"
command = ~D, DF, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, DF, F, y
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
name = "attack"
command = ~D, DF, F, a
time = 20

[Command]
name = "attack2"
command = ~D, DF, F, b
time = 20

[Command]
name = "mystic"
command = ~D, B, x
time = 20

[Command]
name = "mystic2"
command = ~D, B, y
time = 20

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
command = ~B, D, x
time = 15

[Command]
name = "barrier2"
command = ~B, D, y
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

[Command]
name="fwd"
command=F
time=1

[Command]
name="back"
command=B
time=1

[Command]
name="up"
command=U
time=1

[Command]
name="down"
command=D
time=1

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

; 超かめはめ波
[State -1,]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "Kamehameha1" || command = "Kamehameha2"  
triggerall = power >= 3000
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact
trigger17 = stateno = 7000 && movecontact

; 魔貫光殺砲
[State -1,]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "makan1" || command = "makan2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

; 魔閃光
[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "masenko1" || command = "masenko2"
triggerall = power >= 1000
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

; 魔閃光空中
[State -1,]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "masenko1" || command = "masenko2"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact
trigger9 = stateno = 1261 && movecontact

;龍翔撃
[State -1, ]
type = ChangeState
value = 7100
triggerall = var(59) = 0
triggerall = (command = "shoryuken")
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact

;龍翔撃強
[State -1, ]
type = ChangeState
value = 7101
triggerall = var(59) = 0
triggerall = (command = "shoryuken2")
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact

; エネルギー弾
[State -1,]
type = ChangeState
value = 7000
triggerall = var(59) = 0
triggerall = command = "hadouken"
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

; 連続エネルギー弾
[State -1,]
type = ChangeState
value = 7001
triggerall = var(59) = 0
triggerall = command = "hadouken2"
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

; 爆魔障壁
[State -1,]
type = ChangeState
value = 7200
triggerall = var(59) = 0
triggerall = command = "tatsumaki"
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

; 爆魔障壁強
[State -1,]
type = ChangeState
value = 7210
triggerall = var(59) = 0
triggerall = command = "tatsumaki2"
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact
;---------------------------------------------------------------------------
;吹き飛ばし上
[State -1, ]
type = ChangeState
value = 1103
triggerall = var(59) = 0
triggerall = (command = "fukitobashiue1") || (command = "fukitobashiue2") || (command = "fukitobashiue3")
triggerall = enemynear(0),anim = 888
trigger1 = (ctrl)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 270 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 271 && movecontact
trigger9 = stateno = 450 && movecontact
trigger10 = stateno = 460 && movecontact

;吹き飛ばし上
[State -1, ]
type = ChangeState
value = 1102
triggerall = var(59) = 0
triggerall = (command = "fukitobashiue1") || (command = "fukitobashiue2") || (command = "fukitobashiue3")
triggerall = enemynear(0),anim != 888
trigger1 = (ctrl)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 270 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 271 && movecontact
trigger9 = stateno = 450 && movecontact
trigger10 = stateno = 460 && movecontact

;吹き飛ばし下
[State -1, ]
type = ChangeState
value = 1101
triggerall = var(59) = 0
triggerall = (command = "fukitobashi2") || (command = "fukitobashi3") || (command = "fukitobashi4")
trigger1 = (ctrl)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 270 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 271 && movecontact
trigger9 = stateno = 450 && movecontact
trigger10 = stateno = 460 && movecontact

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = (command = "fukitobashi")
trigger1 = (ctrl)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 270 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 271 && movecontact
trigger9 = stateno = 450 && movecontact
trigger10 = stateno = 460 && movecontact

; ピシュン投げ
[State -1, Run Fwd]
type = ChangeState
value = 1295
triggerall = var(59) = 0
triggerall = var(30) < 3
triggerall = var(23) = 1
triggerall = power >= 500
triggerall = (command = "fukitobashihidari1") || (command = "fukitobashihidari2") || (command = "fukitobashihidari3")
trigger1 = (stateno = 1100) && (MoveHit)
trigger2 = (stateno = 1211) && (MoveHit)
trigger3 = (stateno = 1316) && (MoveHit)
trigger4 = (stateno = 1100) && (MoveHit)
trigger5 = (stateno = 1216) && (MoveHit)
trigger6 = (stateno = 1261) && (MoveHit)
trigger7 = (stateno = 1281) && (MoveHit)
trigger8 = (stateno = 7100) && (MoveHit)
trigger9 = (stateno = 7101) && (MoveHit)
trigger10 = ProjContact7000 = 1, < 15 
trigger11 = ProjContact7001 = 1, < 15 
trigger12 = (stateno = 1292) && (MoveHit)
trigger13 = (stateno = 1101) && (MoveHit)
trigger14 = (stateno = 1102) && (MoveHit)
trigger15 = (stateno = 1103) && (MoveHit)

; ピシュン横
[State -1, Run Fwd]
type = ChangeState
value = 1290
triggerall = var(59) = 0
triggerall = var(30) < 3
triggerall = var(23) = 1
triggerall = power >= 500
triggerall = (command = "fukitobashimigi1") || (command = "fukitobashimigi2") || (command = "fukitobashimigi3")
trigger1 = (stateno = 1100) && (MoveHit)
trigger2 = (stateno = 1211) && (MoveHit)
trigger3 = (stateno = 1316) && (MoveHit)
trigger4 = (stateno = 1100) && (MoveHit)
trigger5 = (stateno = 1216) && (MoveHit)
trigger6 = (stateno = 1261) && (MoveHit)
trigger7 = (stateno = 1281) && (MoveHit)
trigger8 = (stateno = 7100) && (MoveHit)
trigger9 = (stateno = 7101) && (MoveHit)
trigger10 = ProjContact7000 = 1, < 15 
trigger11 = ProjContact7001 = 1, < 15 
trigger12 = (stateno = 1292) && (MoveHit)
trigger13 = (stateno = 1101) && (MoveHit)
trigger14 = (stateno = 1102) && (MoveHit)
trigger15 = (stateno = 1103) && (MoveHit)

; ピシュン上
[State -1, Run Fwd]
type = ChangeState
value = 1270
triggerall = var(59) = 0
triggerall = var(30) < 3
triggerall = var(23) = 1
triggerall = power >= 500
triggerall = (command = "fukitobashiue1") || (command = "fukitobashiue2") || (command = "fukitobashiue3")
trigger1 = (stateno = 1100) && (MoveHit)
trigger2 = (stateno = 1211) && (MoveHit)
trigger3 = (stateno = 1316) && (MoveHit)
trigger4 = (stateno = 1100) && (MoveHit)
trigger5 = (stateno = 1216) && (MoveHit)
trigger6 = (stateno = 1261) && (MoveHit)
trigger7 = (stateno = 1281) && (MoveHit)
trigger8 = (stateno = 7100) && (MoveHit)
trigger9 = (stateno = 7101) && (MoveHit)
trigger10 = ProjContact7000 = 1, < 15 
trigger11 = ProjContact7001 = 1, < 15 
trigger12 = (stateno = 1292) && (MoveHit)
trigger13 = (stateno = 1101) && (MoveHit)
trigger14 = (stateno = 1102) && (MoveHit)
trigger15 = (stateno = 1103) && (MoveHit)

; ピシュン下
[State -1, Run Fwd]
type = ChangeState
value = 1250
triggerall = var(59) = 0
triggerall = var(30) < 3
triggerall = var(23) = 1
triggerall = power >= 500
triggerall = (command = "fukitobashi2") || (command = "fukitobashi3") || (command = "fukitobashi4")
trigger1 = (stateno = 1100) && (MoveHit)
trigger2 = (stateno = 1211) && (MoveHit)
trigger3 = (stateno = 1316) && (MoveHit)
trigger4 = (stateno = 1100) && (MoveHit)
trigger5 = (stateno = 1216) && (MoveHit)
trigger6 = (stateno = 1261) && (MoveHit)
trigger7 = (stateno = 1281) && (MoveHit)
trigger8 = (stateno = 7100) && (MoveHit)
trigger9 = (stateno = 7101) && (MoveHit)
trigger10 = ProjContact7000 = 1, < 15 
trigger11 = ProjContact7001 = 1, < 15 
trigger12 = (stateno = 1292) && (MoveHit)
trigger13 = (stateno = 1101) && (MoveHit)
trigger14 = (stateno = 1102) && (MoveHit)
trigger15 = (stateno = 1103) && (MoveHit)

; ピシュン
[State -1, Run Fwd]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = var(30) < 3
triggerall = var(23) = 1
triggerall = power >= 500
triggerall = (command = "fukitobashi")
trigger1 = (stateno = 1100) && (MoveHit)
trigger2 = (stateno = 1211) && (MoveHit)
trigger3 = (stateno = 1316) && (MoveHit)
trigger4 = (stateno = 1100) && (MoveHit)
trigger5 = (stateno = 1216) && (MoveHit)
trigger6 = (stateno = 1261) && (MoveHit)
trigger7 = (stateno = 1281) && (MoveHit)
trigger8 = (stateno = 7100) && (MoveHit)
trigger9 = (stateno = 7101) && (MoveHit)
trigger10 = ProjContact7000 = 1, < 15 
trigger11 = ProjContact7001 = 1, < 15 
trigger12 = (stateno = 1292) && (MoveHit)
trigger13 = (stateno = 1101) && (MoveHit)
trigger14 = (stateno = 1102) && (MoveHit)
trigger15 = (stateno = 1103) && (MoveHit)

;見極め上
[State -1, Run Fwd]
type = ChangeState
value = 1340
triggerall = var(59) = 0
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (command = "fukitobashiue1") || (command = "fukitobashiue2") || (command = "fukitobashiue3")
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
trigger1 = enemy(0),HitDefAttr = SCA, NA,SA
trigger1 = movetype = H

;見極め下
[State -1, Run Fwd]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (command = "fukitobashi2") || (command = "fukitobashi3") || (command = "fukitobashi4")
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
trigger1 = enemy(0),HitDefAttr = SCA, NA,SA
trigger1 = movetype = H

;見極め
[State -1, Run Fwd]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (command = "fukitobashi")
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
trigger1 = enemy(0),HitDefAttr = SCA, NA,SA
trigger1 = movetype = H

;---------------------------------------------------------------------------
; ギリギリ限界パワー
[State -1]
type = ChangeState
value = 4400
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = var(57) = 0
trigger1 = var(53) >= 3
trigger1 = command = "genkai"
;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = var(59) = 0
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = (var(50) < 1000 && var(21) = 1 ) || (power < 3000 && var(21) = 0)
triggerall = var(57) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;投げ
[State -1, ]
type = ChangeState
value = 800
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_x"

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_y"

;三連脚
[State -1, ]
type = ChangeState
value = 930
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 16)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 270
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
;trigger9 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 271
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = var(59) = 0
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = var(59) = 0
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4)  && (movecontact)


;=============================デバッグ========================================
[State -1, デバッグ表示1]
type = null;AppendToClipboard
trigger1 = 1
text = " AI:%d,%d,BodyDist X=%d,Y=%d"
params = var(59),var(58),floor(P2BodyDist X),ceil(P2BodyDist Y)
ignorehitpause = 1

[State -1, デバッグ表示2]
type = null;AppendToClipboard
trigger1 = 1
text = " Pos X=%d,Y=%d, Edge F=%d,B=%d"
params = ceil(Pos X),floor(Pos Y),FrontEdgeBodyDist,BackEdgeBodyDist
ignorehitpause = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;======================ここからAI用記述=====================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================追撃========================================
[State -1,挑発]
type = ChangeState
value = 195
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = Vel X = 0
triggerall = stateno != 195
triggerall = statetype != A
triggerall = Life > 800
triggerall = enemy,Numproj= 0
trigger1 = var(44) = 0
trigger1 = ctrl
trigger1 = p2bodydist X > 200
trigger1 = P2Life < 250
trigger1 = Random < 100

;====================反撃===================================================
;見極め
[State -1, Run Fwd]
type = ChangeState
value = 1300
triggerall = var(59) = [1,2]
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
triggerall = roundstate = 2
triggerall = enemy(0),HitDefAttr = SCA, NA,SA
triggerall = movetype = H
triggerall = enemynear,stateno != 2505
trigger1 = var(57) = 0
trigger1 = Random < 100*(var(59))
trigger1 = life >= 600
trigger2 = var(57) = 0
trigger2 = Random < 300*(var(59))
trigger2 = life < 500 || life >= 300
trigger2 = var(57) = 0
trigger3 = Random < 500*(var(59))
trigger3 = life < 300
trigger4 = var(57) = 1
trigger4 = Random < 300

;見極め上
[State -1, Run Fwd]
type = ChangeState
value = 1340
triggerall = var(59) = [1,2]
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
triggerall = roundstate = 2
triggerall = enemy(0),HitDefAttr = SCA, NA,SA
triggerall = movetype = H
triggerall = enemynear,stateno != 2505
trigger1 = var(57) = 0
trigger1 = Random < 100*(var(59))
trigger1 = life >= 600
trigger2 = var(57) = 0
trigger2 = Random < 300*(var(59))
trigger2 = life < 500 || life >= 300
trigger3 = var(57) = 0
trigger3 = Random < 500*(var(59))
trigger3 = life < 300
trigger4 = var(57) = 1

;見極め下
[State -1, Run Fwd]
type = ChangeState
value = 1320
triggerall = var(59) = [1,2]
triggerall = var(22) != 0
triggerall = (power >= 1500 && var(22) = 1) || (power >= 2000 && var(22) = 2)
triggerall = (stateno != 1300)
triggerall = (stateno != 1315)
triggerall = (stateno != 1316)
triggerall = (stateno != 1317)
triggerall = (stateno != 1320)
triggerall = (stateno != 1325)
triggerall = (stateno != 1326)
triggerall = (stateno != 1340)
triggerall = (stateno != 1345)
triggerall = (stateno != 1346)
triggerall = alive = 1
triggerall = roundstate = 2
triggerall = enemy(0),HitDefAttr = SCA, NA,SA
triggerall = movetype = H
triggerall = enemynear,stateno != 2505
trigger1 = Random < 100*(var(59))
trigger1 = life >= 600
trigger2 = Random < 300*(var(59))
trigger2 = life < 500 || life >= 300
trigger3 = Random < 500*(var(59))
trigger3 = life < 300
trigger4 = var(57) = 1

[State -1, ;龍翔撃]
type = ChangeState
value = 7100
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = ctrl
triggerall = StateType != A
triggerall = p2statetype != L
trigger1 = p2bodydist X = [-5,40]
trigger1 = Random = [900,900+(var(59)*2)]
trigger2 = p2movetype != H
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger2 = Random = [900,903+(var(59)*3)]

[State -1,高速移動 (前方)]
type = ChangeState
value = 1001
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = ctrl
triggerall = StateType != A
triggerall = p2statetype != L
trigger1 = p2bodydist X = [-10,60]
trigger1 = Random = [910,911+(var(59)*3)]
trigger2 = p2movetype != H
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger2 = Random = [910,916+(var(59)*4)]

[State -1,遠距離立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) = [1,2]
triggerall = StateType != A
triggerall = RoundState = 2
triggerall = ctrl
triggerall = P2StateType != L
triggerall = P2BodyDist X = [15,40]
triggerall = EnemyNear,AnimTime <= -4
triggerall = (PrevStateNo=[5000,5120]) || (PrevStateNo=[120,159])
triggerall = EnemyNear,ctrl = 0
trigger1 = Random = [0,8+(var(59)*8)]

[State -1, 屈み弱キック]
type = ChangeState
value = 450
triggerall = var(59) = [1,2]
triggerall = StateType != A
triggerall = RoundState = 2
triggerall = ctrl
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-5,33]
triggerall = EnemyNear,AnimTime <= -4 
triggerall = (PrevStateNo=[5000,5120]) || (PrevStateNo=[120,159])
triggerall = EnemyNear,ctrl = 0
trigger1 = Random = [600,ifelse(P2BodyDist X<15,634+(var(59)*16),619+(var(59)*10))]

[State -1, 投げ]
Type = ChangeState
value = 800
triggerall = var(59) = [1,2]
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = ctrl
triggerall = p2bodydist X = [-1,9]
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = P2MoveType = A
triggerall = EnemyNear,AnimTime <= -1
trigger1 = Random  = [30,30+var(59)]

;=============================ガード========================================
[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = inguarddist
triggerall = statetype = A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,80]
trigger1 = var(58) = [0,var(59)*30]
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,var(59)*38]
trigger3 = enemy,Numproj > 0 
trigger3 = var(58) = [0,var(59)*42]

[State -1, 対地 立ちガード]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = S
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,var(59)*17]
trigger2 = p2bodydist X = [-15,39]
trigger2 = var(58) = [10,10+(var(59)*17)]
trigger3 = enemy,teammode = simul
trigger3 = p2bodydist X = [-50,-16]
trigger3 = var(58) = [0,var(59)*32]
trigger4 = p2bodydist X = [-15,39]
trigger4 = enemy,hitdefattr = S, NA,SA,HA
trigger4 = Random < var(59)*120

[State -1, 対空 立ちガード]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,var(59)*32]
trigger2 = p2bodydist X = [-40,39]
trigger2 = var(58) = [0,var(59)*37]
trigger3 = p2bodydist X = [-40,39]
trigger3 = enemy,hitdefattr = A, NA,SA,HA
trigger3 = Random < var(59)*240

[State -1, しゃがみガード]
type  = ChangeState
value = 131
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
trigger1 = p2statetype = C
trigger1 = p2bodydist X = [40,85]
trigger1 = var(58) = [0,var(59)*20]
trigger2 = p2statetype = C
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,var(59)*32]
trigger3 = p2statetype = S
trigger3 = p2bodydist X = [-15,39]
trigger3 = var(58) = [0,var(59)*12]
trigger4 = p2statetype = C
trigger4 = enemy,teammode = simul
trigger4 = p2bodydist X = [-50,-16]
trigger4 = var(58) = [0,var(59)*32]
trigger5 = p2bodydist X = [-20,39]
trigger5 = enemy,hitdefattr = C, NA,SA,HA
trigger5 = Random < var(59)*180
trigger6 = enemy,Numproj > 0 
trigger6 = var(58) = [0,var(59)*42]

;=============================投げ========================================
[State -1, 投げ]
type  = ChangeState
value = 800
triggerall = var(59) = [1,2]
triggerall = Random  = [35,43+(var(59)*8)]
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X = [-1,4]
triggerall = (P2Movetype != H) && (p2statetype != A)
triggerall = roundstate = 2
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;=============================AI専用========================================
[State -1, 追撃待機]
type = ChangeState
value = 8000
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 2210 || stateno = 2251
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X < 100
trigger1 = var(58) = [0,50]
trigger2 = stateno = 2210 || stateno = 2251
trigger2 = AnimTime = 0
trigger2 = P2BodyDist X >= 100
trigger2 = var(58) = [0,50-((P2BodyDist X-100)/4)]
trigger3 = (stateno = [2301,2302]) || (stateno = [2351,2352])
trigger3 = AnimTime = 0
trigger3 = var(58) = [0,74-(P2BodyDist X/15)]
trigger4 = stateno = 930
trigger4 = AnimTime = 0
trigger4 = movehit
trigger4 = var(58) = [0,97]
trigger5 = stateno = 460
trigger5 = AnimTime = 0
trigger5 = movehit
trigger5 = var(58) = [0,39]

[State -1, 間合い調節]
type = ChangeState
value = 8020
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = Ctrl
trigger1 = P2StateNo = 712
trigger1 = var(58) = [0,ifelse(power<1000,49,29)]

;---------------------------------------------------------------------------
[State -1,魔貫光殺砲]
type = ChangeState
value = 3200
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = var(41) != 11
trigger1 = Life < 600
trigger1 = random < 50
trigger2 = var(57) = 0
trigger2 = P2Life < 200
trigger3 = enemynear,stateno = [120,155]
trigger4 = var(57) = 1
trigger4 = P2Life < 300

[State -1,超かめはめ波]
type = ChangeState
value = 2200
triggerall = var(59) = [1,2]
triggerall = var(23) = 0
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl
triggerall = var(43) = 0
triggerall = enemynear,stateno != [120,155]
trigger1 = BackEdgeBodyDist < 30
trigger1 = P2BodyDist X = [150,400]
trigger2 = enemynear(0),life < 400

[State -1,エネルギー弾]
type = ChangeState
value = 7000
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(57) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X = [100,130]
trigger1 = p2statetype != L
trigger1 = random < 50

[State -1,連続エネルギー弾]
type = ChangeState
value = 7001
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [150,230]
trigger1 = p2statetype != L
trigger1 = random < 20

[State -1,龍翔撃強]
type = ChangeState
value = 7101
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 910 && movehit
trigger1 = MoveHit = [5,19-var(59)]
trigger1 = var(58) = [0,MoveHit*5.5]
trigger2 = stateno = 8020
trigger2 = NumHelper(710)
trigger2 = Helper(710),StateNo = 711
trigger2 = Helper(710),StateTime = [7,14]
trigger2 = var(58) = [0,(Helper(710),StateTime)*7]

[State -1,龍翔撃]
type = ChangeState
value = 7100
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = roundstate = 2
trigger1 = Random = [965,969+(var(59)*15)]
trigger1 = P2movetype = A
trigger1 = p2statetype != L
trigger1 = p2bodydist X = [-5,40]
trigger2 = p2statetype != L
trigger2 = p2movetype != H
trigger2 = Random = [915,919+(var(59)*40)]
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger3 = stateno = 5120
trigger3 = p2bodydist X = [-5,40]
trigger3 = var(58) = [0,4+(var(59)*4)]
trigger4 = stateno = 5120
trigger4 = enemynear,vel Y > 0
trigger4 = enemynear,vel X > 0
trigger4 = p2bodydist X = [-5,40]
trigger4 = var(58) = [0,8+(var(59)*8)]

[State -1,高速移動 (後方)]
type = ChangeState
value = 7200
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
trigger1 = ctrl
trigger1 = Var(58) = 15
trigger2 = ctrl
trigger2 = p2stateno = 5120
trigger2 = var(58) = [50,74]

[State -1,高速移動 (後方)]
type = ChangeState
value = 7210
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
trigger1 = ctrl
trigger1 = Var(58) = 15
trigger2 = ctrl
trigger2 = p2stateno = 5120
trigger2 = var(58) = [50,74]

;=========================コンボ1===========================================
;吹き飛ばし上
[State -1, ]
type = ChangeState
value = 1103
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = p2statetype != L
triggerall = (ctrl)
trigger1 = P2Life >= 400
trigger1 = enemynear(0),anim = 888
trigger1  = var(57) = 1
trigger2 = enemynear(0),anim = 888
trigger2  = var(57) = 0

; ギリギリ限界パワー
[State -1]
type = ChangeState
value = 4400
triggerall = var(59) = [1,2]
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
triggerall = var(57) = 0
triggerall = var(53) >= 3
triggerall = roundstate = 2
trigger1 = life < 300
trigger2 = life > 900

[State -1,超かめはめ波]
type = ChangeState
value = 2200
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl
triggerall = var(43) = 0
triggerall = enemynear,stateno != [120,155]
trigger1 = var(40) = 4
trigger1 = prevstateno = 0
trigger2 = BackEdgeBodyDist < 30
trigger2 = P2BodyDist X = [150,400]
trigger2 = var(50) < 800 || enemynear(0),life < 300
trigger3 = var(50) < 50

[State -1,バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = var(40) <= 2
triggerall = P2Life < 500
trigger1 = enemynear(0),anim = 888
trigger2 = prevstateno = 0
trigger2 = var(40) >= 1

; ピシュン投げ
[State -1, Run Fwd]
type = ChangeState
value = 1295
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(30) < 3
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = power >= 500
trigger1 = (stateno = 1292) && (MoveHit)

; ピシュン横
[State -1, Run Fwd]
type = ChangeState
value = 1290
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = roundstate = 2
triggerall = var(57) = 1
trigger1  = (stateno = 1211) && (MoveHit)
trigger2  = (stateno = 1316) && (MoveHit)

; ピシュン
[State -1, Run Fwd]
type = ChangeState
value = 1200
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = roundstate = 2
trigger1 = var(41) = 1
trigger1 = stateno = 1102 && MoveHit

;吹き飛ばし上
[State -1, ]
type = ChangeState
value = 1102
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = RoundState = 2
triggerall = p2statetype != L
triggerall = (ctrl)
triggerall  = !(stateno = 105)
triggerall = P2BodyDist X = [-5,40]
trigger1 = random < 300
;=========================コンボ2===========================================

[State -1,魔閃光空中]
type = ChangeState
value = 3100
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = enemynear(0),anim != 888
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = P2BodyDist X = [-5,40]
trigger1 = statetype = A
trigger2 = stateno = 1261 && MoveHit

; ピシュン下
[State -1, Run Fwd]
type = ChangeState
value = 1250
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = var(30) < 3
triggerall = var(30) >= 2
triggerall = power >= 500
triggerall = roundstate = 2
trigger1 = stateno = 1281 && MoveHit

; ピシュン上
[State -1, Run Fwd]
type = ChangeState
value = 1270
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = var(30) < 3
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1103 && MoveHit
trigger3 = stateno = 1281 && MoveHit
trigger4 = stateno = 1316 && MoveHit
trigger5 = stateno = 1346 && Movehit

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = var(57) = 1
trigger1 = stateno = 660 && MoveContact

[State -1,ジャンプ強キック]
type = ChangeState
value = 660
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [610,620]
trigger1 = movecontact

[State -1,ジャンプ強パンチ]
type = ChangeState
value = ifelse(vel x = 0,610,620)
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [650,651]
trigger1 = movecontact

[State -1,ジャンプ弱キック]
type = ChangeState
value = ifelse(vel x = 0,650,651)
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [600,601]
trigger1 = movecontact

[State -1,ジャンプ弱パンチ]
type = ChangeState
value = ifelse(vel x = 0,600,601)
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = 8050
trigger1 = pos y < -50

[State -1, エリアルへ]
type = ChangeState
value = 8040
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 260 || stateno = 420
trigger1 = movehit

[State -1, 浮かし攻撃]
type = ChangeState
value = 420
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 410 && MoveContact

[State -1, 屈み強パンチ]
type = ChangeState
value = 410
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact

[State -1, 屈み弱キック]
type = ChangeState
value = 450
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X < 30
triggerall = (ctrl)
trigger1 = P2BodyDist X = [-5,40]

; ピシュン
[State -1, Run Fwd]
type = ChangeState
value = 1200
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 1
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = roundstate = 2
trigger1 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)

[State -1,エネルギー弾]
type = ChangeState
value = 7000
triggerall = var(59) = [1,2]
triggerall = var(57) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = var(42) != 1
trigger1 = (ctrl)
trigger1 = P2BodyDist X = [100,400]
trigger1 = random < 500
trigger1 = enemynear,stateno != [120,155]
trigger1 = enemynear,MoveType=H
trigger1 = BackEdgeBodyDist >= 30

;=========================コンボ3===========================================

[State -1,立ち弱キック（近距離）]
type = ChangeState
value = ifelse(P2BodyDist X <= 15,271,250)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = P2BodyDist X = [-5,40]
triggerall = StateType != A
triggerall = ctrl
triggerall = enemynear(0),anim != 888
trigger1 = random = [0,ifelse(p2movetype = A,3+(var(59)*12),9+(var(59)*40))]
trigger1 = p2statetype != L
trigger2 = var(58) = [0,7+(var(59)*7)]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger3 = p2movetype = I
trigger3 = p2statetype != L
trigger3 = enemynear,ctrl = 0
trigger3 = var(58) = [0,7+(var(59)*7)] 

[State -1,立ち強キック（遠距離）]
type = ChangeState
value = 270
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = var(57) = 0
trigger1 = stateno = 250 || stateno = 271
trigger1 = MoveHit
trigger1 = P2BodyDist X > 15
trigger1 = var(58) = [0,19+(var(59)*5)]
trigger2 = stateno = 250 || stateno = 271
trigger2 = MoveContact
trigger2 = P2BodyDist X > 15
trigger2 = var(58) = [30,80+(var(59)*7)]
trigger3 = stateno = 210 && MoveHit
trigger3 = var(58) = [0,37+(var(59)*5)]
trigger4 = stateno = 210 && MoveContact
trigger4 = var(58) = [50,87+(var(59)*5)]

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = var(57) = 0
trigger1 = stateno = 270 && MoveContact

; ピシュン上
[State -1, Run Fwd]
type = ChangeState
value = 1270
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 0
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = random < 300
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1211 && MoveHit
trigger3 = stateno = 1261 && MoveHit
trigger4 = stateno = 1281 && MoveHit
trigger5 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)
trigger6 = (ProjContact7001=1,>-1 && ProjContact7001=1 ,<1)
trigger7 = stateno = 1316 && Movehit
trigger8 = stateno = 1326 && Movehit
trigger9 = stateno = 1346 && Movehit
trigger10 = stateno = 1102 && Movehit
trigger11 = stateno = 1103 && MoveHit

; ピシュン
[State -1, Run Fwd]
type = ChangeState
value = 1200
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 0
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = random < 300
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1211 && MoveHit
trigger3 = stateno = 1261 && MoveHit
trigger4 = stateno = 1281 && MoveHit
trigger5 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)
trigger6 = (ProjContact7001=1,>-1 && ProjContact7001=1 ,<1)
trigger7 = stateno = 1316 && Movehit
trigger8 = stateno = 1326 && Movehit
trigger9 = stateno = 1346 && Movehit
trigger10 = stateno = 1102 && Movehit
trigger11 = stateno = 1103 && MoveHit

; ピシュン下
[State -1, Run Fwd]
type = ChangeState
value = 1250
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 0
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = random < 300
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1211 && MoveHit
trigger3 = stateno = 1261 && MoveHit
trigger4 = stateno = 1281 && MoveHit
trigger5 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)
trigger6 = (ProjContact7001=1,>-1 && ProjContact7001=1 ,<1)
trigger7 = stateno = 1316 && Movehit
trigger8 = stateno = 1326 && Movehit
trigger9 = stateno = 1346 && Movehit
trigger10 = stateno = 7100 && Movehit
trigger11 = stateno = 7101 && Movehit
trigger12 = stateno = 1102 && Movehit
trigger13 = stateno = 1103 && MoveHit

; ピシュン横
[State -1, Run Fwd]
type = ChangeState
value = 1290
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 0
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = random < 300
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1211 && MoveHit
trigger3 = stateno = 1261 && MoveHit
trigger4 = stateno = 1281 && MoveHit
trigger5 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)
trigger6 = (ProjContact7001=1,>-1 && ProjContact7001=1 ,<1)
trigger7 = stateno = 1316 && Movehit
trigger8 = stateno = 1326 && Movehit
trigger9 = stateno = 1346 && Movehit
trigger10 = stateno = 1102 && Movehit
trigger11 = stateno = 1103 && MoveHit

; ピシュン投げ
[State -1, Run Fwd]
type = ChangeState
value = 1295
triggerall = var(59) = [1,2]
triggerall = var(23) = 1
triggerall = var(57) = 0
triggerall = var(30) < 3
triggerall = power >= 500
triggerall = random < 300
triggerall = roundstate = 2
trigger1 = stateno = 1100 && MoveHit
trigger2 = stateno = 1211 && MoveHit
trigger3 = stateno = 1261 && MoveHit
trigger4 = stateno = 1281 && MoveHit
trigger5 = (ProjContact7000=1,>-1 && ProjContact7000=1 ,<1)
trigger6 = (ProjContact7001=1,>-1 && ProjContact7001=1 ,<1)
trigger7 = stateno = 1316 && Movehit
trigger8 = stateno = 1326 && Movehit
trigger9 = stateno = 1346 && Movehit

;=========================コンボ4===========================================

[State -1,立ち強キック（近距離）]
type = ChangeState
value = 260
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X <= 15
triggerall = roundstate = 2
triggerall = enemynear(0),anim != 888
trigger1 = stateno = 250 || stateno = 271
trigger1 = MoveHit
trigger1 = var(58) = [0,14+(var(59)*5)]
trigger2 = stateno = 250 || stateno = 271
trigger2 = MoveContact
trigger2 = var(58) = [25,84+(var(59)*5)]

[State -1, エリアルへ]
type = ChangeState
value = 8040
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 260 || stateno = 420
trigger1 = movehit
trigger1 = var(58) = [0,67+(var(59)*15)]
trigger2 = Ctrl
trigger2 = P2StateNo = 712
trigger2 = var(58) = [30,79+(var(59)*10)]

[State -1,ジャンプ弱パンチ]
type = ChangeState
value = ifelse(vel x = 0,600,601)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = 8050 && Var(5) = 1
trigger1 = pos y < -50

[State -1,ジャンプ弱キック]
type = ChangeState
value = ifelse(vel x = 0,650,651)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [600,601]
trigger1 = movecontact

[State -1,ジャンプ強パンチ]
type = ChangeState
value = ifelse(vel x = 0,610,620)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [650,651]
trigger1 = movecontact

[State -1,ジャンプ強キック]
type = ChangeState
value = 660
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [610,620]
trigger1 = movecontact

;吹き飛ばし下
[State -1, ]
type = ChangeState
value = 1101
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = stateno = 660 && MoveContact
trigger1 = power < 500
trigger2 = life > 800

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = stateno = 660 && MoveContact
trigger1 = power >= 500

;=========================コンボ5===========================================
[State -1,立ち弱パンチ]
type = ChangeState
value = ifelse(P2BodyDist X <= 15,211,200)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = P2BodyDist X = [-5,40]
triggerall = StateType != A
triggerall = ctrl
triggerall = enemynear(0),anim != 888
trigger1 = random = [0,ifelse(p2movetype = A,3+(var(59)*12),9+(var(59)*40))]
trigger1 = p2statetype != L
trigger2 = var(58) = [0,7+(var(59)*7)]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger3 = p2movetype = I
trigger3 = p2statetype != L
trigger3 = enemynear,ctrl = 0
trigger3 = var(58) = [0,7+(var(59)*7)] 

[State -1,立ち強パンチ（近距離）]
type = ChangeState
value = 210
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X <= 15
triggerall = enemynear(0),anim != 888
trigger1 = stateno = 200 || stateno = 211
trigger1 = MoveHit
trigger1 = var(58) = [0,14+(var(59)*5)]
trigger2 = stateno = 200 || stateno = 211
trigger2 = MoveContact
trigger2 = var(58) = [25,84+(var(59)*5)]

[State -1,立ち強パンチ（遠距離）]
type = ChangeState
value = 220
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 || stateno = 211
trigger1 = MoveHit
trigger1 = P2BodyDist X > 15
trigger1 = var(58) = [0,19+(var(59)*5)]
trigger2 = stateno = 200 || stateno = 211
trigger2 = MoveContact
trigger2 = P2BodyDist X > 15
trigger2 = var(58) = [30,80+(var(59)*7)]
trigger3 = stateno = 210 && MoveHit
trigger3 = var(58) = [0,37+(var(59)*5)]
trigger4 = stateno = 210 && MoveContact
trigger4 = var(58) = [50,87+(var(59)*5)]

;吹き飛ばし下
[State -1, ]
type = ChangeState
value = 1101
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
trigger1 = stateno = 220 && MoveContact
triggerall = random < 300

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
trigger1 = stateno = 220 && MoveContact
triggerall = random < 300

[State -1,魔閃光]
type = ChangeState
value = 3000
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2BodyDist X = [-5,40]
triggerall = roundstate = 2
trigger1 = p2statetype = L
trigger1 = ctrl
trigger1 = FrontEdgeDist > 50
trigger2 = ctrl
trigger2 = enemynear(0),anim = 888

;=========================コンボ6===========================================

[State -1, 屈み弱キック]
type = ChangeState
value = 450
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X < 30
trigger1 = Random < 1000-(P2BodyDist X*(90-(var(59)*12)))
trigger2 = P2BodyDist X = [-5,33]
trigger2 = random = [600,ifelse(p2movetype = A,609+(var(59)*12),609+(var(59)*70))]
trigger2 = P2StateType != L && P2StateType !=A
trigger2 = ctrl
trigger3 = p2bodydist x < 33
trigger3 = p2stateno != [120,159]
trigger3 = p2statetype != L && p2statetype != A
trigger3 = p2movetype = H
trigger3 = ctrl
trigger3 = var(58) = [50,79+(var(59)*5)]
trigger4 = p2bodydist x < 33
trigger4 = p2movetype = I
trigger4 = p2statetype != L && p2statetype != A
trigger4 = enemynear,ctrl = 0
trigger4 = ctrl
trigger4 = var(58) = [50,79+(var(59)*5)]

[State -1, 屈み強パンチ]
type = ChangeState
value = 410
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X >= 15
trigger1 = var(58) = [0,30+(P2BodyDist X-15)]
trigger2 = p2bodydist x = [30,42]
trigger2 = random = [750,760+(var(59)*7)]
trigger2 = p2statetype != L
trigger2 = p2movetype != A
trigger2 = ctrl

[State -1, 浮かし攻撃]
type = ChangeState
value = 420
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X >= 15
trigger1 = var(58) = [50,80+(P2BodyDist X-15)]

[State -1, 屈み強キック]
type = ChangeState
value = 460
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 410 && movecontact
trigger1 = prevstateno = 450
trigger1 = P2BodyDist X < 40
trigger1 = var(58) = [70,80+(var(59)*7)]
trigger2 = stateno = 410 && movecontact
trigger2 = prevstateno != 450
trigger2 = P2BodyDist X < 45
trigger2 = var(58) = [0,67+(var(59)*5)]
trigger3 = p2bodydist x = [34,65]
trigger3 = random = [600,609+(var(59)*15)]
trigger3 = p2statetype != L
trigger3 = p2movetype != A
trigger3 = ctrl

;吹き飛ばし上
[State -1, ]
type = ChangeState
value = 1102
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
trigger1 = stateno = 460 && MoveContact
trigger1 = random < 300

;吹き飛ばし
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
trigger1 = stateno = 410 && MoveContact
triggerall = random < 300

;=========================コンボ7===========================================
[State -1,ダッシュ弱パンチ]
type = ChangeState
value = 900
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = statetype != A
triggerall = stateno = 101
triggerall = roundstate = 2
trigger1 = p2stateno = 2051 || p2stateno = 2061
trigger1 = P2BodyDist X < 50
trigger1 = P2StateType != L
trigger1 = var(58) = [0,74]
trigger2 = p2stateno != 2051 && p2stateno != 2061
trigger2 = P2BodyDist X < 50
trigger2 = P2StateType != L
trigger2 = var(58) = [0,46]

[State -1,立ち弱パンチ]
type = ChangeState
value = ifelse(P2BodyDist X <= 15,211,200)
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = P2BodyDist X = [-5,40]
triggerall = StateType != A
trigger1 = stateno = 900 && MoveContact

[State -1,スライディングキック]
type = ChangeState
value = 910
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = statetype != A
triggerall = stateno = 101
triggerall = roundstate = 2
trigger1 = P2StateType = L && p2stateno != 5120
trigger1 = P2BodyDist X < 100
trigger2 = P2BodyDist X = [80,100]
trigger2 = P2StateType != L
trigger2 = var(58) = [90,99]

[State -1,三連脚]
type = ChangeState
value = 930
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = statetype != A
triggerall = stateno = 101
triggerall = roundstate = 2
trigger1 = p2stateno = 2051 || p2stateno = 2061
trigger1 = P2BodyDist X < 100
trigger1 = var(58) = [75,99]
trigger2 = p2stateno != 2051 && p2stateno != 2061
trigger2 = P2BodyDist X = [100,130]
trigger2 = P2StateType != L
trigger2 = var(58) = [0,9+((P2BodyDist X-100)/var(59))]

;============================特殊技=========================================
[State -1,ダッシュ]
type = ChangeState
value = 100
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemy,Numproj= 0
trigger1 = stateno = 8000
trigger1 = var(58) = [0,statetime*10]
trigger2 = stateno = 8100
trigger2 = var(58) = [0,statetime*10]
trigger3 = ctrl
trigger3 = p2bodydist X = [70,140]
trigger3 = p2statetype != L && p2movetype != A
trigger3 = random = [100,124]
trigger4 = ctrl
trigger4 = p2bodydist X > 140
trigger4 = p2statetype != L && p2movetype != A
trigger4 = random = [100,149]
trigger5 = ctrl
trigger5 = p2bodydist X > 140
trigger5 = random < 300

[State -1,バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = BackEdgeBodyDist > 30
trigger1 = p2stateno = 5120
trigger1 = var(58) = [0,24]
trigger2 = P2BodyDist X > 30
trigger2 = var(58) = [0,17]

[State -1,空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X > 100 && vel Y = 0
trigger1 = var(58) = [10,13]

[State -1,残像拳（カウンター）]
type = ChangeState
value = 700
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = stateno = [150,153]
triggerall = power >= 1200
triggerall = statetype != A
trigger1 = random = [500,500+(var(59)*2)]
trigger2 = BackEdgeBodyDist <= 30
trigger2 = random = [0,1+(var(59)*3)]

[State -1,高速移動 (後方)]
type = ChangeState
value = 1000
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
trigger1 = ctrl
trigger1 = Var(58) = 15
trigger2 = ctrl
trigger2 = p2stateno = 5120
trigger2 = var(58) = [50,74]
trigger3 = stateno = 101
trigger3 = P2StateType = L && p2stateno = 5120
trigger3 = P2BodyDist X < 100
trigger3 = var(58) = [50,74]

[State -1,高速移動 (前方)]
type = ChangeState
value = 1001
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Var(58) = 16
trigger2 = ctrl
trigger2 = enemy,Numproj > 0 
trigger2 = var(58) = [25,49]
trigger3 = ctrl
trigger3 = BackEdgeBodyDist <= 30
trigger3 = P2BodyDist X <= 50
trigger3 = var(58) = [0,22]
trigger4 = stateno = 101
trigger4 = P2StateType = L && p2stateno = 5120
trigger4 = P2BodyDist X < 60
trigger4 = var(58) = [0,24]
trigger5 = stateno = 101
trigger5 = p2stateno != 2051 && p2stateno != 2061
trigger5 = P2BodyDist X < 50
trigger5 = P2StateType != L
trigger5 = var(58) = [47,79]

[State -1,気力溜め]
type = ChangeState
value = 4500
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = Numproj = 0
triggerall = enemy,Numproj= 0
triggerall = (power < 3000 && var(21) = 0) || (var(57) = 0 && var(21) = 1)
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Life > 250
trigger1 = Var(58) = [50,52]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,79]
trigger3 = Power < 1500
trigger3 = Life > 250
trigger3 = p2bodydist X = [100,149]
trigger3 = Var(58) = [50,69]

[State -1, 気力溜め中止]
type = ChangeState
value = 4501
triggerall = var(59) = [1,2]
triggerall = var(57) = 0
triggerall = stateno = 4500
trigger1 = p2bodydist X < 85
trigger1 = p2statetype != L || P2StateNo = 5120
trigger2 = enemy,Numproj > 0 
trigger3 = p2movetype = A
trigger3 = Var(58) = [0,84]
trigger4 = p2bodydist X < 120
trigger4 = Vel X > 0
trigger5 = random < statetime/10
trigger6 = roundstate != 2
trigger7 = inguarddist
trigger7 = Var(58) = [0,89]
trigger8 = Life < 250 && Power > 1250
trigger8 = random < statetime

[State -1, CPU用オートターン]
type = Turn
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
trigger1   = P2BodyDist X < -200
trigger1   = statetype != A
trigger1   = stateno = [200,440]
trigger1   = Time = 1

[State -1, 地上受身]
type = ChangeState
value = 5200
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
triggerall = vel Y > 0
triggerall = alive
triggerall = canrecover
triggerall = pos Y < ifelse((anim = [5051,5059])||(anim = [5061,5069]), 0, 25)
triggerall = pos Y >= -20
trigger1   = Random < 50
trigger2   = var(58) = [20,39]
trigger2   = enemy,hitdefattr = SC, AA, AT, AP

[State -1, 空中受身]
type = ChangeState
value = 5210
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
triggerall = vel Y > -1
triggerall = alive
triggerall = canrecover
triggerall = pos Y = [-120,-20)
trigger1   = Random < 30
trigger2   = P2BodyDist X = [-90,90]
trigger2   = var(58) = [30,39]
trigger2   = enemy,hitdefattr = SA, AA, AT, AP

;=============================ＡＩスイッチ========================================
[State -1, AI起動用ヘルパー]
type=helper
triggerall = !NumHelper(9741)
triggerall = roundstate=2 && alive
triggerall = var(59) = 0
triggerall = ctrl && stateno=0
trigger1 = (PrevStateNo=[191,192])
trigger2 = PrevStateNo=5900
helpertype=normal
name="AI switch"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

[State -1, AIhelper]
type=changestate
trigger1= ishelper(9741)
trigger1= stateno!=9741
value=9741

[State -1, Random_AIvar]
type     = VarRandom
trigger1 = stateno != [120,155]
trigger1 = Time = 1
trigger2 = stateno = [0,99]
trigger2 = statetime = 10
v     = 58
range = 0,99

[State -1, AI Level]
type     = VarSet
triggerall = !var(59)
triggerall = RoundState = 2
trigger1 = (command="cpu1")||(command="cpu2")
trigger2 = (command="cpu3")||(command="cpu4")
trigger3 = (command="cpu5")||(command="cpu6")
trigger4 = (command="cpu7")||(command="cpu8")
trigger5 = (command="cpu9")||(command="cpu10")
trigger6 = (command="cpu11")||(command="cpu12")
trigger7 = (command="cpu13")||(command="cpu14")
trigger8 = (command="cpu15")||(command="cpu16")
trigger9 = (command="cpu17")||(command="cpu18")
trigger10 = (command="cpu19")||(command="cpu20")
trigger11 = (command="cpu21")||(command="cpu22")
trigger12 = (command="cpu23")||(command="cpu24")
trigger13 = (command="cpu25")||(command="cpu26")
trigger14 = (command="cpu27")||(command="cpu28")
trigger15 = (command="cpu29")||(command="cpu30")
trigger16 = NumHelper(9741)
trigger16 = Helper(9741),var(59)
var(59) = 2 ; AI Level 0-2
;0 = AIなし
;1 = Normal
;2 = Hard


;=============================技スイッチ========================================
;以下varを変更することで技の使用制限ができます

[State -1, ギリギリ限界パワー]
type     = VarSet
trigger1 = 1
var(20) = 1; (0：なし 1：あり) ※スパーキングモードありの場合のみ使用可能

[State -1, スパーキングモード]
type     = VarSet
trigger1 = 1
var(21) = 1; (0：なし 1：あり)

[State -1, 見極め]
type     = VarSet
trigger1 = 1
var(22) = 1; (0：なし 1：あり(1.5ゲージ) 2：あり(2ゲージ))

[State -1, 追撃]
type     = VarSet
trigger1 = 1
var(23) = 1; (0：なし 1：あり)

[State -1, 魔貫光殺砲 ガー不判定]
type     = VarSet
trigger1 = 1
var(24) = 1; (0：なし 1：あり)

[State -1, 気力ゲージ回収率]
type     = VarSet
trigger1 = 1
var(25) = 1; (0：低 1：中 2：高)

[State -1, 根性値]
type     = VarSet
trigger1 = 1
var(26) = 1; (0：なし 1：あり)