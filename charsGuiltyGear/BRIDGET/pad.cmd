;Mirage Childlen #5 code:"candana" ommand file 
;ボタン配置変更法：
;　　[Remap]～ここまで	の行を範囲選択し一番上に持ってくる。
;わからなかったらさわらない。


[Remap];---M TYPE=  P:x K:a S:y HS:b D:c G:z
x = z
y = c
z = b
a = x
b = a
c = y
s = s
;--------------M ここまで

[Remap];---L TYPE=  P:a K:b S:c HS:z D:y G:x
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;------------L ここまで


[Remap];---N TYPE=  P:x K:a S:y HS:b D:z G:c
x = c
y = z
z = b
a = x
b = a
c = y
s = s
;--------------N ここまで

[Remap];---A TYPE=  P:a K:x S:y HS:z D:c G:b
x = b
y = c
z = z
a = a
b = x
c = y
s = s
;--------------A ここまで


;---ボタン優先順位、超特殊、HSがDの次2番目になる
;-----必殺技は変わらず
;-----AI-------------------------------------------
[Command];
name = "AL_1"
command = F, DF, U, DB, UF, F, D, F, F, F, B, D
time = 1

[Command];
name = "AL_2"
command = DF, U, DB, UF, F, D, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_3"
command =  D, B, B, B, B, B, B, B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_4"
command = F,F,F,F,F,F,F,F,F, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_5"
command = F,F,F,F,F,F,D,D,D,D,D,U, B, B, B, B
time = 1

[Command];
name = "AL_6"
command =  D, D,D,D,D,D,U,U,U,U,B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_7"
command = DF,DF,DF,DF,DF,DB,DB,B,DB,DB,DB,DB
time = 1

[Command];
name = "AL_8"
command = DF,DF,DF,F,F,F,F,F,DF,D,D,D,D,D
time = 1

[Command];
name = "AL_9"
command = UF,UF,UF,UF,UF,B,B,B,B,B,BD,D,D,D,D,D
time = 1

[Command];
name = "AL_10"
command = D,D,D,D,D,U, B, B, B, B,F,F,F,F,F,F
time = 1

;-| 超必殺技 |--------------------------------------------------------
;----ろじゃ、よーよ技は離し必殺できません。
[Command];メンテナンスの笑劇 S
name = "sp_6"
command = ~D, DF, F, D, DB, B, c
time = 40
[Command];メンテナンスの笑劇 S
name = "sp_6"
command = ~D, DF, F, D, DB, B,  ~c
time = 40

[Command];めんて悲劇（SL,RE)喜劇(EX)	s
name = "sp_3"
command = ~D, B, D, B, c
time = 40
[Command];めんて悲劇（SL,RE)喜劇(EX)	s
name = "sp_3"
command = ~D, B, D, B, ~c
time = 40

[Command];ループザループ s
name = "sp_1"
command = ~D, F, D, F, c
time = 40
[Command];ループザループ s
name = "sp_1"
command = ~D, F, D, F, ~c
time = 40

[Command];めんて喜劇(OR)	ボタンをHSにしとく？HS
name = "sp_4"
command = ~B,D, F, B, D, F, z
time = 30
[Command];めんて喜劇(OR)	ボタンをHSにしとく？HS
name = "sp_4"
command = ~B,D, F, B, D, F, ~z
time = 40

[Command];キルマシーン HS
name = "sp_2"   
command = ~F, DF, D, DB, B, F, z
time = 40

[Command];むーん HS
name = "sp_5"
command = ~D, DF, F, D, DF, F, z
time = 40
[Command];むーん HS
name = "sp_5"
command = ~D, DF, F, D, DF, F, ~z
time = 40

;-| 必殺技 |------------------------------------------------------
;-------------優先順位はD P K S HS		はなしたときにもでるようにするには？
[Command];ヨーヨー　FBゲットD
name = "get2"
command = ~B,D, DB, y
time = 25

[Command];ヨーヨー　FBジャックD
name = "jack2"
command = ~D, DB, B, y
time = 30

[Command];ヨーヨー　FBハグD
name = "hug2"
command = ~F, D, DF, y
time = 25

[Command];ヨーヨー　FBラッシュD
name = "rush2"
command = ~D, DF, F, y
time = 30

[Command];スターシップP
name = "star"
command = ~F, D, DF, a
time = 30
[Command];スターシップP
name = "star"
command = ~F, D, DF, ~a
time = 30

[Command];ろーりんぐ移動K
name = "rollf"
command = ~D, DB, B, b
time = 30

[Command];キックスタートMH	K
name = "ksmh"
command = ~D, DF, F, b
time = 30
[Command];キックスタートMH K
name = "ksmh"
command = ~D, DF, F, ~b
time = 30

[Command];ヨーヨー　ゲットH
name = "get"
command = ~B,D, DB, z
time = 30

[Command];ヨーヨー　ジャックH
name = "jack"
command = ~D, DB, B, z
time = 30

[Command];ヨーヨー　ハグH
name = "hug"
command = ~F, D, DF, z
time = 30

[Command];ヨーヨー　ラッシュH
name = "rush"
command = ~D, DF, F, z
time = 30

[Command];しふとH
name = "shift"
command = ~D,D, z
time = 10

;-| ２回押し技 |-----------------------------------------------------------
;----普通は一度離さないとだめなんですGGはいいらしいけどね
[Command]
name = "FF"     
command = F, ~F, F
time = 10
[Command]
name = "FF"     
command = UF, ~F, F
time = 6

[Command];GG用
name = "FFGG"     
command = F, F
time = 10
[Command]
name = "FFGG"     
command = UF, F
time = 8

[Command]
name = "BB"     
command = B, ~B, B
time = 10
[Command]
name = "BB"     
command = UB, ~B, B
time = 10

