; Common state file

;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0
velset=0,0

[State 0, 1]
type = ChangeAnim
triggerall=PalNo=2||PalNo=5||palno=7||palno=8||Palno=9
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 1]
type = ChangeAnim
triggerall=PalNo=1||PalNo=4||palno=10||palno=11||Palno=12
trigger1 = Anim != 1 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 1

[State 0, 1]
type = ChangeAnim
triggerall=PalNo=3||PalNo=6
trigger1 = Anim != 2 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 2

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0,4]
type=StopSnd
trigger1=Time=0
channel=16
[State 0,4]
type=removeexplod
trigger1=Time=0
id=16

[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 1010,1]
type=varset
trigger1=ctrl=1&&var(1)=1
var(3)=1

[State 0]
type = ctrlset
triggerall = var(1) = 1 && var(3) = 1
trigger1 = p2bodydist X < 0
trigger2 = roundstate = 3
value = 1

[State 1010,1]
type=ctrlset
triggerall=enemy,life>0
trigger1=p2bodydist X>=0
trigger1=Roundstate=2
trigger1=var(1)=1
value=0

[STate 0]
type=PosSet
trigger1=Time=0
y=0

;////////////////////////////////////////通常動作ノーマルAI
[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=C
value=131

[State -1, ]
type = ChangeState
value = 10
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 10

[State -1, ]
type = ChangeState
value = 40
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5

[State -1, Run Fwd]
type = ChangeState
value = 20
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[60,300]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[150,300]


;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,100]

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,300]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;スコーピオンデスロック
[State -1]
type = ChangeState
value = 800
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;スコーピオンブロウ
[State -1]
type = ChangeState
value = 840
triggerall=palNo=1||palno=4
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X =[0, 5]
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
[STate -1];ジェノサイドカッター・弱・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 3
trigger1=P2bodydist X=[0,50]
value=1000

[STate -1];ジェノサイドカッター・強・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=A
trigger1 = var(1)=1&&var(3)=1 && (random = [500,600])
trigger1 = time >= 3
trigger1=P2bodydist X=[0,90]
value=1010
;===========================================================================
[STate -1];ジェノサイドヘヴンー・MAX・ノーマル状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 500
trigger1 = time >= 3
trigger1=P2bodydist X=[0,60]
value=3102

[STate -1];ジェノサイドヘヴンー・弱・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=Power>=1000
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && (random = [500,600])
trigger1 = time >= 5
trigger1=P2bodydist X=[0,40]
value=3100

[STate -1];ジェノサイドヘヴン・強・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=Power>=1000
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && (random = [700,800])
trigger1 = time >= 5
trigger1=P2bodydist X=[0,80]
value=3101

;===========================================================================
[STate -1];P特殊技
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1=enemy,Statetype=C
trigger1 = var(1)=1&&var(3)=1 && random <= 500
trigger1 = time >= 5
trigger1=P2bodydist X=[0,30]
value=301
;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
triggerall = var(1)=1&&var(3)=1 && random <= 500
triggerall = time >= 5
triggerall=P2bodydist X=[0,50]
trigger1=enemy,Statetype=C
trigger2=prevstateno=100
value=237

[STate -1];ダークバリアー・強
type=Changestate
triggerall=Roundstate=2
triggerall=Statetype!=A&&numhelper(1600)=0
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[150,280]
value=1610

;===========================================================================
[STate -1];カイザーウェイヴ・弱
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 3
trigger1=P2bodydist X=[150,300]
value=1700

[STate -1];カイザーウェイヴ・強
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 3
trigger1=P2bodydist X=[150,300]
value=1701

;===========================================================================
[STate -1];烈風拳・弱・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=numhelper(1400)=0
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[100,280]
value=1400

[STate -1];烈風拳・強・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=numhelper(1400)=0
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[100,280]
value=1410
;===========================================================================
[STate -1];ギガンティックプレッシャー・MAX・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=Power>=2000
triggerall=palNo=1||palno=4
trigger1=enemy,movetype!=H && enemy,statetype != L
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 3
trigger1=P2bodydist X=[0,60]
value=3002

[STate -1];ギガンティックプレッシャー・弱・ノーマル状態
type=Changestate
triggerall=Roundstate=2
triggerall=Power>=1000
triggerall=palNo=1||palno=4
trigger1=enemy,movetype!=H && enemy,statetype != L
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[0,60]
value=3000

[STate -1];ギガンティックプレッシャー・強・ノーマル状態
type=Changestate
triggerall=Power>=1000
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
trigger1=enemy,movetype!=H && enemy,statetype != L
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 3
trigger1=P2bodydist X=[0,120]
value=3001

;===========================================================================
[STate -1];デッドエンドスクリーマー・MAX・ノーマル状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=1||palno=4
triggerall = var(1)=1&&var(3)=1 
trigger1=enemy,movetype!=H && enemy,statetype != L
trigger1 = time >= 3 && random <= 100
trigger1=P2bodydist X=[0,60]
trigger2=prevstateno=400||prevstateno=430
trigger2 =random <= 333

value=3402

[STate -1];デッドエンドスクリーマー・弱・ノーマル状態
type=Changestate
triggerall=Power>=1000
triggerall=palNo=1||palno=4
triggerall = var(1)=1&&var(3)=1 
triggerall=Roundstate=2
trigger1=enemy,movetype!=H && enemy,statetype != L
trigger1 = time >= 5&&  (random = [500,600])
trigger1=P2bodydist X=[0,60]
trigger2=prevstateno=400||prevstateno=430
trigger2 =random <= 333
value=3400

[STate -1];デッドエンドスクリーマー・強・ノーマル状態
type=Changestate
triggerall=Power>=1000
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
triggerall=enemy,movetype!=H && enemy,statetype != L
triggerall = var(1)=1&&var(3)=1 && (random = [700,800])
trigger1 = time >= 5
trigger1=P2bodydist X=[80,120]
value=3401


;===========================================================================
[STate -1];ゴッドプレス・弱・ノーマル状態
type=Changestate
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[0,100]
value=1500

[STate -1];ゴッドプレス・強・ノーマル状態
type=Changestate
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[50,160]
value=1501

;ふっとばし---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 250
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,30]

;接近---------------------------------------------------------------------------

;立ち強パンチ
[State -1]
type = ChangeState
value = 215
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,20]

