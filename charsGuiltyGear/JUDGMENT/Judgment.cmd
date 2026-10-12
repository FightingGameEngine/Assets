; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。


;==============================================================================
;------------------------------------------------------------------------------
;-|CPU |-----------------------------------------------------------------


[Command]
name = "CPU_001"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_002"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_003"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_004"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_005"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_006"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_007"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_008"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_009"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_010"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_011"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_012"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_013"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_014"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_015"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_016"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_017"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_018"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_019"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_020"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_021"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_022"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_023"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_024"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_025"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_026"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_027"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_028"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_029"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_030"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_031"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_032"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_033"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_034"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_035"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_036"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_037"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_038"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_039"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_040"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_041"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_042"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_043"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_044"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_045"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_046"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_047"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_048"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_049"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1

[Command]
name = "CPU_050"
command = y,a,B,b,a, D,a,B,b,a, D,U,U
time = 1


;==============================================================================
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------


[Command] 
name = "lastapokaripusu"
command = ~D, DB, B, D, DB, B, b
time = 30


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


[Command]
name = "chain"
command = ~D, DB, B, y

[Command]
name = "sabuba-toorakuru"
command = ~D, DF, F, y

[Command]
name = "abusoryu-topanisshu"
command = ~D, DF, F, x

[Command]
name = "ruinasupein"
command = ~D, DF, F, b


;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------


