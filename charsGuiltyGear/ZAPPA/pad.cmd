;Mirage Childlen #30 code:"Ikaros" ommand file 
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

[Remap];---N TYPE=  P:x K:a S:y HS:b D:z G:c
x = c
y = z
z = b
a = x
b = a
c = y
s = s
;--------------N ここまで

[Remap];---L TYPE=  P:a K:b S:c HS:z D:y G:x
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;------------L ここまで

[Remap];---A TYPE=  P:a K:x S:y HS:z D:c G:b
x = b
y = c
z = z
a = a
b = x
c = y
s = s
;--------------A ここまで


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

[Command];なっくる　OR	D
name = "sp_2E"
command = ~D, F, D, F, y
time = 30
[Command];;なっくる　OR	D
name = "sp_2E"
command = ~D, F, D, F, ~y
time = 30

[Command];まりス・かいざー　S
name = "sp_2"
command = ~D, F, D, F, c
time = 30
[Command];まりス・かいざー　S
name = "sp_2"
command = ~D, F, D, F, ~c
time = 30

[Command];うまれるー　HS
name = "sp_1"
command = ~D, F, D, F, b
time = 30
[Command];うまれるー　HS
name = "sp_1"
command = ~D, F, D, F, ~b
time = 30

[Command];こわい	HS
name = "sp_6"
command = ~D, F, D, F, z
time = 30
[Command];こわい	HS
name = "sp_6"
command = ~D, F, D, F, ~z
time = 30


;-| 必殺技 |------------------------------------------------------
;-------------優先順位はD P K S HS	

;-----63214
[Command];いきます	HS
name = "624H"
command = ~F, DF, D, DB, B, z
time = 30
[Command];いきます	HS　 
name = "624H"
command = ~F, DF, D, DB, B, ~z
time = 30

;--623
[Command];そのまま P　OR用
name = "623P"
command = ~F, D, DF, a
time = 25
[Command];そのまま P　OR用 P離し
name = "623P"
command = ~F, D, DF, ~a
time = 25

[Command];おちとけ HS
name = "623H"
command = ~F, D, DF, z
time = 25
[Command];おちとけ HS離し
name = "623H"
command = ~F, D, DF, ~z
time = 25

;--236
[Command];かえってくるなー D
name = "236D"
command = ~D, DF, F, y
time = 30
[Command];かえってくるなー D 離し
name = "236D"
command = ~D, DF, F, ~y
time = 30

[Command];むかで・居た P
name = "236P"
command = ~D, DF, F, a
time = 30
[Command];むかで・居たー P 離し
name = "236P"
command = ~D, DF, F, ~a
time = 30

[Command];かえってくるなー K
name = "236K"
command = ~D, DF, F, b
time = 30
[Command];かえってくるなー K 離し
name = "236K"
command = ~D, DF, F, ~b
time = 30

[Command];いたそう・アンセム・かえってくるな　S
name = "236S"
command = ~D, DF, F, c
time = 30
[Command];いたそう・アンセム　かえってくるなS 離し
name = "236S"
command = ~D, DF, F, ~c
time = 30

[Command];かえってくるなー HS
name = "236H"
command = ~D, DF, F, z
time = 30
[Command];かえってくるなー HS 離し
name = "236H"
command = ~D, DF, F, ~z
time = 30

;----214
[Command];礼儀　D
name = "214D"
command = ~D, DB, B, y
time = 30
[Command];礼儀　S 離し
name = "214D"
command = ~D, DB, B, y
time = 30

[Command];えどがい　S
name = "214S"
command = ~D, DB, B, c
time = 30
[Command];えどがい　S 離し
name = "214S"
command = ~D, DB, B, c
time = 30

;----22
[Command];ご利用は　D
name = "22D"
command = ~D, D, D, y
time = 15
[Command];計画的にね　D 離し
name = "22D"
command = ~D, D, D, y
time = 15

[Command];ご利用は　P
name = "22P"
command = ~D, D, D, a
time = 15
[Command];計画的にね　P 離し
name = "22P"
command = ~D, D, D, a
time = 15