;立ち強キック
[State -1]
type = ChangeState
value = 245
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,20]

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[30,60]

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[70,120]
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[30,55]
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[60,120]
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall=palNo=1||palno=4
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 10

;////////////////////////////////////////
;////////////////////////////////////////通常動作オメガAI
[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=800
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=800
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=C
value=131

[State -1, ]
type = ChangeState
value = 10
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 6
trigger1 = time >= 6

[State -1, ]
type = ChangeState
value = 40
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 10
trigger1=enemy,stateno=5120

[State -1, Run Fwd]
type = ChangeState
value = 20
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 6
trigger1=P2bodydist X=[60,300]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 6
trigger1=P2bodydist X=[150,300]

[STate -1];ジェノサイドカッター・強・オメガ状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 888
trigger1=P2bodydist X=[0,50]
trigger1=enemy,stateno!=[5100,5120]
value=1016

;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,100]

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=350
trigger1=P2bodydist X=[-10,150]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=300
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;スコーピオンデスロック
[State -1]
type = ChangeState
value = 800
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=222
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;スコーピオンブロウ
[State -1]
type = ChangeState
value = 840
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=555
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================
[STate -1];ジェノサイドカッター・弱・オメガ状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
triggerall=enemy,Statetype=A
triggerall = var(1)=1&&var(3)=1 && random <= 888
triggerall=P2bodydist X=[0,50]
trigger1=enemy,stateno!=[5100,5120]
trigger1=enemy,stateno!=[5030,5050]
value=1006

[STate -1];ジェノサイドカッター・強・オメガ状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 888
trigger1=P2bodydist X=[0,90]
trigger1=enemy,stateno!=[5100,5120]
trigger1=enemy,stateno!=[5030,5050]
value=1016
;===========================================================================
[STate -1];ジェノサイドカッター・弱・オメガ状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype!=A && enemy,movetype = I
trigger1 = var(1)=1&&var(3)=1 && random <= 888
trigger1=Time>=3
trigger1=P2bodydist X=[0,20]
value=1006

[STate -1];ジェノサイドカッター・強・オメガ状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype!=A && enemy,movetype = A
trigger1 = var(1)=1&&var(3)=1 && random <= 888
trigger1=Time>=3
trigger1=P2bodydist X=[0,40]
value=1016

;===========================================================================
[STate -1];ギガンティックプレッシャー・MAX・オメガ状態
type=Changestate
triggerall=Power>=2000
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=S && enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 500
trigger1 = time >= 1
trigger1=P2bodydist X=[0,60]
value=3005

[STate -1];ギガンティックプレッシャー・弱・オメガ状態
type=Changestate
triggerall=Power>=1000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 4
trigger1=P2bodydist X=[0,40]
value=3003

[STate -1];ギガンティックプレッシャー・強・オメガ状態
type=Changestate
triggerall=Power>=1000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S && enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 500
trigger1 = time >= 1
trigger1=P2bodydist X=[0,80]
value=3004
;===========================================================================
[STate -1];ルガール・エクスキュージョン・MAX・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S && enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 222
trigger1=P2bodydist X=[0,100]
value=3302

[STate -1];ルガール・エクスキュージョン・弱・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=1000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1 = time >= 5
trigger1=P2bodydist X=[0,50]
value=3300

[STate -1];ルガール・エクスキュージョン・強・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=1000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S && enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 3
trigger1=P2bodydist X=[0,110]
value=3301
;===========================================================================
[STate -1];デストラクションオメガ・MAX・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 1
trigger1=P2bodydist X=[0,50]
value=3202

[STate -1];デストラクションオメガ・弱・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 2
trigger1=P2bodydist X=[0,50]
value=3200

[STate -1];デストラクションオメガ・強・オメガ・2002オメガ状態
type=Changestate
triggerall=Power>=2000
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 1
trigger1=P2bodydist X=[0,50]
value=3201
;===========================================================================
[STate -1];グラビティ・スマッシュ・弱・オメガ状態
type=Changestate
triggerall=numhelper(1300)=0
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 700
trigger1 = time >= 3
trigger1=P2bodydist X=[120,300]
value=1300

[STate -1];グラビティ・スマッシュ・強・オメガ状態
type=Changestate
triggerall=numhelper(1300)=0
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 700
trigger1 = time >= 3
trigger1=P2bodydist X=[150,300]
value=1305

;===========================================================================
[STate -1];バニシングラッシュ・弱・ノーマル状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[30,120]
value=1200

[STate -1];バニシングラッシュ・強・ノーマル状態
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=S
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1 = time >= 5
trigger1=P2bodydist X=[150,300]
value=1201

[STate -1];ダークバリアー・強
type=Changestate
triggerall=Statetype!=A&&numhelper(1600)=0
triggerall=Roundstate=2
triggerall=palNo=2||palno=5
trigger1=enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 5
trigger1=P2bodydist X=[150,280]
value=1610

;===========================================================================
[STate -1];P特殊技
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1=enemy,Statetype=C
trigger1 = var(1)=1&&var(3)=1 && random <= 700
trigger1 = time >= 5
trigger1=P2bodydist X=[0,30]
value=301
;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && random <= 900
triggerall = time >= 5
triggerall=P2bodydist X=[0,60]
trigger1=enemy,Statetype=C
trigger2=prevstateno=100||enemy,stateno=5120
value=237

;立ち強キック
[State -1]
type = ChangeState
value = 245
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[0,20]

;===========================================================================
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[40,90]
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 550
trigger1 = time >= 5
trigger1=P2bodydist X=[30,55]
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[40,90]
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall=palNo=2||palno=5
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 30
trigger1 = time >= 5
trigger1=P2bodydist X=[200,300]

;////////////////////////////////////////通常動作GODAI
[STate -1];ジェノサイドカッター・強・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=777
trigger1=P2bodydist X=[-10,120]
value=1021
;===========================================================================
[STate -1];Gエンド・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && power >=2000
triggerall=enemy,statetype!=A && enemy,statetype!=L
trigger1=enemy,movetype=A && random <= 222
trigger1=P2bodydist X=[0,50]
trigger2=Time>=5
trigger2=random <=30
trigger2=P2bodydist X=[0,50]
value=3500

;===========================================================================
[STate -1];ラストジャッジメント・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && power >=2000
triggerall=enemy,statetype!=A && enemy,statetype!=L
trigger1=enemy,movetype=A && random <= 33
trigger1=P2bodydist X=[70,130]
trigger2=Time>=5
trigger2=random <=33
trigger2=P2bodydist X=[0,150]
trigger3=enemy,movetype=A && random <=5
trigger3=P2bodydist X=[0,50]
value=3800
;===========================================================================
[STate -1];ギガンティックプレッシャー・MAX・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && power >=2000
triggerall=enemy,statetype=A && enemy,statetype!=L
trigger1=enemy,movetype=A && random <= 222
trigger1=P2bodydist X=[0,80]
trigger2=random <=50
trigger2=P2bodydist X=[0,150]
value=3008

[STate -1];ギガンティックプレッシャー・弱・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && power >=2000
triggerall=enemy,statetype!=A && enemy,statetype!=L
trigger1=random <=50
trigger1=Time>=5
trigger1=P2bodydist X=[0,50]
value=3006

[STate -1];ギガンティックプレッシャー・強・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && power >=2000
triggerall=enemy,statetype=A && enemy,statetype!=L
trigger1=enemy,movetype=A && random <=333
trigger1=P2bodydist X=[20,100]
trigger2=random <=30
trigger2=P2bodydist X=[0,80]
value=3007

;===========================================================================
[STate -1];ゴッドレーン・前方長い・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <200
trigger1=P2bodydist X=[-10,340]
trigger1=enemy,statetype!=L
value=1850

[STate -1];ゴッドレーン・前方短い・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=150
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
value=1851

[STate -1];ゴッドレーン・後方長い・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1=P2bodydist X=[-10,150]
trigger1=enemy,statetype=S
value=1852

[STate -1];ゴッドレーン・後方短い・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
value=1853

[STate 0]
type=Changestate
triggerall=palNo=3||palno=6
triggerall=prevstateno!=[130,131]
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=850
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=palNo=3||palno=6
triggerall=prevstateno!=[130,131]
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=850
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=C
value=131

[State -1, ]
type = ChangeState
value = 10
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 20
trigger1 = time >= 6

[State -1, ]
type = ChangeState
value = 40
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1=enemy,stateno=5120

[State -1, Run Fwd]
type = ChangeState
value = 20
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 6
trigger1=P2bodydist X=[180,300]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 6
trigger1=P2bodydist X=[150,300]

;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 
trigger1 = time >= 5&& random <= 200
trigger1=P2bodydist X=[0,100]
trigger1=Prevstateno!=1810
trigger2=Prevstateno=1810 && Power<=1000
;===========================================================================
[STate -1];ジェノサイドカッター・弱・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=400
trigger1=P2bodydist X=[0,60]
trigger1=enemy,statetype!=L
trigger1=Prevstateno!=1810
value=1020

[STate -1];ジェノサイドカッター・強・GOD状態
type=Changestate
triggerall=palno=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1
triggerall= enemy,statetype!=L
trigger1=enemy,movetype=A && (random = [500,700])
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=A
trigger1=Prevstateno!=1810
value=1021
;===========================================================================
[STate -1];ジェノサイドヘヴンー・MAX・GOD状態
type=Changestate
triggerall=Power>=2000
triggerall=palNo=3||palno=6
triggerall= enemy,statetype!=L
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 
trigger1=enemy,Statetype!=A&& random <= 50
trigger1 = time >= 2
trigger1=P2bodydist X=[0,90]
value=3122

[STate -1];ジェノサイドヘヴンー・弱・GOD状態
type=Changestate
triggerall=Power>=1000
triggerall=palNo=3||palno=6
triggerall= enemy,statetype!=L
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 
trigger1=enemy,Statetype!=A&& random <= 50
trigger1 = time >= 3
trigger1=P2bodydist X=[0,50]
trigger2=Prevstateno=1810 && random <= 777 && time >= 8
value=3120

[STate -1];ジェノサイドヘヴンー・強・GOD状態
type=Changestate
triggerall=Power>=1000
triggerall=palNo=3||palno=6
triggerall= enemy,statetype!=L
triggerall=Roundstate=2
trigger1=enemy,Statetype!=L && enemy,movetype=A
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1=P2bodydist X=[0,80]
value=3121
[STate -1];ルガール・エクスキュージョン・弱・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall= enemy,statetype!=L && enemy,movetype!=A
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[0,50]
value=1800

[STate -1];ルガール・エクスキュージョン・強・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall= enemy,statetype!=L && enemy,movetype!=A
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[150,220]
value=1801
;===========================================================================
[STate -1];カイザーウェイヴ・弱
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=Time>=3
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1 = time >= 2&&numhelper(1700)=0
trigger1=P2bodydist X=[180,300]
value=1700

[STate -1];カイザーウェイヴ・強
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=Time>=2
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1 = time >= 2&&numhelper(1700)=0
trigger1=P2bodydist X=[180,300]
value=1701
;===========================================================================
[STate -1];ジェノサイドカッター・弱・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=enemy,Statetype!=L
trigger1=Time>=1
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1=P2bodydist X=[0,60]
trigger1=Prevstateno!=1810
value=1020

[STate -1];ジェノサイドカッター・強・GOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=enemy,Statetype!=L
trigger1=Time>=1
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1=P2bodydist X=[60,120]
trigger1=Prevstateno!=1810
value=1021
;===========================================================================
[STate -1];ゴッドプレス・弱・ノーマルGOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=Time>=3
trigger1=enemy,Statetype!=L
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1=P2bodydist X=[70,150]
trigger1=Prevstateno!=1810
value=1500

[STate -1];ゴッドプレス・強・ノーマルGOD状態
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=Time>=3
trigger1=enemy,Statetype!=L
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1=P2bodydist X=[100,180]
trigger1=Prevstateno!=1810
value=1501

;===========================================================================
[STate -1];ダークバリアー・弱
type=Changestate
triggerall=numhelper(1400)=0
triggerall=Roundstate=2
triggerall=palno=3||palno=6
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype!=A && random <=50
trigger1=P2bodydist X=[20,60]
trigger1=enemy,statetype!=L
trigger1=Prevstateno!=1810
value=1600

[STate -1];ダークバリアー・強
type=Changestate
triggerall=numhelper(1600)=0
triggerall=Roundstate=2
triggerall=palno=3||palno=6
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1=P2bodydist X=[170,300]
trigger1=enemy,statetype!=L
trigger1=Prevstateno!=1810
value=1610


