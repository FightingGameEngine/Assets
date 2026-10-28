
;-| Button Remapping |-----------------------------------------------------
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 12

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "41236yc"
command = ~D, F,D ,F, x
time = 20
[Command]
name = "41236yc"
command = ~D, F,D, F, y
time = 20
[Command]
name = "SuperSG"
command = ~F, B, D ,F, y
time = 30

[Command]
name = "SuperSG"
command = ~F, B, D ,F,y
time = 30
buffer.time=15

;-| Special Motions |------------------------------------------------------
[Command]
name = "623X"
command = ~F, D, DF, x

[Command]
name = "623Y"
command = ~F, D, DF, y

[Command]
name = "236X"
command = ~D, DF, F, x

[Command]
name = "236Y"
command = ~D, DF, F, y

[Command]
name = "41236X"
command = ~D,DB,B, x
time = 18

[Command]
name = "41236Y"
command = ~D,DB,B, y
time = 18

[Command]
name = "28X"
command = ~20$D, $U, x
time = 18

[Command]
name = "28Y"
command = ~20$D, $U, y
time = 18






;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
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
============================================================================
;AI
[Command]
name = "AI0"
command = a,a,a,b
time = 0
[Command]
name = "AI1"
command = b,b,b,c
time = 0
[Command]
name = "AI2"
command = c,c,c,x
time = 0
[Command]
name = "AI3"
command = x,x,x,y
time = 0
[Command]
name = "AI4"
command = y,y,y,z
time = 0
[Command]
name = "AI5"
command = z,z,z,s
time = 0
[Command]
name = "AI6"
command = s,s,s,a
time = 0
[Command]
name = "AI7"
command = F,F,F,D
time = 0
[Command]
name = "AI8"
command = D,D,D,B
time = 0
[Command]
name = "AI9"
command = B,B,B,U
time = 0
[Command]
name = "AI10"
command = U,U,U,D
time = 0
[Command]
name = "AI11"
command = ~F, D, DF, a
time = 0
[Command]
name = "AI12"
command = ~F, D, DF, b
time = 0
[Command]
name = "AI13"
command = ~F, D, DF, x
time = 0
[Command]
name = "AI14"
command = ~D, DF, F, a
time = 0
[Command]
name = "AI15"
command = ~D, DF, F, b
time = 0
[Command]
name = "AI16"
command = ~D, DF, F, x
time = 0
[Command]
name = "AI17"
command = ~D, DB, B, a
time = 0
[Command]
name = "AI18"
command = ~D, DB, B, b
time = 0
[Command]
name = "AI19"
command = ~D, DB, B, x
time = 0
[Command]
name = "AI20"
command = ~D, DB, F, y
time = 0
[Command]
name = "AI21"
command = ~D, DB, B, x+y
time = 0
[Command]
name = "AI22"
command = ~B, F, DF, a+b
time = 0
[Command]
name = "AI23"
command = F,a,b
time = 0
[Command]
name = "AI24"
command = F,b,c
time = 0
[Command]
name = "AI25"
command = F,c,x
time = 0
[Command]
name = "AI26"
command = F,x,y
time = 0
[Command]
name = "AI27"
command = F,y,z
time = 0
[Command]
name = "AI28"
command = F,z,s
time = 0
[Command]
name = "AI29"
command = B,a,b
time = 0
[Command]
name = "AI30"
command = B,b,c
time = 0
[Command]
name = "AI31"
command = B,c,x
time = 0
[Command]
name = "AI32"
command = B,x,y
time = 0
[Command]
name = "AI33"
command = B,y,z
time = 0
[Command]
name = "AI34"
command = B,z,s
time = 0
[Command]
name = "AI35"
command = U,a,b
time = 0
[Command]
name = "AI36"
command = U,b,c
time = 0
[Command]
name = "AI37"
command = U,c,x
time = 0
[Command]
name = "AI38"
command = U,x,y
time = 0
[Command]
name = "AI39"
command = U,y,z
time = 0
[Command]
name = "AI40"
command = U,z,s
time = 0
[Command]
name = "AI41"
command = D,a,b
time = 0
[Command]
name = "AI42"
command = D,b,c
time = 0
[Command]
name = "AI43"
command = D,c,x
time = 0
[Command]
name = "AI44"
command = D,x,y
time = 0
[Command]
name = "AI45"
command = D,y,z
time = 0
[Command]
name = "AI46"
command = D,z,s
time = 0
[Command]
name = "AI47"
command = DF,a,b
time = 0
[Command]
name = "AI48"
command = DF,b,c
time = 0
[Command]
name = "AI49"
command = DF,x,y
time = 0
[Command]
name = "AI50"
command = DF,y,z
time = 0

