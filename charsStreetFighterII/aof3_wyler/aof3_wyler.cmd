。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------

;-| ボタ?配置 |-----------------------------------------------------
;各ボタ?の配置を簡単に変更できます。
;このキ??クターのボタ?配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

;横並び上段
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;横並び下段
;[Remap]
;x = a
;y = b
;z = c
;a = x
;b = y
;c = z
;s = s

;[Remap]
;x = x
;y = a
;z = z
;a = y
;b = b
;c = c
;s = s

;-| 標?化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場?、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; ?通は1です。
command.buffer.time = 1

;-| A.I. |------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "LeadHeadbutt"
command = ~D, B, D, F, x
time = 30

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "Blackout"
command = ~D, DF, F, x
time = 20

[Command]
name = "LeadShoulder"
command = ~F, B, F, x
time = 20

[Command]
name = "OrbitToss"
command = ~$D, $U, x ;~D, U, x
time = 15

[Command]
name = "OrbitToss"
command = ~D, DB, B, x
time = 30

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同??し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタ? |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタ?単発 |---------------------------------------------------------------
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
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
time = 1

[Command]
name = "start"
command = s
time = 1

;---------------------------
;気力溜め

[Command]
name = "気力溜め"
command = /x
time = 1

[Command]
name = "気力溜め"
command = /y
time = 1

[Command]
name = "気力溜め"
command = /z
time = 1

[Command]
name = "気力溜め"
command = /a
time = 1

;------------------------------------------------------------------------------
;-| 方向キー?しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要?済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;?段パ?チ
[Command]
name = "hold_DF"
command = /$DF
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条?の設定（ステートエ?ト?ーパート）
;==============================================================================

[Statedef -1];←この行は絶対に消さないでください。必須の?目です。

;==============================================================================

;------------------------------------------------------------------------------

;LeadHeadbutt
[State -1, ]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "LeadHeadbutt"
triggerall = power >= 2000
triggerall = ((Life*100)/LifeMax) <= 25
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;==============================================================================

;OrbitToss
[State -1, ]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "OrbitToss"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;OrbitToss
[State -1, ]
type = ChangeState
value = 0
triggerall = var(59) != 1
triggerall = command = "OrbitToss"
triggerall = power < 500
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------

;LeadShoulder
[State -1, ]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "LeadShoulder"
triggerall = power >= 2000 && power <= 3000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;LeadShoulder
[State -1, ]
type = ChangeState
value = 1205
triggerall = var(59) != 1
triggerall = command = "LeadShoulder"
triggerall = power >= 1000 && power < 2000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;LeadShoulder
[State -1, ]
type = ChangeState
value = 1206
triggerall = var(59) != 1
triggerall = command = "LeadShoulder"
triggerall = power < 1000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;Blackout
[State -1, ]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "Blackout"
triggerall = power >= 2000 && power <= 3000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;Blackout
[State -1, ]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "Blackout"
triggerall = power >= 1000 && power < 2000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;Blackout
[State -1, ]
type = ChangeState
value = 1006
triggerall = var(59) != 1
triggerall = command = "Blackout"
triggerall = power < 1000
triggerall = statetype != A
trigger1 = movetype != H
trigger1 = ctrl

;==============================================================================

;ダッシ?
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;?げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "z" || command = "a"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = stateno != 100
triggerall = ctrl
trigger1 = p2bodydist X <= 70
trigger1 = p2movetype != H


;ア?ダー・スト?ート
[State -1, ]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "x" || command = "y"
triggerall = command = "hold_DF"
triggerall = statetype != A
triggerall = stateno != 100
triggerall = p2statetype = L
trigger1 = ctrl

;さばき
[State -1, Sabaki]
type = ChangeState
value = 270
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype != A
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = p2bodydist X < 120
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;==============================================================================

;------------------------------------------------------------------------------

;?段パ?チ
[State -1, ]
type = ChangeState
value = 223
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "hold_DF"
triggerall = p2statetype != L;?手がダウ??は出せない
triggerall = stateno != 11
triggerall = stateno != 400
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;?ッシ?攻?2
[State -1, ]
type = ChangeState
value = 221
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 210 && movecontact
trigger2 = stateno = 210 && time > 17

;?ッシ?攻?
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype != A || statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;カット・立ちパ?チ
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 201 && movecontact
trigger2 = stateno = 201 && time > 13

;立ちパ?チ
[State -1, Stand Punch]
type = ChangeState
value = 201
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;立ちパ?チ
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && time > 13

;------------------------------------------------------------------------------

;カット・立ちパ?チ
[State -1, ]
type = ChangeState
value = 241
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 231 && movecontact
trigger2 = stateno = 231 && time > 12

;立ちパ?チ
[State -1, Stand Punch]
type = ChangeState
value = 232
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;立ちパ?チ
[State -1, Stand Punch]
type = ChangeState
value = 231
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;立ちキック
[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "a" || command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105

;------------------------------------------------------------------------------

;しゃがみパ?チ
[State -1, Crouching Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x" || command = "y"
triggerall = command = "holddown"
triggerall = command != "OrbitToss"
trigger1 = statetype = C
trigger1 = stateno != 10
trigger1 = ctrl

;しゃがみパ?チ2
[State -1, Crouching Punch2]
type = ChangeState
value = 401
triggerall = var(59) != 1
triggerall = command = "x" || command = "y"
triggerall = command = "holddown"
triggerall = command != "OrbitToss"
trigger1 = stateno = 10
trigger2 = stateno = 100 || stateno = 105


;------------------------------------------------------------------------------

;空?パ?チ
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x" || command = "y" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;この下、一行以上空ける?…