[STate -1];烈風拳・弱・GOD状態
type=Changestate
triggerall=numhelper(1400)=0
triggerall=Roundstate=2
triggerall=palno=3||palno=6
triggerall = var(1)=1&&var(3)=1
trigger1=Time>=2
trigger1=enemy,movetype!=A && random <=500
trigger1=P2bodydist X=[170,300]
trigger1=enemy,statetype!=L
trigger1=Prevstateno!=1810
value=1401

[STate -1];烈風拳・強・GOD状態
type=Changestate
triggerall=numhelper(1400)=0
triggerall=Roundstate=2
triggerall=palno=3||palno=6
triggerall = var(1)=1&&var(3)=1
trigger1=Time>=2
trigger1=enemy,movetype!=A && random <=500
trigger1=P2bodydist X=[170,300]
trigger1=enemy,statetype!=L
trigger1=Prevstateno!=1810
value=1411

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=350
trigger1=P2bodydist X=[-10,150]
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=50
trigger1=P2bodydist X=[-10,120]
;---------------------------------------------------------------------------
;スコーピオンデスロック
[State -1]
type = ChangeState
value = 800
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=777
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;スコーピオンブロウ
[State -1]
type = ChangeState
value = 840
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=888
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================
[STate -1];P特殊技
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1=enemy,Statetype=C
trigger1 = var(1)=1&&var(3)=1 && random <= 900
trigger1 = time >= 5
trigger1=P2bodydist X=[0,70]
trigger1=Prevstateno!=1810
value=301
;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && random <= 900
triggerall = time >= 5
triggerall=P2bodydist X=[0,50]
trigger1=enemy,Statetype=C
trigger1=Prevstateno!=1810
trigger2=prevstateno=100||enemy,stateno=5120
value=237

;立ち強キック
[State -1]
type = ChangeState
value = 245
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[0,20]
trigger1=Prevstateno!=1810

;===========================================================================
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[40,80]
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 450
trigger1 = time >= 5
trigger1=P2bodydist X=[30,55]
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 5
trigger1=P2bodydist X=[40,70]
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall=palNo=3||palno=6
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 10
trigger1 = time >= 5
trigger1=P2bodydist X=[250,300]

