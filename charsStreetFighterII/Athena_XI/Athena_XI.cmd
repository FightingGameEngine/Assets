;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "スーパーフェニックスインフィニティー"
command = ~D,DF,F,D,DF,F,c
time = 30


[Command]
name = "フェニックスファングアロー"
command = ~D,DF,F,D,DF,F,b
time = 30

[Command]
name = "フェニックスファングアロー"
command = ~D,DF,F,D,DF,F,a
time = 30


[Command]
name = "シャイニングクリスタルビット"
command = ~D,DF,F,D,DF,F,y
time = 35

[Command]
name = "シャイニングクリスタルビット"
command = ~D,DF,F,D,DF,F,x
time = 35



;-| 必殺技 |------------------------------------------------------
[Command]
name = "スーパーサイキックスルー"
command = ~B,DB,D,DF,F,y

[Command]
name = "スーパーサイキックスルー"
command = ~B,DB,D,DF,F,x


[Command]
name = "フェニックスアロー"
command = ~D,DB,B,b

[Command]
name = "フェニックスアロー"
command = ~D,DB,B,a


[Command]
name = "サイキックテレポート"
command = ~D,DF,F,b

[Command]
name = "サイキックテレポート"
command = ~D,DF,F,a


[Command]
name = "サイコリフレクター"
command = ~D,DB,B,a


[Command]
name = "サイコソード"
command = ~F,D,DF,y

[Command]
name = "サイコソード"
command = ~F,D,DF,x


[Command]
name = "サイコボールアタック"
command = ~D,DB,B,y

[Command]
name = "サイコボールアタック"
command = ~D,DB,B,x


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "フェニックスボム"
command = /$D,a
time = 1


[Command]
name = "連還腿"
command = /$F,a
time = 1


[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1



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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スーパーフェニックスインフィニティー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "スーパーフェニックスインフィニティー"
triggerall = power >= 2000
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290
trigger11= stateno = 600
trigger12= stateno = 651
trigger13= stateno = 250 && movecontact

trigger14= stateno = 1100 && movecontact
trigger15= stateno = 1400 && movecontact

trigger16= stateno = 1355

trigger17= stateno = 2000 && var(22) = 1
trigger18= stateno = 2100 && movecontact

;---------------------------------------------------------------------------
;フェニックスファングアロー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "フェニックスファングアロー"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 651
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 1100 && movecontact
trigger6 = stateno = 1400 && movecontact


;---------------------------------------------------------------------------
;シャイニングクリスタルビット(空中版)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2010
triggerall = command = "シャイニングクリスタルビット"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 651
trigger4 = stateno = 250 && movecontact

trigger5 = stateno = 1100 && movecontact
trigger6 = stateno = 1400 && movecontact


;---------------------------------------------------------------------------
;シャイニングクリスタルビット
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "シャイニングクリスタルビット"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290

trigger11= stateno = 1100 && movecontact

trigger12= stateno = 1355


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スーパーサイキックスルー
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "スーパーサイキックスルー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290

trigger11= stateno = 1355

;---------------------------------------------------------------------------
;フェニックスアロー
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "フェニックスアロー"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 651
trigger4 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;サイキックテレポート(空中)
[State -1, a]
type = ChangeState
value = 1350
triggerall = command = "サイキックテレポート"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 651
trigger4 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;サイキックテレポート
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "サイキックテレポート"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290

trigger11= stateno = 1355
;---------------------------------------------------------------------------
;サイコリフレクター
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "サイコリフレクター"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290

trigger11= stateno = 1355

;---------------------------------------------------------------------------
;サイコソード
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "サイコソード"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290
trigger11= stateno = 600
trigger12= stateno = 651
trigger13= stateno = 250 && movecontact

trigger14= stateno = 1355
;---------------------------------------------------------------------------
;サイコボールアタック
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "サイコボールアタック"
triggerall = statetype != A
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410
trigger10= stateno = 290

trigger11= stateno = 1355


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避後
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避前
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;ACタクティカルステップ
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = [200,249]
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "緊急回避前"
trigger1 = stateno = 5050
trigger1 = pos y >=-40
;---------------------------------------------------------------------------
;フロントステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ｎ・リバースブリーカー
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "投げ"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;フェニックスボム
[State -1, a]
type = ChangeState
value = 650
triggerall = command = "フェニックスボム"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact


;---------------------------------------------------------------------------
;連還腿
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "連還腿"
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 4,>=0
trigger3 = stateno = 205 && animelem = 4,>=0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 4,>=0
trigger3 = stateno = 205 && animelem = 4,>=0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235&& animelem = 3,>=0

;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && animelem = 4,>=0
trigger3 = stateno = 430 && animelem = 3,>=0


;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl