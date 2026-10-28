;==============================
;必殺技
;==============================
;フ?ックフ?ック
[Command]
name = "SP1_w"
command = ~30$D, $U, a
time = 15

[Command]
name = "SP1_s"
command = ~30$D, $U, b
time = 15

;------------------------------
;??ダート
[Command]
name = "SP2"
command = ~D,F,~D,F, a
time = 15

[Command]
name = "SP2"
command = ~D,F,~D,F, b
time = 15

;-----------------------------
;バ?・?ゼ
[Command]
name = "SP3_w"
command = ~50$B, F, x
time = 15

[Command]
name = "SP3_s"
command = ~50$B, F, y
time = 15

;------------------------------
;ニード?シ??ー
[Command]
name = "SP4_4"
command = x+y+a+b
time = 1

[Command]
name = "SP4_w"
command = ~D,F,x
time = 15

[Command]
name = "SP4_s"
command = ~D, F, y
time = 15

;=======================================
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

;=====================================
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]
;====================================
;必殺技
;------------------------------------
;フ?ックフ?ック
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "SP1_w"
trigger1 = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5
trigger11 = StateNo = 40

[State -1]
type = ChangeState
value = 1010
triggerall = Command = "SP1_s"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5
trigger11 = StateNo = 40

;-----------------------------
;??ダート
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "SP2"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

;------------------------------
;バ?・?ゼ
[State -1]
type = ChangeState
value = 1200
triggerall = NumProjID(1200) = 0
triggerall = Command = "SP3_w"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

[State -1]
type = ChangeState
value = 1210
triggerall = NumProjID(1200) = 0
triggerall = Command = "SP3_s"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

;------------------------------
;ニード?シ??ー
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "SP4_4"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

[State -1]
type = ChangeState
value = 1310
triggerall = Command = "SP4_w"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

[State -1]
type = ChangeState
value = 1350
triggerall = Command = "SP4_s"
triggerall = StateType = S || StateType = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time <= 5
trigger3 = StateNo = 205 && Time <= 5
trigger4 = StateNo = 215 && Time <= 10
trigger5 = StateNo = 220 && Time <= 5
trigger6 = StateNo = 225 && Time <= 5
trigger7 = StateNo = 235 && Time <= 10
trigger8 = StateNo = 400 && Time <= 5
trigger9 = StateNo = 410 && Time <= 16
trigger10 = StateNo = 420 && Time <= 5

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------
;?げ
;フ??ケ?シ?タイナー
[State -1]
type = ChangeState
value = 800
triggerall = Command = "y" && Command = "holdfwd"
triggerall = P2BodyDist X < 25
trigger1 = StateType = S
trigger1 = Ctrl = 1

[State -1]
type = ChangeState
value = 805
triggerall = Command = "y" && Command = "holdback"
triggerall = P2BodyDist X < 25
trigger1 = StateType = S
trigger1 = Ctrl = 1

;フ?イ?グス?ー
[State -1]
type = ChangeState
value = 900
triggerall = Command = "y" && (Command = "holdfwd" || Command = "holdback")
triggerall = P2BodyDist X < 25
trigger1 = StateType = A
trigger1 = Ctrl = 1

;==============================
;通常技
;==============================
;立ち弱
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,205,200)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time > 5
trigger3 = StateNo = 205 && Time > 5 
trigger4 = StateNo = 400 && Time > 5
trigger5 = StateNo = 420 && Time > 5

;---------------------------------------------------------------------------
;立ち強
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,215,210)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl 
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 205 && Movecontact
trigger4 = StateNo = 220 && Movecontact
trigger5 = StateNo = 225 && Movecontact
trigger6 = StateNo = 400 && Movecontact
trigger7 = StateNo = 420 && Movecontact

;-----------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,225,220)
triggerall = Command = "a"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl 
trigger2 = StateNo = 200 && Time > 5
trigger3 = StateNo = 205 && Time > 5 
trigger4 = StateNo = 400 && Time > 5
trigger5 = StateNo = 420 && Time > 5

;-----------------------------
;立ち強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,235,230)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl 
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 205 && Movecontact
trigger4 = StateNo = 220 && Movecontact
trigger5 = StateNo = 225 && Movecontact
trigger6 = StateNo = 400 && Movecontact
trigger7 = StateNo = 420 && Movecontact

;---------------------------------------------------------------------------
;しゃがみ弱パ?チ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time > 5
trigger3 = StateNo = 205 && Time > 5 
trigger4 = StateNo = 400 && Time > 5
trigger5 = StateNo = 420 && Time > 5

;---------------------------------------------------------------------------
;しゃがみ強パ?チ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 205 && Movecontact
trigger4 = StateNo = 220 && Movecontact
trigger5 = StateNo = 225 && Movecontact
trigger6 = StateNo = 400 && Movecontact
trigger7 = StateNo = 420 && Movecontact

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = IfElse(Command = "holdfwd",300,420)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time > 5
trigger3 = StateNo = 205 && Time > 5 
trigger4 = StateNo = 400 && Time > 5
trigger5 = StateNo = 420 && Time > 5

;----------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = IfElse(Command = "holdfwd",310,430)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 205 && Movecontact
trigger4 = StateNo = 220 && Movecontact
trigger5 = StateNo = 225 && Movecontact
trigger6 = StateNo = 400 && Movecontact
trigger7 = StateNo = 420 && Movecontact

;---------------------------------------------------------------------------
;ジ??プ弱パ?チ
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;ジ??プ強パ?チ
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------
;ジ??プ弱キック
[State -1]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------
;ジ??プ強キック
[State -1]
type = ChangeState
value = IfElse((Vel X = 0),630,635)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