;////////////////////////////////////////通常動作2002AI
;===========================================================================
[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[-10,110]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[-10,110]
trigger1=enemy,statetype=C
value=131

[STate -1];ギガンティックプレッシャー・オメガ状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && power>=1000
trigger1=prevstateno=21150&&time>=20&&random<=333
value=23004

;---------------------------------------------------------------------------
[STate -1];ジェノサイドカッター・強・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1
trigger1=prevstateno=1150&&time>=20
value=21030
[STate -1];ダークバリアー・強
type=Changestate
triggerall=Statetype!=A&&numhelper(1600)=0
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && random <= 100
trigger1=enemy,movetype=A
trigger1 = time >= 5
trigger1=P2bodydist X=[150,280]
trigger2=Random<=555
trigger2=prevstateno=[1420,1421]
value=21610

[State -1, ]
type = ChangeState
value = 10
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && random <= 20
trigger1 = time >= 7
trigger1=prevstateno!=21150

[State -1, ]
type = ChangeState
value = 40
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && random <= 510
triggerall = time >= 7
trigger1=enemy,stateno=5120||enemy,statetype=C
trigger1=prevstateno!=21150

[State -1, Run Fwd]
type = ChangeState
value = 20
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 7
trigger1=P2bodydist X=[60,300]
trigger1=prevstateno!=21150

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 7
trigger1=P2bodydist X=[150,300]
trigger1=prevstateno!=21150

;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 7
trigger1=P2bodydist X=[0,100]
trigger1=prevstateno!=21150

;===========================================================================
[STate -1];ギガンティックプレッシャー・MAX・オメガ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && power>=2000
triggerall=Time>=1&&prevstateno!=21150
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[0,60]
trigger1=enemy,statetype!=L
trigger2=random <=100
trigger2=P2bodydist X=[0,120]
trigger2=enemy,statetype!=L
value=23002

[STate -1];ギガンティックプレッシャー・弱・オメガ状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && power>=1000
trigger1=Time>=3&&prevstateno!=21150
trigger1=random <=100
trigger1=P2bodydist X=[0,80]
trigger1=enemy,statetype!=L
value=23000

[STate -1];ギガンティックプレッシャー・強・オメガ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && power>=1000
trigger1=enemy,movetype=A && random <=333
trigger1=P2bodydist X=[0,60]
trigger1=enemy,statetype!=L&&prevstateno!=21150
value=23001

;===========================================================================
[STate -1];デストラクションオメガ・MAX・オメガ・2002オメガ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && power>=2000
triggerall=Time>=1
triggerall=prevstateno!=21150
trigger1=enemy,movetype=A && random <=222
trigger1=P2bodydist X=[0,40]
trigger1=enemy,statetype!=L
trigger2=random <=100
trigger2=P2bodydist X=[0,30]
trigger2=enemy,statetype!=L
value=23202

[STate -1];デストラクションオメガ・弱・オメガ・2002オメガ状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1 && power>=1000
triggerall=Time>=3&&prevstateno!=21150
trigger1=random <=100
trigger1=P2bodydist X=[0,40]
trigger1=enemy,statetype!=L
trigger1=prevstateno!=21150
value=23200

[STate -1];デストラクションオメガ・強・オメガ・2002オメガ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1 && power>=1000
trigger1=enemy,movetype=A && random <=444
trigger1=P2bodydist X=[0,40]
trigger1=enemy,statetype!=L
trigger1=prevstateno!=21150
value=23201
;---------------------------------------------------------------------------
[STate -1];ジェノサイドカッター・強・2002状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=555
trigger1=P2bodydist X=[0,70]
trigger1=enemy,statetype!=L&&prevstateno!=21150
value=21040

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
trigger1=prevstateno!=1150

;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=600
trigger1=P2bodydist X=[-10,300]
trigger1=enemy,statetype=S
trigger1=prevstateno!=1150

;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=Roundstate=2
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=600
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
trigger1=prevstateno!=1150

;---------------------------------------------------------------------------
;スコーピオンデスロック
[State -1]
type = ChangeState
value = 800
triggerall=palNo=7||palno=8||palno=9
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=777
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1=prevstateno!=1150

;---------------------------------------------------------------------------
;スコーピオンブロウ
[State -1]
type = ChangeState
value = 840
triggerall=palNo=7||palno=8||palno=9
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=777
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
[STate -1];P特殊技
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1=enemy,Statetype=C
trigger1 = var(1)=1&&var(3)=1 && random <= 900
trigger1 = time >= 8
trigger1=P2bodydist X=[0,70]
trigger1=prevstateno!=1150

value=301
;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && random <= 500
triggerall = time >= 5
triggerall=P2bodydist X=[0,50]
trigger1=enemy,Statetype=C
trigger1=Prevstateno!=1150
trigger2=prevstateno=100||enemy,stateno=5120
value=237

;===========================================================================
[STate -1];ビース・ディストラクション・弱・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 333
trigger1 = time >= 6
trigger1=P2bodydist X=[30,160]
trigger1=Prevstateno!=21150
value=21150

[STate -1];ビース・ディストラクション・強・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 6
trigger1=P2bodydist X=[80,160]
trigger1=Prevstateno!=21150
value=21160
;===========================================================================
[STate -1];ジェノサイドカッター・弱・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 333
trigger1 = time >= 4&&prevstateno!=21150
trigger1=P2bodydist X=[0,50]
value=21030

[STate -1];ジェノサイドカッター・強・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 333
trigger1 = time >= 4&&prevstateno!=21150
trigger1=P2bodydist X=[0,120]
value=21040
;===========================================================================
[STate -1];烈風拳・弱・2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2 && numhelper(1400)=0
trigger1 = var(1)=1&&var(3)=1 && random <= 300
trigger1 = time >= 4
trigger1=P2bodydist X=[200,300]
trigger1=Prevstateno!=21150
value=21420

[STate -1];烈風拳・強2002状態
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2 && numhelper(1400)=0
trigger1 = var(1)=1&&var(3)=1 && random <= 500
trigger1 = time >= 4
trigger1=P2bodydist X=[200,300]
trigger1=Prevstateno!=21150
value=21421
;===========================================================================
[STate -1];カイザーウェイヴ
type=Changestate
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2 && numhelper(1700)=0
trigger1 = var(1)=1&&var(3)=1 && random <= 300
trigger1 = time >= 3
trigger1=P2bodydist X=[200,300]
trigger1=Prevstateno!=1150
value=21700

;===========================================================================

;立ち強キック
[State -1]
type = ChangeState
value = 245
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 3
trigger1=P2bodydist X=[0,20]
trigger1=Prevstateno!=1150

;===========================================================================
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 3
trigger1=P2bodydist X=[40,80]
trigger1=Prevstateno!=1150
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 450
trigger1 = time >= 3
trigger1=P2bodydist X=[30,55]
trigger1=Prevstateno!=1150
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 3
trigger1=P2bodydist X=[40,70]
trigger1=Prevstateno!=1150
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall=palNo=7||palno=8||palno=9
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 10
trigger1 = time >= 10
trigger1=P2bodydist X=[250,300]

;===========================================================================

;////////////////////////////////////////通常動作アナザーAI
;===========================================================================
[STate -1];ルガールサイクロン・弱・アナザ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[30,70]
value=1980

[STate -1];ルガールサイクロ・強・アナザ状態
type=Changestate
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[50,100]
value=1981

[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo>=10
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[-10,110]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=Roundstate=2
triggerall=palNo>=10
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[-10,110]
trigger1=enemy,statetype=C
value=131

[State -1, ]
type = ChangeState
value = 10
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1 && random <= 20
trigger1 = time >= 10

[State -1, ]
type = ChangeState
value = 40
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1 && random <= 10
trigger1 = time >= 10

[State -1, Run Fwd]
type = ChangeState
value = 20
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 10
trigger1=P2bodydist X=[60,300]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 10
trigger1=P2bodydist X=[150,300]
;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 10
trigger1=P2bodydist X=[0,100]

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=600
trigger1=P2bodydist X=[-10,300]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=Roundstate=2
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=600
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;スコーピオンデスロック
[State -1]
type = ChangeState
value = 800
triggerall=palNo>=10
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1 = p2bodydist X =[0, 3]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;スコーピオンブロウ
[State -1]
type = ChangeState
value = 840
triggerall=palNo>=10
triggerall = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1 = p2bodydist X =[0, 5]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X =[0, 5]
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
[STate -1];テュホンレイジ・弱
type=Changestate
triggerall=PalNo>=10
triggerall=numhelper(1970)=0
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=333
triggerall = p2bodydist X > 120
trigger1 = p2statetype != L
value=1970

[STate -1];テュホンレイジ・強
type=Changestate
triggerall=PalNo>=10
triggerall=numhelper(1970)=0
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=333
triggerall = p2bodydist X > 160
trigger1 = p2statetype != L
value=1971

;===========================================================================
[STate -1];ライトニングボール・弱・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall=numhelper(1400)=0
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=444
triggerall = p2bodydist X > 200
trigger1 = p2statetype != L
value=1920

[STate -1];ライトニングボール・強・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall=numhelper(1400)=0
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=444
triggerall = p2bodydist X > 200
trigger1 = p2statetype != L
value=1925
;===========================================================================
[STate -1];ビース・ディストラクションβ・弱・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=222
triggerall = p2bodydist X =[0,80]
trigger1 = p2statetype != L
value=1100

[STate -1];ビース・ディストラクションβ・強・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=222
triggerall = p2bodydist X =[50,140]
trigger1 = p2statetype != L
value=1110

;===========================================================================
[STate -1];ジェノサイドカッター・弱・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=333
triggerall = p2bodydist X =[0,50]
trigger1 = p2statetype != L
value=1950

[STate -1];ジェノサイドカッター・強・アナザ状態
type=Changestate
triggerall=PalNo>=10
triggerall = var(1)=1&&var(3)=1
triggerall=enemy,movetype!=H && random <=333
triggerall = p2bodydist X =[20,80]
trigger1 = p2statetype != L
value=1951

;===========================================================================
[STate -1];P特殊技
type=Changestate
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1=enemy,Statetype=C
trigger1 = var(1)=1&&var(3)=1 && random <= 900
trigger1 = time >= 5
trigger1=P2bodydist X=[0,70]
trigger1=Prevstateno!=1810
value=301
;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=palNo>=10
triggerall=Roundstate=2
triggerall = var(1)=1&&var(3)=1 && random <= 900
triggerall = time >= 5
triggerall=P2bodydist X=[0,50]
trigger1=enemy,Statetype=C
trigger1=Prevstateno!=1810
trigger2=prevstateno=100||enemy,stateno=5120
value=237

;立ち強キック
[State -1]
type = ChangeState
value = 245
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 10
trigger1=P2bodydist X=[0,20]
trigger1=Prevstateno!=1810

;===========================================================================
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 50
trigger1 = time >= 10
trigger1=P2bodydist X=[40,80]
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 250
trigger1 = time >= 5
trigger1=P2bodydist X=[30,55]
trigger1=Prevstateno!=1810
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 150
trigger1 = time >= 10
trigger1=P2bodydist X=[40,70]
trigger1=Prevstateno!=1810
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall=palNo>=10
triggerall=Roundstate=2
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 10
trigger1=P2bodydist X=[200,300]


;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10
velset=0,0

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 1010,1]
type=ctrlset
trigger1=p2bodydist X<0
value=1

[State 1010,1]
type=ctrlset
trigger1=p2bodydist X>=0
trigger1=Roundstate=2
trigger1=var(1)=1&&var(3)=1
value=0

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0
velset=0,0

[State 1010,1]
type=ctrlset
trigger1=p2bodydist X<0
value=1

[State 1010,1]
type=ctrlset
trigger1=p2bodydist X>=0
trigger1=Roundstate=2
trigger1=var(1)=1&&var(3)=1
value=0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

;---------------------------------------------------------------------------
[STate 0]
type=Changestate
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=500
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=C
value=131

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=100
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S

;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,30]
;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[20,50]
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[0,40]

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall=palNo=1||palno=4
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 5
trigger1=P2bodydist X=[30,100]
;---------------------------------------------------------------------------
[STate 0]
type=Changestate
triggerall=palNo=2||palno=5
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=800
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=prevstateno!=[130,131]
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=700
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=C
value=131

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=200
trigger1=P2bodydist X=[-10,40]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=200
trigger1=P2bodydist X=[-10,90]
trigger1=enemy,statetype=S
;---------------------------------------------------------------------------
;避け
[State -1,back]
type = ChangeState
value = 220
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && random <=200
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S