[Command];GG用
name = "BBGG"     
command = B, B
time = 10
[Command]
name = "BBGG"     
command = UB, B
time = 10


;-| ２・３個の同時押し技 |-----------------------------------------------
;------------ロマンキャンセル  D以外３つ
[Command]
name = "roma"
command = a+b+c
time = 1

[Command]
name = "roma"
command = a+b+z
time = 1

[Command]
name = "roma"
command = a+c+z
time = 1

[Command]
name = "roma"
command = b+c+z
time = 1

;--------------サイクバースト、Ｄ＋攻撃y
[Command]
name = "bust"
command = a+y
time = 1

[Command]
name = "bust"
command = b+y
time =1

[Command]
name = "bust"
command = c+y
time = 1

[Command]
name = "bust"
command = z+y
time = 1

;-------------------------------------
;-----------------DDA D以外２つ
[Command]
name = "DAA"
command = a+b
time = 1

[Command]
name = "DAA"
command = a+c
time = 1

[Command]
name = "DAA"
command = a+z
time = 1

[Command]
name = "DAA"
command = b+c
time = 1

[Command]
name = "DAA"
command = b+z
time = 1

[Command]
name = "DAA"
command = c+z
time = 1

;---------------------------スラッシュバック S+HS
;----絶対レバー先行、
[Command];立ちS押し
name = "SBS" 
command = /B ,c
time = 1

[Command];立ちH押し
name = "SBS" 
command = /B ,z
time = 1

[Command];しゃがみS押し
name = "SBC" 
command = /DB , c
time = 1

[Command];しゃがみH押し
name = "SBC" 
command = /DB , z
time = 1

[Command];空中S押し
name = "SBA" 
command = /UB , c
time = 1

[Command];空中H押し
name = "SBA" 
command = /UB , z
time = 1

;--------------------ダウン復帰D以外
[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = z
time = 1

;------------------ハイジャンプ
[Command]
name = "highJ"
command = $D,$U
time = 15

[Command]
name = "highJu"
command = $D
time = 8

;-------------直前・・
[Command]
name = "justDS"
command = B
time = 1

[Command]
name = "justDC"
command = DB
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "jumpup" 
command = $U
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

;追加
[Command]
name = "holdUF"
command = /UF
time = 1

[Command]
name = "holdUB"
command = /UB
time = 1

[Command]
name = "holdU"
command = /U
time = 1

[Command]
name = "holdDB"
command = /DB
time = 1

[Command]
name = "holdDF"
command = /DF
time = 1

[Command]
name = "holdD"
command = /D
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdF"
command = /F
time = 1

;-| ボタン設定|------コマンドファイルによってかわる------------------------------------------
;------------追加　ボタン押しっぱなしFDなどで使用、
[Command];Pおしっぱ
name = "holdP"
command = /a
time = 1

[Command];Kおしっぱ
name = "holdK"
command = /b
time = 1

[Command];Sおしっぱ
name = "holdS"
command = /c
time = 1

[Command];HSおしっぱ
name = "holdHS"
command = /z
time = 1

[Command];Dおしっぱ、真下押しとかぶるのでDuにしてる
name = "holdDu"
command = /y
time = 1

[Command];ALLおしっぱ
name = "holdALL"
command = /x
time = 1

[Command];スタートおしっぱ。つかうときあるの？
name = "holdStart"
command = /s
time = 1

[Command];てすと
name = "Secode"
command = s,s,s
time = 30

;-----------------------方向ちょいおし　すぐレバーはなすって動作
[Command]
name = "Fr" 
command = $F
time = 1

[Command]
name = "Ba" 
command = $B
time = 1

[Command]
name = "Up" 
command = $U
time = 1

[Command]
name = "Do" 
command = $D
time = 1

;--------------------------------ボタン配置
[Command]
name = "P"
command = a
time = 1

[Command]
name = "K"
command = b
time = 1

[Command]
name = "S"
command = c
time = 1

[Command]
name = "ALL"
command = x
time = 1

[Command]
name = "HS"
command = z
time = 1

[Command]
name = "D"
command = y
time = 1

;-----------------------------------ここからはOK
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




;----------------------------------------------------
[Statedef -1]

;-------------------------------------一撃準備920
[state -1, sp1 ];チームモードではでないようにWIN
type = changestate
value = 920
triggerall = !var(53) && var(40) >= 0
triggerall = statetype != A 
triggerall = ctrl || sysvar(3) 
triggerall = TeamMode = Simul = 0 && enemy,teammode = simul = 0
trigger1 = command = "P" && command = "K" && command = "S"  && command = "HS"
trigger2 = command = "ALL" && !var(29)
trigger2 = command = "holddown" && command != "holdfwd" && command != "holdback"

;----------------------ロマンキャンセル27 FROMAは対応ステートでやる975-977
;----攻撃判定ありのFROMA、HITSTOPの１Fは許す、じゃないとあたったことにならないかも
;-攻撃判定ありでFROあるのは215,440,1200,3100
;----確実にダストほうりこむため、ダストではあっちでやる
[State -1, sike];通常地上 接触フラグV34 相殺時も赤ろまOK（ゲージの無駄）
type = ChangeState
value = ifelse(HitPauseTime,970,972)
triggerall = power >= 1000 && !var(40) && !var(53)
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = statetype != A && var(34) 
triggerall = stateno != [950,990]
trigger1 = stateno = [200,430]
trigger1 = stateno != 215 && stateno != 240
trigger2 = stateno = 935 || stateno = 1300
ignorehitpause = 1

[State -1, sike];通常空中STOP中980　NONE982	FROMAは対応ステートでやる985-987
type = ChangeState
value = ifelse(HitPauseTime,980,982)
triggerall = power >= 1000 && !var(53) 
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = statetype = A && var(34)
triggerall = stateno != [950,990]
trigger1 = stateno = [600,640]
trigger2 = stateno = 1150 || stateno = 1160 ||  stateno = 1250 
trigger3 = stateno = 1340 || stateno = 1360 
ignorehitpause = 1

;----------------------サイクバースト
;----ほちふ、相殺(16)HITSTOPなら950スタート バーストキャンセル専用かも
;----対応同士だと、どっちかは相殺[された]扱いになる
;-----相手しんでたらできない。
[State -1, sike];通常黄色   ヒットストップ中のみ！　ここでＦＤすると無敵で通常状態に戻れる
type = ChangeState
value = 950
triggerall = (command = "ALL" && command != "holdback" && !var(29)) || command = "bust"
triggerall = fvar(10) >= 15000 && alive && enemy,alive && !var(53)
trigger1 = numtarget(940)
trigger1 = HitPAUSETIME
trigger2 = var(49) = 2
trigger2 = enemynear,numtarget(940)
trigger2 = !hitshakeover
ignorehitpause = 1

;---ALLボタンでロマキャンー＞即出になるのを防いでほしい
[State -1, sike];通常黄色
type = ChangeState
value = 951
triggerall = (command = "ALL" && command != "holdback" && !var(29)) || command = "bust"
triggerall = fvar(10) >= 15000 && alive && enemy,alive && !var(53)
trigger1 = ctrl || sysvar(3) = 1
ignorehitpause = 0


;－－－－－－－－－－スラッシュバック	しりーず	ORかACのみ
;-----------レバーが先に入ってること。SとHは同時押しでなくてもいい。のでこのようになる?
;----FDとの重複はどちらが優先されるか？例：P+S+HS	要ちぇっく！
;--SB優先、が失敗時２FはFDCできるといういやらしい
;--ガードヒットバック時発動は130には行かないでその場で。エフェクトと不能時間だけやればいい?
;----ガード状態フラグv25,その他各種もここで同時にやってしまいたいが
[state 120x,];SB　ガード状態フラグ
type = varset
triggerall = var(25) <= 3; || var(25) = 3 || var(25) = 2
triggerall = !var(40) && power >= 20 && fvar(21) = 0 && !var(53)
triggerall = !var(1)  || var(1) = 4
triggerall = command = "SBS" || command = "SBC" || command = "SBA"
triggerall = command = "holdS" && command = "holdHS"
triggerall = 1;command = "start"
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 52)
trigger1 = stateno != [130,132]
trigger2 = stateno = 151 || stateno = 153 || stateno  = 155
var(25)  = 3
ignorehitpause = 0

[state 120x,];SB　ガード不能時間の発動　成功時１５、失敗時３０、基本30にセットしてガードしたら15に変更	これもガードでやる？
type = varset
triggerall = var(25) = 3 
triggerall = !var(40) && power >= 20 && fvar(21) = 0 && !var(53)
triggerall = !var(1)  || var(1) = 4
triggerall = command = "SBS" || command = "SBC" || command = "SBA"
triggerall = command = "holdS" && command = "holdHS"
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 52)
trigger1 = stateno != [130,132]
trigger2 = stateno = 151 || stateno = 153 || stateno  = 155  
fvar(22)  = 30
ignorehitpause = 0

[state -2,helper partner];----SB発動リング黄色　成功時のはそっちで、代用エフェ
type = Helper
triggerall = 0;var(25) = 3 || var(25) = 2
triggerall = !var(40) && power >= 20 && fvar(21) = 0 && !var(53)
triggerall = (!var(1) || var(1) = 4)
triggerall = command = "SBS" || command = "SBC" || command = "SBA"
triggerall = command = "holdS" && command = "holdHS"
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 52)
trigger1 = stateno != [130,132]
trigger2 = stateno = 151 || stateno = 153 || stateno  = 155
name = "SB helper splash"
ID = 55
pos = 0,0
postype = p1
stateno = 755
ownpal = 1
ignorehitpause = 0
size.height = 1

;--------SB  1%以上で使用   起き上がり１０F不能(fv21)
;-----ボタン先押しはだめ、レバー入ってる状態で同時押しでしかでないように
;----R移動でだせる？未確認一応封印？
;----ガード準備120,130~ではだせなくしておく、硬直150～は？
;-----んと、FD中にS+HSはいるといけるように変えて・・
[State -1,SB];SB地上
type = ChangeState
value = ifelse(command = "SBS",130,131)
triggerall = var(25) = 3; || var(25) = 2
triggerall = !var(40) && power >= 20 && statetype != a && fvar(21) = 0 && !var(53)
triggerall = (!var(1) || var(1) = 4)
triggerall = command = "SBS" || command = "SBC" || command = "SBA"
triggerall = command = "holdS" && command = "holdHS"
triggerall = 1;command = "start"
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 52)
trigger1 = stateno != [130,132]
ignorehitpause = 0

[State -1,SB];SB 空中
type = ChangeState
value = 132
triggerall = var(25) = 3 ;|| var(25) = 2
triggerall = !var(40) && power >= 20 && statetype = a && fvar(21) = 0 && !var(53)
triggerall = (!var(1) || var(1) = 4)
triggerall = command = "SBS" || command = "SBC" || command = "SBA"
triggerall = command = "holdS" && command = "holdHS"
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 52)
trigger1 = stateno != [130,132]
ignorehitpause = 0

;----------------------------フォルトレス
;-----------------------------------------FD関連 var(22)
;----------------------ボタン入力はHITPAUSE無視でＯＫ？
[State -1, FD];フォルトレス	ボタンパターン１ 便利ボタン
type = varset
var(22) = 1
triggerall = !var(53)
trigger1 = command = "holdALL"
ignorehitpause = 1

[State -1, FD];フォルトレス	ボタンパターン2 PK
type = varset
var(22) = 2
triggerall = !var(53)
command = "holdback" 
trigger1 = command = "holdP" && command = "holdK"
ignorehitpause = 1