[Command];ご利用は　k
name = "22K"
command = ~D, D, D, b
time = 15
[Command];計画的にね　k 離し
name = "22K"
command = ~D, D, D, b
time = 15

[Command];ご利用は　s
name = "22S"
command = ~D, D, D, c
time = 15
[Command];計画的にね　S 離し
name = "22S"
command = ~D, D, D, c
time = 15

[Command];ご利用は　hs
name = "22H"
command = ~D, D, D, z
time = 15
[Command];計画的にね　hs 離し
name = "22H"
command = ~D, D, D, z
time = 15
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
[state -1, sp1 ];チームモードでは、でなくSIMULででないように？
type = changestate
value = 920
triggerall = var(40) >= 0 && !var(53)
triggerall = statetype != A 
triggerall = ctrl || sysvar(3) 
triggerall = TeamMode = Simul = 0 && enemy,teammode = simul = 0
trigger1 = command = "P" && command = "K" && command = "S"  && command = "HS"
trigger2 = command = "ALL" && !var(29)
trigger2 = command = "holddown" && command != "holdfwd" && command != "holdback"

;----------------------ロマンキャンセル27 FROMAは対応ステートでやる975-977
;----攻撃判定ありのFROMA、HITSTOPの１Fは許す、じゃないとあたったことにならないかも
;----確実にダストほうりこむため、ダストではあっちでやる

;-------------無・犬、らおう 剣一部　本体に赤あるもの
;--500はＦＲＯＭＡあり,510は空中-痛そうはとくしゅ,いきますはFR
;--DAA、むかで、礼儀、生まれる.アンセム,落ちとけ、エドガイ、カイザー
[State -1, sike];通常地上 接触フラグV34 相殺時も赤ろまOK（ゲージの無駄）
type = ChangeState
value = ifelse(HitPauseTime || var(32),970,972)
triggerall = power >= 1000 && !var(40) && !var(53)
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = statetype != A && var(34) 
triggerall = stateno != [950,990]
triggerall = stateno != 240
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 440
trigger2 = stateno = 220 || stateno = 225 || stateno = 230 || stateno = 235 || stateno = 420 || stateno = 430
trigger3 = stateno = 935 || stateno = 1100 || stateno = 1200 || stateno = 3000
trigger4 = stateno = 1300 ||  stateno = 1800 || stateno = 3200
ignorehitpause = 1


;----空中版	本体に赤あるもの->通ります？
[State -1, sike];通常空中STOP中980　NONE982	FROMAは対応ステートでやる985-987
type = ChangeState
value = ifelse(HitPauseTime || var(32),980,982)
triggerall = power >= 1000 && !var(53) 
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = statetype = A && var(34)
triggerall = stateno != [950,990]
trigger1 = stateno = 600 || stateno = 610 || stateno = 640 || stateno = 510 || stateno = 1600
trigger2 = stateno = 620 || stateno = 630 
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
ignorehitpause = 0

;---------いぢとやったあとボタンなしでもレバーはいったままだと解除されてないちぇっくして
[State -1, FD];フォルトレス 解除FDコマンド使用封印パターンによってボタンはなしが違う？
type = varset
var(25) = 0
triggerall = var(25) = 2
triggerall = stateno != 150 && stateno != 152 && stateno != 154 && stateno != 930
trigger1 = var(22) = 0 
trigger2 = power <= 0  
trigger3 = command != "holdback" 
trigger4 = var(40) 
ignorehitpause = 0

;-----------------FD状態にセット 2;---SBしたあとのガード不能期間は不可
;－－－3Kもおっけー,AIR2HSもおっけー
;---通常技はガトリン以外　基本5HS,8HS,D,2D以外　EX,REなら5HS,8HSOK
;--GGXのみ2D,8D OK,ガトリング規制なし
[state 120x,];500,510もFDCできる・・
type = varset
triggerall = var(25) <= 2 && fvar(22) <= 0 
triggerall = power > 0 && !var(40) && !var(53) 
triggerall = (var(2) != 2 && var(22)) || (var(2) = 2 && (var(22) = 1 || var(22)= 2))
triggerall = ((!var(1) || var(1) = 4) && var(22) != 7) || ((var(1) >= 1 && var(1) < 4) && var(22))
triggerall = command = "holdback" 
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1 || (stateno = 52 && time > 0)
trigger2 = prevstateno != [200,590]
trigger2 = stateno = [200,430]
trigger2 = var(1) < 3 || (var(1) >= 3 && stateno != 230)    
trigger2 = stateno != 440 && time <= 2
trigger3 = prevstateno != [600,650]
trigger3 = stateno = [600, 650]
trigger3 = stateno != 640 && (var(1) < 3 || (var(1) >= 3 && stateno != 630))
trigger3 = time <= 2
trigger4 = time <= 2 && (stateno = 440 || stateno = 640)
trigger5 = prevstateno != [200,590]
trigger5 = time <= 2 && (stateno = 500 && var(1) <= 2)
trigger6 = prevstateno != [200,590]
trigger6 = time <= 2 && stateno = 510
var(25)  = 2
ignorehitpause = 1

;---------------GGXモードのみＰＫ押しだけしかきかない
;--------GGXのみ足払いOK  GGX/XXの判断ははV2,間違えないで
;---なんかすぐ移動しない、なんでだろう->直前優先になってるから？
;実行はあっちで判断しちぇんすては1でもいけるように
;--510はいつでも500はえｘＲＥ
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
trigger2 = prevstateno != [200,590]
trigger2 = stateno = [200,430]
trigger2 = var(1) < 3 || (var(1) >= 3 && stateno != 230)    
trigger2 = time <= 2
trigger3 = prevstateno != [600,650]
trigger3 = stateno = [600, 650]
trigger3 = stateno != 640 && (var(1) < 3 || (var(1) >= 3 && stateno != 630))
trigger3 = time <= 2
trigger4 = time <= 2 && (stateno = 440 || stateno = 640)
trigger5 = prevstateno != [200,590]
trigger5 = time <= 2 && (stateno = 500 && var(1) <= 2)
trigger6 = prevstateno != [200,590]
trigger6 = time <= 2 && stateno = 510

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


;=====超必殺技======================================================================
;--sv3は擬似CTRL。1通常技OK状態　2必殺技OK状態
[state -1, sp6 ];こわいよー	共通、一撃なのでキャンセル不可
type = changestate
value = 3600
triggerall = var(40) = 1 
triggerall = command = "sp_6" 
triggerall = statetype != A 
triggerall = TeamMode = Simul = 0 && enemy,teammode = simul = 0
trigger1 = ctrl || sysvar(3)

[state -1, sp3 ];まりす	
type = changestate
value = 3100
triggerall = var(20) = 4 && numhelper(400)
triggerall = power >= 1000 && !var(40) 
triggerall = command = "sp_2"
triggerall = statetype != A && var(1) != 2
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact
 
[state -1, sp1 ];かいざー　EX
type = changestate
value = 3200
triggerall = var(20) = 4 && numhelper(400)
triggerall = power >= 1000 && !var(40)
triggerall = (command = "sp_2" && var(1) = 2) || (command = "sp_2E" && !var(1)) 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

;--------必殺キャンセル注意
;----へるぱのひとすとぷチュウハダメ,へるぱがわでストップ中先行入力考慮させ。本体V5、剣V5,幽霊V６(V5)
;---なのでCMDでは無、わんこ、らおう時のみ記述でいい
;--が、S、HSだけはわけないとだめ->どうせもヴこんにならないんだから、わけるひつようなくない？
;---PKDは憑依条件なしで記述、S、HSの剣幽霊時は除外、ヘルパ側で操作。?are
[state -1, sp2 ];うまれる	共通
type = changestate
value = 3000
triggerall = power >= 1000 && !var(40) 
triggerall = command = "sp_1"
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact
 
;=======必殺技====================================================================
;---キャンセルは215,240,245以外
;------------優先度D P K S　HS

