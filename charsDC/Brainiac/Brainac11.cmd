
[Remap]
x = x     ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b     ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

[Command]
name = "ゼロドライブ"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "メタルデストロイヤー"
command = ~D, DB, B, D, DB,  z
time = 20

[Command]
name = "ファイナルプロトンキャノン"
command = ~D, DF, F, z+x
time = 15


[Command]
name = "一方通行"
command = ~D, DB, B, z+y
time = 15

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, z+y
time = 15



[Command]
name = "ハドロンブラスター"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "シーカーミサイル"
command = ~D, DB, B, x+y
time = 15


[command]
name = "31000"
command = D,B,a+b+c
time = 15



;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "FCQ_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "FCQ_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "ShockWave1"
command = ~B, DB, D, DF, F, z

[Command]
name = "teleport1"
command = ~F, DF, D, DB, B, x

[Command]
name = "teleport2"
command = ~F, DF, D, DB, B, y

[Command]
name = "teleport3"
command = ~F, DF, D, DB, B, z

[Command]
name = "みょん斬"
command = ~D, DF, F, a

[Command]
name = "みょん斬"
command = ~D, DF, F, b

[Command]
name = "みょん斬"
command = ~D, DF, F, c

[Command]
name = "みょん超斬a"
command = ~D, DF, F, a+b

[Command]
name = "みょん超斬c"
command = ~D, DF, F, c+b

[Command]
name = "みょん超斬b"
command = ~D, DF, F, a+c

[Command]
name = "upper_x"
command = F, D, DF, x
time = 17

[Command]
name = "upper_y"
command = F, D, DF, y
time = 17

[Command]
name = "upper_z"
command = F, D, DF, z
time = 17

[Command]
name = "gupper_x"
command = B, D, DB, x
time = 17

[Command]
name = "gupper_y"
command = B, D, DB, y
time = 17

[Command]
name = "gupper_z"
command = B, D, DB, z
time = 17



[Command]
name = "ガーキャン"
command = ~D, DF, F, x

[Command]
name = "ガーキャン"
command = ~D, DF, F, y

[Command]
name = "ガーキャン"
command = ~D, DF, F, z