[State -1, FD];フォルトレス	ボタンパターン3 PS
type = varset
var(22) = 3
triggerall = !var(53)
trigger1 = command = "holdP" && command = "holdS"
ignorehitpause = 1

[State -1, FD];フォルトレス	ボタンパターン4 PHS
type = varset
var(22) = 4
triggerall = !var(53)
trigger1 = command = "holdP" && command = "holdHS"

[State -1, FD];フォルトレス	ボタンパターン5 KS
type = varset
var(22) = 5
triggerall = !var(53)
trigger1 = command = "holdK" && command = "holdS"
ignorehitpause = 1

[State -1, FD];フォルトレス	ボタンパターン6 KHS
type = varset
var(22) = 6
triggerall = !var(53)
trigger1 = command = "holdK" && command = "holdHS"
ignorehitpause = 1

[State -1, FD];フォルトレス	ボタンパターン7 SHS  ACではSBになる'起き上がり１０F禁止(fv21)
type = varset
var(22) = 7
triggerall = !var(53)
trigger1 = var(1) = [1,3]
trigger1 = command = "holdS" && command = "holdHS"
ignorehitpause = 1

;-------------------ACではスラッシュバックによりパターン７使用不能。
[State -1, FD];フォルトレス 解除FDコマンド使用封印パターンによってボタンはなしが違う？
type = varset
var(22) = 0
trigger1 = var(22) = 2 && (command != "holdP" || command != "holdK") 
trigger2 = var(22) = 3 && (command != "holdP" || command != "holdS") 
trigger3 = var(22) = 4 && (command != "holdP" || command != "holdHS") 
trigger4 = var(22) = 5 && (command != "holdK" || command != "holdS") 
trigger5 = var(22) = 6 && (command != "holdK" || command != "holdHS") 
trigger6 = var(22) = 7 && (command != "holdS" || command != "holdHS") 
trigger7 = var(22) = 1 && command != "holdALL"
trigger8 = power <= 0  
trigger9 = command != "holdback"  
ignorehitpause = 1

;---------いぢとやったあとボタンなしでもレバーはいったままだと解除されてないちぇっくして
;-----FD状態解除
;----ガードヒットバック、DAAヒットストップは除く？とくにがーどはあたってるときにかえると厄介
[State -1, FD];フォルトレス 解除FDコマンド使用封印パターンによってボタンはなしが違う？
type = varset
var(25) = 0
triggerall = var(25) = 2
triggerall = stateno != 150 && stateno != 152 && stateno != 154 && stateno != 930
trigger1 = var(22) = 0 
trigger2 = power <= 0  
trigger3 = command != "holdback" 
trigger4 = var(40) 
ignorehitpause = 1

;-----------------FD状態にセット 2;---SBしたあとのガード不能期間はだめ
;--3P OK, AIR2SもOK,3PNO(235)注意
;---通常技はガトリン以外　基本5HS,8HS,D,2D以外　EX,REなら5HS,8HSOK
;--SNOが他のと違い、HSなし。
;--GGXのみ2D,8D OK,ガトリング規制なし
[state 120x,]
type = varset
triggerall = var(25) <= 2 && fvar(22) <= 0 
triggerall = power > 0 && !var(40) && !var(53)
triggerall = (var(2) != 2 && var(22)) || (var(2) = 2 && (var(22) = 1 || var(22)= 2))
triggerall = ((!var(1) || var(1) = 4) && var(22) != 7) || ((var(1) >= 1 && var(1) < 4) && var(22))
triggerall = command = "holdback" 
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1 || (stateno = 52 && time > 0)
trigger2 = prevstateno != [200,440]
trigger2 = stateno = [200,430]
trigger2 = var(1) < 3 || var(1) >= 3    
trigger2 = time <= 2
trigger3 = prevstateno != [600,650]
trigger3 = stateno = [600, 635]
trigger3 = time <= 2
trigger4 = stateno = 440 || stateno = 640
trigger4 = var(2) = 2 && time <= 2
var(25)  = 2
ignorehitpause = 1

;---------------GGXモードのみＰＫ押しだけしかきかない
;---通常技はガトリン以外　基本5HS,8HS,D,2D以外　EX,REなら5HS,8HSOK
;--GGXのみ2D,8D OK,ガトリング規制なし
[State -1, FD];フォルトレス たち	しゃがみ
type = ChangeState
value = ifelse(statetype = A,132,ifelse(command = "holddown",131,130))
triggerall = var(25) <= 2 && fvar(22) <= 0 
triggerall = !var(40) && power > 0 && !var(53)
triggerall = (var(2) != 2 && var(22)) || (var(2) = 2 && (var(22) = 1 || var(22) = 2))
triggerall = ((!var(1) || var(1) = 4) && var(22) != 7) || ((var(1) >= 1 && var(1) <= 3) && var(22))
triggerall = command = "holdback" 
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1 || (stateno = 52 && time > 0)
trigger2 = prevstateno != [200,440]
trigger2 = stateno = [200,430]
trigger2 = var(1) < 3 || var(1) >= 3    
trigger2 = time <= 2
trigger3 = prevstateno != [600,650]
trigger3 = stateno = [600, 635]
trigger3 = time <= 2
trigger4 = stateno = 440 || stateno = 640
trigger4 = var(2) = 2 && time <= 2