;--------------EXゴールドではむかででなくいたのしかでないね
;--通常、EX	,憑依中。GCEX,いつでもらおうにしかならない、
[state -1, sp1 ];さっきまでいたの	P EX
type = changestate
value = 1150 + (statetype = A) * 10
triggerall = var(1) = 2 || !var(1)
triggerall = var(20)
triggerall = command = "236P" 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact && stateno != 500 && stateno != 510
 
;---複雑
;--通常、無時のみ。EX,憑依中でも。GCSL,いつでも、GCEXでない
[state -1, sp1 ];むかでー	P	EX以外？
type = changestate
value = 1100
triggerall = var(1) != 2 && statetype != A 
triggerall = (palno != var(42) && !var(20)) || palno = var(42)
triggerall = command = "236P"
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact
 
[state -1, sp1 ];むかでー	P	EX,OR
type = changestate
value = 1100
triggerall = (!var(1) || var(1) = 2) && statetype != A 
triggerall = palno != var(42)  
triggerall = command = "236P" 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];そのままD	幽霊D	RE以外
type = changestate
value = 1740 + (statetype = A) * 5
triggerall = var(20) = 3 && var(1) != 1
triggerall = command = "236D" && numhelper(301)
triggerall = stateno != 235
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact && stateno != 500 && stateno != 510

[state -1, sp1 ];そのまま	幽霊P	AC-EXではどうなるんでしょね
type = changestate
value = 1700 + (statetype = A) * 5
triggerall = 0;var(20) = 3 && && numhelper(301)
triggerall = (command = "236P" && var(1) = 4) || (command = "623P" && !var(1))
triggerall = stateno != 235
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact

[state -1, sp1 ];そのまま	幽霊K	RE以外
type = changestate
value = 1710 + (statetype = A) * 5
triggerall = var(20) = 3 && var(1) != 1
triggerall = command = "236K" && numhelper(301)
triggerall = stateno != 235
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact && stateno != 500 && stateno != 510

[state -1, sp1 ];そのまま	幽霊S	
type = changestate
value = 1720 + (statetype = A) * 5
triggerall = var(20) = 3
triggerall = command = "236S" && numhelper(301)
triggerall = stateno != 235
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact && stateno != 500 && stateno != 510

[state -1, sp1 ];そのまま	幽霊Hs	
type = changestate
value = 1730 + (statetype = A) * 5
triggerall = var(20) = 3 
triggerall = command = "236H" && numhelper(301)
triggerall = stateno != 235
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,155]
trigger3 = stateno = [200,640]
trigger3 = movecontact  && stateno != 500 && stateno != 510


[state -1, sp1 ];礼儀作法
type = changestate
value = 1200
triggerall = 0;!var(1) || var(1) = 4
triggerall = command = "214D" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];エドガイ	らS
type = changestate
value = 1800
triggerall = var(20) = 4 && numhelper(400)
triggerall = command = "214S" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 =  movecontact


[state -1, sp1 ];アンセム	らS	これ前のがあるとうてない模様
type = changestate
value = 1900
triggerall = !numhelper(1900)
triggerall = var(20) = 4 && numhelper(400)
triggerall = command = "236S" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];痛そう　剣S
type = changestate
value = 1500
triggerall = var(20) = 1 && numhelper(100)
triggerall = command = "236S" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];いきます　剣HS
type = changestate
value = 1400
triggerall = var(20) = 1 && numhelper(100)
triggerall = command = "624H" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];落ちて　剣HS
type = changestate
value = 1300
triggerall = var(20) = 1 && numhelper(100)
triggerall = command = "623H" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [600,640]
trigger3 = movecontact




;:----------------計画はラオウが憑依しているときはだめらしい
[state -1, sp1 ];計画的に　OR 払い戻し？やめとく？
type = changestate
value = 1040
triggerall = power >= 500 && !var(40)
triggerall = var(20) != 4 && !var(1)
triggerall = command = "22D" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

