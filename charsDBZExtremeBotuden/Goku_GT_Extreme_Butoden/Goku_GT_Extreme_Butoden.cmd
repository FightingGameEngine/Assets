;#ADD004BASIC PIEs#
;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 25

[command]
name = "SPECIAL 2"
command = ~D,DB,B,a
time = 25

[command]
name = "SPECIAL 3"
command = ~D,DF,F,b
time = 25

[command]
name = "SPECIAL 4"
command = ~D,DB,B,b
time = 25

[command]
name = "SPECIAL 5"
command = ~D,DF,F,c
time = 25

[command]
name = "SPECIAL 6"
command = ~D,DB,B,c
time = 25
;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

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
name = "Dx"
command = D,x
time = 25

[Command]
name = "Da"
command = D,a
time = 25

[Command]
name = "Db"
command = D,b
time = 25

[Command]
name = "Dc"
command = D,c
time = 25

[Command]
name = "Dy"
command = D,y
time = 25

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

[Command]
name = "holdupfwd"
command = /$UF
time = 1
[Command]
name = "IA1"
command = D, DF, F, b,a
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
time = 1
[Command]
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1
[Command]
name = "IA29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
time = 1
[Command]
name = "IA30"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B
time = 1
[statedef -1]
;sys::-1::Partner-Assist-Registration
[state 0]
type=varset
trigger1=(stateno=190193)
sysvar(1)=7017 ;;<-Stat

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	value=190190
	ctrl=0
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=(sysfvar(4)>0) && (sysfvar(0)>0) && playeridexist(floor(sysfvar(0)))
	trigger1=(playerid(floor(sysfvar(0))),var(0)=90900) && (playerid(floor(sysfvar(0))),var(22)=4)
	ignorehitpause=1
;##Add.List01##
;//==========================
;// add004-1-sctrls-end
;//==========================






[State -1]
type = VarSet
triggerall = !var(59)
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17= command = "IA17"
trigger18= command = "IA18"
trigger19= command = "IA19"
trigger20= command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger29 = command = "IA29"
trigger30 = command = "IA30"
Trigger31 = NumHelper(30000) != 0
Trigger31 = Helper(30000),var(59)
ignorehitpause = 1
var(59)=1

[State -1, SPECIAL 1]
type = ChangeState
value = 6017
Triggerall = !var(59) && command = "SPECIAL 1"
trigger1 = (statetype = S) && ctrl
triggerall = power >= 1000

[State -1, SPECIAL 2]
type = ChangeState
value = 7017
Triggerall = !var(59) && command = "SPECIAL 2"
trigger1 = (statetype = S) && ctrl
triggerall = power >= 1000

[State -1, SPECIAL 3]
type = ChangeState
value = 8017
Triggerall = !var(59) && command = "SPECIAL 3"
trigger1 = (statetype = S) && ctrl
triggerall = power >= 1000

[State -1, SPECIAL 4]
type = ChangeState
value = 9017
Triggerall = !var(59) && command = "SPECIAL 4"
trigger1 = (statetype = S) && ctrl
triggerall = power >= 2000

;SPECIAL 5
[State -1, SPECIAL 5]
type = ChangeState
value = 10017
Triggerall = !var(59) && command = "SPECIAL 5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000

;SPECIAL 6
[State -1, SPECIAL 6]
type = ChangeState
value = 20017
Triggerall = !var(59) && command = "SPECIAL 6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000

;‹Ù‹}‰ñ”ð‘O
[State -1, Taunt]
type = ChangeState
value = 700
Triggerall = !var(59)
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = (150,151)

;FF
[State -1, FF]
type = ChangeState
value = 100
Triggerall = !var(59) && command = "FF"
trigger1 = (statetype = s) && ctrl

;BB
[State -1, BB]
type = ChangeState
value = 105
Triggerall = !var(59) && command = "BB"
trigger1 = (statetype = s) && ctrl

;start
[State -1, start]
type = ChangeState
value = 195
Triggerall = !var(59) && command = "start"
trigger1 = (statetype = s) && ctrl

;a
[State -1, a]
type = ChangeState
value = 200
Triggerall = !var(59) && command = "a"
trigger1 = (statetype = s) && ctrl

[State -1, a]
type = ChangeState
value = 201
triggerall =  !var(59) && command = "a"
trigger1 = (statetype = s) && ctrl