;----test FDエフェクトヘルパー	これ内部処理と切り離して考えます　表示されるだけ、行動影響なし　
;----直前ガード時でも出る事は出る。FDは130のtime=0の繰り返しなので、命令発動しないことがそっちにかく
[state -2,helper partner];
type = Helper
triggerall = 0;var(25) = 2;var(25) = 1 || 
triggerall = !numhelper(50)
triggerall = power > 0 && !var(40)
triggerall = 1;(var(2) != 2 && var(22)) || (var(2) = 2 && (var(22) = 1 || var(22)= 2))
triggerall = 1;((!var(1) || var(1) = 4) && var(22) != 7) || ((var(1) >= 1 && var(1) < 4) && var(22))
triggerall = command = "holdback" 
trigger1 = 1;stateno = [120,155]
trigger1 = 1;ctrl || (sysvar(3) = 1 && stateno != 52)
;trigger2 = stateno = [200,430]
;trigger2 = stateno != 240 && stateno != 245
;trigger2 = time <= 2 && prevstateno != [200,430]
;trigger3 = stateno = [600,650]
;trigger3 = time <= 2 && prevstateno != [600,650]
;trigger4 = var(2) = 2 && (stateno = 440 || stateno = 640) && time <= 2
helpertype = normal
name = "FD helper"
ID = 50
pos = 0,0
postype = p1
stateno = 750
keyctrl = 0
ownpal = 1
ignorehitpause = 1

;-----------------直前ガード発動
;---優先順位ちがってる、FDより後
;----どっちかガードしてて切り替え時はだめ、どうやろう
[state 120x,]
type = varset
triggerall = !var(23)
trigger1 = command = "justDS" 
trigger2 = command = "justDC"
var(23)  = 30
ignorehitpause = 1

;----------------------------------ここから人それぞれ
;=====超必殺技======================================================================
;--sv3は擬似CTRL。1通常技OK状態　2必殺技OK状態
[state -1, sp1 ];るーぷざるーぷ	ダスト不可 GGならGキャンセルOK
type = changestate
value = 3100
triggerall = power >= 1000 && !var(40) && !var(53)
triggerall = command = "sp_1"
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 && stateno != 240 && movecontact
trigger3 = var(2) = 1 && stateno = [150,153]
 
[state -1, sp1 ];笑劇 3400スタート投げへるぱはSP2.cns
type = changestate
value = 3400
triggerall = power >= 1000 && !var(40) && !var(53)
triggerall = command = "sp_6"
triggerall = statetype != A && !var(1)
triggerall = numenemy && enemy,alive
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430] 
trigger2 = stateno != 215 && stateno != 240 && movecontact
trigger3 = var(2) = 1 && stateno = [150,153]

[state -1, sp1 ];悲劇
type = changestate
value = 3200
triggerall = power >= 1000 && !var(40) && !var(53)
triggerall = command = "sp_3"
triggerall = statetype != A && var(1) != 2 
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 && stateno != 240 && movecontact
trigger3 = var(2) = 1 && stateno = [150,153]

[state -1, sp1 ];喜劇		これも1Vs1のみ
type = changestate
value = 3300
triggerall = power >= 1000  && !var(40) && !var(53)
triggerall = (command = "sp_3" && var(1) = 2) || (command = "sp_4" && !var(1))
triggerall = statetype != A  
triggerall = TeamMode = Simul = 0 && enemy,teammode = simul = 0
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,440]  
trigger2 = stateno != 215 && stateno != 240 && movecontact
trigger3 = var(2) = 1 && stateno = [150,153]

[state -1, sp2 ];キルマシーン  地上発動設置中もしくはハグ中？YY技
type = changestate
value = 1590
triggerall = numhelper(100)
triggerall = power >= 1000  && !var(40) && !var(53) && var(30)
triggerall = command = "sp_2" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430]  
trigger2 = stateno != 215 && movecontact
trigger3 = stateno = 935 && movecontact


[state -1, sp2 ];キルマシーン  EX　空中発動設置中もしくはハグ中？YY技	高度制限ない？
type = changestate
value = 1595
triggerall = numhelper(100)
triggerall = power >= 1000  && !var(40) && !var(53) && var(30) 
triggerall = command = "sp_2" 
triggerall = statetype = A && (!var(1) || var(1) = 2)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,630]  
trigger2 = movecontact

[State -3, debu0];しゅーとざむーん シングルモード判断WIN
type = ChangeState
value = 3600
triggerall = var(40) = 1 && !var(53) 
triggerall = command = "sp_5" 
triggerall = statetype != A  
triggerall = TeamMode = Simul = 0 && enemy,teammode = simul = 0
trigger1 = ctrl || sysvar(3)


;=======必殺技====================================================================

[state -1, star ship ];スターシップ　地上ＥＸモード以外
type = changestate
value = 1200
triggerall = command="star" 
triggerall = var(1) != 2 && statetype != A
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430] 
trigger2 = stateno != 215 && stateno != 240 && movecontact
trigger3 = var(2) = 1 && stateno = [150,153]

[state -1, star ship ];SS空中　ＥＸ以外　ジャンプ初めは高度制限ありとは書いてない低空ｓSやりにくい、下降なら問題なく？判断はどうすれば28いらないかも
type = changestate
value = 1250
triggerall = command ="star"
triggerall = var(1) != 2  && statetype = A
triggerall = 1;(pos y <= -20 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,640] 
trigger2 = movecontact
trigger3 = var(2) = 1 && stateno = 155

;----------------優先順位Dボタン236と214、フォースブレイク対応らっしゅじゃっく AC=4
[state -1, rush];ラッシュ地上発動　ＡＬＬ  Dボタン
type = changestate
value = 1572
triggerall = !var(1) || var(1) = 4
triggerall = numhelper(100) && !var(53) && var(30)
triggerall = command = "rush2" 
triggerall = statetype != A && power >= 500
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430] 
trigger2 = stateno != 215 && movecontact 
trigger3 = stateno = 935 && movecontact

;-^----236
[state -1, jack];ラッシュ　空中発動OR,EX   Dボタン  空中ラッシュはORのみね
type = changestate
value =1577
triggerall = !var(1) 
triggerall = numhelper(100) && !var(53) && var(30)
triggerall = command = "rush2"
triggerall = statetype = A && power >= 500
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,630]