;－－－ゆえにGカラーではだめである
[state -1, sp1 ];計画的に　剣憑依P	EXね
type = changestate
value = 1000
triggerall = var(20) != 4
triggerall = command = "22P" 
triggerall = !var(1) || var(1) = 2
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact


[state -1, sp1 ];計画的に　わんこ憑依K	EXね
type = changestate
value = 1010
triggerall = var(20) != 4 && (!var(1) || var(1) = 2)
triggerall = command = "22K" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact
  

[state -1, sp1 ];計画的に　３つご憑依S	EXね
type = changestate
value = 1020
triggerall = var(20) != 4 && (!var(1) || var(1) = 2)
triggerall = command = "22S" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

[state -1, sp1 ];計画的に　らおう憑依P	EXね
type = changestate
value = 1030
triggerall = var(20) != 4 && (!var(1) || var(1) = 2)
triggerall = command = "22H" 
triggerall = statetype != A 
trigger1 = ctrl || sysvar(3)
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

;--------------------------------以下通常
;---------------------------------------------------------------------------
;投げ よろけ状態でもなげられるぞ 　ダッシュ中もOKになってないこれ？
[State -1, c Throw]
type = ChangeState
value = 800
triggerall = command = "HS" && statetype != A  && command != "roma"
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 22.5 
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

;--------------------------------------------------------------------------

;---------------------------------------------------------------------------
;==通常攻撃=========================================================================
;------------------優先順位は敬>D>挑>HS>P>K>S-------------------------------------------------------
;---------------------------------------------------------------------------
;----------------------敬意　レバー前
[State -1, debug]
type = ChangeState
value = 910
triggerall = command = "start" && command = "holdfwd"
triggerall =  statetype != A 
trigger1 = ctrl || sysvar(3) = 1

;----------がとりんぐ補足
;--憑依状態によって5通り＊EXかどうかで＊２？
;----剣幽霊はヘルパ側で操作する、ので無、犬、らおうでいい
;----------------------地上D---------------------------------
;あー自分がMOVECONにならなければ発動しないんであれば・・剣幽霊 区別要らない？--------------------
;しゃがみD 通常	 HS以外,2K不可	are?Kからできるよ誤植？
;剣：2HS不可(SLRE?)、2HSOK(EX) 5HSOK
;わんNG
;幽霊: 2HS不可　5Hs,6HS不可
;らお:2HS不可
[State -1, Crouching down ]
type = ChangeState
value = 440
triggerall = var(20) != 2
triggerall = command = "D" || (var(2) = 2 && command = "S" && command = "HS")
triggerall = statetype != A && command = "holddown" && command != "roma"
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,430]  
trigger2 = stateno != 230 && stateno != 235 && movecontact  

;---------------
;-----------ダスト	わんこがいると出せない
;------立ちDダスト 
[State -1, Stand m]
type = ChangeState
value = 240
triggerall = var(20) != 2 
triggerall = command = "D"|| (var(2) = 2 && command = "S" && command = "HS")
triggerall = statetype != A && command != "holddown" && command != "roma"
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,430]  
trigger2 = stateno != 230 && stateno != 235 && movecontact  