;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 100
trigger1 = time >= 3
trigger1=P2bodydist X=[0,30]
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 400
trigger1 = time >= 3
trigger1=P2bodydist X=[0,40]

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall=palNo=2||palno=5
trigger1 = var(1)=1&&var(3)=1 && random <= 200
trigger1 = time >= 3
trigger1=P2bodydist X=[0,70]

[State 10, 2]
type = ChangeState
trigger1 = var(1)=1&&var(3)=1&&Time>=30
value = 12

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type    = S
physics = S
anim = 12
velset=0,0
ctrl=1

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0
velset=0,0

[State 20, 1]
type = VelSet
trigger1=PalNo=1||PalNo=2||PalNo=4||PalNo=5||palno=7||palno=8||Palno=9||palno=10||palno=11||Palno=12
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1=PalNo=1||PalNo=2||PalNo=4||PalNo=5||palno=7||palno=8||Palno=9||palno=10||palno=11||Palno=12
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 1]
type = VelSet
trigger1=PalNo=3||PalNo=6
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)+3

[State 20, 2]
type = VelSet
trigger1=PalNo=3||PalNo=6
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)-3

[State 20, 3]
type = ChangeAnim
triggerall=PalNo=1||PalNo=2||PalNo=4||PalNo=5||palno=7||palno=8||Palno=9||palno=10||palno=11||Palno=12
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall=PalNo=1||PalNo=2||PalNo=4||PalNo=5||palno=7||palno=8||Palno=9||palno=10||palno=11||Palno=12
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, 3]
type = ChangeAnim
triggerall=PalNo=3||PalNo=6
triggerall = vel x > 0
trigger1 = Anim != 22 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 22

[State 20, 4]
type = ChangeAnim
triggerall=PalNo=3||PalNo=6
triggerall = vel x < 0
trigger1 = Anim != 23 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 23

[STate 0]
type=Changestate
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && vel X<0
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
value=130

[STate 0]
type=Changestate
triggerall=prevstateno!=[130,131]
trigger1 = var(1)=1&&var(3)=1
trigger1=enemy,movetype=A && vel X<0
trigger1=P2bodydist X=[-10,120]
trigger1=enemy,statetype=S
value=131

[State 20, 3]
type = Changestate
triggerall=var(1)=1&&var(3)=1
trigger1 = vel x = 0
value = 0
ctrl=1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 2
velset=0,0

[State 40, 0]
type=varSet
trigger1=Time=0
var(27)=0
[State 40, 01]
type = varSet
trigger1 =1&&var(25)=0
trigger1=Command="holdfwd"
var(27)=1
[State 40, 02]
type = varSet
trigger1 =1&&var(25)=0
trigger1=Command="holdback"
var(27)=-1