[state -1, ksmh];キックスタートマイハート
type = changestate
value = 1300
triggerall = command = "ksmh" 
triggerall = statetype != A
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 && stateno != 240
trigger2 = movecontact 
trigger3 = var(2) = 1 && stateno = [150,153]

[state -1, AHmh];エアホップマイハートOR,EX
type = changestate
value = 1360
triggerall = command = "ksmh" 
triggerall = (!var(1) || var(1) = 2) && statetype = A 
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,640] 
trigger2 = movecontact
trigger3 = var(2) = 1 && stateno = [154,155]

;-------------------------------以下ヨーヨー操作関連----命令v(10)--相変わらず命令のみね
;---------------ヨーヨ技はダスト240でもキャンセルＯＫ:空中Ｄ640、足払い440はだめ
;----FB対応はラッシュとジャックのみっぽい
;-----------------421
[state -1, jack];げっと 	#R以外
type = changestate
value = ifelse(statetype = A,1585,1580)
triggerall = numhelper(100)
triggerall = command = "get" 
triggerall = var(30) && var(1) != 1
triggerall = statetype != A ||  (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,630]  
trigger2 = stateno != 215 && stateno != 440 && movecontact 
trigger3 = stateno = 935 && movecontact

;-------------214  D
[state -1, jack];FB ジャック地上　 ぱわー５００、AC
type = changestate
value = ifelse(statetype = A,1557,1552)
triggerall = !var(1) || var(1) = 4
triggerall = numhelper(100) && power >= 500 && var(30)
triggerall = command = "jack2"
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,630]  
trigger2 = stateno != 215 && stateno != 440 && movecontact 
trigger3 = stateno = 935 && movecontact

;------------------- 214HS
[state -1, jack];ジャック地上　共通ＡＬＬ 
type = changestate
value = ifelse(statetype = A,1555,1550)
triggerall = numhelper(100) && var(30) 
triggerall = command = "jack" 
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,630]  
trigger2 = stateno != 215 && stateno != 440 && movecontact 
trigger3 = stateno = 935 && movecontact

;---OR制限なし、ほか２回まで。
;----214
[state -1, rolling move];ろーりんぐ移動 開始　着地で27を0に   ためちゅうでもよくなったけど・・どうやろう
type = changestate
value = 1100
triggerall = numhelper(100) && !var(53) && var(30)
triggerall = command = "rollf" 
triggerall = !var(1) || (var(1) && var(27) < 2)  
triggerall = statetype != A || (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,630]  
trigger2 = stateno != 215 && stateno != 440 && movecontact
trigger3 = stateno = 935 && movecontact

;----623
[state -1, jack];ハグ　地上発動ALL  v30が2,1のときのみ　3はだめ3=HUG中
type = changestate
value = 1560
triggerall = numhelper(100) && !var(53)
triggerall = command = "hug"
triggerall = (var(30) = 1 || var(30) = 2)
triggerall = statetype != A
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430]  
trigger2 = stateno != 215 && movecontact
trigger3 = stateno = 935 && movecontact

;---623
[state -1, jack];ハグ　空中発動OR,EX   v30 =2のときのみ　3はだめ
type = changestate
value = 1565
triggerall = numhelper(100) && !var(53)
triggerall = command = "hug"
triggerall = (var(30) = 1 || var(30) = 2)
triggerall = statetype = A && (!var(1) || var(1) = 2)
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,630]
trigger2 = movecontact 


;---236  
[state -1, rush];ラッシュ地上発動　ＡＬＬ
type = changestate
value = 1570
triggerall = numhelper(100) && !var(53) && var(30) 
triggerall = command = "rush" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,430] 
trigger2 = stateno != 215  && stateno != 440 && movecontact 
trigger3 = stateno = 935 && movecontact

;-^----236
[state -1, jack];ラッシュ　空中発動OR,EX
type = changestate
value =1575
triggerall = numhelper(100) && !var(53) && var(30) 
triggerall = command = "rush"  
triggerall = statetype = A && (!var(1) || var(1) = 2)
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [600,630]
trigger2 = movecontact 


[state -1, jack];シフト  YY技扱い設置してあったら１か２、ろじゃ動作中変更させないように注意して
type = changestate
value = ifelse(statetype = A,1545,1540)
triggerall = command = "shift" 
triggerall = (numhelper(100) && (var(30) = 2 || var(30) = 3)) || !numhelper(100)  
triggerall = !var(1) && !var(53)
triggerall = statetype != A || (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3)
trigger2 = stateno = [200,630]
trigger2 = stateno != 215 && stateno != 440 && movecontact 
trigger3 = stateno = 935 && movecontact

;--------------------------------以下通常
;---------------------------------------------------------------------------
;投げ よろけ状態でもなげられるぞ
[State -1, c Throw]
type = ChangeState
value = 800
triggerall = command = "HS" && statetype != A  && command != "roma"
triggerall = p2statetype != A && p2statetype != L; && p2movetype != H 
triggerall = p2bodydist x <= 25 
triggerall = (command = "holdfwd"  || command = "holdback") && command != "holddown" 
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 100)
trigger2 = stateno = 99 && time >= 5

;---------------------------------------------------------------------------
;空中投げ R移動中もだせる！！！airつけておいて	AC.間合い減少
[State -1, c Throw]
type = ChangeState
value = 850
triggerall = command = "HS" && statetype = A && command != "roma"
triggerall = p2statetype = A && p2movetype != H
triggerall = (var(1) != 4 && p2bodydist X <= 55) || (var(1) = 4 && p2bodydist X <= 44) 
triggerall = p2bodydist y >= -50 && p2bodydist y <= 10
triggerall = (command = "holdfwd"  || command = "holdback") && command != "holddown"  
trigger1 = ctrl || (sysvar(3) = 1 && stateno != 102 && stateno != 107)
trigger2 = stateno = 1100 && time >=1