[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10


;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------


[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1


;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------


[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------


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


;---------------------------
;(パワー溜めステート用にコマンドを追加しています)


[Command]
name = "hold_c"
command = /c


;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------


[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1


;------------------------------------------------------------------------------
;-| 空中ジャンプ|-----------------------------------------------------


[Command]
name = "airjumpfwd"
command = UF
time = 1

[Command]
name = "airjump"
command = U
time = 1

[Command]
name = "airjumpback"
command = UB
time = 1

[Command]
name = "aircombofwd"
command = /UF
time = 1

[Command]
name = "aircombo"
command = /U
time = 1

[Command]
name = "aircomboback"
command = /UB
time = 1


;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]


;==============================================================================
;------------------------------------------------------------------------------
;===========================================================================
;------------------------------------------------------------------------------
;===========================================================================
;------------------------------------------------------------------------------


;ラスト・アポカリプス
[State -1,]
type = ChangeState
value = 3000
triggerall = !var(9)
triggerall = command = "lastapokaripusu"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger2 = movecontact


;===========================================================================


;アブソリュート・パニッシュ空中
[State -1,]
type = ChangeState
value = 1022
triggerall = !var(9)
triggerall = command = "abusoryu-topanisshu"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [600,699]
trigger2 = movecontact

;------------------------------------------------------------------------------


;アブソリュート・パニッシュ地上	
[State -1,]
type = ChangeState
value = 1020
triggerall = !var(9)
triggerall = command = "abusoryu-topanisshu"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,299]
trigger2 = movecontact


;------------------------------------------------------------------------------


;チェーン
[State -1,]
type = ChangeState
value = 1050
triggerall = !var(9)
triggerall = command = "chain"
triggerall = statetype != A
trigger1 = NumHelper(1050) = 0
trigger1 = ctrl = 1
trigger2 = NumHelper(1050) = 0
trigger2 = stateno = [200,299]
trigger2 = movecontact
trigger3 = PalNo >= 7
trigger3 = ctrl = 1
trigger4 = PalNo >= 7
trigger4 = stateno = [200,299]
trigger4 = movecontact


;==============================================================================
;------------------------------------------------------------------------------


;サブバート・オラクル
[State -1,]
type = ChangeState
value = 1010
triggerall = !var(9)
triggerall = command = "sabuba-toorakuru"
triggerall = statetype != A
trigger1 = NumHelper(1010) = 0
trigger1 = ctrl = 1
trigger2 = NumHelper(1010) = 0
trigger2 = stateno = [200,299]
trigger2 = movecontact
trigger3 = PalNo >= 7
trigger3 = ctrl = 1
trigger4 = PalNo >= 7
trigger4 = stateno = [200,299]
trigger4 = movecontact


;==============================================================================


;波動
[State -1,]
type = ChangeState
value = 1040
triggerall = !var(9)
triggerall = command = "ruinasupein"
triggerall = statetype = A
trigger1 = NumHelper(1040) = 0
trigger1 = ctrl = 1
trigger2 = NumHelper(1040) = 0
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = PalNo >= 7
trigger3 = ctrl = 1
trigger4 = PalNo >= 7
trigger4 = stateno = [600,699]
trigger4 = movecontact


;------------------------------------------------------------------------------


;ルイナス・ペイン
[State -1,]
type = ChangeState
value = 1000
triggerall = !var(9)
triggerall = command = "ruinasupein"
triggerall = statetype != A
trigger1 = NumHelper(1000) = 0
trigger1 = ctrl = 1
trigger2 = NumHelper(1000) = 0
trigger2 = stateno = [200,299]
trigger2 = movecontact
trigger3 = PalNo >= 7
trigger3 = ctrl = 1
trigger4 = PalNo >= 7
trigger4 = stateno = [200,299]
trigger4 = movecontact


;==============================================================================
;------------------------------------------------------------------------------


;ダッシュ
[State -1, ]
type = ChangeState
value = 100
triggerall = !var(9)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ
[State -1, Dash]
type = ChangeState
value = 500
triggerall = !var(9)
triggerall = var(0) <= 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = Pos Y <= -40
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = !var(9)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;空中バクステ
[State -1, Dash]
type = ChangeState
value = 505
triggerall = !var(9)
triggerall = var(0) <= 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = Pos Y <= -40
trigger1 = ctrl

;空中前ジャンプ
[State -1, ]
type = ChangeState
value = 510
triggerall = !var(9)
triggerall = var(0) <= 0
triggerall = command = "airjumpfwd"
trigger1 = Pos Y <= -40
trigger1 = Vel Y >= -1
trigger1 = statetype = A
trigger1 = ctrl

;空中垂直ジャンプ
[State -1, ]
type = ChangeState
value = 515
triggerall = !var(9)
triggerall = var(0) <= 0
triggerall = command = "airjump"
trigger1 = Pos Y <= -40
trigger1 = Vel Y >= -1
trigger1 = statetype = A
trigger1 = ctrl

;空中後ろジャンプ
[State -1, ]
type = ChangeState
value = 520
triggerall = !var(9)
triggerall = var(0) <= 0
triggerall = command = "airjumpback"
trigger1 = Pos Y <= -40
trigger1 = Vel Y >= -1
trigger1 = statetype = A
trigger1 = ctrl


;------------------------------------------------------------------------------
;==============================================================================
;------------------------------------------------------------------------------


;立ちP
[State -1,]
type = ChangeState
value = 200
triggerall = !var(9)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;立ちK
[State -1,]
type = ChangeState
value = 210
triggerall = !var(9)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;立ちS
[State -1,]
type = ChangeState
value = 220
triggerall = !var(9)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 200) || (stateno = 210)
trigger2 = movecontact

;立ちHS
[State -1,]
type = ChangeState
value = 230
triggerall = !var(9)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact

;------------------------------------------------------------------------------


;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(9)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------


;地面殴り(弱)
[State -1, ]
type = ChangeState
value = 400
triggerall = !var(9)
triggerall = statetype = S
trigger1 = command = "down_x"
trigger1 = ctrl
trigger2 = command = "down_a"
trigger2 = ctrl
trigger3 = command = "down_x"
trigger3 =  (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger4 = command = "down_a"
trigger4 =  (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger4 = movecontact

;地面殴り(強)
[State -1, ]
type = ChangeState
value = 410
triggerall = !var(9)
triggerall = statetype = S
trigger1 = command = "down_y"
trigger1 = ctrl
trigger2 = command = "down_b"
trigger2 = ctrl
trigger3 = command = "down_y"
trigger3 =  (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger4 = command = "down_b"
trigger4 =  (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger4 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------


;空中P
[State -1,]
type = ChangeState
value = 600
triggerall = !var(9)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;空中K
[State -1,]
type = ChangeState
value = 610
triggerall = !var(9)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;空中S
[State -1,]
type = ChangeState
value = 620
triggerall = !var(9)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;空中HS
[State -1,]
type = ChangeState
value = 630
triggerall = !var(9)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------


[State DeUcEoVsPaDeZ]
type=varrandom
trigger1=var(9)
v=18
range=0,20
ignorehitpause=1
persistent=1
pausemovetime=9999999
supermovetime=9999999
[State DeUcEoVsPaDeZ]
type=changestate
value=200
triggerall=roundstate=2&&var(9)=1
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype!=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=100
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=statetype=s
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=1000
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=numhelper(1000)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=400
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=410
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1010
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=numhelper(1010)=0
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1020
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=1050
triggerall=roundstate=2&&var(9)=1&&random<=5
triggerall=numhelper(1050)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=3000
triggerall=roundstate=2&&var(9)=1&&random<=2
triggerall=power>=1000
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno!=3000
[State DeUcEoVsPaDeZ]
type=changestate
value=1040
triggerall=roundstate=2&&var(9)=1
trigger1=time>=20&&statetype=a&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=200
triggerall=roundstate=2&&var(9)=2
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype!=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=210
triggerall=roundstate=2&&var(9)=2
trigger1=stateno=200&&movecontact
[State DeUcEoVsPaDeZ]
type=changestate
value=100
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=statetype=s
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=1000
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=numhelper(1000)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=400
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=410
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1010
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=numhelper(1010)=0
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1020
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=1050
triggerall=roundstate=2&&var(9)=2&&random<=10
triggerall=numhelper(1050)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=3000
triggerall=roundstate=2&&var(9)=2&&random<=2
triggerall=power>=1000
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno!=3000
[State DeUcEoVsPaDeZ]
type=changestate
value=1040
triggerall=roundstate=2&&var(9)=2
trigger1=time>=20&&statetype=a&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=200
triggerall=roundstate=2&&var(9)=3
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype!=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=210
triggerall=roundstate=2&&var(9)=3
trigger1=stateno=200&&movecontact
[State DeUcEoVsPaDeZ]
type=changestate
value=220
triggerall=roundstate=2&&var(9)=3
trigger1=stateno=210&&movecontact
[State DeUcEoVsPaDeZ]
type=changestate
value=230
triggerall=roundstate=2&&var(9)=3
trigger1=stateno=220&&movecontact
[State DeUcEoVsPaDeZ]
type=changestate
value=100
triggerall=roundstate=2&&var(9)=3&&var(18)=1
triggerall=statetype=s
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=1000
triggerall=roundstate=2&&var(9)=3&&var(18)=2
triggerall=numhelper(1000)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=400
triggerall=roundstate=2&&var(9)=3&&var(18)=1
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=410
triggerall=roundstate=2&&var(9)=3&&var(18)=2
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1010
triggerall=roundstate=2&&var(9)=3&&var(18)=3
triggerall=numhelper(1010)=0
triggerall=(p2dist x=[-75,75])
triggerall=p2statetype=c
trigger1=statetype=s&&ctrl
[State DeUcEoVsPaDeZ]
type=changestate
value=1020
triggerall=roundstate=2&&var(9)=3&&var(18)=3
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno=230
[State DeUcEoVsPaDeZ]
type=changestate
value=1050
triggerall=roundstate=2&&var(9)=3&&var(18)=4
triggerall=numhelper(1050)=0
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75
[State DeUcEoVsPaDeZ]
type=changestate
value=3000
triggerall=roundstate=2&&var(9)=3&&var(18)=5
triggerall=power>=1000
triggerall=statetype!=a
triggerall=ctrl
trigger1=p2dist x>75||prevstateno!=3000
[State DeUcEoVsPaDeZ]
type=changestate
value=1040
triggerall=roundstate=2&&var(9)=3
trigger1=time>=20&&statetype=a&&ctrl