[State 40, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = varSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = varSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = -9.0
[State 40, 3]
type = varSet
trigger1 = command = "holdfwd"&&Animtime=0&&var(29)=10&&var(25)=0
var(27)=1

[State 40, 3]
type = varSet
trigger1 = command = "holdback"&&Animtime=0&&var(29)=10&&var(25)=0
var(27)=-1
[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0&&command="holdup"&&var(29)=10&&var(25)=0
x = 5*var(27)
[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0&&command!="holdup"&&var(29)=10&&var(25)=0
x = 5*var(27)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime=0&&var(29)=10&&var(25)=0
trigger1=Command="holdup"
value = 56
ctrl = 1
[State 40, 6]
type = ChangeState
trigger1 = AnimTime=0&&var(29)=10&&var(25)=0
trigger1=Command!="holdup"
value = 55
ctrl = 1

[State 40, 6]
type = ChangeState
trigger1 = Time=0&&var(25)=1
value = 53

[State 40, 6]
type = ChangeState
trigger1 = AnimTime=0&&var(25)=0
trigger1=Command!="holdup"
value = 54
ctrl = 1
[State 40, 6]
type = ChangeState
trigger1 = AnimTime=0&&var(25)=0
trigger1=Command="holdup"
trigger2=Animtime=0
value = 50
ctrl = 1
[State 40,7]
type=varSet
trigger1=Prevstateno=100
var(29)=10
;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = varSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = varSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1&&var(29)=10, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 50,4]
type=PlaySnd
trigger1=Time=0
value=1,14
channel=5
;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52,1]
type=Turn
trigger1=Time=0&&P2bodydist X<-40

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
[State 0,5]
type=DestroySelf
trigger1=Ishelper
[State 52, 3]
type = varSet
trigger1 = Time = 0
var(29)=0
[State 50,4]
type=PlaySnd
trigger1=Time=0
value=1,12
channel=5

;---------------------------------------------------------------------------
;大＆中Jump Start
[Statedef 53]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 2
velset=0,0

[State 40, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = varSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = varSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 3]
type = varSet
trigger1 = command = "holdfwd"
var(27)=1

[State 40, 3]
type = varSet
trigger1 = command = "holdback"
var(27)=-1

[State 40, 4]
type = VelSet
trigger1 = command!="holdup";&&Animtime=0
x = 5.3*var(27)

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0&&command="holdup"
x = 5.3*var(27)

[State 40, 6]
type = ChangeState
trigger1 =animTime=0&&command!="holdup"
value = 55
ctrl = 1
[State 40, 6]
type = ChangeState
trigger1 =animTime=0&&command="holdup"
value = 56
ctrl = 1

;---------------------------------------------------------------------------
;小ジャンプ
[Statedef 54]
type    = A
physics = A
ctrl=1

[STate 12,0]
type=varset
trigger1=time=0
var(4)=0

[STate 53,0]
type=VelSet
trigger1=time=0
y=-7
persistent=0


[STate 53,0]
type=Veladd
trigger1=1
y=.08

[State 53,0]
type=NotHitBy
trigger1=1
trigger1=Pos Y<0
value=C
time=10

[State 50, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 53, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 50,4]
type=PlaySnd
trigger1=Time=0
value=1,14
channel=5

;---------------------------------------------------------------------------
;中ジャンプ
[Statedef 55]
type    = A
physics = A
ctrl=1

[STate 54,0]
type=VelSet
trigger1=time=0
y=-7
persistent=0
[State 40,3]
type=AfterImage
trigger1 = Time = 1&&Vel X!=0
time=20
length=8
trans=add1
[STate 53,0]
type=Veladd
trigger1=1
y=.08

[State 53,0]
type=NotHitBy
trigger1=1
trigger1=Pos Y<0
value=C
time=10

[State 50, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 54, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 53, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 50,4]
type=PlaySnd
trigger1=Time=0
value=1,24
channel=5

;[STate 53,5]
;type=AfterImage
;trigger1=Time=1
;time=20
;trans=Add1
;---------------------------------------------------------------------------
;大ジャンプ
[Statedef 56]
type    = A
physics = N
ctrl=1

[STate 54,0]
type=Veladd
trigger1=time=0
x=.5*sysvar(1)
persistent=0

[STate 54,0]
type=VelSet
trigger1=time=0
y=-9.5
persistent=0

[State 55,2]
type=VelAdd
trigger1=1
y=.6

[State 53,0]
type=NotHitBy
trigger1=1
trigger1=Pos Y<0
value=C
time=10

[State 50, 1]
type = varSet
trigger1 = Time = 0
sysvar(1) = 0

[State 54, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 53, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 50,4]
type=PlaySnd
trigger1=Time=0&&Vel X=0
value=1,14
channel=5

[State 50,4]
type=PlaySnd
trigger1=Time=0&&Vel X!=0
value=1,24
channel=5

[STate 53,5]
type=AfterImage
trigger1=Time=3&&Vel X!=0
time=30
trans=Add1
length=9
[State 55,5]
type=Changestate
trigger1=Pos Y>=0&Vel Y>0
value=52
;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
velset=0,0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 20, 1]
type = VelSet
trigger1=PalNo=3||PalNo=6
x = const(velocity.run.fwd.x)+3

[State 1010,1]
type=ctrlset
trigger1=Roundstate=2
trigger1=var(1)=1&&var(3)=1
value=0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1=var(1)=0
trigger1 = command != "holdfwd"&&Time>=10
trigger2=var(1)=1&&var(3)=1
trigger2 =Time>=40
trigger3=var(1)=1&&var(3)=1&&random<=600
trigger3 =p2bodydist X=[0,20]
value = 0

[State 100,5]
type=PlaySnd
triggerall=Time>=0;8
trigger1=TimeMod=33,0;33,8
value=1,55
channel=13
;---------------------------------------------------------------------------
;ステップ
[Statedef 101]
type    = A
physics = A
ctrl = 0
anim = 101
sprpriority = 1
velset=0,0