[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b



;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1


[Command]
name = "recovery" ;必須コマンド名
command = z
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

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
name = "u"
command = U
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "ha"
command = /a
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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1


;------------------------------------------------------------------------------
;AIフラグ
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


[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

[command]
name="s"
command=s
time=1

[Statedef -1]
[State -3]
type = VarSet
triggerall = RoundState = 2
triggerall = var(55)<1
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
trigger52 =  NumHelper(43434)
trigger52  = helper(43434),var(55)=1
var(55) = 1


;------------------------------------------------------------------
[State -3, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(43434)
trigger1=roundstate=2
trigger1=alive
trigger1=var(55)=0
Trigger1=(PrevStateNo=[190,199])||(PrevStateNo=[1900,1999])||PrevStateNo=5900||(!ctrl)&&stateno=0
;Trigger1=PrevStateNo=(190,199)||PrevStateNo=5900
Trigger1=(1||ctrl)&&stateno=0
helpertype=normal
name="AI"
stateno=43434
ID=43434
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;念のため↓も付けておく
[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(43434)
trigger1= stateno!=43434
value=43434





;==============================================================================
; 超必殺技
;==============================================================================

[State -1, ロングレンジハイレーザー]
type = ChangeState
value = 3350
triggerall = var(50)=0
triggerall = var(55) <= 0
triggerall = command = "TripleKFPalm"
triggerall = power >= 3000 || var(25)=1
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = stateno = 3251 || stateno = [600,699)
trigger2 = movecontact
trigger3 = stateno = 1173



[State -1, シーカーミサイル・エア]
type = null;ChangeState
value = 3250
triggerall = var(55) <= 0
triggerall = command = "シーカーミサイル"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)

;------------------------------------------------------------------------------
[State -1, グレート・ハーデス]
type = ChangeState
value = 13000;13000
triggerall = var(55) <= 0
triggerall = var(50)=1
triggerall = command = "一方通行"
triggerall = power >= 9000
triggerall = stateno != [800,899] 
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = [1000,1099)
trigger3 = animelemtime(5) >= 0 

[State -1, ゼロドライブ]
type = null;ChangeState
value = 3400
triggerall = var(55) <= 0
triggerall = var(50)=0
triggerall = command = "ゼロドライブ"
triggerall = power >= 3000
triggerall = var(25)=0
triggerall = stateno != [800,899] 
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = [1000,1099)
trigger3 = animelemtime(5) >= 0 
;------------------------------------------------------------------------------

[State -1, ファイナルプロトンキャノン]
type = ChangeState
value = 3500
triggerall = var(55) <= 0
triggerall = var(50)=0
triggerall = command = "ファイナルプロトンキャノン"
triggerall = power >= 6000 || var(25)=1
triggerall = stateno != [800,899] 
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


[State -1, メタルデストロイヤー];ゲージレベル３
type = null;ChangeState
value = 3100
triggerall = var(55) <= 0
triggerall = var(50)=0
triggerall = command = "メタルデストロイヤー"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 6000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
triggerall = stateno != [800,899] 
trigger1 = (ctrl||stateno=100)                        ;コントロールが可能な場合
trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
trigger2 = stateno != [3050,3100)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・両方）

;------------------------------------------------------------------------------

[State -1, アイアンフルバースト]
type = ChangeState
value = 3000
triggerall = var(55) <= 0
triggerall = var(50)=0
triggerall = command = "TripleKFPalm"
triggerall = power >= 2000 || var(25)=1
triggerall = stateno != [800,899] 
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


[State -1, リフレクトフィールド]
type = null;ChangeState
value = 3300
triggerall = var(55) <= 0
triggerall = command = "一方通行"
triggerall = power >= 2000
triggerall = stateno != [800,899] 
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


;---------------------------------------------------

;3100
[State -1, 31000]
type = ChangeState
value = 31000
triggerall = command = "31000"
trigger1 = (statetype = s) && ctrl

;------------------------------------------------------------------------------


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------


[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
triggerall = var(55) <= 0
trigger1 = statetype != A
trigger1 = (ctrl||stateno=100)
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1


[State -1, 変数の例];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(2) = 0 

[State -1, 変数の例];必殺技の発生条件をチェック
type = VarSet
trigger1 = !numhelper(1050)
trigger2 = numhelper(1050)
trigger2 = helper(1050),stateno = 1099
var(2) = 1

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, ブレイブダイブ]
type = ChangeState
value = 3251
triggerall = var(50)=0
triggerall = var(55) <= 0
triggerall = command = "ハドロンブラスター"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = stateno = [600,699)
trigger2 = movecontact

[State -1, サンダーアッパー]
type = ChangeState
value = 3201
triggerall = var(50)=0
triggerall = var(55) <= 0
triggerall = command = "シーカーミサイル"
triggerall = power >= 1000
triggerall = stateno != [800,899] 
trigger1 = var(1);statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

[State -1, ハドロンブラスター]
type = ChangeState
value = 3200
triggerall = var(50)=0
triggerall = var(55) <= 0
triggerall = command = "ハドロンブラスター"
triggerall = power >= 1000
triggerall = stateno != [800,899] 
trigger1 = var(1);statetype = S
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;trigger1 = (ctrl||stateno=100)
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact
;trigger3 = stateno = [1000,1020]
;trigger3 = animelemtime(5) > 0
;trigger3 = animelemtime(8) < 0

;----------

[State -1, 強プラズマアーム]
type = ChangeState
value = 1170
triggerall = command = "gupper_z"
triggerall = var(50)=0
trigger1 = var(1)

[State -1, 中プラズマアーム]
type = ChangeState
value = 1160
triggerall = command = "gupper_y"
triggerall = var(50)=0
trigger1 = var(1)

[State -1, 弱プラズマアーム]
type = ChangeState
value = 1150
triggerall = command = "gupper_x"
triggerall = var(50)=0
trigger1 = var(1)
;‐‐‐‐‐

[State -1, 強いリパルサーバースト]
type = ChangeState
value = 1120
triggerall = command = "upper_z"
triggerall = var(50)=0
trigger1 = var(1)

[State -1, 中リパルサーバースト]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
triggerall = var(50)=0
trigger1 = var(1)

[State -1, 弱リパルサーバースト]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
triggerall = var(50)=0
trigger1 = var(1)

;------------------------------------------------------------------------------
[State -1, 強パルスショット（ユニビーム）]
type = ChangeState
value = 11200
triggerall = command = "ShockWave1"
triggerall = power >= 500
trigger1 = var(1)

[State -1, 中パルスショット]
type = ChangeState
value = 11020
triggerall = command = "FCQ_y"
trigger1 = var(1)

[State -1, 弱パルスショット]
type = ChangeState
value = 11000
triggerall = command = "FCQ_x"
;triggerall = !NumProjID(1000)
trigger1 = var(1)

;------------------------------------------------------------------------------


[State -1, ミサイル（ゼロディバイド）];
type = ChangeState
value = 1090
triggerall =  (command = "QCB_x") || (command = "QCB_y") ||(command = "QCB_z")
triggerall = var(25) = 1
trigger1 = var(1)
trigger1 = var(2)


[State -1, ミサイル大];
type = ChangeState
value = 11070
triggerall = command = "teleport1"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

[State -1, ミサイル中];
type = ChangeState
value = 11060
triggerall = command = "teleport2"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

[State -1, ミサイル小];
type = ChangeState
value = 11050
triggerall = command = "teleport3"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

[State -1, ミサイル大];
type = ChangeState
value = 1070+10000*(var(50)=1)
triggerall = command = "QCB_z"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

[State -1, ミサイル中];
type = ChangeState
value = 1060+10000*(var(50)=1)
triggerall = command = "QCB_y"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

[State -1, ミサイル小];
type = ChangeState
value = 1050+10000*(var(50)=1)
triggerall = command = "QCB_x"
triggerall = numhelper(1050) < 3
trigger1 = var(1)
trigger1 = var(2)

;------------------------------------------------------------------------------

[State -1, 強パルスショット（ユニビーム）]
type = ChangeState
value = 1200+10000*(var(50)=1)
triggerall = command = "QCF_z"
trigger1 = var(1)

[State -1, 中パルスショット]
type = ChangeState
value = 1020+10000*(var(50)=1)
triggerall = command = "QCF_y"
trigger1 = var(1)

[State -1, 弱パルスショット]
type = ChangeState
value = 1000+10000*(var(50)=1)
triggerall = command = "QCF_x"
;triggerall = !NumProjID(1000)
trigger1 = var(1)


;------------------------------------------------------------------------------


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(55) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(55) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = var(55) <= 0
triggerall = command = "recovery"
triggerall = statetype != A
trigger1 = stateno = [150,155]


[State -1, ガーキャン]
type = ChangeState
value = 700
triggerall = var(55) <= 0
triggerall = power >= 1000
triggerall = command = "ガーキャン"
triggerall = statetype != A
trigger1 = stateno = [150,155]


[State -1, 突撃投げ];投げ技
type = ChangeState
value = 800
triggerall = var(55) <= 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = (ctrl||stateno=100)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


[State -1, 空投げ];投げ技
type = ChangeState
value = 850
triggerall = var(55) <= 0
triggerall = command = "z"
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H


[State -1, 反物質砲]
type = ChangeState
value = 3200
triggerall = var(50)=1;ハデスモード
triggerall = var(55) <= 0
triggerall = command = "QCF_x" 
triggerall = command = "y"
triggerall = stateno != [800,899] 
trigger1 = ctrl
trigger1 = statetype != A

[State -1, 空中反物質砲]
type = ChangeState
value = 11010
;triggerall = var(50)=1;ハデスモード
triggerall = var(55) <= 0
triggerall = command = "QCF_x" ;"holddown"
;triggerall = command = "y"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
;------------------------------------------------------------------------------


[State 1020, 残像]
type = null;palfx
trigger1 = stateno = 0
trigger1 = var(25)=1
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 100,0,0,30
invertall = 0
color = 256

[State 1020, 残像]
type = null;AfterImage
trigger1 = stateno = 0
trigger1 = var(25)=1
time = -1
PalBright   =  128, -32, -32  ;残像の色の明るさ（赤,緑,青・ＲＧＢ）
PalContrast =  128, 128, 128  ;残像の色合い　　（赤,緑,青・ＲＧＢ）
PalAdd      = 0,0,0  ;残像の色の加算値（赤,緑,青・ＲＧＢ）
PalMul      = 1.2,1.2,1.2  ;残像の色の乗算値（赤,緑,青・ＲＧＢ・float）
;Trans = Add                ;残像の透過処理（Add,Add1,Sub,None,AddAlpha）
TimeGap  = 1               ;残像の表示をスキップする間隔（デフォルトは1）
FrameGap = 2               ;残像の形を変化させる間隔（デフォルトは4）
length = 10                ;残像の表示する長さ（最大60・デフォルト20）
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, デバッグ・モード]
type = varset
trigger1 = 0
var(25)=1

[State -1, デバッグ・モード]
type = varset
trigger1 = 1
var(26) = 9999


[State -1, ゼロキャンセル]
type = ctrlset
triggerall = var(25)=1
trigger1 = stateno = 1000 || stateno = 1020
trigger1 = time > 23
trigger2 = stateno = 811
trigger2 = time > 11
trigger3 = stateno = [1050,1070]
trigger3 = animelemtime(11) >= 0
trigger4 = stateno = 631
value = 1


[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(55) <= 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = stateno = 200
trigger2 = time > 6|| var(25)=1

[State -1, 立ち中パンチ]
type = ChangeState
value = 210
triggerall = var(55) <= 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = (stateno = 200) || stateno = 400

[State -1, バリア]
type = ChangeState
value = 10245
triggerall = var(55) <= 0
triggerall = var(50) = 1
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)

[State -1, 立ち強パンチ]
type = ChangeState
value = 240
triggerall = var(55) <= 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = (stateno = [200,210]) || stateno = [400,410]


[State -1, 立ち弱パンチ]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = stateno = 230


[State -1, 立ち弱パンチ]
type = ChangeState
value = 221
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = (ctrl||stateno=100)
trigger2 = stateno = 221




;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(55) <= 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = (ctrl||stateno=100)

;------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;------------------------------------------------------------------------------

[State -1, ジャンプ下キック]
type = ChangeState
value = 630
triggerall = var(55) <= 0
triggerall = var(50)=0
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = stateno = [600,610]


[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(55) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)

[State -1, ジャンプ中2]
type = ChangeState
value = 611
triggerall = var(55) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = stateno = [600,610]


[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = var(55) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = stateno = [600,609]


[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = var(55) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = (ctrl||stateno=100)
trigger2 = var(25)=1 && movecontact
trigger2 = stateno = [600,619]


; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 650) && (movecontact = 1)



[State -1, Roll F]
type = ChangeState
value = 890
triggerall = var(55) <= 0
triggerall = stateno = 5120
trigger1 = command = "holdfwd"

[State -1, Roll B]
type = ChangeState
value = 895
triggerall = var(55) <= 0
triggerall = stateno = 5120
trigger1 = command = "holdback"

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;
;AI


[State -3, 近距離・遠距離]
type = VarSet
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear(var(35)),Life > 0
var(35) = 0
ignorehitpause = 1

[State -3, 近距離・遠距離]
type = VarSet
trigger1 = NumEnemy > 1
trigger1 = EnemyNear(var(35)),Life = 0
var(35) = 1
ignorehitpause = 1

[State -3, 投げ後の追撃]
type = VarSet
triggerall = var(55) > 0 && roundstate = 2
trigger1 = stateno = 860
var(36) = 1

[State -3, 投げ後の追撃終わり]
type = VarSet
triggerall = var(55) > 0 && roundstate = 2
triggerall = !var(36) = 0
trigger1 = p2statetype != A
trigger2 = (EnemyNear(var(35)),pos y) > -40
trigger3 = p2stateno = 5210
var(36) = 0


[State -3, 着地・投げ]
type = VarSet
triggerall = var(55) > 0 && roundstate = 2
trigger1 = stateno = 52 || stateno = 101
trigger2 = MoveGuarded
var(40) = random%160;120

[State -3, 着地・投げ]
type = Varadd
triggerall = var(55) > 0 && roundstate = 2
trigger1 = var(40) > 0
var(40) = -1

[State -1, ミサイル変数]
type = varset
triggerall = var(39) = 1
trigger1 = 1
var(39) = 0
[State -1, ミサイル変数]
type = varset
triggerall = numhelper(1050)
triggerall = !(helper(1050),movecontact)
trigger1 = helper(1050),stateno = 1061
trigger2 = helper(1050),stateno = 1071
var(39) = 1
;;★コンボ・ゼロディバイドーーーーーーーーーーーーーーーーーーーーー

[State -1, プロトンキャノン・マキシマム]
type = null;ChangeState
value = 3500
triggerall = var(55) > 0 && roundstate = 2
triggerall = power >= 2000
triggerall = var(25)=1
triggerall = stateno != [800,899] 
triggerall = movehit
trigger1 = stateno = 240

;;★コンボーーーーーーーーーーーーーーーーーーーーー
[State -1, サンダーアッパー→プロトンキャノン]
type = ChangeState
value = 3201
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = power >= 1500;★
triggerall = power >= 7000;★
triggerall = stateno != [800,899] 
triggerall = movehit
triggerall = life < 850;いきなり大技を使うと負けるジンクスがあるので少し減ってから
trigger1 = stateno = 200 || stateno = 400
trigger1 = P2bodydist X < 25
trigger2 = stateno = 210
trigger2 = P2bodydist X < 10
trigger3 = stateno = 410
trigger3 = P2bodydist X < 30
trigger4 = stateno = 1161 && animelemtime(13) > 0

[State -1, アイアンマン・フルパワー]
type = ChangeState
value = 3000
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = power >= 3000;★
triggerall = stateno != [800,899] 
triggerall = p2statetype != A || (EnemyNear(var(35)),life < 200)
triggerall = movehit = 1
triggerall = numtarget
triggerall = target,GetHitVar(hitcount) >= 2 || life < ((EnemyNear(var(35)),life)-150) || (EnemyNear(var(35)),life < 150)
triggerall = random < 500 || life < 350|| power >= 9000 || life < ((EnemyNear(var(35)),life)-150) || (EnemyNear(var(35)),life < 300)
triggerall = P2bodydist X > 20
trigger1 = stateno = 200
trigger2 = stateno = 400
trigger3 = stateno = 210 && (power >= 7500||(EnemyNear(var(35)),life < 150))
trigger4 = stateno = 410 && (power >= 7500||(EnemyNear(var(35)),life < 150))

[State -1, プロトンキャノン・マキシマム]
type = ChangeState
value = 3500
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = power >= 6000;★
triggerall = stateno != [800,899] 
triggerall = movehit
triggerall = p2statetype != A || EnemyNear(var(35)),pos y < -20 || EnemyNear(var(35)),vel y < -3
triggerall = numtarget
triggerall = target,stateno >= 5000
trigger1 = stateno = 240
trigger2 = stateno = 1110 && animelemtime(8) > 0
trigger3 = stateno = 1120 && animelemtime(10) > 0
trigger4 = stateno = 3201 && time > 45
trigger5 = stateno = 3252
;trigger5 = stateno = 1161 && animelemtime(17) > 0


[State -1, アイアンマン・フルパワー]
type = ChangeState
value = 3000
triggerall = var(50)=0;通常モード
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = var(55) > 0 && roundstate = 2
triggerall = power >= 3000;★
triggerall = stateno != [800,899] 
triggerall = p2statetype = A
trigger1 = stateno = 1161 && animelemtime(17) > 0

[State -1, ブレイブダイブ]
type = ChangeState
value = 3251
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = power >= 1000;★
triggerall = P2bodydist X > 25 || vel x = 0 || power >= 3000
triggerall = pos y < -30
triggerall = p2statetype != A
triggerall = p2movetype = H
triggerall = p2stateno !=[120,155]
trigger1 = stateno = 600
trigger1 = movehit
trigger2 = stateno = 630
trigger2 = movehit
trigger2 = power >= 7500

[State -1, ロングレンジハイレーザー]
type = ChangeState
value = 3350
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 20;コンボ性能
triggerall = power >= 3000;★
triggerall = movehit
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2stateno !=[120,155]
triggerall = P2bodydist y < -20
triggerall = P2bodydist X < 50
trigger1 = stateno = 611
trigger2 = stateno = 620 && movehit > 5
trigger3 = stateno = 630

[State -1, 投げ→ロングレンジハイレーザー]
type = ChangeState
value = 3350
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = power >= 3000 || var(25)=1
triggerall = (EnemyNear(var(35)),life) < 300 || power >= 9000
trigger1 = stateno = 1173
trigger1 = time > 12




;立ち強パン
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=58-12*(p2statetype = C)
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = random < 50 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15
trigger1 = (ctrl||stateno=100)
;立ち中パン
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=57
triggerall = P2bodydist Y > -70
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != C
triggerall = random < 50 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 8
trigger1 = (ctrl||stateno=100)
;しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=80
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = random < 50 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 13
trigger1 = (ctrl||stateno=100)
;立ち小パン
[State -1, Stand Strong Punch]
type = ChangeState
value = 200
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=40
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != C
triggerall = random < 150 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 5
trigger1 = (ctrl||stateno=100)
;しゃが小パン
[State -1, Stand Strong Punch]
type = ChangeState
value = 400
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=40
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != A
triggerall = random < 150 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 6
trigger1 = (ctrl||stateno=100)
;しゃが大
[State -1, Stand Strong Punch]
type = ChangeState
value = 420
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=70
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != A
triggerall = random < 25 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 9
trigger1 = (ctrl||stateno=100)

;大をヒットし弾
[State -1, Stand Strong Punch]
type = ChangeState
value = 1200
triggerall = var(50) = 0;モード
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = var(55) > 0 && roundstate = 2
triggerall = Movehit
triggerall = p2statetype != A || (EnemyNear(var(35)),pos y < -40)
triggerall = p2movetype = H
trigger1 = stateno = 240
;中をヒットし弾
[State -1, Stand Strong Punch]
type = ChangeState
value = 1020
triggerall = var(50) = 0;モード
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = var(55) > 0 && roundstate = 2
triggerall = Movehit
triggerall = p2movetype = H
trigger1 = stateno = 210 || stateno = 240 ||stateno = 410




;中をガードされミサイル
[State -1, Stand Strong Punch]
type = ChangeState
value = 1050+10*(random < 250)
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = P2bodydist X > 20
triggerall = var(2) = 1;ミサイル撃てるかのフラグ
triggerall = MoveGuarded
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = random > 500
triggerall = var(2) = 1
trigger1 = stateno = 210 || stateno = 410
;大ヒットでミサイル
[State -1, Stand Strong Punch]
type = ChangeState
value = 1070
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = var(2) = 1;ミサイル撃てるかのフラグ
triggerall = Movehit
triggerall = statetype != A
triggerall = p2movetype = H || p2statetype = L
triggerall = var(2) = 1
trigger1 = stateno = 420
;ガードされ弱中パルス
[State -1, Stand Strong Punch]
type = ChangeState
value = 1000+20*(random < 200)
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = stateno != 240 || P2bodydist X < 70
triggerall = EnemyNear(var(35)),BackEdgeBodyDist > 5 || random < 100
trigger1 = MoveGuarded
trigger1 = (stateno = [210,240]) || stateno = [410,420]
trigger2 = stateno = 200 || stateno = 400
trigger2 = P2bodydist X > 40
trigger2 = P2bodydist X < 70
trigger2 = random < 100


[State -1, ミサイルヒットして中パルス]
type = ChangeState
value = 1020
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2stateno != [120,155]
triggerall = p2statetype != A
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15
trigger1 = P2bodydist X > 60
trigger1 = (ctrl||stateno=100)
[State -1, ミサイルヒットして弱パルス]
type = ChangeState
value = 1000
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = var(42)*10 >= random || random < 10;コンボ性能
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2stateno != [120,155]
triggerall = p2statetype = A
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15
trigger1 = !numtarget(700);ガーキャン後ではない
trigger1 = P2bodydist X > 60
trigger1 = (ctrl||stateno=100)


[State -1, 弱連打]
type = ChangeState
value = 200
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2movetype = H
triggerall = P2bodydist X < 30
trigger1 = stateno = 200
trigger1 = movecontact
trigger1 = time > 4
[State -1, しゃがみ弱連打]
type = ChangeState
value = 400
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2movetype = H
triggerall = p2statetype != A
triggerall = P2bodydist X < 35
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = animelemtime(2) > 1

;空中攻撃ガード⇒しゃがみ強
[State -1, Stand Strong Punch]
type = ChangeState
value = 420
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = P2bodydist X <=45+25*(EnemyNear(var(35)),BackEdgeBodyDist < 2)
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = p2stateno = [120,155]
triggerall = EnemyNear(var(35)),pos y > -60
triggerall = random < 250 || p2stateno >= 5000
;triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 6
trigger1 = (ctrl||stateno=100)

;空中投げ後・リパウェ強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1120
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1
triggerall = EnemyNear(var(35)),BackEdgeBodyDist < 5
triggerall = P2bodydist X < 60
trigger1 = (ctrl||stateno=100)
;空中投げ後強リパルサ
[State -1, Stand Strong Punch]
type = ChangeState
value = 1020;42
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = var(36) = 1
triggerall = (ctrl||stateno=100)
trigger1 = EnemyNear(var(35)),vel y > 3 && P2bodydist Y > -280+20*(EnemyNear(var(35)),BackEdgeBodyDist < 5)
trigger2 = P2bodydist Y > -200 && EnemyNear(var(35)),vel y > 1
[State -1, ジャンプ中パンチ]
type = ChangeState
value = 610
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
trigger1 = (ctrl||stateno=100)


[State -1, 投げ弱]
type = null;ChangeState
value = 1150
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2movetype = H
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) < 11
triggerall = P2bodydist X < 60
;trigger1 = random < 25+20*(!InGuardDist)+Ceil(var(40)/2)+10*(var(2) = 0)+15*(P2movetype = H)
trigger1 = (ctrl||stateno=100)

;;★切り返しーーーーーーーーーーーーーーーーーーーーー
[State -1, ガーキャン]
type = ChangeState
value = 700
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno = [150,155]
trigger1 = P2statetype != A
trigger1 = P2bodydist X < 50
trigger1 = P2bodydist X > -10
trigger1 = random < 5+8*(BackEdgeBodyDist < 2)

[State -1, リパルサ]
type = ChangeState
value = 1110
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = P2bodydist Y > -100
triggerall = P2bodydist X < 55+(EnemyNear(var(35)),vel X*12)
triggerall = (EnemyNear(var(35)),pos y) < -35 || EnemyNear(var(35)),vel y < 0
trigger1 = random < 200 || !InGuardDist
trigger1 = random < 25+20*(P2bodydist Y > -150)
trigger1 = (ctrl||stateno=100)




[State -1, リパルサ]
type = ChangeState
value = 1100
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = P2bodydist Y > -100
triggerall = P2bodydist X < 50+(EnemyNear(var(35)),vel X*8)
triggerall = (EnemyNear(var(35)),pos y) < -45 || EnemyNear(var(35)),vel y < 0
trigger1 = random < 25+20*(P2bodydist Y > -150)
trigger1 = (ctrl||stateno=100)

[State -1, リパルサ]
type = ChangeState
value = 1120
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = P2bodydist Y > -100
triggerall = P2bodydist X < 55+ (EnemyNear(var(35)),vel X*15)
triggerall = (EnemyNear(var(35)),pos y) < -45 || EnemyNear(var(35)),vel y < 0
trigger1 = random < 200 || !InGuardDist
trigger1 = random < 20+20*(P2bodydist Y > -150)
trigger1 = (ctrl||stateno=100)

[State -1, 強パン]
type = ChangeState
value = 240
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = P2bodydist Y > -100
triggerall = P2bodydist X < 75+(EnemyNear(var(35)),vel X*15)
triggerall = EnemyNear(var(35)),vel y > 0
Triggerall = Facing != EnemyNear(var(35)),Facing;相手の後ろからではない
trigger1 = random < 50 || !InGuardDist
trigger1 = random < 20+20*(P2bodydist Y > -150)
trigger1 = (ctrl||stateno=100)

[State -1, ハドロンブラスター]
type = ChangeState
value = 3200
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = power >= 1000
triggerall = stateno != [800,899] 
triggerall = p2stateno < 5000
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != L
triggerall = (ctrl||stateno=100)
;triggerall = P2bodydist X > 30
triggerall = P2bodydist X < 150
triggerall = P2bodydist y > -90
triggerall = var(43) >= random
trigger1 = BackEdgeBodyDist < 10 || random < 100
trigger1 = random < 20+20*(InGuardDist)-15*(NumPartner);タッグ


[State -1, ガー不投げ回避]
Type = ChangeState 
Value = 41
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = A
TriggerAll = (ctrl||stateno=100)
triggerall = P2BodyDist X < 100
TriggerAll = var(41) >= random;ガード性能
Trigger1 = (EnemyNear(var(35)),HitDefAttr = SCA,AT)
Trigger1 = random < 50+(EnemyNear(var(35)),time*10)+100*(InGuardDist)

[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = stateno = [150,155]
triggerall = random > 700
trigger1 = enemynear,vel X > 3
trigger2 = gethitvar(hitcount) > 1

[State -1, ガード]
type = ChangeState
value = 120
triggerall = var(55) > 0 && roundstate = 2
TriggerAll = (ctrl||stateno=100)
TriggerAll = random > 100 || P2BodyDist X < 30 && random < 900 || life < 200
TriggerAll = var(41)*10 >= random;ガード性能
Triggerall = InGuardDist
Trigger1 = stateno != [120,155]
trigger2 = stateno = 7610 && animtime = -1

;;★立ちまわりーーーーーーーーーーーーーーーーーーーーー
[State -1, 中段ミサイルからしゃが中パンチ]
type = ChangeState
value = 410
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X > 40+60*(stateno = 100)+(EnemyNear(var(35)),vel X*13)
triggerall = P2bodydist X < 95
triggerall = numhelper(1050)
triggerall = helper(1050),stateno = 1063
Trigger1 = !InGuardDist
trigger1 = random < 30
trigger1 = (ctrl||stateno=100)



[State -1, 突撃投げ];投げ技
type = ChangeState
value = 800
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = (ctrl||stateno=100)
trigger1 = p2bodydist X > -10
trigger1 = p2bodydist X < 20;30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = random < 75+var(40)+200*(stateno = 100)+100*(BackEdgeBodyDist< 10)

[State -1, 投げ大]
type = ChangeState
value = 1170
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2movetype != H || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) < 6
;triggerall = P2bodydist X > 10
triggerall = P2bodydist X < 40 || P2bodydist X < 40 +(EnemyNear(var(35)),vel X*8) && random < 750
;Triggerall = var(39) = 0 || random < 100;ミサイル発射変数
Triggerall = Facing != EnemyNear(var(35)),Facing
trigger1 = random < 14+50*(!InGuardDist)+Ceil(var(40)/3)+10*(var(2) = 0)+15*(P2movetype = H)
trigger1 = (ctrl||stateno=100)

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != C
triggerall = P2bodydist Y >-65
triggerall = P2bodydist X  >10 || random < 400
triggerall = P2bodydist X < 60
triggerall = statetype != A
triggerall = p2statetype != A || !InGuardDist
trigger1 = random < 40+20*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, しゃが弱パンチ]
type = ChangeState
value = 400
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X  >10 || random < 400
triggerall = P2bodydist X < 60
trigger1 = random < 20+5*(!(p2statetype = C && p2movetype = A))+20*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, 投げ弱]
type = ChangeState
value = 1150
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2movetype != H || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) < 12
triggerall = P2movetype != A || random < 100
triggerall = P2bodydist X > 20+(EnemyNear(var(35)),vel X*13)
triggerall = P2bodydist X < 55 || P2bodydist X < 55 +(EnemyNear(var(35)),vel X*13) && random < 500
Triggerall = Facing != EnemyNear(var(35)),Facing
trigger1 = random < 18+20*(!InGuardDist)+Ceil(var(40)/4)+10*(var(2) = 0)+20*(P2movetype = H)
trigger1 = (ctrl||stateno=100)