;--------------------------------------------------------------------------

;---------------------------------------------------------------------------
;==通常攻撃=========================================================================
;------------------優先順位は敬>D>挑>HS>P>K>S-------------------------------------------------------
;---------------------------------------------------------------------------
;----------------------敬意　レバー前
[State -1, debug]
type = ChangeState
value = 910
triggerall = (command = "start" && command = "holdfwd")
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3) = 1

;----------------------地上D-----------------------------------------------------
;しゃがみD 	 (215,230,235,240）以外
[State -1, Crouching down ]
type = ChangeState
value = 440
ignorehitpause = 1
triggerall = ((command = "D" || (var(2) = 2 && command = "S" && command = "HS")) && command = "holddown") 
triggerall = statetype != A  && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,420]  
trigger2 = movecontact && stateno != 215 && stateno != 230 && stateno != 235 && stateno != 240

;------立ちDダスト (215,230,235,240）以外
[State -1, Stand m]
type = ChangeState
value = 240
triggerall = ((command = "D" || (var(2) = 2 && command = "S" && command = "HS")) && command != "holddown")
triggerall = statetype != A  && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,420]  
trigger2 = movecontact && stateno != 215 && stateno != 230 && stateno != 235 && stateno != 240

;----------------------------デバック　または挑発　ニュートラル
[State -1, debug]
type = ChangeState
value = 900
triggerall = command = "start" || var(39) = 900
triggerall =  statetype != A 
trigger1 = ((ctrl || sysvar(3) = 1) && command != "holdfwd") 
trigger2 = stateno = [200,440]
trigger2 = movecontact && stateno != 215 && stateno != 240
trigger3 = var(2) = 1 && stateno = [150,153]

;-----------------地上HS 準必殺技扱いのため優先繰上げ2番。
;1500地上配置 1510空中配置 1520ダウン配置 1530地上戻し 1540 空中戻し	
;ダストからこれる	足払いはだめ
[state -1, yoyo];　
type = changestate
value = 1500
triggerall = !numhelper(100)
triggerall = command = "HS"
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,430]    
trigger2 = movecontact && stateno != 215
trigger3 = stateno = 935 && movecontact

[state -1, yoyo];ダウン配置　 うつぶせ時も出せる・・いきなり反対むくことになるけど・・
type = changestate
value = 1520
triggerall = !numhelper(100)
triggerall = command = "holdHS" && statetype = L && command != "roma"
trigger1 = stateno = 5110 && time = 10

[state -1, yoyo];地上戻し	ヘルパがいて、v30が真(1:タメ戻し中 2：停止中　3:ハグ中)　
type = changestate
value = 1530
triggerall = numhelper(100) && var(30) 
triggerall = command = "HS" 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,430]    
trigger2 = movecontact && stateno != 215
trigger3 = stateno = 935 && movecontact

;---------------------地上P
;-------------------------レヴァー斜め下P お尻　≒HS？
[State -1, Stand Light]
type = ChangeState
value = 235
triggerall = (command = "P" && command = "holddown" && command = "holdfwd")
triggerall = statetype != A && command != "roma" 
trigger1 = ctrl || sysvar(3) = 1

;しゃがみp 200,400連打(200からの空キャンはできる？ しゃがみKからもこれる！？表の不備かな
;---REではしゃがみ連打できるよね？？ＡＣで削除なの？しゃがPが不可ってのはありえなくないかー？誤植？
;-ふれ表にも必Rしかない、この削除意味あるの？？だったら基底消しなさいよ・・
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = (command = "P" && command = "holddown") 
triggerall = statetype != A && command != "roma" 
trigger1 = ctrl || sysvar(3) = 1
trigger2 = (stateno = 200 || stateno = 410 ) && movecontact
trigger3 = stateno = 200 && animelemtime(6) >= 1  	;空キャン
trigger4 = stateno = 400 && movecontact; && var(1) != 4	;連打キャンセルＡＣ以外？

;---------レバー前P  200,210,220,400,410,
[State -1, Stand Light]
type = ChangeState
value = 205
triggerall = (command != "holddown" && command = "holdfwd" && command = "P")
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1 			
trigger2 = stateno = 200 || stateno = 210 || stateno= 220 || stateno = 400 || stateno = 410 
trigger2 = movecontact 
trigger3 = stateno = 200 &&  animelemtime(6) >= 1  	;空キャン

;-------立ちP　  200連打(空キャン6-2以上),400 
[State -1, Stand Light]
type = ChangeState
value = 200
triggerall = command = "P" 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1		;立ち状態で操作可能
trigger2 = (stateno = 400 || stateno = 200) && movecontact	
trigger3 = stateno = 200 &&  animelemtime(6) >= 1  	;空キャン			

;--------------------------地上K
;---------------------------------------------------------------------------
;しゃがみK 200,400,420
[State -1, Crouching m]
type = ChangeState
value = 410
triggerall = command = "K" 
triggerall = statetype != A && command != "roma" && command = "holddown"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 400 || stateno = 420  
trigger2 = movecontact
trigger3 = stateno = 200 &&  animelemtime(6) >= 1  	;空キャン

;---------------------------------------------------------------------------
;立ちKレバー 200,205,210,400,410　
[State -1, Stand m2]
type = ChangeState
value = 215
triggerall = (command = "K" && command != "holddown" && command = "holdfwd" ) 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 400 || stateno = 410
trigger2 = movecontact


;立ちK 200,400
[State -1, Stand m]
type = ChangeState
value = 210
triggerall = command = "K" 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = stateno = 200 &&  animelemtime(6) >= 1  	;空キャン			

;------------------------地上S部---------------------------------------------------
;---------しゃがみS 200,205,210,220,225,400,410 
[State -1, Crouching Strong ]
type = ChangeState
value = 420
triggerall = (command = "S" && command = "holddown") 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,410]    
trigger2 = stateno != 215 && stateno != 230 && stateno != 240  && stateno != 235 && movecontact 