[State 101,0]
type=PlaySnd
trigger1=Time=0
value=1,14
[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = 7.2
y = -5
[State 101,2]
type=NotHitBy
trigger1=1
value=C
[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106
[State 101,3]
type=AfterImage
trigger1=Time=1
time=30
add=123,10,23
trans=Add1
length=12

[State 101,4]
type=PlayerPush
trigger1=1&&P2statetype=L
value=0
;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[STate 105]
type=VelAdd
trigger1=Time>=3
x=.1

[STate 1500]
type=AfterImagetime
trigger1=Time=0
time=0

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47
velset=0,0

[State 101,3]
type=AfterImagetime
trigger1=Time=0
time=0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_UP
[Statedef 110]
type    = S
physics = N

[State 110, 0]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 110, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 110

[State 110, 2]
type = HitBy
trigger1 = Time = 0
value = SCA, NT, ST, HT
time = 30

[State 110, 3]
type = VelSet
trigger1 = Time = 0
x = 0
z = -7

[State 110, 4]
type = VelMul
trigger1 = 1
z = 0.8

[State 110, 5]
type = VelSet
trigger1 = AnimTime = -8
z = 0

[State 110, 7]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 110, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; RUN_DOWN
[Statedef 115]
type    = S
physics = N

[State 115, 0]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 115, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 110

[State 115, 2]
type = HitBy
trigger1 = Time = 0
value = SCA, NT, ST, HT
time = 30

[State 115, 3]
type = VelSet
trigger1 = Time = 0
x = 0
z = 7

[State 115, 4]
type = VelMul
trigger1 = 1
z = 0.8

[State 115, 5]
type = VelSet
trigger1 = AnimTime = -8
z = 0

[State 115, 7]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 115, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = varSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 130

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitvar(slidetime)
trigger2 = Time >= GetHitvar(hittime)
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitvar(ctrltime)
value = 1

[State 151, 4]
type = ChangeState
trigger1 = Time >= GetHitvar(hittime)
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 153

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitvar(slidetime)
trigger2 = Time >= GetHitvar(hittime)
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitvar(ctrltime)
value = 1

[State 153, 4]
type = ChangeState
trigger1 = Time >= GetHitvar(hittime)
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitvar(ctrltime)
value = 1

[State 155, 4]
type = varSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 155, 8]
type = ChangeState
trigger1 = sysvar(0)
value = 130

;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0
[State 180, 1];デバッグ用
type = null;ChangeState
trigger1=Time=0
value = 7900

[STate 190,0]
type=varRandom
trigger1=Time=0
v=8
range=88

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

;--------------------------------------
[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=Time=0
trigger1 =P2name="Gouki by M.M.R."
trigger2 =P4name="Gouki by M.M.R."
value = 6030

[State 190, 2] ;vs Orochi or Chris
type = ChangeState
triggerall=Time=0
trigger1 =P2name="Orochi"||p2name="Chris";
value = 193

[State 190, 2] ;vs Heidern
type = ChangeState
triggerall=Time=0
trigger1 =P2name="Heidern"
trigger2 =P2name="Heidern By Third"
trigger3 =p2name="Orochi Heidern"
value = 6300
[State 190, 2] ;vs Vega&&Zero&&DIO&&Krizalid
type = ChangeState
triggerall=PalNo=1||PalNo=2||PalNo=4||PalNo=5
trigger1 =P2name="vega"||P2name="M. Bison"
trigger2 =p2name="ZERO"
trigger3=p2name="Shadow DIO"||P2name="Dio by ANMC"
trigger4=P2name="krizalid"
value = 6250

;--------------------------------------
[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1=Time=0
trigger1=PalNo=3||PalNo=6
value = 193
;--------------------------------------
[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=PalNo=7||PalNo=8||palno=9
trigger1=Random<=666
value = 7900

[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=PalNo=1||PalNo=4||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[0,20]
value = 191
[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=PalNo=1||PalNo=4||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[21,55]
value = 6200
[State 190, 2] ;落下
type = ChangeState
triggerall=PalNo=1||PalNo=2||PalNo=4||PalNo=5||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[56,76]
value = 6350

[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=PalNo=2||PalNo=5||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[0,15]
value = 192

[State 190, 2] ;Go straight to intro.
type = ChangeState
triggerall=PalNo=2||PalNo=5||palno=7||palno=8||Palno=9||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[16,35]
value = 189
[State 190, 2] ;髑髏イントロ
type = ChangeState
triggerall=PalNo=2||PalNo=5||palno=10||palno=11||Palno=12
trigger1=Time=0&&var(8)=[36,55]
value = 6360

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1=Time=0&&var(8)=[77,88]
value = 194

[State 190, 2] ;髑髏イントロ
type = ChangeState
trigger1=PalNo=7||Palno=8||palno=9
value = 194

;---------------------------------------------------------------------------
; INTRO (override this state to give character an intro)
[Statedef 191]
type = S
ctrl = 0

[State 191, 1]
type = ChangeState
trigger1 = Time = 0
value = 0

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) != [3,5]
value = ifelse((GetHitvar(groundtype) = 1),5000,5010) + GetHitvar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitvar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitvar(animtype)))
value = 5047 + GetHitvar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitvar(yvel) != 0 && GetHitvar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitvar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitvar(animtype) + (GetHitvar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitvar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) != [3,5]
value = 5020 + GetHitvar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitvar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitvar(animtype)))
value = 5047 + GetHitvar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitvar(yvel) = 0
value = 5011 ;HITC_SLIDE

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitvar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitvar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) != [3,5]
value = ifelse((GetHitvar(airtype) = 1),5000,5010) + GetHitvar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitvar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitvar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitvar(animtype)))
value = 5047 + GetHitvar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitvar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitvar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitvar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitvar(yaccel)

[State 5071,2]
type=Changestate
triggerall=Alive
triggerall=Canrecover
triggerall=Command="recovery"||Command="c"
triggerall= Vel Y > 0
trigger1 = Pos Y =[-20,15]
value=3999

[State 5071,2]
type=Changestate
triggerall=Alive&&var(1)=1&&var(3)=1
triggerall=Canrecover
triggerall= Vel Y > 0&&Random<=111
trigger1 = Pos Y =[-20,15]
value=3999

;[State 5050, 4] ;Recover near ground
;type = ChangeState
;triggerall = Vel Y > 0
;triggerall = Pos Y >= -20
;triggerall = alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5200 ;HITFALL_RECOVER

;[State 5050, 5]; Recover in mid air
;type = ChangeState
;triggerall = Vel Y > -1
;triggerall = alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5210 ;HITFALL_AIRRECOVER

;[State 5100,10]
;type=varSet
;trigger1=Anim=5061&&var(15)=0
;var(15)=1

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitvar(yaccel)

[State 5071,2]
type=Changestate
triggerall=Alive
triggerall=Canrecover
triggerall=Command="recovery"||Command="c"
triggerall= Vel Y > 0
trigger1 = Pos Y =[-20,14]
value=3999

[State 5071,2]
type=Changestate
triggerall=Alive&&var(1)=1&&var(3)=1
triggerall=Canrecover
triggerall= Vel Y > 0&&Random<=111
trigger1 = Pos Y =[-20,14]
value=3999

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0
[State 0,5]
type=DestroySelf
trigger1=Ishelper

[State 5080, 1] ;Set default anim
type = varSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitvar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = varAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = varSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitvar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitvar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = varSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitvar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, var] ;Save fall velocity
type = varSet
trigger1 = Time = 0
;trigger1 = GetHitvar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitvar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, var] ;Get fall velocity
type = varSet
trigger1 = Time = 0
trigger1 = GetHitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !Sysvar(0)
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !Sysvar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = varSet
trigger1 = Sysvar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitvar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S
[State 5900,4]
type=Changeanim
trigger1=PalNo=1||PalNo=4
trigger1=Anim!=1
value=1
[State 5900,4]
type=Changeanim
trigger1=PalNo=3||PalNo=6
trigger1=Anim!=2
value=2

[State 5900, 1] ;Clear all int variables
type = varRangeSet
trigger1 = roundno = 1
value = 0

[State 5900, 2] ;Clear all float variables
type = varRangeSet
trigger1 = roundno = 1
fvalue = 0

[State 5900, 3] ;Intro
type = ChangeState
trigger1 = roundno = 1
value = 190


