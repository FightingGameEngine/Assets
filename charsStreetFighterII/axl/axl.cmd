;-| 超必殺技 |------------------------------------------------------
;アクセルラッシュ
[Command]
name = "axlrush"
command = ~B, F, DF, D, DB, FU, y
time = 40

;潜在能力
[Command]
name = "senzai"
command = ~F,B,DB,D,DF,F, y
time = 40

;アクセルラッシュRB用
[Command]
name = "axlrush2"
command = ~D,DF,F,D,DF,F,y
time = 40
;-| 必殺技 |------------------------------------------------------
;スマッシュボンバー弱
[Command]
name = "Smashx"
command = ~40$B,F, x

;スマッシュボンバー強
[Command]
name = "Smashy"
command = ~60$B,F, y

;トルネードアッパー弱
[Command]
name = "Tornadox"
command = ~D,DF,F,x

;トルネードアッパー強
[Command]
name = "Tornadoy"
command = ~D,DF,F,y

;アクセルダンス弱
[Command]
name = "Dancex"
command = ~x,x,x,x
time = 30

;アクセルダンス強
[Command]
name = "Dancey"
command = ~y,y,y,y
time = 30

;フェイント
[Command]
name = "feint"
command = /B,x+y

;斜め入力
[Command]
name = "mads"
command = /$DF
time = 1
;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = F, F, F, F, F, F, F,x+y+z
time = 0
;-| 方向とボタンで出す技 |-----------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1
;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）---------------------------------------------
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

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;必殺技↓
;===========================================================================
;アクセルラッシュ
[State -1, アクセルラッシュ]
type = ChangeState
value = 4000
triggerall = Power >= 1000
triggerall = var(20)  != 1
triggerall = command = "axlrush"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;===========================================================================
;RBモード潜在能力
[State -1, 潜在能力]
type = ChangeState
value = 4500
triggerall = Power >= 2000
triggerall = var(20)  = 1
triggerall = command = "senzai"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;アクセルダンス弱
[State -1, アクセルダンス弱]
type = ChangeState
value = 3000
triggerall = var(20)  != 1
triggerall = command = "Dancex"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;アクセルダンス強
[State -1, アクセルダンス強]
type = ChangeState
value = 3000
triggerall = var(20)  != 1
triggerall = command = "Dancey"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;スマッシュボンバー弱
[State -1, スマッシュボンバー弱]
type = ChangeState
value = 3100
triggerall = var(20)  != 1
triggerall = command = "Smashx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;スマッシュボンバー強
[State -1, スマッシュボンバー強]
type = ChangeState
value = 3110
triggerall = var(20)  != 1
triggerall = command = "Smashy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;トルネードアッパー弱
[State -1, トルネードアッパー弱]
type = ChangeState
value = 3200
triggerall = var(20)  != 1
triggerall = command = "Tornadox"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;トルネードアッパー強
[State -1, トルネードアッパー強]
type = ChangeState
value = 3250
triggerall = var(20)  != 1
triggerall = command = "Tornadoy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;===========================================================================
;RBモード
;===========================================================================
;アクセルラッシュ
[State -1, アクセルラッシュ]
type = ChangeState
value = 24000
triggerall = Power >= 1000
triggerall = var(20) = 1
triggerall = command = "axlrush2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0

;===========================================================================
;アクセルダンス弱
[State -1, アクセルダンス弱]
type = ChangeState
value = 23000
triggerall = var(20) = 1
triggerall = command = "Dancex"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;アクセルダンス強
[State -1, アクセルダンス強]
type = ChangeState
value = 23000
triggerall = var(20) = 1
triggerall = command = "Dancey"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;スマッシュボンバー弱
[State -1, スマッシュボンバー弱]
type = ChangeState
value = 23100
triggerall = var(20) = 1
triggerall = command = "Smashx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;スマッシュボンバー強
[State -1, スマッシュボンバー強]
type = ChangeState
value = 23110
triggerall = var(20) = 1
triggerall = command = "Smashy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;トルネードアッパー弱
[State -1, トルネードアッパー弱]
type = ChangeState
value = 23200
triggerall = var(20) = 1
triggerall = command = "Tornadox"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;トルネードアッパー強
[State -1, トルネードアッパー強]
type = ChangeState
value = 23250
triggerall = var(20) = 1
triggerall = command = "Tornadoy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =11200||stateno = 11210||stateno =  11220||stateno =  11230||stateno =  11260||stateno =  11270||stateno =  11400||stateno =  11410||stateno =  11420||stateno =  11106||stateno =  320||stateno =  310
trigger2 = animelem = 1> 0
;===========================================================================
;エレキアタック
[State -1, Jump Light Punch]
type = ChangeState
value = 1000
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 3
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヘルボンバー
[State -1, Jump Light Punch]
type = ChangeState
value = 1100
triggerall = command = "holdback"
triggerall = P2bodydist X < 4
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;フェイント
[State -1, アクセルダンス強]
type = ChangeState
value = 3299
triggerall = var(20)  = 1
triggerall = command = "feint"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =200||stateno = 210||stateno =  220||stateno =  230||stateno =  260||stateno =  270||stateno =  400||stateno =  410||stateno =  420||stateno =  106||stateno =  320||stateno =  310||stateno =  300
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;斜め歩き
[State -1, Jump Light Punch]
type = ChangeState
value = 15
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ0
[State -1, Jump Light Punch]
type = ChangeState
value = 1100
triggerall = command = "holdback"
triggerall = P2bodydist X < 6
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ1
[State -1, Jump Light Punch]
type = ChangeState
value = 1000
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 6
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;↓リアルバウトモード用コンビネーション↓
;===========================================================================
[State -1,300]
type = ChangeState
value = 300
triggerall = var(20)  = 1
trigger1 = command  = "x"
trigger1 = stateno  = 11200||stateno  = 11210||stateno  = 11220||stateno  = 11230
trigger1 = animelem = 3> 0