[Statedef -1]

;--------------------------------------------------------------------------------------
[State -1]
type = VarSet
triggerall = var(59) = 0
trigger1 = Command = "AI0"
trigger2 = Command = "AI1"
trigger3 = Command = "AI2"
trigger4 = Command = "AI3"
trigger5 = Command = "AI4"
trigger6 = Command = "AI5"
trigger7 = Command = "AI6"
trigger8 = Command = "AI7"
trigger9 = Command = "AI8"
trigger10 = Command = "AI9"
trigger11 = Command = "AI10"
trigger12 = Command = "AI11"
trigger13 = Command = "AI12"
trigger14 = Command = "AI13"
trigger15 = Command = "AI14"
trigger16 = Command = "AI15"
trigger17 = Command = "AI16"
trigger18 = Command = "AI17"
trigger19 = Command = "AI18"
trigger20 = Command = "AI19"
trigger21 = Command = "AI20"
trigger22 = Command = "AI21"
trigger23 = Command = "AI22"
trigger24 = Command = "AI23"
trigger25 = Command = "AI24"
trigger26 = Command = "AI25"
trigger27 = Command = "AI26"
trigger28 = Command = "AI27"
trigger29 = Command = "AI28"
trigger30 = Command = "AI29"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
V = 59
Value = 0

;===========================================================================
;地上受身
[State 5050, 4] 
type = nothitby
triggerall = alive
triggerall = gethitvar(fall.recover) = 1
triggerall = time >= 1
trigger1 = var(19) = 0 & gethitvar(hittime) <= 0 
trigger1 = stateno != 5110 && statetype = L
value = SCA,AA,AT,AP
;===========================================================================
;空??帰
[State -1, Strong Kung Fu Blow]
type = nothitby
triggerall = alive
trigger1 = var(19) = 0 & gethitvar(hittime) <= 0 
trigger1 = gethitvar(fall) = 1
trigger1 = movetype = H
trigger1 = gethitvar(fall.recover) = 1
trigger1 = statetype = A 
trigger2 = stateno = 5040
trigger2 = HitOver
value = SCA,AA,AT,AP

;---------------------------------------------------------------------------
;フ?パ?ータック?
[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "41236yc"

triggerall = var(5) = 84
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;弱??闘気
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "28X"
triggerall = var(5) >= 4
trigger1 = stateno = 40 || (stateno = 50 && time < 2) || (stateno = [0,12])
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;強??闘気
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "28Y"
triggerall = var(5) >= 4
triggerall = numhelper(1000) = 0
trigger1 = stateno = 40 || (stateno = 50 && time < 2) || (stateno = [0,12])
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;弱?砲波
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "41236X"
triggerall = var(5) >= 10
triggerall = numhelper(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;強?砲波
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "41236Y"
triggerall = var(5) >= 14
triggerall = numhelper(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;弱Jシ??ダータック?
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "623X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;強Jシ??ダータック?
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = command = "623Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;弱指弾
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "236X"
triggerall = var(5) >= 6
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;---------------------------------------------------------------------------
;強指弾
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "236Y"
triggerall = var(5) >= 6
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430

;===========================================================================
;---------------------------------------------------------------------------
;強ビーストタック?
[State -1, Run Back]
type = ChangeState
value = 101
triggerall = var(59) = 0
trigger1 = command = "y"
trigger1 = var(22) = 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;弱ビーストタック?
[State -1, Run Back]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "x"
trigger1 = var(22) = 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシ?
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;K?げ
[State -1, Stand Strong Punch]
type = ChangeState
value = 820
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;P?げ
[State -1, Stand Strong Punch]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パ?チ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パ?チ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パ?チ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パ?チ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空?弱パ?チ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空?強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