;----------------------------デバック　または挑発　ニュートラル
[State -1, debug];---GGだとがーきゃんでだせる(笑
type = ChangeState
value = 900
triggerall = command = "start" 
triggerall =  statetype != A 
trigger1 = (ctrl || sysvar(3) = 1) && command != "holdfwd" 
trigger2 = var(2) = 1 && stateno = [150,153]
trigger3 = stateno = [200,440]
trigger3 = movecontact

;---------------------地上P
;しゃがみp 200,400連打(200からの空キャンはできる？ 
;---憑依時のみできるれんきゃん？からきゃん不明
;--400<>200は無犬以外	
[State -1, Crouching Light1]
type = ChangeState
value = 400
triggerall = command = "P" && command = "holddown"
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = var(20) = 1 || var(20) >= 3
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;---------レバー前P  
;---200,210,220,400,410
[State -1, Stand Light]
type = ChangeState
value = 205
triggerall = command = "P" && command != "holddown" && command = "holdfwd"
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1			
trigger2 = stateno = 200 || stateno = 210 || stateno= 220 || stateno = 400 || stateno = 410 
trigger2 = movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;-------立ちP　  200連打(空キャン6-2以上),400 
;---430はらおうだめ
[State -1, Stand Light]
type = ChangeState
value = 200
triggerall = command = "P" && command != "holddown" ;&& command != "holdfwd"
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1		;立ち状態で操作可能
trigger2 = var(20) = 1 || var(20) >= 3
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;--------------------------地上K
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;しゃがみK 200,400,  (SL)430
;---剣205OK
[State -1, Crouching m]
type = ChangeState
value = 410
triggerall = command = "K" && command = "holddown"  
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;---立ちK 200,400  (SL)430
[State -1, Stand m]
type = ChangeState
value = 210
triggerall = command = "K" && command != "holddown" 
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;ここから複雑S,HS系
;------------------------地上S部--------------------------------------------------
;しゃがみS 200,205,210,220,225,400,410 (SL)430
;---幽霊EXREのみ連打420
[State -1, Crouching Strong ]
type = ChangeState
value = 420
triggerall = command = "S" && command = "holddown"
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno= 220 || stateno = 400 || stateno = 410 || stateno = 225 
trigger2 = movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;---------------------------------------------------------------------------
;立ちS　近距離 200,205,400,410,(SL)430
;------剣210
;---れい210
;;ra210
[State -1, Stand high ]
type = ChangeState
value = 220
triggerall = command = "S" && command != "holddown" 
triggerall = p2bodydist X <= 35
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 400 || stateno = 410  
trigger2 = movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact
trigger4 = var(20) > 0 && stateno = 210 && movecontact

;---------------------------------------------------------------------------
;立ちS 遠距離　    200,205,210,220,400,410 (SL)430
;--剣
[State -1, Stand high2]
type = ChangeState
value = 225
triggerall = command = "S" && command != "holddown"
triggerall = p2bodydist X > 35
triggerall = statetype != A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 220 
trigger2 = movecontact
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

[State -1, Stand high2];追加遠距離ガトリングのとき,Kから
type = ChangeState
value = 225
triggerall = command = "S" && command != "holddown" 
trigger1 = stateno = 220 && movecontact
trigger2 = stateno = 210 && movecontact

;--------------地上HS部
;-----しゃがみHS	基本立ちHS以外
;-----無,500,510以外	
;----剣:(SL)230,235,以外  (EX)230OK 
;---わ:500,510以外
;--れ:230,235,以外
;---ら:235以外
[state -1, 2HS];　しゃがみ
type = changestate
value = 430
triggerall = command = "HS"  && statetype != A && command != "roma"
triggerall = command = "holddown"
triggerall = stateno != 240 
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,420] 
trigger2 = stateno != 235 && (var(1) = 4 || (var(1) != 4 && stateno != 230))
trigger2 = movecontact 

;-----------立ちHSればー------憑依状態HS系STAND	
;----剣:(SL)200,210,205,220,225,400,410,420  (EX)200,205,225 
;--麗:200,205
;---ら:200,205,220
[state -1, 6hs];　235	ここではらおうだけ考慮でいいね
type = changestate
value = 235
triggerall = var(20) > 0 && var(20) != 2
triggerall = command = "HS"  && statetype != A && command != "roma"
triggerall = command != "holddown" && command = "holdfwd" 
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420 || stateno = 440
trigger2 = movecontact

;-----------立ちHs	憑依状態
;----剣:230,235,430以外　　(EX)410不可
;--麗:230,235,410以外
;---ら:200,205,21,220,225,400,410,420
[state -1, 5hs];　ここではらおうだけ考慮でいいね
type = changestate
value = 230
triggerall = var(20) > 0 && var(20) != 2
triggerall = command = "HS"  && statetype != A && command != "roma"
triggerall = command != "holddown" 
triggerall = stateno != 240 
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,420]
trigger2 = stateno != 230 && stateno != 235 && stateno != 410 && movecontact