[State -1,310]
type = ChangeState
value = 310
triggerall = var(20)  = 1
triggerall = command  = "a"
trigger1 = stateno  = 300
trigger1 = animelem = 3> 0

[State -1,320]
type = ChangeState
value = 320
triggerall = var(20)  = 1
triggerall = command != "holdfwd"
trigger1 = command  = "y"
trigger1 = stateno  = 310
trigger1 = animelem = 3> 0

[State -1,350]
type = ChangeState
value = 350
triggerall = var(20)  = 1
triggerall = command  = "y"
triggerall = command  = "holdfwd"
trigger1 = stateno  = 310
trigger1 = animelem = 3> 0
trigger2 = stateno  = 360
trigger2 = animelem = 4> 0
trigger3 = stateno  = 330
trigger3 = animelem = 2> 0
;===========================================================================
[State -1,330]
type = ChangeState
value = 330
triggerall = var(20)  = 1
triggerall = command  = "x"
triggerall = command  = "holddown"
trigger1 = stateno  = 11400
trigger1 = animelem = 1> 0
;===========================================================================
[State -1,360]
type = ChangeState
value = 360
triggerall = var(20)  = 1
triggerall = command  = "y"
trigger1 = stateno  = 11230||stateno  = 11210
trigger1 = animelem = 3> 0


[State -1,370]
type = ChangeState
value = 370
triggerall = var(20)  = 1
triggerall = command  = "b"
trigger1 = stateno  = 360
trigger1 = animelem = 3> 0

;===========================================================================
;↓その他↓
;===========================================================================
;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;酒攻撃
[State -1]
type = ChangeState
value = 290
triggerall = var(20)  != 1
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = P2StateType = A
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小パンチ遠距離
[State -1]
type = ChangeState
value = 200
triggerall = var(20)  != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
value = 240
triggerall = var(20)  != 1
triggerall = command = "y"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小キック遠距離
[State -1]
type = ChangeState
value = 210
triggerall = var(20)  != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち強キック遠距離
[State -1]
type = ChangeState
value = 250
triggerall = var(20)  != 1
triggerall = command = "b"
triggerall = P2bodydist X > 11
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小パンチ近距離
[State -1]
type = ChangeState
value = 220
triggerall = var(20)  != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち大パンチ近距離
[State -1]
type = ChangeState
value = 260
triggerall = var(20)  != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小キック近距離
[State -1]
type = ChangeState
value = 230
triggerall = var(20)  != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち大キック近距離
[State -1]
type = ChangeState
value = 270
triggerall = var(20)  != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小パンチ
[State -1]
type = ChangeState
value = 400
triggerall = var(20)  != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 420
triggerall = var(20)  != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小キック
[State -1]
type = ChangeState
value = 410
triggerall = var(20)  != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大キック
[State -1]
type = ChangeState
value = 430
triggerall = var(20)  != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
value = 600
type = ChangeState
triggerall = var(20)  != 1
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
value = 610
type = ChangeState
triggerall = var(20)  != 1
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 600
type = ChangeState
triggerall = var(20)  != 1
triggerall = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大キック(前後)
[State -1]
value = 640
type = ChangeState
triggerall = var(20)  != 1
triggerall = Command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;以下RBモード用
;---------------------------------------------------------------------------
;酒攻撃
[State -1]
type = ChangeState
value = 11290
triggerall = var(20)  = 1
triggerall = command = "a"
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小パンチ遠距離
[State -1]
type = ChangeState
value = 11200
triggerall = var(20)  = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
value = 11240
triggerall = var(20)  = 1
triggerall = command = "y"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小キック遠距離
[State -1]
type = ChangeState
value = 11210
triggerall = var(20)  = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち強キック遠距離
[State -1]
type = ChangeState
value = 11250
triggerall = var(20)  = 1
triggerall = command = "b"
triggerall = P2bodydist X > 11
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小パンチ近距離
[State -1]
type = ChangeState
value = 11220
triggerall = var(20)  = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち大パンチ近距離
[State -1]
type = ChangeState
value = 11260
triggerall = var(20)  = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小キック近距離
[State -1]
type = ChangeState
value = 11230
triggerall = var(20)  = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち大キック近距離
[State -1]
type = ChangeState
value = 11270
triggerall = var(20)  = 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小パンチ
[State -1]
type = ChangeState
value = 11400
triggerall = var(20)  = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 11420
triggerall = var(20)  = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小キック
[State -1]
type = ChangeState
value = 11410
triggerall = var(20)  = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大キック
[State -1]
type = ChangeState
value = 11430
triggerall = var(20)  = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =52
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
value = 11600
type = ChangeState
triggerall = var(20)  = 1
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
value = 11610
type = ChangeState
triggerall = var(20)  = 1
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 11600
type = ChangeState
triggerall = var(20)  = 1
triggerall = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大キック(前後)
[State -1]
value = 11640
type = ChangeState
triggerall = var(20)  = 1
triggerall = Command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発1
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;振り向き
[State -1, syoryudan]
type = ChangeState
value = 987
triggerall = var(20)  = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