[State -1, a]
type = ChangeState
value = 202
triggerall =  !var(59) && command = "a"
trigger1 = (statetype = s) && ctrl

;b
[State -1, b]
type = ChangeState
value = 210
Triggerall = !var(59) && command = "b"
trigger1 = (statetype = s) && ctrl

[State -1, b]
type = ChangeState
value = 211
triggerall =  !var(59) && command = "b"
trigger1 = (statetype = S) && ctrl

[State -1, b]
type = ChangeState
value = 212
triggerall =  !var(59) && command = "b"
trigger1 = (statetype = S) && ctrl

;c
[State -1, c]
type = ChangeState
value = 500
Triggerall = !var(59) && command = "c"
trigger1 = (statetype = s) && ctrl

 ;a
[State -1, a]
type = ChangeState
value = 300
Triggerall = !var(59) && command = "a"
trigger1 = (statetype = c) && ctrl

 ;a
[State -1, a]
type = ChangeState
value = 400
Triggerall = !var(59) && command = "a"
trigger1 = (statetype = A) && ctrl

;b
[State -1, b]
type = ChangeState
value = 410
Triggerall = !var(59) && command = "b"
trigger1 = (statetype = A) && ctrl

;c
[State -1, c]
type = ChangeState
value = 510
Triggerall = !var(59) && command = "c"
trigger1 = (statetype = A) && ctrl

; AI
[State -1, SPECIAL 1]
type = ChangeState
value = 6017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <10

[State -1, SPECIAL 2]
type = ChangeState
value = 7017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = p2statetype = A && p2statetype != L
trigger1 = p2bodydist x <= 70
trigger1 = ctrl && random <20

[State -1, SPECIAL 3]
type = ChangeState
value = 8017
triggerall = power >= 2000
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 90
trigger1 = random < 30
trigger1 = ctrl

[State -1, SPECIAL 4]
type = ChangeState
value = 9017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x = (50,200)
trigger1 = ctrl && random <30

;SPECIAL 5
[State -1, SPECIAL 5]
type = ChangeState
value = 10017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <50

;SPECIAL 6
[State -1, SPECIAL 6]
type = ChangeState
value = 20017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 70
trigger1 = ctrl && random <50

;‹Ù‹}‰ñ”ð‘O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = p2movetype = A && p2bodydist x <= 15
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = (150,151)

;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(59)
triggerall = enemynear,statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 150



[State -1, RUN]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = Random <= 10
triggerall = RoundState = 2  && Alive
triggerall = statetype = S
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 10


[State -1,d]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = roundstate = 2  && Alive
triggerall = statetype = S
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = !inguarddist
trigger1 = p2bodydist x >= 240
trigger1 = random <= 10
trigger4 = enemynear,statetype = A && enemynear,movetype = H


;???????
[State -1,bs]
Type = ChangeState
value = 105
triggerall = var(59)
triggerall = roundstate = 2  && Alive
triggerall = statetype = S
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != S
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= 10
trigger2 = enemynear,statetype = L
trigger2 = p2bodydist x <= 40
trigger2 = random <= 10

;start
[State -1, start]
type = ChangeState
value = 195
Triggerall = var(59) && command = "start"
trigger1 = (statetype = s) && ctrl

;a
[State -1, a]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200

[State -1, a]
type = ChangeState
value = 201
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 200) && time > 5

[State -1, a]
type = ChangeState
value = 202
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 201) && time > 5

[State -1, b]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <700


[State -1, b]
type = ChangeState
value = 211
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall= p2bodydist x <= 50
trigger1 = ctrl && random <700
trigger2 = (stateno = 210) && time > 5

[State -1, b]
type = ChangeState
value = 212
triggerall = var(59)
triggerall = enemynear,movetype != A 
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <700
trigger2 = (stateno = 211) && time > 5

;c
[State -1, c]
type = ChangeState
value = 500
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x >= 50
trigger1 = ctrl && random <10

 ;a
[State -1, a]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
trigger1 = StateType != A
trigger1 = p2bodydist x <= 50
trigger1 = ctrl && random <400

[State -1, a]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist x <= 50
trigger1 = ctrl

[State -1, b]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist x <= 50
trigger1 = ctrl

[State -1, c]
type = ChangeState
value = 510
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = p2bodydist y >= 30
triggerall = StateType != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist x <= 80
trigger1 = ctrl