;-------------------------無憑依状態時番号違うから注意
;-----基本---200,210,205,220,430
;---EX時はだめっぽい
[state -1, 6hs];　通常510扱い->必殺技扱い削りあり
type = changestate
value = 510
triggerall = var(20) <= 0 || var(20) = 2 
triggerall = command = "HS"  && statetype != A && command != "roma"
triggerall = command != "holddown" && command = "holdfwd" 
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 430  
trigger2 = movecontact && var(1) != 2
trigger3 = stateno = 200 || stateno = 205 || stateno = 210
trigger3 = var(1) = 2 && movecontact

;-----------立ちHs	無か犬
;--200,205,210,220,225,400,420,430
[state -1, 5hs];　普通だけど必殺キャンセルできないので番号こっち
type = changestate
value = 500
triggerall = var(20) <= 0 || var(20) = 2
triggerall = command = "HS"  && statetype != A && command != "roma"
triggerall = command != "holddown"  
triggerall = stateno != 240
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [200,420] 
trigger2 = movecontact && stateno != 410
trigger3 = var(1) != 2 && var(20) != 4 && stateno = 430 && movecontact

;-------------------------------------空チュうD	犬不可
;--空中d 620 630
;--剣　620
;--麗　620
;--ら620 630
[State -1, Jump d]
type = ChangeState
value = 640
triggerall = var(20) != 2
triggerall = command = "D" || (var(2) = 2 && command = "S" && command = "HS")
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 620 || stateno = 630 
trigger2 = movecontact 
trigger3 = stateno = 610 && movecontact && var(20) = 4
trigger4 = stateno = 600 && movecontact 

;---------------------------------------------------------------------------
;空中p 610
;---憑依で連600OK
;--ら620
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = command = "P"
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 600 && movecontact && var(20) > 0
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 620 && movecontact && var(20) = 4

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

;--------------------空中S
;空中s 600,610
[State -1, Jump s]
type = ChangeState
value = 620
triggerall = command = "S" 
triggerall = statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = [600,610]  
trigger2 = movecontact 

;-----------------空中HS	
[state -1, yoyo];　pks
type = changestate
value = 630
triggerall = command = "HS" && statetype = A && command != "roma"
trigger1 = ctrl || sysvar(3) = 1
trigger2 = stateno = 600 || stateno = 620 
trigger2 = movecontact 
trigger3 = stateno = 630 && movecontact && var(20) = 4

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
triggerall = command = "FF" || (var(2) = 1 && command = "FFGG")
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
;---剣幽霊はそっちでやったほうがいいかもね
[state -3,jump cancel];200,210,220,225,400  GG以外 ダスト以外 GG500以外ALL
type = changestate
triggerall = movecontact
triggerall = command = "holdup"
triggerall = stateno != 240
trigger1 = var(2) != 1
trigger1 = stateno = 200 || stateno = 205 || stateno = 220 || stateno = 430 
trigger2 = var(2) = 1
trigger2 = stateno = [200,440]
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
 
;-----空中Jキャンセルd GG ALLOK  Dはだめ
;--ＸＸ-Sは無剣犬のみ
;---ＧＧSもむけんいぬ
;ＸＸ－ＨＳ　だめ
;GG-HS 無犬のみ
[state -3,jump cancel];620 600	GGでも剣幽霊らおう,Hsはだめ
type = changestate
triggerall = !var(9) && !var(53)
triggerall = !var(15) || (var(14) && var(15) = 1)
triggerall = movecontact
triggerall = command = "holdup"
trigger1 = stateno = 600 
trigger2 = stateno = 610 && var(2) = 1
trigger3 = stateno = 620 && var(20) != 3 && var(20) != 4 && var(1) != 1 && var(1) != 2;SLACOR
trigger4 = stateno = 620 && var(20) != 1 && var(20) != 3 && var(20) != 4 && (var(1) = 1 || var(1) = 2);REEX
trigger5 = stateno = 630 && var(2) = 1 && (var(20) <= 0 || var(20) = 2)  
value = 42
ignorehitpause = 0