[State -1, 立ち中パンチ]
type = ChangeState
value = 210
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != C
triggerall = statetype != A
triggerall = P2bodydist Y > -65
triggerall = P2bodydist X > 20
triggerall = P2bodydist X < 60
triggerall = p2statetype != A || !InGuardDist
trigger1 = random < 45+20*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, しゃが強パンチ]
type = ChangeState
value = 420
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X > 25+(EnemyNear(var(35)),vel X*10)
triggerall = P2bodydist X < 80+(EnemyNear(var(35)),vel X*10)
Trigger1 = !InGuardDist
trigger1 = random < 15+20*(p2statetype = C)+40*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, しゃが中パンチ]
type = ChangeState
value = 410
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X > 40+60*(stateno = 100)+(EnemyNear(var(35)),vel X*13)
triggerall = P2bodydist X < 95
triggerall = random < 250 || stateno = 100;ダッシュ中は出す確率が下がる
Trigger1 = !InGuardDist
trigger1 = random < 25
trigger1 = (ctrl||stateno=100)

[State -1, 投げ中]
type = ChangeState
value = 1160
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2movetype != H || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) < 11
triggerall = P2movetype != A || random < 100
triggerall = P2bodydist X > 15+(EnemyNear(var(35)),vel X*10)
triggerall = P2bodydist X < 40 || P2bodydist X < 40 +(EnemyNear(var(35)),vel X*10) && random < 750
Triggerall = Facing != EnemyNear(var(35)),Facing
trigger1 = random < 8+25*(!InGuardDist)+30*(power > 2000)+Ceil(var(40)/3)+15*(P2movetype = H)
trigger1 = (ctrl||stateno=100)