;---------------------------------------------------------------------------
;立ちSレバー 　　200,205,210,225,400,420　
[State -1, Stand m2]
type = ChangeState
value = 230
triggerall = (command = "S" && command != "holddown" && command = "holdfwd") 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 =  stateno = 200 || stateno = 205 || stateno = 210 || stateno = 225 || stateno = 400 || stateno = 420  
trigger2 = movecontact

;---------------------------------------------------------------------------
;立ちS 遠距離　    200,205,210,220,400,410
[State -1, Stand high2]
type = ChangeState
value = 225
triggerall = command = "S" 
triggerall = p2bodydist X > 35
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 400 || stateno = 410 
trigger2 = movecontact

[State -1, Stand high2];追加遠距離ガトリングのとき
type = ChangeState
value = 225
trigger1 = command = "S" 
trigger1 = stateno = 220 && movecontact

;立ちS　近距離 200,205,210,400,410
[State -1, Stand high ]
type = ChangeState
value = 220
triggerall = command = "S" 
triggerall = p2bodydist X <= 35
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 400 || stateno = 410  
trigger2 = movecontact 


;-------------------------------------空チュうD
;空中d 600 620
[State -1, Jump d]
type = ChangeState
value = 640
triggerall = (command = "D" || (var(2) = 2 && command = "S" && command = "HS")) 
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact 
trigger3 = stateno = [1410,1445] 

;-----------------空中HS	準必殺技なので2番目。
;1500地上配置 1510空中配置 1520ダウン配置 1530地上戻し 1535 空中戻し	
;空中Dからはこれない
[state -1, yoyo];　
type = changestate
value =1510
triggerall = !numhelper(100)
triggerall = command = "HS" 
triggreall = statetype = A && command != "roma"
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [600,630]    
trigger2 = movecontact  

[state -1, yoyo];戻し	ヘルパがいて、v30が真(1,2,3)　
type = changestate
value = 1535
triggerall = numhelper(100) && var(30)
triggerall = command = "HS" 
triggerall = statetype = A && command != "roma"
triggerall = (pos y <= -28 && vel y <= 0) || (pos y <= -10 && vel y >= 0)
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [600,630]    
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中p 600連打空キャンはだめ？ 610,620
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = command = "P"
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [600,620]  
trigger2 = movecontact 

;---------------------------------------------------------------------------
;空中k 600,620
[State -1, Jump k　]
type = ChangeState
value = 610
triggerall = command = "K" 
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 600 || stateno = 620 
trigger2 = movecontact 

;--------------------空中レバーS部
;----空中レヴァーs 600,620　
[State -1, Jump Ls]
type = ChangeState
value = 630
triggerall = (command = "S" && command = "holddown") 
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 =stateno = 600 || stateno = 620 
trigger2 = movecontact 


;空中s 600,610
[State -1, Jump s]
type = ChangeState
value = 620
triggerall = command = "S" 
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [600,610]  
trigger2 = movecontact 


;---------------------------------------------------------------------------
;ふろんとダッシュ100->99停止
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF" 
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ばっくすてっぷ104->105->106の流れ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype != A
trigger1 = ctrl

;--------------------------------------------
;Airダッシュ 102->51  HJのときは2回、２Jしたあとは1回
;---通常高度制限あり  5F目、-47.025 -46に？ GGなら制限なし
[State -1, Air Run Fwd]
type = ChangeState
value = 102
triggerall = (!var(1) && var(7) < 2) || (var(1) && !var(7)) 
triggerall = command = "FF"|| (var(2) = 1 && command = "FFGG")
triggerall = statetype = A
triggerall = var(2) = 1 || (var(2) != 1 && pos y <= -46)
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air 後退ダッシュ107->51
[State -1, Air Run Back]
type = ChangeState
value = 107
triggerall = (!var(1) && var(7) < 2) || (var(1) && !var(7)) 
triggerall = command = "BB" || (var(2) = 1 && command = "BBGG")
triggerall = statetype = A
triggerall = var(2) = 1 || (var(2) != 1 && pos y <= -46)
trigger1 = ctrl

;------------ジャンプキャンセル、ガトリング優先なのでここにおくJ属性仕込みに使うので
;----------ダストはHSよりダスト優先なので-2でいい?
[state -3,jump cancel];200,210,220,230,420  GG以外 ダスト以外
type = changestate
triggerall = movecontact
triggerall = command = "holdup"
triggerall = stateno != 240
trigger1 = var(2) != 1
trigger1 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 420
trigger2 = stateno = [200,440]
trigger2 = var(2) = 1
value = 40
ignorehitpause = 0

;-----------2ダンジャンプ-
;-空中ダッシュすると回数減らし？102(7)->51 なので５１は・・
;----------------------------------------------
[State -1, 2J];15回数が残ってるか 9,レバーをはなしたか 14１J属性 
type = ChangeState
value = 42
triggerall = !var(9) && !var(53)
triggerall = !var(15) || (var(14) && var(15) = 1)
triggerall = command = "holdup"
trigger1 = stateno = 50 && time >= 1 && ctrl
trigger2 = stateno = 51 
 
;-----空中Jキャンセルdasutotyuuhadame
[state -3,jump cancel];610,630	GGはD以外
type = changestate
triggerall = !var(9) && !var(53)
triggerall = !var(15) || (var(14) && var(15) = 1)
triggerall = movecontact
triggerall = command = "holdup"
trigger1 = stateno = 610 || stateno = 630
trigger1 = var(2) != 1
trigger2 = stateno = [600,630] 
trigger2 = var(2) = 1
value = 42
ignorehitpause = 0