[State -1, 立ち強パンチ]
type = ChangeState
value = 240
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = statetype != A
triggerall = P2bodydist Y > -65
triggerall = P2bodydist X > 35+(EnemyNear(var(35)),vel X*15)
triggerall = P2bodydist X < 75-12*(p2statetype = C)
trigger1 = random < 15+20*(!InGuardDist)
trigger1 = (ctrl||stateno=100)




[State -1, 空投げ];投げ技
type = ChangeState
value = 850
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = stateno != 100
trigger1 = p2bodydist Y = [-90,70]
trigger1 = p2bodydist X > -25
trigger1 = p2bodydist X < 20;30
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger1 = random < 125+75*(vel y < 0)+50*(EnemyNear(var(35)),vel y > 0)+(EnemyNear(var(35)),vel X*15)


[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > -15
triggerall = P2bodydist X < 45+(vel X*8)+(EnemyNear(var(35)),vel X*8)
triggerall = vel Y > 0 || p2statetype = A
triggerall = P2bodydist Y > 20 || p2statetype != A
trigger1 = random < 200+200*(pos y > -50)+200*(p2statetype = C)

[State -1, ジャンプ中パンチ]
type = ChangeState
value = 610
triggerall = var(50)=0;通常モード
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > -30+(vel X*15) + (EnemyNear(var(35)),vel X*12)
triggerall = P2bodydist X < 80+(vel X*15) + (EnemyNear(var(35)),vel X*12)
triggerall = -15 > Pos Y + (.63 / 2 * 13 * 13) + ((EnemyNear(var(35)),vel Y) * 13)
triggerall = vel Y > -1 || p2statetype = A
triggerall = random < 10 || p2statetype != A
trigger1 = random < 100+P2bodydist X*2

[State -1, ジャンプ中パンチ下]
type = ChangeState
value = 611
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > 0
triggerall = P2bodydist Y > -30
triggerall = !(P2bodydist X < 5&&p2movetype=A)
triggerall = P2bodydist X < 40+(vel X*7) + (EnemyNear(var(35)),vel X*8)
triggerall = -25 > Pos Y + (.63 / 2 * 7 * 7) + ((EnemyNear(var(35)),vel Y) * 7)
triggerall = p2statetype = A
trigger1 = random < 100

[State -1, ジャンプ大ちゃんチ]
type = ChangeState
value = 620
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > 110+(vel X*25); + (EnemyNear(var(35)),vel X*25)
triggerall = P2bodydist X < 165+(vel X*25) + (EnemyNear(var(35)),vel X*25)
triggerall = 50 > Pos Y + (.63 / 2 * 22 * 22) + ((EnemyNear(var(35)),vel Y) * 22) < 60; || vel y < 0 && vel y > -5
triggerall = vel y <= 0
trigger1 = random < 100

[State -1, ブーストダイブ]
type = ChangeState
value = 630
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype != L && p2movetype != H
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = pos y < -90
triggerall = P2bodydist X < P2bodydist Y
triggerall = P2bodydist X > 30
trigger1 = random < 25+25*(p2statetype = C)











[State -1, 波動弱]
type = ChangeState
value = 1000
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 60+(EnemyNear(var(35)),vel X*5) || P2bodydist X > 30 && p2stateno = [120,155]
triggerall = var(39) = 0
triggerall = stateno != 100 || random < 200
triggerall = var(43) > 0
trigger1 = !numtarget(700);ガーキャン後ではない
trigger1 = random < 100 || !InGuardDist
trigger1 = Floor((100*random)/var(43)) < (45+10*(var(2)=0)+80*(NumPartner));タッグ
trigger1 = (ctrl||stateno=100)

[State -1, 波動中]
type = ChangeState
value = 1020
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = p2statetype != A || (EnemyNear(var(35)),vel y > 0) && (EnemyNear(var(35)),pos y > -30)
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 90 || P2bodydist X > 60+(EnemyNear(var(35)),vel X*10) && p2movetype != A || P2bodydist X > 30 &&  p2stateno = [120,155]
triggerall = p2stateno != [20,50]
triggerall = var(39) = 0
triggerall = stateno != 100 || random < 200
triggerall = var(43) > 0
trigger1 = random < 100 || !InGuardDist
trigger1 = Floor((100*random)/var(43)) < (15+20*(var(2)=0)+70*(NumPartner));タッグ
trigger1 = (ctrl||stateno=100)

[State -1, ミサイル弱]
type = ChangeState
value = 1050+10*(random < (450+200*(EnemyNear(var(35)),BackEdgeBodyDist < 5)))
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
;triggerall = P2bodydist X < 200
triggerall = P2bodydist X > 60
triggerall = P2bodydist X > 60+(EnemyNear(var(35)),vel X*10) || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15 && p2stateno = [120,155]
triggerall = var(2) = 1
triggerall = stateno != 100 || random < 100
triggerall = var(43) > 0
trigger1 = random < 100 || !InGuardDist
trigger1 = Floor((100*random)/var(43)) < 15
trigger1 = (ctrl||stateno=100)

[State -1, ユニビーム]
type = ChangeState
value = 1200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = p2statetype != A || (EnemyNear(var(35)),vel y > 0) && (EnemyNear(var(35)),pos y > -30)
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 70
triggerall = P2bodydist X > 40+(EnemyNear(var(35)),vel X*15)
triggerall = p2stateno != [20,50]
triggerall = var(39) = 0
;triggerall = var(2)=0
triggerall = var(43) > 0
triggerall = stateno != 100 || random < 200
trigger1 = random < 10 || !InGuardDist
trigger1 = Floor((100*random)/var(43)) < 10+5*(var(2)=0)+5*(P2bodydist X > 100)+10*(NumPartner);タッグ
trigger1 = (ctrl||stateno=100)


[State -1, 削り殺しプロトン]
type = ChangeState
value = 3500
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype != L || P2stateno = 5210
triggerall = statetype != A
triggerall = P2bodydist X > 100
triggerall = power >= 6000;★
triggerall = EnemyNear(var(35)),life < 100
trigger1 = random < 60
trigger1 = (ctrl||stateno=100)


[State -1, 起き攻めミサイル]
type = ChangeState
value = 1050+IfElse(random < 500,0,IfElse(random < 400+(200*(EnemyNear(var(35)),BackEdgeBodyDist < 5)),20,10))
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;通常モード
triggerall = p2statetype = L
triggerall = statetype != A
triggerall = P2bodydist X > 100
triggerall = var(2) = 1
triggerall = var(43) >= random
trigger1 = (ctrl||stateno=100) || stateno = 105

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;							こっからハデース
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;コンボ


;しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
TriggerAll = var(42)*10 >= random;コンボ性能
triggerall = P2bodydist X <=80
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = random < 50 || p2stateno >= 5000
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 3
trigger1 = (ctrl||stateno=100)

[State -1, 次元連結砲]
type = ChangeState
value = 11020
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = p2statetype != L && p2movetype = H
trigger1 = stateno = 420
trigger1 = movehit

[State -1, ガードさせてワープ]
type = ChangeState
value = 11050+10*(random%3)
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = p2statetype != L
triggerall = P2bodydist X > 70
trigger1 = stateno = 210 || stateno = 410
trigger1 = random < 100
trigger1 = MoveGuarded
trigger1 = MoveGuarded < 5
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;ｋａｕｎｔａ

[State -1, 第]
type = ChangeState
value = 11020
triggerall = var(50)=0;1;ハデスモード
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype = A
triggerall = statetype != A
triggerall = P2bodydist Y > -70
triggerall = P2bodydist X < 55+(EnemyNear(var(35)),vel X*12)
triggerall = (EnemyNear(var(35)),pos y) < -35 || EnemyNear(var(35)),vel y < 0
trigger1 = random < 200 || !InGuardDist
trigger1 = random < 20+30*(P2bodydist Y > -100)
trigger1 = (ctrl||stateno=100)

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[State -1, グレート・ハーデス]
type = ChangeState
value = 13000
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = power >= 9000
triggerall = statetype != A
trigger1 = p2bodydist X < 45+15*(EnemyNear(var(35)),vel x)
trigger1 = random < 250
trigger1 = ctrl



[State -1, 突撃投げ];投げ技
type = ChangeState
value = 800
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype != A
triggerall = (ctrl||stateno=100)
trigger1 = p2bodydist X > -10
trigger1 = p2bodydist X < 20;30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = random < 75+var(40)+200*(stateno = 100)+100*(BackEdgeBodyDist< 10)


[State -1, 突撃投げ];投げ技
type = ChangeState
value = 800
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype != A
triggerall = (ctrl||stateno=100)
trigger1 = p2bodydist X > -10
trigger1 = p2bodydist X < 20;30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = random < 75+var(40)+200*(stateno = 100)+100*(BackEdgeBodyDist< 10)

[State -1, しゃが中パンチ]
type = ChangeState
value = 410
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = P2bodydist Y >-30
triggerall = statetype != A
triggerall = P2bodydist X > 25
triggerall = P2bodydist X < 95
triggerall = random < 250 || stateno != 100;ダッシュ中は出す確率が下がる
Trigger1 = !InGuardDist || random < 500
trigger1 = random < 60
trigger1 = (ctrl||stateno=100)

[State -1, しゃが弱パンチ]
type = ChangeState
value = 400
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X  >10 || random < 600
triggerall = P2bodydist X < 60
trigger1 = random < 60+5*(!(p2statetype = C && p2movetype = A))+15*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = p2statetype != C
triggerall = P2bodydist Y >-65
triggerall = P2bodydist X  >10 || random < 400
triggerall = P2bodydist X < 60
triggerall = statetype != A
triggerall = p2statetype != A || !InGuardDist
trigger1 = random < 75+10*(!InGuardDist)
trigger1 = (ctrl||stateno=100)


[State -1, 立ち中パンチ]
type = ChangeState
value = 210
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = statetype != A
triggerall = P2bodydist Y > -95
triggerall = P2bodydist X > 20
triggerall = P2bodydist X < 105
triggerall = p2statetype != A || !InGuardDist
trigger1 = random < 30+35*(!InGuardDist)
trigger1 = (ctrl||stateno=100)

[State -1, しゃが強パンチ]
type = ChangeState
value = 420
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = statetype != A
triggerall = P2bodydist Y > -115
triggerall = P2bodydist X > 25+(EnemyNear(var(35)),vel X*10)
triggerall = P2bodydist X < 50+(EnemyNear(var(35)),vel X*10)
Trigger1 = !InGuardDist
trigger1 = random < 20+20*(p2statetype = C)+40*(!InGuardDist)
trigger1 = (ctrl||stateno=100)




[State -1, 立ち強パンチ]
type = ChangeState
value = 240
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H
triggerall = statetype != A
triggerall = P2bodydist Y > -45
triggerall = P2bodydist X > 100+(EnemyNear(var(35)),vel X*15)
trigger1 = random < 5+10*(!InGuardDist)
trigger1 = (ctrl||stateno=100)




[State -1, 空投げ];投げ技
type = ChangeState
value = 850
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = stateno != 100
trigger1 = p2bodydist Y = [-90,70]
trigger1 = p2bodydist X > -25
trigger1 = p2bodydist X < 20;30
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger1 = random < 125+75*(vel y < 0)+50*(EnemyNear(var(35)),vel y > 0)+(EnemyNear(var(35)),vel X*15)


[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > -15
triggerall = P2bodydist X < 45+(vel X*8)+(EnemyNear(var(35)),vel X*8)
triggerall = vel Y > 0 || p2statetype = A
triggerall = P2bodydist Y > 20 || p2statetype != A
trigger1 = random < 200+200*(pos y > -50)+200*(p2statetype = C)

[State -1, ジャンプ中パンチ]
type = ChangeState
value = 610
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > -30+(vel X*7) + (EnemyNear(var(35)),vel X*7)
triggerall = P2bodydist X < 70+(vel X*7) + (EnemyNear(var(35)),vel X*7)
triggerall = -15 > Pos Y + (.63 / 2 * 7 * 13) + ((EnemyNear(var(35)),vel Y) * 7)
triggerall = vel Y > 1 || p2statetype = A
triggerall = random < 10 || p2statetype != A
trigger1 = random < 100+P2bodydist X*2

[State -1, ジャンプ大ちゃんチ]
type = ChangeState
value = 620
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype = A
triggerall = (ctrl||stateno=100)
triggerall = P2bodydist X > 110+(vel X*25); + (EnemyNear(var(35)),vel X*25)
triggerall = P2bodydist X < 165+(vel X*25) + (EnemyNear(var(35)),vel X*25)
triggerall = 50 > Pos Y + (.63 / 2 * 22 * 22) + ((EnemyNear(var(35)),vel Y) * 22) < 60; || vel y < 0 && vel y > -5
triggerall = vel y <= 0
trigger1 = random < 25

;＝＝＝＝＝＝遠距離攻撃

[State -1, 反物質砲]
type = ChangeState
value = 3200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 55+(EnemyNear(var(35)),vel X*5) || P2bodydist X > 30 && p2stateno = [120,155]
triggerall = stateno != 100 || random < 200
trigger1 = random < 25
trigger1 = ctrl

[State -1, 空中反物質砲]
type = ChangeState
value = 11010
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = statetype = A
triggerall = P2bodydist X < P2bodydist Y+50
triggerall = P2bodydist X > 10
triggerall = pos y < -35
trigger1 = statetype = A
trigger1 = random < 30
trigger1 = (ctrl||stateno=100)

[State -1, 次元連結砲]
type = ChangeState
value = 11000
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
;triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = EnemyNear(var(35)),vel X < 10
triggerall = EnemyNear(var(35)),vel X > -10
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 60+(EnemyNear(var(35)),vel X*5) || P2bodydist X > 30 && p2stateno = [120,155]
triggerall = stateno != 100 || random < 200
trigger1 = Floor((100*random)/var(43)) < 25
trigger1 = ctrl

[State -1, 次元連結砲]
type = ChangeState
value = 11020
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
;triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = EnemyNear(var(35)),vel X < 10
triggerall = EnemyNear(var(35)),vel X > -10
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 60+(EnemyNear(var(35)),vel X*5) || P2bodydist X > 30 && p2stateno = [120,155]
triggerall = stateno != 100 || random < 200
trigger1 = Floor((100*random)/var(43)) < 25
trigger1 = ctrl

[State -1, 次元連結砲（MAP）]
type = ChangeState
value = 11200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = EnemyNear(var(35)),vel X < 10
triggerall = EnemyNear(var(35)),vel X > -10
triggerall = statetype != A
triggerall = P2bodydist X < 200 || (NumPartner);タッグ
triggerall = P2bodydist X > 100+(EnemyNear(var(35)),vel X*5) || P2bodydist X > 30 && p2stateno = [120,155]
triggerall = stateno != 100 || random < 200
triggerall = power >= 500
trigger1 = Floor((100*random)/var(43)) < 15
trigger1 = ctrl

[State -1, ワープ]
type = ChangeState
value = 11050+10*(random%3)
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = p2statetype != L && p2movetype != H || (NumPartner);タッグ
triggerall = statetype != A
triggerall = P2bodydist X > 10
triggerall = stateno != 100 || random < 200
trigger1 = random < 15
trigger1 = ctrl



;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[State -1, 起き攻め反物質]
type = ChangeState
value = 3200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = p2stateno = 5120
triggerall = EnemyNear(var(35)),animtime = -10
triggerall = statetype != A
triggerall = P2bodydist X > 100
trigger1 = (ctrl||stateno=100) || stateno = 105

;追撃連結砲
[State -1, Run Back]
type = ChangeState
value = 11000
triggerall = var(55) > 0 && roundstate = 2 && var(50)=0;1;派手スモード
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != L
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 10
trigger1 = stateno != [100,108]
Trigger1 = P2BodyDist X > 70  || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15 || random < 50
Trigger1 = P2BodyDist X > 150 || random < 50 ||p2statetype != A && p2stateno != [120,150]
Trigger1 = P2BodyDist X > 150 || random < 25
trigger1 = random < 250
trigger1 = p2stateno != [120,150]
trigger1 = !InGuardDist
trigger1 = (ctrl||stateno=100)

;追撃反物質砲
[State -1, Run Back]
type = ChangeState
value = 3200
triggerall = var(55) > 0 && roundstate = 2 && var(50)=1;派手スモード
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != L
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 10
trigger1 = stateno != [100,108]
Trigger1 = P2BodyDist X > 70  || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15 || random < 50
Trigger1 = P2BodyDist X > 150 || random < 50 ||p2statetype != A && p2stateno != [120,150]
Trigger1 = P2BodyDist X > 150 || random < 25
trigger1 = random < 100
trigger1 = p2stateno != [120,150]
trigger1 = !InGuardDist
trigger1 = (ctrl||stateno=100)

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;							こっから両用
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


[State -1, ガー不投げ回避]
Type = ChangeState 
Value = 41
triggerall = var(55) > 0 && roundstate = 2;通常＆ハデスモード
triggerall = statetype != A
triggerall = p2movetype = A
TriggerAll = (ctrl||stateno=100)
triggerall = P2BodyDist X < 100
Trigger1 = (EnemyNear(var(35)),HitDefAttr = SCA,AT )
Trigger1 = random < 200+(EnemyNear(var(35)),time*50)+100*(InGuardDist)

[State -1, 起き攻めバックダッシュ]
type = ChangeState
value = 105
triggerall = var(55) > 0 && roundstate = 2;通常＆ハデスモード
triggerall = statetype != A
TriggerAll = (ctrl||stateno=100)
TriggerAll = stateno != [100,109]
Trigger1 = P2BodyDist X < 70
trigger1 = p2statetype = L



;歩行の変数・後退
[State -1, Run Back]
type = varset
triggerall = var(55) > 0 && roundstate = 2;通常＆ハデスモード
triggerall = var(37) = 0
triggerall = statetype != A
trigger1 = p2bodydist X < 30
trigger2 = random < 3
var(37) = 1

;歩行の変数・前進
[State -1, Run Back]
type = varset
triggerall = var(55) > 0 && roundstate = 2;通常＆ハデスモード
triggerall = var(37) = 1
triggerall = statetype != A
triggerall = stateno != 41
trigger1 = p2bodydist X > 150
trigger1 = random < 7
trigger2 = BackEdgeBodyDist < 2
trigger3 = random < 10
var(37) = 0


[State -1, ジャンプ]
type = ChangeState
value = 41
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
TriggerAll = (ctrl||stateno=100)
TriggerAll = random < 15+(25*var(2)=0)+(20*(p2movetype = H))+10*(p2statetype = A)+25*(P2BodyDist X = [120,180])-50*(NumPartner);タッグ
TriggerAll = !(p2statetype = A&&P2BodyDist X<50&&p2movetype = A)
Trigger1 = P2BodyDist X > 60 || vel x < 1 || p2statetype = A || random < 10


;近付きダッシュ
[State -1, Run Back]
type = ChangeState
value = 100
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = p2statetype != L
triggerall = !(NumPartner) || random < 100;タッグ
triggerall = (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 10
trigger1 = stateno != [100,108]
Trigger1 = P2BodyDist X > 70  || (EnemyNear(var(35)),GetHitVar(hittime))+(EnemyNear(var(35)),GetHitVar(hitshaketime)) > 15 || random < 50
Trigger1 = P2BodyDist X > 150 || random < 50 ||p2statetype != A && p2stateno != [120,150]
Trigger1 = P2BodyDist X > 150 || random < 25
trigger1 = var(55) = 0 || random < 25 ;ハデスはあまり近寄らない
trigger1 = !InGuardDist
trigger1 = (ctrl||stateno=100)

;ダッシュ
[State -1, Run Back]
type = ChangeState
value = 100
triggerall = var(55) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = stateno != [100,108]
triggerall = stateno != [120,155]
triggerall = !(NumPartner) || random < 100;タッグ
TriggerAll = random < 20+20*(var(2)=0)+20*(var(39) = 1)+30*(BackEdgeBodyDist < 5)+10*(p2stateno = [120,155])
trigger1 = !InGuardDist
trigger1 = (ctrl||stateno=100)

;歩行
[State -1, Run Back]
type = ChangeState
value = 21
triggerall = var(55) > 0 && roundstate = 2
trigger1 = statetype != A
trigger1 = (ctrl||stateno=100)
;trigger1 = p2movetype = H || stateno = [0,99]; || stateno = 52
trigger1 = stateno != 21
trigger1 = !InGuardDist
trigger1 = stateno != [100,108]
trigger1 = stateno != [120,155]

[State -1, 二段ジャンプ]
type = ChangeState
value = 45
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2movetype != H
triggerall = stateno = 50
TriggerAll = (ctrl||stateno=100)
TriggerAll = random < 5+15*(P2BodyDist X+P2BodyDist Y > 220 || P2BodyDist Y < 10 && P2BodyDist X > 100) || random < 30+20*(vel x <= 0)+10*(p2statetype = A)
TriggerAll = var(38) = 0
TriggerAll = pos y < -35
Trigger1 = P2BodyDist X > 80+(EnemyNear(var(35)),vel X*10) || random < 10+30*(pos y > -80)+10*(p2statetype = A)
Trigger1 = 1||var(38):=1

[State -1, 裏ジャンプ]
type = ChangeState
value = 45
triggerall = var(55) > 0 && roundstate = 2
triggerall = p2movetype != H
triggerall = stateno = 50
TriggerAll = (ctrl||stateno=100)
TriggerAll = random < 30+15*p2movetype = A
TriggerAll = var(38) = 0
TriggerAll = pos y < -35
Trigger1 = P2BodyDist Y > 0
Trigger1 = P2BodyDist X < 0
Trigger1 = Facing = EnemyNear(var(35)),Facing
Trigger1 = 1||var(38):=1
[State -3,ジャンプ ]
type = VarSet
trigger1 = statetype != A
var(38) = 0


[State -1, Roll F]
type = ChangeState
value = 890
triggerall = var(55) > 0 && roundstate = 2
triggerall = alive
triggerall = stateno = 5120
triggerall = frontedgedist >= 50
trigger1 = P2bodydist x = [-10,100]
trigger2 = inguarddist
trigger3 = enemynear,numproj > 0
;trigger1 = backedgedist < 50 

[State -1, Roll B]
type = ChangeState
value = 895
triggerall = var(55) > 0 && roundstate = 2
triggerall = alive
triggerall = stateno = 5120
triggerall = frontedgedist < 50
trigger1 = P2bodydist x = [-10,100]
trigger2 = inguarddist
trigger3 = enemynear,numproj > 0
























;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;コンフィグ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;この部分以外を弄ると不具合の原因になります
;＝＝＝＝＝＝＝＝＝＝＝＝↓↓操作していい部分↓↓＝＝＝＝＝＝＝＝＝＝＝＝
[State -3,AIガード性能]
type = VarSet
trigger1 = 1
var(41) = 100
;ＡＩのガード頻度になります。
;入れた数字がそのままＡＩ操作時のガードする確率になります。
;0にしてもたまにやります。
;100でMAXです。

[State -3,AIコンボ性能]
type = VarSet
trigger1 = 1
var(42) = 100
;ＡＩのコンボ頻度になります。
;低いとコンボをしにくくなります。
;100でMAXです。

[State -3,AI飛び道具発射頻度]
type = VarSet
trigger1 = 1
var(43) = 100
;ＡＩの飛び道具発射頻度です。コンボで使う飛び道具の頻度は変わりません。
;多いか低いかで強くなるか弱くなるかは相手によってまちまちです。
;100がデフォルトで、倍に増やすと発射頻度が倍になり、半分に減らすと頻度も半分になります。
;例えば10000なら100倍飛び道具を撃ちます。強いかは微妙です。ﾑﾀﾞﾀﾞｰﾑﾀﾞﾀﾞｰ



[State -3,ウルトラハイパーアーツ使用可能ラウンド]
type = VarSet
trigger1 = 1
var(12) = 3
;９ゲージ使用の超必殺技ウルトラハイパーアーツの解禁ラウンドです。
;デフォルトは３です。１回の戦いで決着がつく特殊ルールの場合は１にしてみてもいいでしょう。

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;この部分以外を弄ると不具合の原因になります
;＝＝＝＝＝＝＝＝＝＝＝＝↑↑操作していい部分↑↑＝＝＝＝＝＝＝＝＝＝＝＝