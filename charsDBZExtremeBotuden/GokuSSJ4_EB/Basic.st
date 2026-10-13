;================================
;Goku Super4
;================================

;------------------------------------------------------
;Author:	sheld
;
;------------------------------------------------------
;====================================================--
;------------------------------------------------------
; Format:
;[Statedef ?]
;type            = 
;movetype        = 
;physics         = 
;anim            = 
;velset          = 0,0,0
;ctrl            = 0
;poweradd        = 0
;juggle          = 0
;facep2          = 0
;hitdefpersist   = 0
;movehitpersist  = 0
;hitcountpersist = 0
;sprpriority     = 2
;---------------



;[State 0:     VelSet]
;type            = VelSet
;trigger1        = (!Time)
;x		        = 0
;y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
;[State 0:     ChangeState]
;type            = ChangeState
;trigger1        = (!AnimTime)
;value           = 0
;ctrl		    = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type            = S
ctrl            = 0
anim            = 170
velset          = 0,0

[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 2
volume          = 255
channel         = 4

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;---------------------------------------------------------------------------
; 勝利ポーズセレクト win
[Statedef 180]
type            = S




[State 0:     1]
type            = ChangeState
triggerall = var(55) = 1
trigger1   = (enemynear(0),alive=0)
value           = 5116

[State 0:     1];おめえの負けだ
type            = ChangeState
triggerall = var(37) = 1
trigger1   = (enemynear(0),alive=0)
value           = 10011


[State 0:     1];５秒で倒したあと
type            = ChangeState
triggerall = var(15) = 1
trigger1   = (enemynear(0),alive=0)
value           = 3296

[State 0:     1];極身
type            = ChangeState
triggerall = var(26) = 1
trigger1   = (enemynear(0),alive=0)
value           = 9876


[State 0:     1]
type            = ChangeState
triggerall = var(30) = 1
triggerall = var(31) = 1
trigger1   = (enemynear(0),alive=0)
value           = 5855

[State 0:     1]
type            = ChangeState;消し飛ばし後
triggerall = var(49) = 1
trigger1   = (enemynear(0),alive=0)
value           = 5621

[State 0:     1];界王神達
type            = ChangeState
triggerall = var(42) = 1
triggerall = var(2)  = 0
triggerall = var(25) = 0
triggerall = var(15) = 0
triggerall        = Life <= 1000
trigger1   = (enemynear(0),alive=0)
value           = 7164

[State 0:     1];界王
type            = ChangeState
triggerall = var(42) = 1
triggerall = var(2)  = 0
triggerall = var(25) = 0
triggerall = var(15) = 0
triggerall        = Life >= 1001
trigger1   = (enemynear(0),alive=0)
value           = 3391

[State 0:     1];あっけない
type            = ChangeState
triggerall = var(42) = 0
triggerall = var(2)  = 0
triggerall = var(25) = 0
triggerall = var(15) = 0
triggerall      = Life >= 2500
triggerall      = Life <= 2999
trigger1   = (enemynear(0),alive=0)
value           = 1925

[State 0:     1];本気出さずにパーフェクト（なんだお終めぇかぁ。）
type            = ChangeState
triggerall = var(42) = 0
triggerall = var(2)  = 0
triggerall = var(25) = 0
triggerall = var(15) = 0
triggerall = var(9) = 0
triggerall      = Life = 3000
trigger1   = (enemynear(0),alive=0)
value           = 1926


[State 0:     1]
type            = ChangeState
triggerall = var(16) = 1
trigger1   = (enemynear(0),alive=0)
value           = 2629

[State 0:     1];本気中パーフェクト（気力ため）
type            = ChangeState
triggerall = var(25) = 0
triggerall = var(9) = 1
triggerall      = Life = 3000
trigger1   = (enemynear(0),alive=0)
value           = 4435


[State 0:     1]
type            = ChangeState;超・本気状態パーフェクト（悪かったな。俺も驚いてるんだ。自分のあまりの強さによ・・。）
triggerall = var(2) = 1
triggerall = var(25)= 1
triggerall = var(9) = 1
triggerall = var(16) = 0
triggerall = var(15) = 0
triggerall      = Life = 3000
trigger1   = (enemynear(0),alive=0)
value           = 181

[State 0:     1]
type            = ChangeState;超・本気状態で勝利（勝負あったな or 残念だったな or おめぇのパンチがくすぐってぇんだよ ）
triggerall = var(2) = 1
triggerall = var(25)= 1
triggerall = var(9) = 1
triggerall = var(15) = 0
trigger1   = (enemynear(0),alive=0)
value           = ifelse(random>500,3311,ifelse(random> 500,4434,182))

[State 0:     1]
type            = ChangeState;本気出さずに勝利（ 勝負あったな or おお、すげぇすげぇ。）
triggerall = var(2) = 0
triggerall = var(25)= 0
triggerall = var(42) = 0
triggerall = var(15) = 0
trigger1        = (!Time)
value           = ifelse(random>500,4434,ifelse(random> 500,3577,3577))

;---------------------------------------------------------------------------
; Win pose （界王に助けを求められる）※勝負中に本気を出さず、挑発を行っており、体力が３割以上あった場合発動の隠し勝利ポーズ
[Statedef 3391]
type            = S
ctrl            = 0
anim            = 3391
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(42) = 0

;---------------
;Sound
;---------------


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 1250
flag            = roundnotover
flag2           = NoBarDisplay



[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 1)
value           = 1289, 1
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 33, 19
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 3)
value           = 1289, 2
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 15)
value           = 1289, 3
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 22)
value           = 330, 330
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 22)
value           = 1289, 4
volume          = 255
channel         = -1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 22) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 22)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 22) 
value           = 255,255,255
time            = 5
under           = 0


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[Statedef 4435];本気中、パーフェクト勝利
type            = S
movetype        = I
physics         = N
anim            = 4435
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 350
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     EnvShake];
type 			= EnvShake
trigger1        = (AnimElem = 4)
time 			= 9999
freq 			= 55;揺れスピード
ampl   = 2;縦の揺れ具合
phase  = 1



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 990
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 4)
time		    = 3000
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 85,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 35,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 50,0))  
anim            = 7047
ID              = 7036
pos             = -53,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 75,0)) 
anim            = 7048
ID              = 7036
pos             = 12,42
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -39,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;---------------
;Sound
;---------------
[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 4)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-45
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.0,1.0
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 9999
supermove       = 9999
pausemovetime   = 9999
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 9999
supermove       = 9999
pausemovetime   = 9999
scale           = 1.1,.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 4)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 4)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 5)
value           = 73,34
volume          = 255
channel         = 0
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 8)
value           = 73,34
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 20,201
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 10)
value           = 0
ctrl            = 1


; Win pose （界王神達に話しかけられる）※勝負中に本気を出さず、挑発を行っており、体力が3分の１以下だった場合発動の隠し勝利ポーズ
[Statedef 7164]
type            = S
ctrl            = 0
anim            = 7164
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(42) = 0

;---------------
;Sound
;---------------


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 950
flag            = roundnotover
flag2           = NoBarDisplay



[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 55, 80
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 3)
value           = 33, 19
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 5)
value           = 55, 85
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 6)
value           = 55, 78
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 16)
value           = 55, 110
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 37)
value           = 55, 100
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 38)
value           = 55, 111
volume          = 255
channel         = -1

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1


; Win pose わりとあっけない。;本気を出さず、挑発せず体力9割残して勝利。
[Statedef 1925]
type            = S
ctrl            = 0
anim            = 1925
velset          = 0,0
facep2          = 0

;---------------
;Sound
;---------------


[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay



[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 5)
value           = 66, 5
volume          = 255
channel         = -1


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1



;;;;;;;;;;;;;;;;;;;;;
; Win pose 何だ、お終めぇかあ。（本気を出さず、挑発せずパーフェクト勝利。）
[Statedef 1926]
type            = S
ctrl            = 0
anim            = 1926
velset          = 0,0
facep2          = 0

;---------------
;Sound
;---------------


[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 180
flag            = roundnotover
flag2           = NoBarDisplay



[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 5)
value           = 66, 4
volume          = 255
channel         = -1


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;;;;;;;;;;;;;;;;;;;;;
; Win pose な？おもしれぇだろ。（５秒で倒したあと）
[Statedef 3296]
type            = S
ctrl            = 0
anim            = 3296
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(15) = 0

;---------------
;Sound
;---------------


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 230
flag            = roundnotover
flag2           = NoBarDisplay



[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 3, 8
volume          = 255
channel         = -1


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;;;;;;;;;;;;;;;;;;;;;
; Win pose (フルパワー消し飛ばし)
[Statedef 5621]
type            = S
ctrl            = 0
anim            = 5621
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(49) = 0

;---------------
;Sound
;---------------

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 400
flag            = roundnotover
flag2           = NoBarDisplay




[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;pardon me
[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 12)
value           = 431, 345
volume          = 255
channel         = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1


;-----------------------------------------------

; Win pose (龍拳)
[Statedef 5855]
type            = S
ctrl            = 0
anim            = 5855
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(30) = 0

[State life,3]
type = varset
trigger1 = time = 0
var(31) = 0

;---------------
;Sound
;---------------


[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic



[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;pardon me
[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 5855, 6
volume          = 255
channel         = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1


; Win pose (おめぇの負けだ)
[Statedef 10011]
type            = S
ctrl            = 0
anim            = 10011
velset          = 0,0
facep2          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(37) = 0



;---------------
;Sound
;---------------


[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;pardon me
[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 86, 95
volume          = 255
channel         = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;---------------------------------------------------------------------------

; オレとおめぇとじゃ、力の差がつき過ぎちまった・・。
[Statedef 5116];対セル・フリーザ等
type            = S
ctrl            = 0
anim            = 5116
velset          = 0,0

;---------------
;Sound
;---------------


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State life,3]
type = varset
trigger1 = time = 0
var(55) = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 360
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 182, 8
volume          = 255
channel         = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

; 悪かったな。俺も驚いてるんだ
[Statedef 181]
type            = S
ctrl            = 0
anim            = 180
velset          = 0,0

;---------------
;Sound
;---------------



[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 500
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;pardon me
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 0
volume          = 255
channel         = 0


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1
;---------------------------------------------------------------------------

; 極身勝利
[Statedef 9876]
type            = S
ctrl            = 0
anim            = 9876
velset          = 0,0
facep2          = 0
sprpriority     = 2

[State life,3]
type = varset
trigger1 = time = 0
var(26) = 0

;---------------
;Sound
;---------------


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 250
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 1)
value           = 11, 195
volume          = 255
channel         = 0

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 8)
value           = 86, 9
volume          = 255
channel         = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

; Win pose 3 勝負あったな
[Statedef 4434]
type            = S
ctrl            = 0
anim            = 4434
velset          = 0,0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 300
flag            = roundnotover
flag2           = NoBarDisplay

[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0, ]
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 1340, 1340
volume          = 255
channel         = 0

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 500
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 50,10,10
palcontrast     = 250,10,20
palpostbright   = 0,0,0
paladd          = 20,10,10
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
;---------------


[State 0, ]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 330, 330
volume          = 255
channel         = -1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 8) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 8)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 8) 
value           = 255,255,255
time            = 5
under           = 0


;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

; 残念だったな。
[Statedef 3311]
type            = S
ctrl            = 0
anim            = 3311
velset          = 0,0
facep2          = 0


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = var(25)= 1
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 20, 201
volume          = 255
channel         = -1


[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 3)
value           = 52, 69
volume          = 255
channel         = -1



[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;;;;;;;;;;;;;;;;;;;;;
; おー、すげぇすげぇ。
[Statedef 3577]
type            = S
ctrl            = 0
anim            = 3577
velset          = 0,0
facep2          = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 5)
value           = 5, 7
volume          = 255
channel         = -1



[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;;;;;;;;;;;;;;;;;;;;;

; Win pose 4 １０倍かめはめ波後
[Statedef 2629]
type            = S
ctrl            = 0
anim            = 2629
velset          = 0,0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 300
flag            = roundnotover
flag2           = NoBarDisplay


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     AfterImage]
type            = AfterImage
trigger1        = (AnimElem = 1)
time            = 500
length          = 3
palcolor        = 256
palinvertall    = 0
palbright       = 50,10,10
palcontrast     = 250,10,20
palpostbright   = 0,0,0
paladd          = 20,10,10
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
;---------------


[State 0, ]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 330, 330
volume          = 255
channel         = -1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 8) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 8)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 8) 
value           = 255,255,255
time            = 5
under           = 0

[State life, 2];10倍スイッチ切り
type = varset
trigger1 = time = 1
var(16) = 0

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

; おめぇのパンチがくすぐってぇんだよ。
[Statedef 182]
type            = S
ctrl            = 0
anim            = 182
velset          = 0,0


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

;---------------
;Sound
;---------------

;panchiga
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 3
volume          = 255
channel         = 0

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay

[State 0:     Elec]
type            = Explod
trigger1        = ((time >80) && (timemod = 85,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >80) && (timemod = 85,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >80) && (timemod = 85,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




; Win pose 3
[Statedef 181]
type            = S
ctrl            = 0
anim            = 181
velset          = 0,0


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

;---------------
;Sound
;---------------

;panchiga
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 2
volume          = 255
channel         = 4

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 200
flag            = roundnotover
flag2           = NoBarDisplay





[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1







;---------------------------------------------------------------------


; Intro Decider　 登場シーン セレクト
[Statedef 190]
type            = S
anim            = 190

[State 0:     2 ];対超ベジット専用登場アクション
type = ChangeState
trigger1 = P2Name = "Super Vegetto" || P4Name = "Super Vegetto"
value = 1974

[State 0:     2 ];対リュウ（sheld）専用登場アクション
type = ChangeState
trigger1 = P2Name = "RYU_sheld" || P4Name = "RYU_sheld"
value =        8153   


[State 0:     2 ];対ブロリー専用登場アクション
type = ChangeState
trigger1 = P2Name = "Broli" || P4Name = "Broli"
value = 261

[State 0:     2 ];対ピッコロ
type = ChangeState
trigger1 = P2Name = "Piccolo" || P4Name = "Piccolo"
value =        8580                        

[State 0:     2 ];対ベジータ
type = ChangeState
trigger1 = P2Name = "vegeta" || P4Name = "vegeta"
value = 7529

[State 0:     2 ];対トランクス・ゴハン
type = ChangeState
trigger1 = P2Name = "Trunks" || P4Name = "Trunks"
trigger2 = P2Name = "Gohan" || P4Name = "Gohan"
value = 1992

[State 0:     2 ];対サタン専用アクション;;;;;;;
type = ChangeState
trigger1 = P2Name = "Mr_Satan" || P4Name = "Mr_Satan"
value = 6392

[State 0:     2 ];対18号専用アクション;;;;;;;
type = ChangeState
trigger1 = P2Name = "Juuhachigou" || P4Name = "Juuhachigou"
value = 6015

[State 0:     2 ];対セル専用
type = ChangeState
trigger1 = P2Name = "Cell" || P4Name = "Cell"
value = 1899

[State 0:     2 ];対フリーザ専用
type = ChangeState
trigger1 = P2Name = "Frieza" || P4Name = "Frieza"
value = 4939


[State 0:     2 ];対プーさん専用登場アクション
type = ChangeState
trigger1 = P2Name = "winnie the pooh" || P4Name = "winnie the pooh"
value = 8982

[State 0:     1]
type            = ChangeState;さっさとやろうぜ
trigger1        = (command = "holdfwd")
value           = 3310

[State 0:     1]
type            = ChangeState;まあそうあせるな
trigger1        = (command = "holddown")
value           = 323

[State 0:     1]
type            = ChangeState;なにぃ？おめぇ何言ってんだ？
trigger1        = (command = "holdback")
value           = 9980


[State 0:     1]
type            = ChangeState;超・本気スタート
trigger1        = (command = "holdx")&&(command = "holdy")&&(command = "holdz")
value           = 435

[State 0:     1];本気スタート
type            = ChangeState
trigger1        = (command = "holds")
value           = 3131

[State 0:     1]
type            = ChangeState;通常スタート
trigger1        = (AnimElem = 2)
value           = ifelse(random>500,191,ifelse(random> 500,9055,1292))


;---------------------------------------------------------------------------

; 瞬間移動で空から出現・着地
[Statedef 9055]
type            = S
movetype        = I
physics         = N
ctrl            = 0
anim            = 9055
velset          = 0,0
facep2          = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2)
value           = 255,255,255
time            = 1
under           = 1

[State 750:     CB Dust Left]
type            = Explod
trigger1        = (AnimElem = 9)
anim            = 7011
ID              = 7011
pos             = -10,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 750:     CB Dust Right]
type            = Explod
trigger1        = (AnimElem = 9)
anim            = 7011
ID              = 7011
pos             = 10,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7013
ID              = 7013
pos             = 3,-25
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.05,1.05
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 500, 0
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 9)
value           = 50, 1
volume          = 255
channel         = -1


[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 11)
value           = 0
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;
; さっさとやろうぜ。
[Statedef 3310]
type            = S
movetype        = I
physics         = N
ctrl            = 0
anim            = 3310
velset          = 0,0
facep2          = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 3310


[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 33, 10
volume          = 255
channel         = -1



[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1



[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 14)
value           = 0
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;
; まあそう焦るな。
[Statedef 323]
type            = S
movetype        = I
physics         = N
ctrl            = 0
anim            = 323
velset          = 0,0
facep2          = 0

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 323

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = PlaySnd ;koe
trigger1        = (AnimElem = 2)
value           = 1, 77
volume          = 255
channel         = -1



[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1



[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 15)
value           = 0
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;
; なにぃ？おめえ何言ってんだ？
[Statedef 9980]
type            = S
movetype        = I
physics         = N
anim            = 9980
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 9980

;---------------
[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 8780,2
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;


; ;対超ベジット（sheld）専用登場アクション
[Statedef 1974]
type            = S
movetype        = I
physics         = N
ctrl            = 0
anim            = 1974
velset          = 0,0
facep2          = 1

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 26)
value           = 20,201
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State life, 2];本気
type = varset
trigger1 = time = 1
var(9) = 1

[State 0:		Helper]
type			= Helper
trigger1 = time = 1
helpertype		= Normal
name			= "1978"
id			    = 1978
pos			    = 0,0
stateno = 1978
postype		    = p1
facing		    = 0
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 198)
flag            = Invisible

[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 27)
value           = 0
ctrl            = 1

; ヘルパ
[Statedef 1978]
type            = S
movetype        = A
physics         = S
anim            = 1978
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 9,9,9
ignorehitpause = 1




[State 430,	AfterImage]
type 			= AfterImage
trigger1 		= (AnimElem = 10)
time 			= 100
timegap		= 1
framegap 		= 4
length 		= 20
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 5
x		        = 5
y		        = 0

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 9,9,9
ignorehitpause = 1

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 2
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 19
trigger2 = AnimElem = 20
x		        = 22
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 21
x		        = 0
y		        = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 18)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 12)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 6)
value           = 1120,550
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 21)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = (AnimElem = 2)
anim 			= 7020
ID 			    = 7020
pos 			= 160,140
postype = back
facing 		    = 1
vfacing 		= 1
bindtime 		= 0
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = .3, .3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = (AnimElem = 4)
anim 			= 7020
ID 			    = 7020
pos 			= 160,130
postype = back
facing 		    = 1
vfacing 		= 1
bindtime 		= 0
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = .3, .3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = (AnimElem = 6)
anim 			= 7020
ID 			    = 7020
pos 			= 160,100
postype = back
facing 		    = 1
vfacing 		= 1
bindtime 		= 0
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = .3, .3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 6)
anim 			= 7020
ID 			    = 7020
pos 			= 160,140
postype = back
facing 		    = 1
vfacing 		= 1
bindtime 		= 0
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2, 2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 17)
anim            = 7025
ID              = 705
pos 			= 140,220
postype = back
facing          = -1
vfacing         = 1
bindtime        = 0
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.4, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 21)
anim            = 7025
ID              = 705
pos 			= 140,220
postype = back
facing          = -1
vfacing         = 1
bindtime        = 0
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.4, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 6)
anim            = 7014
ID              = 7014
pos 			= 150,210
postype = back
facing          = 1
vfacing         = 1
bindtime        = 0
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2) 
trigger2        = (AnimElem = 4) 
trigger3        = (AnimElem = 6) 
value           = 255,255,255
time            = 6
under           = 1

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 18) 
value           = 255,255,255
time            = 3
under           = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1 = AnimElem = 18
x               = (P2BodyDist X-200)


;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = parent,AnimElem = 24





[Statedef 8153];対リュウ（sheld）専用登場アクション
type            = S
movetype        = I
physics         = N
anim            = 8153
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 8153

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic


[State 0:     Elec]
type            = Explod
trigger1        = ((time >500) && (timemod = 505,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >500) && (timemod = 505,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >500) && (timemod = 505,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >500) && (timemod = 505,0)) 
value           = 77,1234 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 3)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 16)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 16)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3)
value           = 255,255,255
time            = 1
under           = 0

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (AnimElem = 4)
time            = 88
length          = 88
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (AnimElem = 16)
time            = 20
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (AnimElem = 6)
time            = 130
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 5,5,5
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 14)
value           = 20,201
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 9)
value           = 201,2
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 12)
value           = 210,1
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 7)
value           = 201,2
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x		        = 9
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 5
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 16
x		        = -9
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 17
x		        = -3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 18
x		        = 0
y		        = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 19)
value           = 0
ctrl            = 0

[Statedef 261];対ブロリー専用登場アクション
type            = S
movetype        = I
physics         = N
anim            = 261
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 261

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic


;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 3)
value           = 996,997
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 57)
value           = 0
ctrl            = 1


[Statedef 6392];対サタン専用アクション
type            = S
movetype        = I
physics         = N
anim            = 6392
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 6392

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;[State 0:     Intro]
;type            = AssertSpecial
;trigger1        = (1)
;flag            = Intro
;flag2           = NoMusic


;---------------
;Sound
;---------------

[State 0:     PlaySND];たく
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 288,432
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     PlaySND];ん？
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 33,19
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND];まさかおめぇ・・！
type 		    = PlaySnd
trigger1        = (AnimElem = 9)
value           = 240,45
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0





[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 21)
value           = 0
ctrl            = 1


[Statedef 1992];対トランクス・ゴハン専用アクション
type            = S
movetype        = I
physics         = N
anim            = 1992
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 1992

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay


;---------------
;Sound
;---------------


[State 0:     PlaySND];今俺に近づくと火傷どころじゃすまねぇぞ。
type 		    = PlaySnd
trigger1        = (AnimElem = 14)
value           = 110,40
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 54)
value           = 0
ctrl            = 1


[Statedef 6392];対サタン専用アクション
type            = S
movetype        = I
physics         = N
anim            = 6392
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 6392

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;[State 0:     Intro]
;type            = AssertSpecial
;trigger1        = (1)
;flag            = Intro
;flag2           = NoMusic


;---------------
;Sound
;---------------



[State 0:     PlaySND];たく・・・・
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 188,432
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND];はなれろ
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 110,20
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 18)
value           = 0
ctrl            = 1


[Statedef 6015];対18号アクション
type            = S
movetype        = I
physics         = N
anim            = 6015
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 6015

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay


;---------------
;Sound
;---------------


[State 0:     PlaySND];ずいぶん余裕あっじゃねぇか・・・？
type 		    = PlaySnd
trigger1        = (AnimElem = 3)
value           = 37,88
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND];ふ。
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 20,201
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 21)
value           = 0
ctrl            = 1

[Statedef 8580];対ピッコロ専用アクション
type            = S
movetype        = I
physics         = N
anim            = 8580
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 8580

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     PlaySND];はじめっか。
type 		    = PlaySnd
trigger1        = (AnimElem = 8)
value           = 24,25
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 18)
value           = 0
ctrl            = 1







;---------------------------------------------------------------------------
;

[Statedef 1899];対セル専用登場アクション
type            = S
movetype        = I
physics         = N
anim            = 1899
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic


[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 1899

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State life,3]
type = varset
trigger1 = time = 0
var(55) = 1

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 20,201
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 3)
value           = 320,20
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 27)
value           = 0
ctrl            = 1

[Statedef 7529];対ベジータ専用登場アクション
type            = S
movetype        = I
physics         = N
anim            = 7529
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic


[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 7529

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State life,3]
type = varset
trigger1 = time = 0
var(55) = 1

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 24,24
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;[State 0:     PlaySND]
;type 		    = PlaySnd
;trigger1        = (AnimElem = 3)
;value           = 24,25
;volume          = 255
;channel         = -1
;lowpriority     = 0
;freqmul         = 1.0
;loop            = 0
;pan             = 0
;abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 23)
value           = 0
ctrl            = 1





[Statedef 4939];対フリーザ専用登場アクション
type            = S
movetype        = I
physics         = N
anim            = 4939
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 4939

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State life,3]
type = varset
trigger1 = time = 0
var(55) = 1

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 963,1
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 16)
value           = 963,2
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 40)
value           = 11,195
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;[State 0:     batiSound]
;type            = PlaySnd
;trigger1        = ((time >100) && (timemod = 105,0)) 
;value           = 44,77 
;volume          = 100
;channel         = -1
;lowpriority     = 0 
;freqmul         = 1.0
;loop            = 0
;pan             = 0
;abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 50)
value           = 0
ctrl            = 1




;---------------------------------------------------------------------------


[Statedef 8982];対プーさん専用アクション
type            = S
movetype        = I
physics         = N
anim            = 8982
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 8982

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoMusic


;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 89,987
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 5)
value           = 89,989
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 22)
value           = 0
ctrl            = 1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;







;Instant translocation　新登場シーン
[Statedef 1292]
type            = S
movetype        = I
physics         = N
anim            = 1292
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 1292

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 201,202
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 37)
value           = 0
ctrl            = 1






;登場シーン：悪さが過ぎたぜ or 俺には勝てねぇぞ。　
[Statedef 191]
type            = S
movetype        = I
physics         = N
anim            = 191
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = time = 20
value           = 255,255,255
time            = 1
under           = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = time = 20
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.03,1.03
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 191

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     TeleportSND]
type 		    = PlaySnd
trigger1        = (Time = 20)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 1222, ifelse(random>500,1222,ifelse(random> 500,7,7))
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >100) && (timemod = 105,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects
;---------------

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 25)
flag            = Invisible

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimTime = 0)
value           = 0
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;登場シーン（最初から超本気！！）「ノーマル悟空　→超→超２→超３→　超４悟空」

;Instant translocation
[Statedef 435]
type            = S
movetype        = I
physics         = N
anim            = 435
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 5,5,5
ignorehitpause = 1

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 3000,5
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 3200,1110
volume          = 255
channel         = -2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 3200,1110
volume          = 255
channel         = 5
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 300
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1.6
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (time = 210)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 113
supermove       = 1
pausemovetime   = 10
scale           = 0.8,0.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (time = 210)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 1
pausemovetime   = 10
scale           = 0.9,0.85
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 510
supermove       = 1
pausemovetime   = 10
scale           = 1.05,0.92
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 510
supermove       = 1
pausemovetime   = 10
scale           = 1.1,0.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     EnvShake];悟空
type 			= EnvShake
trigger1        = (time = 1)
time 			= 110
freq 			= 35;揺れスピード
ampl   = 2;縦の揺れ具合
phase  = 1

[State 0:     EnvShake];超悟空
type 			= EnvShake
trigger1        = (time = 100)
time 			= 300
freq 			= 45;揺れスピード
ampl   = 3;縦の揺れ具合
phase  = 1

[State 0:     EnvShake];超2悟空
type 			= EnvShake
trigger1        = (time = 200)
time 			= 300
freq 			= 55;揺れスピード
ampl   = 4;縦の揺れ具合
phase  = 1

[State 0:     EnvShake];超3悟空
type 			= EnvShake
trigger1        = (time = 400)
time 			= 300
freq 			= 65;揺れスピード
ampl   = 5;縦の揺れ具合
phase  = 1


[State 0:     EnvShake];超４悟空
type 			= EnvShake
trigger1        = (AnimElem = 6)
time 			= 300
freq 			= 100
ampl   = 7
phase  = 1

[State life,3]
type = varset
trigger1 = time = 1
var(9) = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >170) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >170) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >170) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 435

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1,1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.1,1.1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.4,1.4
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


;---------------
;Sound
;---------------

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 99,33
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 3000,5
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 7)
value           = 3000,5
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (time = 1)
trigger2        = (time = 50)
trigger3        = (time = 100)
trigger4        = (time = 150)
trigger5        = (time = 200)
trigger6        = (time = 250)
trigger7        = (time = 300)
trigger8        = (time = 350)
trigger9        = (time = 400)
trigger10        = (time = 450)
trigger11        = (time = 500)
trigger12        = (time = 550)
trigger13        = (time = 600)
trigger14        = (time = 650)
trigger15        = (time = 700)
trigger16        = (time = 750)
value           = 66,90
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = time = 400
trigger2        = time = 490
trigger3        = time = 580
value           = 44,77
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (time = 160)
value           = 44,44
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type 		    = PlaySnd
trigger1        = (time = 220)
value           = 44,45
volume          = 255
channel         = 0
lowpriority     = 1
freqmul         = 1.0
loop            = 1
pan             = 0
abspan          = 0


[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 6,661
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 55,5555
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 6)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2.4,2.4
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 70
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Effects
;---------------

;---------------
[State 0:     Screen Flash]
type            = EnvColor
trigger1        = ((Time > 100) && ((GameTime%80) = 0));(animelem = 2)
value           = 255,255,255
time            = 1
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 6)
value           = 255,255,255
time            = 2
under           = 0

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 265
supermove       = 1
pausemovetime   = 10
scale           = 1.3,1.17
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 265
supermove       = 1
pausemovetime   = 10
scale           = 1.4, 0.4
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 290
supermove       = 999
pausemovetime   = 999
scale           = 1.8, 1.7
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1,1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 5)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.2,1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State -2]
type = PalFX;点滅
triggerall = time > 200
trigger1 = (GameTime%3) = 0
time = 1
add = 100,100,100
ignorehitpause = 5
sprpriority = 8

[State -2]
type = PalFX;点滅
triggerall = time > 400
trigger1 = (GameTime%3) = 0
time = 1
add = 200,200,200
ignorehitpause = 5
sprpriority = 8



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 290
supermove       = 0
pausemovetime   = 0
scale           = 1.6, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 650
mul             = 210,210,210
color           = 255
invertall       = 0
ignorehitpause  = 0
persistent      = 1



[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 6)
time            = 260
mul             = 255,50,50
color           = 1
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >350) && (timemod = 135,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >350) && (timemod = 135,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >570) && (timemod = 50,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >350) && (timemod = 135,0)) 
anim            = 7048
ID              = 7036
pos             = 12,42
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -39,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ((time >630) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = -24,5
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,33
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ((time >630) && (timemod = 45,0)) 
anim            = 7047
ID              = 7036
pos             = -22,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,12
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >630) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = -4,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 12,76
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >640) && (timemod = 45,0)) 
anim            = 7047
ID              = 7036
pos             = -42,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,12
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >650) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -42,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,12
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >640) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = -54,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,44
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >640) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = 54,24
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,44
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (time = 1)
value           = 99,9
volume          = 255
channel         = -2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 99,10
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 1
var(9) = 1


[State -2, 5]
type = poweradd 
trigger1= time = 1
value = 9000

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 2
var(25) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 1
var(2) = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 6)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.7, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 70)
value           = 1290
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;登場シーン(超４変身後) 

;Instant translocation
[Statedef 1290]
type            = S
movetype        = I
physics         = N
anim            = 1290
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1 )
value           = 255,255,255
time            = 5
under           = 0

[State -2]
type = PalFX;点滅
triggerall = time < 15
trigger1 = (GameTime%3) = 0
time = 1
add = 200,200,200
ignorehitpause = 5
sprpriority = 8


[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 1290

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (time = 1)
time 			= 5
freq 			= 100
ampl   = 7
phase  = 1


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 2)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (time = 1)
trigger2        = (time = 15)
;trigger3        = (time = 30)
trigger4        = (time = 49)
trigger5        = (time = 63)
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (time = 1)
trigger2        = (time = 15)
;;trigger3        = (time = 30)
trigger4        = (time = 49)
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (time = 1)
;trigger2        = (time = 15)
trigger3        = (time = 30)
;trigger4        = (time = 49)
trigger5        = (time = 63)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     bakuuu]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 1120,550 
volume          = 100
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.4, 1.4
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >110) && (timemod = 115,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 5)
value           = 0
ctrl            = 1




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;登場シーン(最強！悟空が超サイヤ人４に！）

;Instant translocation
[Statedef 3131]
type            = S
movetype        = I
physics         = N
anim            = 3131
velset          = 0,0,0
ctrl            = 0
poweradd        = 4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2 )
value           = 255,255,255
time            = 5
under           = 0


[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 3131

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     koe]
type 		    = PlaySnd
trigger1        = (AnimElem = 2)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd
trigger1        = time = 1
value           = 31,31
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type 		    = PlaySnd    ; 俺は超サイヤ人４の孫悟空だ！
trigger1        = (AnimElem = 5)
value           = 721,721
volume          = 255
channel         = 0
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 2)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     bakuuu]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 8989,0
volume          = 100
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.4, 1.4
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 8001, Explod-3];タイトル
type = Explod
trigger1 = Time = 0
Anim = 3132
id = 3132
pos = 152,110
postype = left
ownpal = 1
bindtime = -1
removetime = 700
scale = 0.84, 0.85
sprpriority = 9999999
supermovetime = 120
ontop           = 1
facing = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 1
var(9) = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[21,23]
add             = -200,-200,-200
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[24,26]
add             = -155,-155,-155
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[27,29]
add             = -55,-55,-55
mul             = 255,255,255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[0,20]
add             = -255,-255,-255
mul             = -255,-255,-255
time            = 1
ignorehitpause  = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 2)
time            = 10
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 0

;---------------
;Effects
;---------------

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 36)
value           = 0
ctrl            = 1


;---------------------------------------------------
; 次元超越
[Statedef 1440]
type            = S
movetype        = A
physics         = S
anim            = 1440
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1


;---------------

[State 0:    C Dust Left]
type            = Explod
trigger1        = Time= 1
anim            = 7011
ID              = 705
pos             = -10,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 120
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = time = 1
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 120
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (time = 1)
time 			= 240
freq 			= 30
ampl   = 2
phase  = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (time = 140)
time 			= 110
freq 			= 41
ampl   = 4
phase  = 3

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 200
length          = 5
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Push Effect]
type            = Helper
trigger1        = time = 1
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
removetime          = 210 
supermovetime	= 999
pausemovetime	= 999
size.xscale	    = 1.1
size.yscale	    = 1.1


[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 40)
time            = 1100
mul             = 255,250,250
add             = 20,20,20
color           = 255
invertall       = 255
ignorehitpause  = 255
persistent      = 0


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 10
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 66,90
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 23)
value           = 66,90
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 22)
value           = 66,90
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Voice]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 21,71
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 99,53
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 22) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = Time= 1
anim            = 7011
ID              = 705
pos             = -10,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 120
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = time = 1
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 120
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    C Dust Left]
type            = Explod
trigger1        = Time= 120
anim            = 7011
ID              = 705
pos             = -10,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 110
supermove       = 999
pausemovetime   = 999
scale           = 2, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = time = 120
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 110
supermove       = 999
pausemovetime   = 999
scale           = 2, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >200) && (timemod = 205,0)) 
anim            = 7050
ID              = 7036
pos             = -24,5
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,33
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ((time >150) && (timemod = 155,0)) 
anim            = 7047
ID              = 7036
pos             = -22,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,12
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >150) && (timemod = 155,0)) 
anim            = 7050
ID              = 7036
pos             = -4,24
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 12,76
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >200) && (timemod = 205,0)) 
anim            = 7050
ID              = 7036
pos             = -24,5
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,44
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1








[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >200) && (timemod = 205,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >200) && (timemod = 205,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >200) && (timemod = 205,0)) 
anim            = 7048
ID              = 7036
pos             = 12,42
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -39,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 22)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= 120
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 120
supermove       = 999
pausemovetime   = 999
scale 		    = 1.5, 1.5
sprpriority 	= 1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 22)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= 120
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 120
supermove       = 999
pausemovetime   = 999
scale 		    = 1.1, 1.1
sprpriority 	= 3
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0



[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 40)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= 10
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 10
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 40)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= 10
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 10
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 40)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= 10
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 10
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 22) 
anim            = 7014
ID              = 7014
pos             = 3,3
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.5,1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1



[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (AnimElem = 22) 
time 			= 25
freq 			= 100
ampl   = -20
phase  = 20


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 22)
value           = 255,255,255
time            = 2
under           = 0



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 22)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0,0
pausetime       = 0,-5
guard.pausetime = 0,-5
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S0,0 
guardsound      = S0,0 
ground.slidetime    = 50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -20, -8
air.velocity    = -20, -8.0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
fall.velocity   = -15, 0
air.fall        = 1
down.velocity   = -15, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0,0
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 21)
value           = 1120,550
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 21)
value           = 32,66
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 40)
value           = 21,43
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 40)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 0
guard.pausetime = 0, 0
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10,-65
hitsound        = S21, 43
guardsound      = S21, 43
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
trigger11        = (AnimElem = 11)
trigger12        = (AnimElem = 12)
trigger13        = (AnimElem = 13)
trigger14        = (AnimElem = 14)
trigger15        = (AnimElem = 15)
trigger16        = (AnimElem = 16)
trigger17        = (AnimElem = 17)
trigger18        = (AnimElem = 18)
trigger19        = (AnimElem = 19)
trigger20        = (AnimElem = 20)
trigger21        = (AnimElem = 21)
attr            = S, N
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 1, 0
pausetime       = 0, 2
guard.pausetime = 0, 0
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10,-65
hitsound        = S0, 1
guardsound      = S0, 1
ground.slidetime    = 12
ground.cornerpush.veloff = -10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -8, 0
air.velocity    = -9, -4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 23)
trigger2        = (AnimElem = 24)
trigger3        = (AnimElem = 25)
trigger4        = (AnimElem = 26)
trigger5        = (AnimElem = 27)
trigger6        = (AnimElem = 28)
trigger7        = (AnimElem = 29)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 31)
trigger10        = (AnimElem = 32)
trigger11       = (AnimElem = 33)
trigger12        = (AnimElem = 34)
trigger13        = (AnimElem = 35)
trigger14        = (AnimElem = 36)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 38)
trigger17        = (AnimElem = 39)
attr            = S, N
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 10, 0
pausetime       = 0, 3
guard.pausetime = 0, 0
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10,-65
hitsound        = S66, 66
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -14, 0
air.velocity    = -14, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3


;------------Comboing---

[State life 1];パワー消費
type = poweradd
trigger1        = (AnimElem = 40)
value = -8000

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 40)
helpertype	    = normal
name		    = "toki"
id              = 8483
pos		        = 79,300
postype         = p1
facing		    = 1
stateno	        = 8483
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 9999
pausemovetime	= 9999
size.xscale	    = .5
size.yscale	    = .4


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 40)
time 			= 1100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 1100
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

;---------------
;Effects
;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 極身の拳
[Statedef 5312]
type            = S
movetype        = A
physics         = S
anim            = 5312
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State life 1];パワー消費
type = poweradd
trigger1        = (AnimElem = 12)
value = -5000

[State life, 2];極スイッチ
type = parentvarset
trigger1 = (AnimElem = 12) 
var(26) = 1

[State life, 2];極スイッチ
type = varset
trigger1 = (AnimElem = 12) 
var(26) = 1


;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 100
length          = 5
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 14) 
helpertype	    = normal
name		    = "sisin"
id              = 3699
pos		        = -30,0
postype         = p1
facing		    = 1
stateno	        = 3699
keyctrl	        = 1
ownpal		    = 1
supermovetime	= 9999999
pausemovetime	= 9999999
palcolor        = 255
palinvertall    = 770
palbright       = 20,20,20
palcontrast     = 200,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
removetime = 300
size.xscale	    = 1.39
size.yscale	    = 1.39



[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 10
value           = 1

;---------------
;Sound/Effects
;---------------




[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 11) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 11) 
anim            = 7014
ID              = 7014
pos             = 3,3
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5,1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1



[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (AnimElem = 11) 
time 			= 25
freq 			= 100
ampl   = -20
phase  = 20


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 11)
value           = 255,255,255
time            = 4
under           = 0


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 11)
value           = 41,27
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 1222,7
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Effects
;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;---------------------------------------------------
; 弱パンチ
[Statedef 200]
type            = S
movetype        = A
physics         = S
anim            = 200
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 10
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,9,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, dodge
damage          = 25, 1
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10,-75
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 強パンチ
[Statedef 201]
type            = S
movetype        = A
physics         = S
anim            = 201
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 1.3
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,1,ifelse(random> 500,2,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 45, 3
pausetime       = 17, 20
guard.pausetime = 15, 20
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -15, -75
hitsound        = S201, 1
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1



S


;;;


;---------------------------------------------------
; 敬意（誉める）
[Statedef 1177]
type            = S
movetype        = A
physics         = S
anim            = 1177
;velset          = 0,0,0
ctrl            = 0
poweradd        = 500
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State life,3]
type = varset
trigger1 = time = 0
var(42) = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;---------------
;Sound/Effects
;---------------

[State 0:     homekotoba]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 1177,27
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 18)
value           = 0
ctrl		    = 1

;---------------------------------------------------
; 挑発
[Statedef 998]
type            = S
movetype        = I
physics         = S
anim            = 998
;velset          = 0,0,0
ctrl            = 0
poweradd        = 500
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State life,3]
type = varset
trigger1 = time = 0
var(42) = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 0
value           = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 77,9
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;



; 挑発２（けなし）
[Statedef 974]
type            = S
movetype        = I
physics         = S
anim            = 974
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0


;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 974,974
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 9)
value           = 0
ctrl		    = 1
;;;

; 余裕（ヘルパー終わり用）
[Statedef 3681]
type            = S
movetype        = I
physics         = S
anim            = 3681
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 8
kill = 0


;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 2)
value           = 0
ctrl		    = 1

; 余裕
[Statedef 1866]
type            = S
movetype        = I
physics         = S
anim            = 1866
;velset          = 0,0,0
ctrl            = 0
poweradd        = 500
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
supermove = 9999
sprpriority     = 7
kill = 0

;---------------

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 14)
time 			= 0
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 0
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 14)
time            = 0
mul             = 255,250,250
add             = 20,20,20
color           = 255
invertall       = 255
ignorehitpause  = 255
persistent      = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 0
value           = 0

;---------------
;Sound/Effects
;---------------

[State 0:     koe]
type            = PlaySnd
trigger1        = (!Time)
value           = 30,370
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 3681
ctrl		    = 1


; 「フルパワー消し飛ばし！！！」

[Statedef 9992]
type            = S
movetype        = A
physics         = S
anim            = 9992
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State life 1];体力使う
type = Lifeadd
trigger1        = (AnimElem = 47)
value = -9999
kill = 0


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 470
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 470
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 47)
Anim = 8783
id = 8783
pos = -100, -20
postype = back
ownpal = 1
bindtime = -1
removetime = 400
scale = 1.75,1.75
sprpriority = -90
supermovetime = 120

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 47)
value = -9999
kill = 1 

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 48)
value = -9999
kill = 1 

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 49)
value = -9999
kill = 1 

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 50)
value = -9999
kill = 1 

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 47)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 620
supermove       = 1000
pausemovetime   = 1000
scale           = 4, 4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 45)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 150
supermove       = 1000
pausemovetime   = 1000
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 44)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 180
supermove       = 1000
pausemovetime   = 1000
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 46)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 10
supermove       = 1000
pausemovetime   = 1000
scale           = 3, 3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 47)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 15
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 44)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 180
supermove       = 999
pausemovetime   = 999
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 150
supermove       = 999
pausemovetime   = 999
scale 		    = 1.2, 1.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 150
supermove       = 999
pausemovetime   = 999
scale 		    = 1.5, 1.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 46)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 10
supermove       = 999
pausemovetime   = 999
scale 		    = 2, 2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 320) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 320) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 320) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 47)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 620
supermove       = 700
pausemovetime   = 700
scale           = 3, 3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-100)


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 2)
x		        = 5
y		        = 0



[State life 1];ゲージ全消費
type = Poweradd
trigger1 = (AnimElem = 47)
value = -9000




;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 600
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 50,10,10
palcontrast     = 250,10,20
palpostbright   = 0,0,0
paladd          = 20,10,10
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add

;---------------
;Sound/Effects
;---------------



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 47)
trigger2        = (AnimElem = 48)
trigger3        = (AnimElem = 49)
trigger4        = (AnimElem = 50)
attr            = A, HA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 9999, 9999
pausetime       = 0, 30
guard.pausetime = 0, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -25
hitsound        = S3200,1110
guardsound      = S66,66 
ground.slidetime    = 80
ground.hittime  = 59
guard.hittime   = 59
kill            = 1
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -.1,-70
air.velocity    = -.1,-70
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 5
air.fall        = 1
down.velocity   = 0, 10
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
fall.envshake.time = 13   ;｝
fall.envshake.freq = 80  ;｝『攻撃をヒットさせた相手が地面に激突した瞬間の画面振動』
fall.envshake.ampl = -13   ;｝やり方はenvshake系と一緒。
fall.envshake.phase = 5 ;｝

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 47)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 200
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 580
supermove       = 580
pausemovetime   = 580
scale           = 3,3.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 47)
anim            = 6501
ID              = 6501
pos		        = 30,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 10
supermove       = 1500
pausemovetime   = 1500
scale           = 5, 5
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 47)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 580
supermove       = 580
pausemovetime   = 580
scale           = 3.5,3.5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 50)
anim            = 7047
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 4,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 50)
anim            = 7047
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 55,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 50)
anim            = 7050
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 50)
anim            = 7050
ID              = 7036
pos             = 20,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 50)
anim            = 7050
ID              = 7036
pos             = 20,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 88,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 47)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 20,20
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 3,3 
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 47)
trigger2        = (AnimElem = 47)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 49)
trigger2        = (AnimElem = 48)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 44)
value           = 321,214
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 1000
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 47)
trigger2        = (AnimElem = 48)
trigger3        = (AnimElem = 49)
time            = 15
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:     syunnkann]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = time = 771
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 47)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 48)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 49)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 50)
value           = 255,255,255
time            = 3
under           = 1




[State 0:     hukatukotoba]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 999,992
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State life,3]
type = varset
trigger1 = time = 0
var(49) = 1

[State 0:     hukatukotoba]
type            = PlaySnd
trigger1        = (AnimElem = 47)
value           = 254,254
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = Time = 1000
value           = 723
ctrl		    = 0

;---------------------------------------------------

; 「バニシング」

[Statedef 1557]
type            = S
movetype        = A
physics         = S
anim            = 1557
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 70
flag           = NoBarDisplay


[State 52, 1]
type = VelSet
trigger1 = (AnimElem = 4)
trigger2 = (AnimElem = 5)
trigger3 = (AnimElem = 6)
x = 0
y = -5

[State 52, 1]
type = VelSet
trigger1 = (AnimElem = 7)
x = 0
y = 0


[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 7)
trigger2 = (AnimElem = 8)
trigger3 = (AnimElem = 9)
trigger4 = (AnimElem = 10)
value = -5
kill = 0 


;カットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (animelem = 1)
Anim = 7659
id = 7659
pos = -30, 80
postype = back
ownpal = 1
bindtime = -1
removetime = 30
scale = 1,.89
sprpriority = -60
supermovetime = 120

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 9)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 250
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 1000
pausemovetime   = 1000
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 8)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 250
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 1000
pausemovetime   = 1000
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 6)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 250
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 1000
pausemovetime   = 1000
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 7)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 200
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 10
supermove       = 1000
pausemovetime   = 1000
scale           = 1.1, 1.1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 7)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 250
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0



[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 5)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 200
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 2)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 30
supermove       = 999
pausemovetime   = 999
scale 		    = 1.4, 1.4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 250
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 250
supermove       = 250
pausemovetime   = 250
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-100)
y               = (P2BodyDist Y-30)


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 2)
x		        = 5
y		        = 0



[State life 1];ゲージ6消費
type = Poweradd
trigger1 = (AnimElem = 1)
value = -6000




;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 300
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 50,10,10
palcontrast     = 250,10,20
palpostbright   = 0,0,0
paladd          = 20,10,10
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add

;---------------
;Sound/Effects
;---------------

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 50
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 50
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 8)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 10)
attr            = A, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 25, 4
pausetime       = 0, 30
guard.pausetime = 0, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -5
hitsound        = S8000,1
guardsound      = S8000,1 
ground.slidetime    = 80
ground.hittime  = 59
guard.hittime   = 59
kill            = 0
air.hittime     = 20
air.cornerpush.veloff = -1
ground.velocity = -1,-25
air.velocity    = -1,-25
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 10
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
fall.envshake.time = 13   ;｝
fall.envshake.freq = 80  ;｝『攻撃をヒットさせた相手が地面に激突した瞬間の画面振動』
fall.envshake.ampl = -13   ;｝やり方はenvshake系と一緒。
fall.envshake.phase = 5 ;｝

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 200
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 250
supermove       = 250
pausemovetime   = 250
scale           = 2.1,1.7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 6501
ID              = 6501
pos		        = 30,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 10
supermove       = 1500
pausemovetime   = 1500
scale           = 2, 2
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 250
supermove       = 250
pausemovetime   = 250
scale           = 1.2,1.2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7047
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 4,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7047
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 55,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7050
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7050
ID              = 7036
pos             = 20,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7050
ID              = 7036
pos             = 20,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 88,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 20,20
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2,2 
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 22,66
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 255,255
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 255,255
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 253,253
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 22,66
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 30
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:     syunnkann]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 330,330
volume          = 205
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 7)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 8)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 9)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 10)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     hukatukotoba]
type            = PlaySnd
trigger1        = (AnimElem = 2);声or音
value           = 88,99
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     hukatukotoba];koe
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 253,253
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = Time = 250
value           = 4438
ctrl		    = 0

;---------------------------------------------------

[Statedef 4438]
type            = S
movetype        = A
physics         = S
anim            = 4438
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = A, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 30, 8
pausetime       = 0, 3
guard.pausetime = 0, 3
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -25
hitsound        = S66,66
guardsound      = S66,66
ground.slidetime    = 80
ground.hittime  = 59
guard.hittime   = 59
kill            = 1
air.hittime     = 20
air.cornerpush.veloff = -1
ground.velocity = -55,-11
air.velocity    = -55,-11
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 10
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 65
envshake.ampl   = -25
envshake.phase  = 5
fall.envshake.time = 13   ;｝
fall.envshake.freq = 80  ;｝『攻撃をヒットさせた相手が地面に激突した瞬間の画面振動』
fall.envshake.ampl = -13   ;｝やり方はenvshake系と一緒。
fall.envshake.phase = 5 ;｝

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 4)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 30
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
trigger2        = (animelem = 3)
trigger2        = (animelem = 4)
x		        = 0
y		        = -5

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 0
y		        = 0



[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 20
pausemovetime   = 20
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 4)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 20
pausemovetime   = 20
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 200
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 18
supermove       = 18
pausemovetime   = 18
scale           = 0.8,0.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     oto]
type            = PlaySnd
trigger1        = (animelem = 4)
value           = 700,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (animelem = 4)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     ChangeState]
type            = ChangeState
trigger1        = (animelem = 7)
value           = 50
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




; 復活

[Statedef 3214]
type            = S
movetype        = A
physics         = S
anim            = 3214
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = (animelem = 1)
trigger2        = (animelem = 2)
trigger3        = (animelem = 3)
trigger4        = (animelem = 4)
trigger5        = (animelem = 5)
flag           = NoBarDisplay

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-100)

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (animelem = 7)
trigger2        = (animelem = 8)
trigger3        = (animelem = 9)
trigger4        = (animelem = 10)
time 			= 20
freq 			= 90
ampl   = 35
phase  = 35


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 2)
x		        = -3
y		        = 0
;カットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 7)
Anim = 8783
id = 8783
pos = -100, 0
postype = back
ownpal = 1
bindtime = -1
removetime = 130
scale = 1.5,1.5
sprpriority = -90
supermovetime = 120

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 7)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (time = 330)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 7)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2, 2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 6)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (time = 330)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.7, 1.7
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = time = 330
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.8, 1.8
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1



[State life, 2]
type = varset
trigger1 = time = 22
var(2) = 1

[State life,3]
type = varset
trigger1 = time = 24
var(27) = 1

[State life,3]
type = varset
trigger1 = time = 29
var(9) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = time = 320
var(25) = 1

[State 0:     1]
type            = NotHitBy
trigger1        = time = 320
value           = SCA
time            = 100


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 40) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State life 1];体力回復
type = Lifeadd
trigger1 = (AnimElem = 7)
trigger2 = (AnimElem = 8)
trigger3 = (AnimElem = 9)
trigger4 = (AnimElem = 10)
value = 155

[State life 1];ゲージ回復
type = Poweradd
trigger1 = (AnimElem = 7)
trigger2 = (AnimElem = 8)
trigger3 = (AnimElem = 9)
trigger4 = (AnimElem = 10)
value = 200




;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 300
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 50,10,10
palcontrast     = 250,10,20
palpostbright   = 0,0,0
paladd          = 20,10,10
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add

;---------------
;Sound/Effects
;---------------

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 80
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 80
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 8)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 10)
attr            = A, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 0, 0
pausetime       = 0, 5
guard.pausetime = 0, 1
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -25
hitsound        = S62226,626
guardsound      = S62226,662 
ground.slidetime    = 80
ground.hittime  = 59
guard.hittime   = 59
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -13,-9
air.velocity    = -13,-9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 10
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
fall.envshake.time = 13   ;｝
fall.envshake.freq = 80  ;｝『攻撃をヒットさせた相手が地面に激突した瞬間の画面振動』
fall.envshake.ampl = -13   ;｝やり方はenvshake系と一緒。
fall.envshake.phase = 5 ;｝


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 200
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 280
supermove       = 280
pausemovetime   = 280
scale           = 2,1.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = time = 330
anim            = 6501
ID              = 6501
pos		        = 30,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.5, 3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 280
supermove       = 280
pausemovetime   = 280
scale           = 1.5,1.5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7047
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 4,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7050
ID              = 7036
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
;trigger2        = (AnimElem = 8)
;trigger3        = (AnimElem = 9)
trigger2        = (AnimElem = 10)
anim            = 7050
ID              = 7036
pos             = 20,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,10
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 20,20
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 7)
anim            = 7048
ID              = 7036
pos             = -15,-17
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -20,25
removetime      = -2
supermove       = 99
pausemovetime   = 99
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 6)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 6)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (time = 150)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 300
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:     syunnkann]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = time = 330
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = time = 330
value           = 55,5555
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 7)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 8)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 9)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 10)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     hukatukotoba]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 9990,9990
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = Time = 330
value           = 0
ctrl		    = 1

;---------------------------------------------------





;---------------------------------------------------
; 無敵の超４悟空
[Statedef 999]
type            = S
movetype        = A
physics         = S
anim            = 999
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = -99
kill = 0


[State 0:     koe];あおり
type            = PlaySnd
triggerall = var(25) = 1
trigger1        = (AnimElem = 1)
value           = 111,221
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;無敵カットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (animelem = 1)
Anim = 2977
id = 2977
pos = 100, -20
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = .7,.7
sprpriority = 9
supermovetime = 120




[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 99
flag           = NoBarDisplay

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time            = 99
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 2)
time 			= 99
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 99
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State life 1];体力回復
type = Lifeadd
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
trigger11        = (AnimElem = 11)
value = 55

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 0
value           = 0

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 1070

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
triggerall = var(25) = 0
trigger1        = (!Time)
value           = 123,124
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;[State 0:     PunchSound]
;type            = PlaySnd
;trigger1        = (AnimElem = 5) 煽り。
;value           = 111,221
;volume          = 255
;channel         = -1
;lowpriority     = 0 
;freqmul         = 1.0
;loop            = 0
;pan             = 0
;abspan          = 0


;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 3, 0
pausetime       = 0, 2
guard.pausetime = 0, 0
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S1050, 0
guardsound      = S1050, 0
ground.slidetime    = 30
ground.cornerpush.veloff = -6
ground.hittime  = 35
guard.hittime   = 35
air.hittime     = 35
ground.velocity = -17,0
air.velocity    = -17,0 
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 30
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 50

envshake.time   = 0
envshake.freq   = 0
envshake.ampl   = 0
envshake.phase  = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 10, 0
pausetime       = 0, 30
guard.pausetime = 0, 0
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S1050, 0
guardsound      = S1050, 0
ground.slidetime    = 30
ground.cornerpush.veloff = -6
ground.hittime  = 35
guard.hittime   = 35
air.hittime     = 35
ground.velocity = -13,-7
air.velocity    = -13,-7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 30
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 50

envshake.time   = 0
envshake.freq   = 0
envshake.ampl   = 0
envshake.phase  = 0







[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
trigger11       = (AnimElem = 11)
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
trigger11       = (AnimElem = 11)
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 9)
trigger10        = (AnimElem = 10)
trigger11       = (AnimElem = 11)
anim            = 7050
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;[State 0:     batiSound]
;type            = PlaySnd
;trigger1        = (AnimElem = 1)
;trigger2        = (AnimElem = 2)
;trigger3        = (AnimElem = 3)
;trigger4        = (AnimElem = 4)
;trigger5        = (AnimElem = 5)
;trigger6        = (AnimElem = 6)
;trigger7        = (AnimElem = 7)
;trigger8        = (AnimElem = 8)
;trigger9        = (AnimElem = 9)
;trigger10        = (AnimElem = 10)
;trigger11       = (AnimElem = 11)
;value           = 44,77 
;volume          = 100
;channel         = -1
;lowpriority     = 0 
;freqmul         = 1.0
;loop            = 0
;pan             = 0
;abspan          = 0







;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = AnimTime = 200
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------








;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;





[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1



;---------------------------------------------------------------------------
; アッパー
[Statedef 202]
type            = S
movetype        = A
physics         = S
anim            = 202
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 5
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 7
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     UppercutSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,36,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFD
guardflag       = MA
animtype        = DiagUp;heavy
air.animtype    = DiagUp;heavy
ground.type     = high
priority        = 7, dodge
damage          = 80, 8
pausetime       = 15, 6
guard.pausetime = 30, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 999;30
air.slidetime    = 990
ground.cornerpush.veloff = -7
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -0.1,-17
air.velocity    = -1,-16.5
air.juggle      = 4
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;---------------------------------------------------------------------------
; 超蹴り飛ばし
[Statedef 1128]
type            = S
movetype        = A
physics         = S
anim            = 1128
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 9
y		        = 0


;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 14
length          = 5
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound];蹴り飛ばし掛け声
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,311,ifelse(random> 500,1177,1177))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = DiagUp;heavy
air.animtype    = DiagUp;heavy
ground.type     = high
priority        = 7, dodge
damage          = 120, 10
pausetime       = 11, 7
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 30
ground.cornerpush.veloff = -30
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -17,-5
air.velocity    = -17,-3.8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -17,-10
down.hittime    = 30
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 50
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 超蹴り飛ばし/強
[Statedef 1147]
type            = S
movetype        = A
physics         = S
anim            = 1147
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 12
y		        = 0


;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 14
length          = 15
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound];蹴り飛ばし掛け声
type            = PlaySnd
trigger1        = (!Time)
value           = 60,311
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, dodge
damage          = 100, 10
pausetime       = 11, 7
guard.pausetime = 30, 18
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 50
ground.cornerpush.veloff = -50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -24,-9.5
air.velocity    = -24,-7.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -17,-10
down.hittime    = 30
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 50
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超蹴り飛ばし・超追い討ち
[Statedef 1149]
type            = S
movetype        = A
physics         = S
anim            = 1149
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1



[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 5)
pos             = 70,0


[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 1)
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1

;---------------

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 4)


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 14
length          = 15
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 500:     PosAdd]
type            = PosAdd
trigger1 = (AnimElem = 4)
x               = (P2BodyDist X+45)
y               = (P2BodyDist Y-25)

[State 0:     keriageSound];追加攻撃声
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60,30;7,77
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFD
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 125, 10
pausetime       = 10, 7
guard.pausetime = 30, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 50
ground.cornerpush.veloff = -7
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -27,.5
air.velocity    = -27,.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -17,-10
down.hittime    = 30
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 50
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超蹴り飛ばし・超追い討ち2
[Statedef 1157]
type            = A
movetype        = A
physics         = S
anim            = 1157
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1




[State 500:     PosAdd]
type            = PosAdd
trigger1 = (AnimElem = 4)
x               = (P2BodyDist X+45)

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 3)


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 14
length          = 15
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 2)
y = 0

[State 0:     keriageSound];追加攻撃声
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60,1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 5)
pos             = 70,0



[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 130, 20
pausetime       = 9, 7
guard.pausetime = 30, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 50
ground.cornerpush.veloff = -7
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -28,-5
air.velocity    = -28,-5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -17,-10
down.hittime    = 30
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 50
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3
snap = 50

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 超蹴り飛ばし・超追い討ち3
[Statedef 1199]
type            = A
movetype        = A
physics         = S
anim            = 1199
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1


[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1 = (AnimElem = 4)
x               = (P2BodyDist X+45)

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 5)
pos             = 80,0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 6)
x		        = -10
y		        = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = .7, .7
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = .7, .7
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.7, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.6, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.9, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.9
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7010
ID              = 7010
pos             = -20,60
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.9
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 8050,3
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------


;---------------
;Sound/Effects
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
time            = 14
length          = 15
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 2)
y = 0

[State 0:     keriageSound];追加攻撃声
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 770,770
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     keriageSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 210, 10
pausetime       = 9, 9
guard.pausetime = 30, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 30
ground.cornerpush.veloff = -7
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
down.hittime     = 90
ground.velocity = -1,20
air.velocity    = -1,20
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 40
fall.yvelicity  =　0
fall.xvelicity = 0
air.fall        = 1
down.velocity   = -5,20
down.hittime    = 55
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 50
kill            = 1
givepower       = 50, 10
envshake.time   = 18
envshake.freq   = 80
envshake.ampl   = -19
envshake.phase  = 3
p2stateno = 4362

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; 敵倒れ込動作
[Statedef 4362]
type = S
ctrl = 0
anim = 5080
velset = 0,0
movetype = I
physics = S
sprpriority = 1
poweradd = 0 

[State life 1];ダメージ
type = Lifeadd
trigger1 = (time = 1)
value = -100
kill = 1

[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = -3

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = -3

[State 513]
Type = ChangeState
trigger1 = life = 0
trigger2 = time = 6
trigger3 = enemy,alive=0
trigger4 = alive=0
value = 11111

; 敵倒れ
[Statedef 11111]
type = S
ctrl = 0
anim = 5110
velset = 0,0
movetype = I
physics = S
sprpriority = 1
poweradd = 0 

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 90

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (time = 1)
time 			= 25
freq 			= 60
ampl   = -20
phase  = 20


[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0

[State 514]
Type = Changeanim
trigger1 = time = 70
value = 5120

[State 515]
Type = SelfState
trigger1 = Time = 87
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 弱キック
[Statedef 211]
type            = S
movetype        = A
physics         = S
anim            = 211
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 312,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,2,9))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = low
priority        = 7, dodge
damage          = 26, 1
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -55
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 40, 23
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 界王神達の観戦
[Statedef 5560]
type            = S
movetype        = I
physics         = S
anim            = 5560
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------


;[State 0:     水晶見てる界王神達]
;type = Explod
;trigger1 = Time = 0
;Anim = 3816
;id = 3816
;pos = 152,100
;postype = left
;ownpal = 1
;bindtime = 999
;removetime = 150
;scale = 0.94, 0.45
;sprpriority = 9999999
;supermovetime = 120
;ontop           = 1
;facing = 1

;[State 0:     水晶]
;type = Explod
;trigger1 = Time = 0
;Anim = 3817
;id = 3817
;pos = 102,-500
;postype = left
;ownpal = 1
;bindtime = 999
;removetime = 150
;scale = 3, 3
;sprpriority = 9999999
;supermovetime = 120
;ontop           = 0
;facing = 1

[State 0:    Helper]
type            = Helper
triggerall = teammode = single
triggerall = P2name != "Goku_Super4"
trigger1        = (AnimElem = 1)
helpertype	    = normal
name		    = "kansen"
id              = 5559
pos		        = 79,300
postype         = p1
facing		    = 1
stateno	        = 5559
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 9999
pausemovetime	= 9999
size.xscale	    = .5
size.yscale	    = .4


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State life, 2];セリフスイッチ
type = varset
trigger1 = (AnimElem = 2)
var(3) = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; 界王神達の観戦２
[Statedef 5562]
type            = S
movetype        = A
physics         = S
anim            = 5562
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

;[State 0:    Helper]
;type            = Helper
;trigger1        = (AnimElem = 1)
;helpertype	    = normal
;name		    = "kansen2"
;id              = 6020
;pos		        = 79,300
;postype         = p1
;facing		    = 1
;stateno	        = 6020
;keyctrl	        = 0
;ownpal		    = 1
;supermovetime	= 9999
;pausemovetime	= 9999
;size.xscale	    = .5
;size.yscale	    = .4


[State life, 2];セリフスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(3) = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 煽り
[Statedef 9294]
type            = S
movetype        = I
physics         = S
anim            = 9294
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1)
helpertype	    = normal
name		    = "aori"
id              = 12044
pos		        = 79,300
postype         = p1
facing		    = 1
stateno	        = 12044
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 9999
pausemovetime	= 9999
size.xscale	    = .5
size.yscale	    = .4


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State life, 2];セリフスイッチ
type = varset
trigger1 = (AnimElem = 2)
var(3) = 1

[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; AI発動
[Statedef 10000]
type            = S
movetype        = A
physics         = S
anim            = 10000
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State life 1];体力回復
type = Lifeadd
trigger1 = (AnimElem = 17)
value = 3000

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 17)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 20
pausemovetime   = 20
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, Hit
damage          = 0,0
pausetime       = 0,0
guard.pausetime = 0,0
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S0,0 
guardsound      = S0,0 
ground.slidetime    = 50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -10, -5
air.velocity    = -10, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
fall.velocity   = -15, 0
air.fall        = 1
down.velocity   = -15, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0,0
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10


[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 1)
y = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 17)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 17)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 15
supermove       = 280
pausemovetime   = 280
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 17)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 17)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.2, 1.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 52, 2]
type = VelSet
trigger1 = (Time = 0)
y = 0
y = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 17)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 1)
x               = (P2BodyDist X-100)

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 8,23
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State life, 2];AIスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(20) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 17)
var(9) = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 本気（超本気ではない）
[Statedef 10001]
type            = S
movetype        = A
physics         = S
anim            = 10111
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 4)
time 			= 20
freq 			= 65
ampl   = -5
phase  = 5

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 60

[State 0:     PowerAdd]
type            = PowerAdd
trigger1 = (AnimElem = 4)
value           = -4000

[State life 1];体力回復
type = Lifeadd
trigger1 = (AnimElem = 4)
value = 500



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 20
supermove       = 20
pausemovetime   = 20
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, Hit
damage          = 0,0
pausetime       = 0,0
guard.pausetime = 0,0
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S0,0 
guardsound      = S0,0 
ground.slidetime    = 50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -10, -5
air.velocity    = -10, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
fall.velocity   = -15, 0
air.fall        = 1
down.velocity   = -15, 0
kill            = 0
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0,0
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 4)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 4)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 15
supermove       = 280
pausemovetime   = 280
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 4)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 4)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.3, 1.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 52, 2]
type = VelSet
trigger1 = (Time = 0)
y = 0
y = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 4)
var(9) = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超連続衝撃波

[Statedef 1474]
type            = S
movetype        = A
physics         = S
anim            = 1474
;velset          = 0,0,0
ctrl            = 0
poweradd        = -2000
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (animelem = 1)
time            = 120
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 30,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.2, 1.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------



[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 610,210
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 41,27
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
value           = 8989,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 1)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
trigger11        = (AnimElem = 31)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
anim            = 8883
ID              = 8883
pos             = 90,-40
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay

[State 0:    Super effect]
type            = Explod
trigger1        = time = 5
anim            = 6500
ID              = 6500
pos		        = 17,-80
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = time = 5
anim            = 6501
ID              = 6501
pos		        = 17,-80
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 30
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 30
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 30
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 10
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -80
hitsound        = -1;S8000, 1
guardsound      = -1;S8000, 1
ground.slidetime    = 24
ground.cornerpush.veloff = -10
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -7, 0
air.velocity    = -7, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -5, 0
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 0
getpower        = 0, 0
givepower       = 50, 5
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -25
envshake.phase  = 5

;------------Comboing---


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 12)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 18)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 27)
trigger10        = (AnimElem = 30)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, dodge
damage          = 8, 1
pausetime       = 3, 1
guard.pausetime = 0, 9
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -64
hitsound        = -1;S8000, 1
guardsound      = -1;S8000, 1
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -10, 0
air.velocity    = -10, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -3, 0
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 0
getpower        = 0, 0
givepower       = 10, 2
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3




;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 7)
trigger3        = (AnimElem = 10)
trigger4        = (AnimElem = 13)
trigger5        = (AnimElem = 16)
trigger6        = (AnimElem = 19)
trigger7        = (AnimElem = 22)
trigger8        = (AnimElem = 25)
trigger9        = (AnimElem = 28)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 35, 10
pausetime       = 0, 7
guard.pausetime = 0, 9
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -59
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -10, 0
air.velocity    = -10, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -3, 0
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 1
getpower        = 0, 0
givepower       = 30, 5
envshake.time   = 10
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 4


;------------Comboing---

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 31)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 80, 15
pausetime       = 0, 6
guard.pausetime = 0, 30
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -80
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 22
ground.cornerpush.veloff = -5
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -24, -7.5
air.velocity    = -24, -7.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -5, 0
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 1
getpower        = 0, 0
givepower       = 50, 5
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5

;------------Comboing---

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 31, >= 1 && AnimElem = 33, < 5
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:     atatta]
type            = ChangeState
trigger1 = AnimElem = 31, >= 1 && AnimElem = 32, < 5
trigger1        = movehit
value           = 2121
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超絶・連続衝撃波;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 10005]
type            = S
movetype        = A
physics         = S
anim            = 10005
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (animelem = 16)
time		    = 400
add		        = -35,-35,-35
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (animelem = 3)
time            = 300
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 30,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:		Helper]
type			= Helper
trigger1		= (Time > 100) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 100) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 100) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 3)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.3, 1.3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 3)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.4, 1.4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------



[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 9,17
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 41,27
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 76)
trigger2        = (AnimElem = 80)
trigger3        = (AnimElem = 84)
trigger4        = (AnimElem = 88)
trigger5        = (AnimElem = 92)
trigger6        = (AnimElem = 96)
value           = 8989,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
trigger30        = (AnimElem = 74)
trigger31        = (AnimElem = 76)
trigger32        = (AnimElem = 80)
trigger33        = (AnimElem = 84)
trigger34        = (AnimElem = 88)
trigger35        = (AnimElem = 92)
trigger36        = (AnimElem = 96)
value           = 8989,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 76)
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
trigger30        = (AnimElem = 74)
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 76)
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 3)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5

[State 0:     Sound]
type            = PlaySnd
trigger1        = time = 10
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 16)
value           = 610,210
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 76)
value           = 55,564
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
trigger5        = (AnimElem = 96)
value           = 1120,550
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
trigger5        = (AnimElem = 96)
time 			= 15
freq 			= 60
ampl   = -25
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 74)
trigger2        = (AnimElem = 76)
trigger3        = (AnimElem = 80)
trigger4        = (AnimElem = 84)
trigger5        = (AnimElem = 88)
trigger6        = (AnimElem = 92)
trigger7        = (AnimElem = 96)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
value           = 255,255,255
time            = 2
under           = 0


[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
trigger5        = (AnimElem = 96)
anim            = 8883
ID              = 8883
pos             = 90,-40
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.1, 2.1
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 76)
anim            = 8883
ID              = 8883
pos             = 90,-40
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.1, 2.1
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
trigger30        = (AnimElem = 74)
anim            = 8883
ID              = 8883
pos             = 90,-40
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 4
supermove       = 999
pausemovetime   = 999
scale           = 2.1, 2.1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
trigger5        = (AnimElem = 96)
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.1, 3.1
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 76)
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
trigger30        = (AnimElem = 74)
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 76)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
trigger26        = (AnimElem = 66)
trigger27        = (AnimElem = 68)
trigger28        = (AnimElem = 70)
trigger29        = (AnimElem = 72)
trigger30        = (AnimElem = 74)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
trigger5        = (AnimElem = 96)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 100
flag           = NoBarDisplay

[State 0:    Super effect]
type            = Explod
trigger1        = time = 5
anim            = 6500
ID              = 6500
pos		        = 17,-80
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = time = 5
anim            = 6501
ID              = 6501
pos		        = 17,-80
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 100
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 100
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 500
supermove       = 500
pausemovetime   = 500
scale           = 1.1,1.1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 500
supermove       = 500
pausemovetime   = 500
scale           = 0.9,0.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 6
guard.pausetime = 0, 10
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -80
hitsound        = -1;S8000, 1
guardsound      = -1;S8000, 1
ground.slidetime    = 24
ground.cornerpush.veloff = -10
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -8, -1
air.velocity    = -8, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -5, 0
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 0
getpower        = 0, 0
givepower       = 50, 5
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -25
envshake.phase  = 5

;------------Comboing---


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
trigger2        = (AnimElem = 18)
trigger3        = (AnimElem = 20)
trigger4        = (AnimElem = 22)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 26)
trigger7        = (AnimElem = 28)
trigger8        = (AnimElem = 30)
trigger9        = (AnimElem = 32)
trigger10        = (AnimElem = 34)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 38)
trigger13        = (AnimElem = 40)
trigger14        = (AnimElem = 42)
trigger15        = (AnimElem = 44)
trigger16        = (AnimElem = 46)
trigger17        = (AnimElem = 48)
trigger18        = (AnimElem = 50)
trigger19        = (AnimElem = 52)
trigger20        = (AnimElem = 54)
trigger21        = (AnimElem = 56)
trigger22        = (AnimElem = 58)
trigger23        = (AnimElem = 60)
trigger24        = (AnimElem = 62)
trigger25        = (AnimElem = 64)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, dodge
damage          = 30, 7
pausetime       = 3, 6
guard.pausetime = 3, 10
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -64
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 25
ground.cornerpush.veloff = -1
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -4, 0
air.velocity    = -4, -1.1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -4, -2
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 0
numhits         = 1
getpower        = 0, 0
givepower       = 10, 2
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 66)
trigger2        = (AnimElem = 68)
trigger3        = (AnimElem = 70)
trigger4        = (AnimElem = 72)
trigger5        = (AnimElem = 74)
trigger6        = (AnimElem = 76)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, dodge
damage          = 30, 7
pausetime       = 2, 6
guard.pausetime = 3, 10
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -64
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 25
ground.cornerpush.veloff = -1
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -11, -5.1
air.velocity    = -11, -1.1
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -4, -2
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 0
numhits         = 1
getpower        = 0, 0
givepower       = 10, 2
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

;------------Comboing---

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 76)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, dodge
damage          = 30, 7
pausetime       = 5, 8
guard.pausetime = 5, 10
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -64
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 15
ground.cornerpush.veloff = -1
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -11, 0
air.velocity    = -11, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -3, -1
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 1
getpower        = 0, 0
givepower       = 10, 2
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 80)
trigger2        = (AnimElem = 84)
trigger3        = (AnimElem = 88)
trigger4        = (AnimElem = 92)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 80, 20
pausetime       = 9, 11
guard.pausetime = 9, 30
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -80
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 22
ground.cornerpush.veloff = -5
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -29, -7
air.velocity    = -29, -1.4
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -29, -7
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 1
getpower        = 0, 0
givepower       = 50, 5
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 96)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 100, 20
pausetime       = 9, 11
guard.pausetime = 9, 30
sparkno         = S7006
guard.sparkno   = S7007
sparkxy         = -10, -80
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 22
ground.cornerpush.veloff = -5
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -29, -8
air.velocity    = -29, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -29, -7
down.hittime    = 0
down.bounce     = 0
ID              = 1474
chainID         = -1
kill            = 1
numhits         = 1
getpower        = 0, 0
givepower       = 50, 5
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5

;------------Comboing---

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = movehit
trigger1 = AnimElem = 96, >= 1 && AnimElem = 97, < 5
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:     atatta]
type            = ChangeState
trigger1 = AnimElem = 96, >= 1 && AnimElem = 97, < 5
trigger1        = movehit
value           = 2121
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






[Statedef 2121];画面切り替わり中動作
type            = S
movetype        = I
physics         = S
anim            = 2121
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------



[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 1, >= 1 && AnimElem = 3, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = AnimElem = 3
x               = (P2BodyDist X>50)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x               = 400

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 4)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x               = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 500,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1




;---------------------------------------------------------------------------
; かかと落とし
[Statedef 213]
type            = S
movetype        = A
physics         = S
anim            = 213
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 4
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,30,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 7, dodge
damage          = 40, 3
pausetime       = 9,8
guard.pausetime = 10,30
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 11
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAF
guardflag       = H
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, dodge
damage          = 50, 3
pausetime       = 14, 12
guard.pausetime = 20, 24
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 12
envshake.freq   = 77
envshake.ampl   = -12
envshake.phase  = 3
;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 強キック
[Statedef 214]
type            = S
movetype        = A
physics         = S
anim            = 214
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,30,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 40, 5
pausetime       = 15, 20
guard.pausetime = 15, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -17, -78
hitsound        = S210, 2
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5,0
air.velocity    = -5,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 55, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; ふっ飛ばし
[Statedef 2104]
type            = S
movetype        = A
physics         = S
anim            = 2104
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
x		        = 10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
x		        = 1
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 30
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60, 1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, dodge
damage          = 135, 30
pausetime       = 18, 18
guard.pausetime = 10, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -65
hitsound        = S420, 0
guardsound      = S66, 66
ground.slidetime    = 20
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -15,-8
air.velocity    = -15,20
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 55, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 15

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;---------------------------------------------------------------------------
; 後ろ蹴り Kick
[Statedef 215]
type            = S
movetype        = A
physics         = S
anim            = 215
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 14
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
triggerall = var(2) = 0
triggerall = var(25) = 0
type            = AfterImage
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NP
hitflag         = MAF
guardflag       = MA
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 80, 12
pausetime       = 22, 17
guard.pausetime = 19, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S210, 2
guardsound      = S66, 66
ground.slidetime= 70
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -23,-7
air.velocity    = -23,-7
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 50, 30
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 7

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; 超本気！！!（普通　→　超本気）
[Statedef 1977]
type            = S
movetype        = A
physics         = S
anim            = 1977
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 50)
value           = 55,5555
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State life,3]
type = varset
trigger1 = (AnimElem = 24)
var(9) = 1

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 28)
var(2) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 49)
var(25) = 1

[State 0:     PowerAdd]
type            = PowerAdd
trigger1 = (AnimElem = 50)
value           = -9000

[State life 1];体力回復
type = Lifeadd
trigger1 = (AnimElem = 50)
value = 800

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 27)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 49)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 14
value           = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 6501
ID              = 6501
pos		        = 30,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.5, 3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 49)
anim            = 6501
ID              = 6501
pos		        = 5,-75
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.5, 3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 26) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 27) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 2.1, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (animelem = 26)
time 			= 30
freq 			= 70
ampl   = -17
phase  = 5

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
trigger23        = (animelem = 49)
time 			= 10
freq 			= 72
ampl   = -18
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
trigger23        = (animelem = 49)
value           = 255,255,255
time            = 1
under           = 0


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1.3,1.3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1.6,.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Sound/Effects
;---------------

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 555,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 555,1
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 27)
value           = 555,2
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 3200,12
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 3200,12
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 27)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 50)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 49) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 2.3, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 49)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 26)
attr            = S, NP
hitflag         = MD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 33
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -20
hitsound        = S213, 233
guardsound      = S266, 663
ground.slidetime= 70
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -3,0
air.velocity    = -3,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 70
envshake.ampl   = -20
envshake.phase  = 6
ground.cornerpush.veloff = 0

;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
attr            = S, NP
hitflag         = MAFPD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S2140, 222
guardsound      = S664, 664
ground.slidetime= 70
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -4,0
air.velocity    = -4,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 7
ground.cornerpush.veloff = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (animelem = 49)
attr            = S, NP
hitflag         = MAFPD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 10
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S66, 66
guardsound      = S66, 66
ground.slidetime= 70
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -13,0
air.velocity    = -13,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 7
ground.cornerpush.veloff = 0

[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 49)
value           = SCA
time            = 80


;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1






; 超・本気２！！!（本気　→　超本気）
[Statedef 1989]
type            = S
movetype        = A
physics         = S
anim            = 1989
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 50)
value           = 55,5555
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State life,3]
type = varset
trigger1 = time = 5
var(9) = 1

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 160) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 28)
var(2) = 1

[State life, 2];本気スイッチ
type = varset
trigger1 = (AnimElem = 49)
var(25) = 1

[State 0:     PowerAdd]
type            = PowerAdd
trigger1 = (AnimElem = 50)
value           = -9000

[State life 1];体力回復
type = Lifeadd
trigger1 = (AnimElem = 50)
value = 1500

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     1]
type            = NotHitBy
trigger1        = (AnimElem = 50)
value           = SCA
time            = 80

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >190) && (timemod = 205,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 27)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 49)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 14
value           = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 6501
ID              = 6501
pos		        = 30,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.5, 3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 49)
anim            = 6501
ID              = 6501
pos		        = 5,-75
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.5, 3
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 26) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 27) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 2.1, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (animelem = 26)
time 			= 30
freq 			= 70
ampl   = -17
phase  = 5

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
trigger23        = (animelem = 49)
time 			= 10
freq 			= 72
ampl   = -18
phase  = 5

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
trigger23        = (animelem = 49)
value           = 255,255,255
time            = 1
under           = 0


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1.3,1.3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 27)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 9999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 90
supermove       = 280
pausemovetime   = 280
scale           = 1.6,.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Sound/Effects
;---------------

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 99,53
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 777,43
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 27)
value           = 3000,5
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 3200,12
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 3200,12
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 27)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 50)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 49) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 2.3, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 49)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 26)
attr            = S, NP
hitflag         = MD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 33
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -20
hitsound        = S213, 233
guardsound      = S266, 663
ground.slidetime= 70
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -3,0
air.velocity    = -3,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 70
envshake.ampl   = -20
envshake.phase  = 6
ground.cornerpush.veloff = 0

;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (animelem = 27)
trigger2        = (animelem = 28)
trigger3        = (animelem = 29)
trigger4        = (animelem = 30)
trigger5        = (animelem = 31)
trigger6        = (animelem = 32)
trigger7        = (animelem = 33)
trigger8        = (animelem = 34)
trigger9        = (animelem = 35)
trigger10        = (animelem = 36)
trigger11        = (animelem = 37)
trigger12       = (animelem = 38)
trigger13        = (animelem = 39)
trigger14        = (animelem = 40)
trigger15        = (animelem = 41)
trigger16        = (animelem = 42)
trigger17        = (animelem = 43)
trigger18        = (animelem = 44)
trigger19        = (animelem = 45)
trigger20        = (animelem = 46)
trigger21        = (animelem = 47)
trigger22        = (animelem = 48)
attr            = S, NP
hitflag         = MAFPD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 1
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S2140, 222
guardsound      = S664, 664
ground.slidetime= 70
ground.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -4,0
air.velocity    = -4,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 7
ground.cornerpush.veloff = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (animelem = 49)
attr            = S, NP
hitflag         = MAFPD
guardflag       = 
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 10
guard.pausetime = 0, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S66, 66
guardsound      = S66, 66
ground.slidetime= 70
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -13,0
air.velocity    = -13,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 0
envshake.time   = 30
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 7
ground.cornerpush.veloff = 0

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1





;-------------------------------------------------------------------------------------------------
; しゃがみ弱パンチ
[Statedef 300]
type            = C
movetype        = A
physics         = C
anim            = 300
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
kill = 1

;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------



[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,9,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = L
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 1
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 50, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;-----------------------------------------------------------------------------------
; しゃがみ強パンチ
[Statedef 301]
type            = C
movetype        = A
physics         = C
anim            = 301
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
kill = 1

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = L
animtype        = Heavy
air.animtype    = Heavy
priority        = 7,dodge
damage          = 45, 3
pausetime       = 15, 18
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S210, 2
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 17
guard.hittime   = 14
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = Time = 0
x		        = 0
y		        = 0


;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------
; しゃがみ弱キック
[Statedef 302]
type            = C
movetype        = A
physics         = C
anim            = 302
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 312,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,9,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = L
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 25, 2
pausetime       = 6, 7
guard.pausetime = 6, 7
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -5
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 310
chainID         = -1
numhits         = 1
getpower        = 55, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 3

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------
; しゃがみ強キック
[Statedef 303]
type            = C
movetype        = A
physics         = C
anim            = 303
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 312:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = L
animtype        = High
air.animtype    = High
priority        = 7,dodge
damage          = 45, 3
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S7, 466
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.velocity   = -2, -6
ground.type = trip
air.velocity   = -1, -2
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 50, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -22
envshake.phase  = 10


;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1
;---------------------------------------------------------------------------
; ジャンプ弱パンチ
[Statedef 400]
type            = A
movetype        = A
physics         = A
anim            = 400
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 400:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 400:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 400:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 400:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4, 3
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S200, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -2, 1
air.juggle      = 1
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 2
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 400:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; ジャンプ強パンチ
[Statedef 401]
type            = A
movetype        = A
physics         = A
anim            = 401
;velset          = 0,0
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1


;---------------
;Effects/Sound
;---------------

[State 401:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,2,ifelse(random> 500,1,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 45, 4
pausetime       = 15, 18
guard.pausetime = 10, 11
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S201, 1
guardsound      = S66, 66
ground.slidetime    = 15
ground.hittime  = 15
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -4, 0
air.velocity    = 0, 3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 2
down.hittime    = 0
down.bounce     = 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 50, 0
givepower       = 15, 0
envshake.time   = 10
envshake.freq   = 75
envshake.ampl   = -15
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; ジャンプ弱キック
[Statedef 402]
type            = A
movetype        = A
physics         = A
anim            = 402
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 312,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S21, 421
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -3, 1.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 45, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2


;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1


; ドラゴンラッシュ１
[Statedef 995]
type            = A
movetype        = A
physics         = A
anim            = 995
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------



[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = -1.5
x = 4

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 312,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -0, -20
hitsound        = S21, 421
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4.6, 1.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 35, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

; ドラゴンラッシュ2
[Statedef 991]
type            = A
movetype        = A
physics         = A
anim            = 991
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     Elec]
type            = Explod
trigger1        = ifelse(random>500,((time >1) && (timemod = 2,0)) ,ifelse(random> 500,((time >16) && (timemod = 72,0)) ,((time >16) && (timemod = 72,0)) ))
anim            = 7047
ID              = 7036
pos             = 15,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = .7, .7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ifelse(random>500,((time >1) && (timemod = 2,0)) ,ifelse(random> 500,((time >16) && (timemod = 72,0)) ,((time >16) && (timemod = 72,0)) ))
anim            = 7050
ID              = 7036
pos             = 14,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ifelse(random>500,((time >1) && (timemod = 2,0)) ,ifelse(random> 500,((time >16) && (timemod = 72,0)) ,((time >16) && (timemod = 72,0)) ))
anim            = 7048
ID              = 7036
pos             = 15,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = .3, .3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = time = 3
value           = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x = 4

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 312,2
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,4
guard.pausetime = 5, 5
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -40, -70
hitsound        = S21, 421
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4, 1.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1


; ドラゴンラッシュ3
[Statedef 990]
type            = A
movetype        = A
physics         = A
anim            = 990
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)	 
y = -1
x = 4

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,32
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S65, 22
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -4.4, 0.7
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

; ドラゴンラッシュ4
[Statedef 993]
type            = A
movetype        = A
physics         = A
anim            = 993
;velset          = 0,-1
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = -1

[State 0:     Screen Flash]
type            = EnvColor
triggerall = var(25) = 1
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = -1.3
x = 4.2

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 64,32
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7,dodge
damage          = 25, 2
pausetime       = 4,3
guard.pausetime = 5, 5
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -75
hitsound        = S61, 22
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -5, -1.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 1
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 40, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -8
envshake.phase  = 2

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1


;---------------------------------------------------------------------------
; ジャンプ強キック
[Statedef 403]
type            = A
movetype        = A
physics         = A
anim            = 403
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 403:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 4
length          = 4
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,2,ifelse(random> 500,30,30))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,dodge
damage          = 45, 4
pausetime       = 15, 18
guard.pausetime = 9, 10
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S201, 1
guardsound      = S66, 66
ground.slidetime    = 15
ground.hittime  = 15
guard.hittime   = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -4, 0
air.velocity    = 0, 12
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 5
air.fall        = 0
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 50, 0
givepower       = 15, 0
envshake.time   = 10
envshake.freq   = 75
envshake.ampl   = -15
envshake.phase  = 4

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

; 空中ふっ飛ばし
[Statedef 2108]
type            = A
movetype        = A
physics         = A
anim            = 2108
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 1

[State 0:     Screen Flash]
type            = EnvColor
triggerall = var(25) = 1
trigger1        = (animelem = 3)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
y		        = -1
x = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
y		        = -2
x = 3

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
y		        = -3
x = 5

;---------------


[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 24
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 60,311
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, dodge
damage          = 135, 20
pausetime       = 16, 14
guard.pausetime = 10, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -65
hitsound        = S454, 454
guardsound      = S66, 66
ground.slidetime    = 20
ground.cornerpush.veloff = -30
air.cornerpush.veloff = -30
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -18,-5
air.velocity    = -18,-5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 55, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 15

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
; 蹴り落とし　
[Statedef 404]
type            = A
movetype        = A
physics         = A
anim            = 404
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
y		        = -10

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,30,ifelse(random> 500,2,1))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 120, 15
pausetime       = 17, 17
guard.pausetime = 20, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S1156, 23
guardsound      = S66, 66 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -1, 20;6
air.velocity    = -1, 20;6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 10
air.fall        = 1
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 100, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
snap = 20,100



;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; 叩き落とし
[Statedef 405]
type            = A
movetype        = A
physics         = A
anim            = 405
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
y		        = -1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 405:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60,36
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = A, NA
hitflag         = MAF
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 170, 25
pausetime       = 20, 13
guard.pausetime = 20, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -25
hitsound        = S420, 0
guardsound      = S66, 66 
ground.slidetime    = 30
ground.hittime  = 15
guard.hittime   = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -20, 55
air.velocity    = -20, 55
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 5
air.fall        = 1
down.velocity   = 0, 10
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 100, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 5
snap = 20,80

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;ジャンプ（アッパー追い討ち用）
[Statedef 416]
type            = A
movetype        = I
physics         = N
anim            = 416
velset          = 5,-45
ctrl            = 0
poweradd        = 50
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, VarSet]
type            = VarSet
trigger1        = Time = 0
var(10)         = 1

[State 0, VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x               = 0
y               = -5

[State 0, ChangeState]
type            = ChangeState
trigger1        = AnimTime = 0
value           = 50
ctrl            = 1

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 4)
value           = 1


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 10
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 2121,2

;---------------
;Effects
;---------------

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = 0,30
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = 0,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (Time = 0)
anim            = 7025
ID              = 705
pos             = 0,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------

;---------------
[state 0, End]
type            = ChangeState
trigger1        = Pos Y >= 1 
value           = 52
ctrl            = 1

;---------------------------------------------------------------------------
; gogogogogo
[Statedef 5903]
type            = S
movetype        = A
physics         = S
anim            = 5903
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1 = (AnimElem = 1)
trigger2 = (AnimElem = 2)
trigger3 = (AnimElem = 3)
trigger4 = (AnimElem = 4)
trigger5 = (AnimElem = 5)
trigger6 = (AnimElem = 6)
trigger7 = (AnimElem = 7)
trigger8 = (AnimElem = 8)
trigger9 = (AnimElem = 9)
trigger10 = (AnimElem = 10)
trigger11 = (AnimElem = 11)
attr            = S, SA
hitflag         = MA
guardflag       = 
animtype        = diagup
air.animtype    = diagup
priority        = 7,dodge
damage          = 100, 10
pausetime       = 1, 1
guard.pausetime = 7, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S2120, 1
guardsound      = S2021, 2 
ground.slidetime    = 17
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -18,-10
air.velocity    = -18,-10
air.juggle      = 0
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 15
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 0

;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = parent,stateno != 705

; gogogogogo
[Statedef 5923]
type            = S
movetype        = A
physics         = S
anim            = 5903
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1 = (AnimElem = 1)
trigger2 = (AnimElem = 2)
trigger3 = (AnimElem = 3)
trigger4 = (AnimElem = 4)
trigger5 = (AnimElem = 5)
trigger6 = (AnimElem = 6)
trigger7 = (AnimElem = 7)
trigger8 = (AnimElem = 8)
trigger9 = (AnimElem = 9)
trigger10 = (AnimElem = 10)
trigger11 = (AnimElem = 11)
attr            = S, SA
hitflag         = MA
guardflag       = 
animtype        = diagup
air.animtype    = diagup
priority        = 7,dodge
damage          = 100, 10
pausetime       = 1, 1
guard.pausetime = 7, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S2120, 1
guardsound      = S2021, 2 
ground.slidetime    = 17
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -18,-10
air.velocity    = -18,-10
air.juggle      = 0
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 15
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 0

;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = time = 10

;---------------------------------------------------------------------------
; Throw - Attempt　投げ　乱舞系の元ネタに使えそうだ。
[Statedef 600]
type            = S
movetype        = A
physics         = S
anim            = 600
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 8,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 40,0
hitsound        = S600,1
p1stateno       = 605
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------


; Throw - Success - P1 State
[Statedef 605]
type            = S
movetype        = A
physics         = S
anim            = 601
velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 9)
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 12)
x		        = 12
y		        = 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------


[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 9)
value           = 210, 0
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 15)
value           = 201, 0
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 17) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 16)
value           = 60,36
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 20
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 70,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
attr            = S, NA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 23, 5
pausetime       = 5, 7
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, 0
air.velocity    = 0, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 90

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 100, 5
pausetime       = 10, 7
guard.pausetime = 7,8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -15,-6.4
air.velocity    = -15,-6.4
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 15

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------------------------------------------------------------------------
; 投げ２　
[Statedef 512]
type            = S
movetype        = A
physics         = S
anim            = 512
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 5
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 8,50
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
numhits         = 0
snap            = 40,0
hitsound        = S600,1
p1stateno       = 522
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------


; 投げ２発動
[Statedef 522]
type            = S
movetype        = A
physics         = S
anim            = 522
velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 16)
x		        = 7
y		        = -5


[State 0:     Dust Left]
type            = Explod
trigger1        = (AnimElem = 16)
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 7
y		        = -3

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 20)
x		        = 3
y		        = -2

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------


[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
trigger2        = (AnimElem = 12)
trigger3        = (AnimElem = 17)
trigger4        = (AnimElem = 21)
value           = 201, 0
channel         = -1
volume          = 200
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60, 1
channel         = -1
volume          = 255
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 777, 333
channel         = -1
volume          = 255
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 16)
value           = 9000, 0
channel         = -1
volume          = 255
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 201, 0
channel         = -1
volume          = 255
lowpriority     = 1 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     otoSound]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 500, 0
channel         = -1
volume          = 255
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     Turn]
type            = Turn
trigger1        = (AnimElem = 9)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 8)
x               = (P2BodyDist X+85)

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 5) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 70
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 60,60,60
palcontrast     = 120,120,120
palpostbright   = 10,10,10
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 60,0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 9)
pos             = 70,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
trigger2        = (AnimElem = 13)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 35, 5
pausetime       = 1, 40;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 35, 5
pausetime       = 3, 4;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, -6
air.velocity    = -3, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 21)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 90, 5
pausetime       = 10, 11;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S420, 0
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -14, -9
air.velocity    = -14, -9
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 15


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 6
pausetime       = 10, 7
guard.pausetime = 7,8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -3,0
air.velocity    = -3,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 15
p2stateno       = 22023

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------------------------------------------------------------------------
; コマンド投げ　メテオスマッシュ
[Statedef 2201]
type            = S
movetype        = A
physics         = S
anim            = 2201
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------



;---------------
;Effects/Hit Details
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 20
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 0,30
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
numhits         = 0
snap            = 40,0
hitsound        = S600,1
p1stateno       = 2202
p2facing        = 1
getpower        = 20, 3
givepower       = 20, 3

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; メテオスマッシュ発動
[Statedef 2202]
type            = S
movetype        = A
physics         = S
anim            = 2202
velset          = 0,0,0
ctrl            = 0
poweradd        = 400
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = time < 35 
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 6
y		        = 0

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 0
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 0
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 1)
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 11)
time 			= 10
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 10
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 11)
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 12)
x		        = 80
y		        = 0


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 13)
pos             = 60,-6

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 13)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 28)
x		        = 10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 25
y		        = 0

[State 52, 1]
type = PosSet
trigger1 = (AnimElem = 27)
x = 0
y = 0

[State 52, 1]
type = PosSet
trigger1 = (AnimElem = 28)
x = 0
y = 0


[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 12)

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 27)

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 12)
y               = (P2BodyDist Y-5)


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 27)
pos             = 140,-2

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 27)
y               = (P2BodyDist Y+45)
x               = (P2BodyDist X-100)

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 26)
x		        = 100
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 7
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 6)
x		        = 0
y		        = 0


[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------


[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 60,1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 28)
value           = 777,333
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 12) 
trigger2        = (AnimElem = 26) 
trigger3        = (AnimElem = 35) 
value           = 255,255,255
time            = 2
under           = 0



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 5) 
trigger3        = (AnimElem = 28) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (AnimElem = 28) 
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = MakeDust 
trigger1        = (AnimElem = 28) 
trigger2        = (AnimElem = 29) 
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 12)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 6)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 60,78
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 13)
trigger2        = (AnimElem = 15)
trigger3        = (AnimElem = 17)
trigger4        = (AnimElem = 19)
value           = 200,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Effects/Hit Details
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 150
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 50,-5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 50, 105
pausetime       = 5, 11
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -7, -2
air.velocity    = -7, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 65
envshake.ampl   = -20
envshake.phase  = 20

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 100, 105
pausetime       = 15, 5
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S454, 454
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -15, -17
air.velocity    = -15, -17
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 75
envshake.ampl   = -25
envshake.phase  = 25
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14)
trigger2        = (AnimElem = 16)
trigger3        = (AnimElem = 18)
trigger4        = (AnimElem = 20)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 35, 105
pausetime       = 3, 2
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S200, 1
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = 0, -1.35
air.velocity    = 0, -1.35
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 5
envshake.freq   = 64
envshake.ampl   = -10
envshake.phase  = 3
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem =24)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 155, 105
pausetime       = 17, 20
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -15, 17
air.velocity    = -15, 17
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 75
envshake.ampl   = -25
envshake.phase  = 25
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 26)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 0, 20
guard.pausetime = 7,8
sparkno         = S70080 
guard.sparkno   = S70887
sparkxy         = -25, -50
hitsound        = S8050, 3
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = 7, -1
air.velocity    = 7, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -16, -5
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 75
envshake.ampl   = -35
envshake.phase  = 35

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 29)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 100, 105
pausetime       = 15, 15
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S210, 2
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -17, -4.5
air.velocity    = -17, -4.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -16, -5
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 65
envshake.ampl   = -20
envshake.phase  = 20
snap = 50

[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 35)
anim            = 8883
ID              = 8883
pos             = 90,-40;20,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 35) 
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 35) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 35)
attr            = C, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,dodge
damage          = 200, 35
pausetime       = 5, 12
guard.pausetime = 5, 12
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S8000, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -20,-5.1
air.velocity    = -20,-5.1
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 50, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 34
envshake.phase  = 28

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 35
value           = 8050, 2
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0



[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ranbu;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;

;---------------------------------------------------------------------------
; コマンド投げ　メテオスマッシュ（弱）
[Statedef 2288]
type            = S
movetype        = A
physics         = S
anim            = 2288
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------



;---------------
;Effects/Hit Details
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 20
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 3
attr            = S, NT
priority        = 7, miss
sparkno         = -1
pausetime       = 0,30
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
numhits         = 0
snap            = 40,0
hitsound        = S600,1
p1stateno       = 2289
p2facing        = 1
getpower        = 20, 3
givepower       = 20, 3

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Throw - Success - P1 State・メテオスマッシュ発動（弱）
[Statedef 2289]
type            = S
movetype        = A
physics         = S
anim            = 2289
velset          = 0,0,0
ctrl            = 0
poweradd        = 550
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 0
y		        = 0

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 0
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 0
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 1)
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 13)
x		        = 0
y		        = 0




[State 52, 1]
type = PosSet
trigger1 = (AnimElem = 15)
x = 0
y = 0

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 15)

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 12)
y               = (P2BodyDist Y-5)

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 15)
x               = (P2BodyDist X-5)

[State 52, 2]
type = PosSet
trigger1 = (AnimElem = 15)
y = 0


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 15)
pos             = 1,-22



[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 17)
x		        = 40
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 18)
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 3
y		        = 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------


[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60,1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Dust Left]
type            = Explod
trigger1        = (AnimElem = 16) 
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = MakeDust 
trigger1        = (AnimElem = 17) 
trigger2        = (AnimElem = 18) 
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 15)
value           = 66,78
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Effects/Hit Details
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 80
length          = 15
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 50,-5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 100, 105
pausetime       = 13, 5
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S454, 454
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = 0, -18
air.velocity    = 0, -18
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 75
envshake.ampl   = -25
envshake.phase  = 25
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1
snap = 35,-40


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem =13)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 150, 105
pausetime       = 16, 16
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = 0, 17
air.velocity    = 0, 17
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 75
envshake.ampl   = -25
envshake.phase  = 25
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = C, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,dodge
damage          = 200, 35
pausetime       = 17, 17
guard.pausetime = 5, 12
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S420, 0
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -20,-7
air.velocity    = -20,-7
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1
getpower        = 0, 0
givepower       = 50, 3
envshake.time   = 17
envshake.freq   = 75
envshake.ampl   = 34
envshake.phase  = 28
snap = 40,-30


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 12
value           = 60, 311
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 15
value           = 1670, 0
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 9
trigger2        = animelem = 15
value           = 255,255,255
time            = 3
under           = 1

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 9
trigger2        = animelem = 15
value           = 330, 330
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 16
value           = 60, 36
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 1966
ctrl		    = 0


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ranbu;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;---------------------------------------------------------------------------
; 龍拳
[Statedef 6868]
type            = S
movetype        = A
physics         = S
anim            = 6868
;velset          = 0,0,0
ctrl            = 0
poweradd        = -3000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 1)
time 			= 20
freq 			= 70
ampl   = -25
phase  = 5


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound];外れ声
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 330,65
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 3)
value = SCA
time = 56




[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 99
pausemovetime   = 99
scale           = .77, .77
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 99
pausemovetime   = 99
scale           = 1.0,1.0
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 99
pausemovetime   = 99
scale           = 1.0,0.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 55
flag           = NoBarDisplay


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 55
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 55
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 56
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 25
length          = 5
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 5
attr            = S, NT
priority        = 7, dodge 
sparkno         = -1
hitflag         = M
guardflag       = 
pausetime       = 20,200
numhits         = 0
snap            = 70,0
hitsound        = S600,1
guardsound      = S66, 66
p1stateno       = 6869
p2facing        = 1

;---------------

[State 0:     BGPalFX];超界王拳背景
type            = BGPalFX
triggerall = var(25) = 1
trigger1 = (AnimElem = 5)
time		    = 30
add		        = -45,-45,-45
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 龍拳・開始 p1 State
[Statedef 6869]
type            = S
movetype        = A
physics         = S
anim            = 6869
velset          = 0,0,0
ctrl            = 0
poweradd        = -6000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 9027, 1]
type = Assertspecial
trigger1 = (1)
flag = NOfg

[State life, 2];龍拳スイッチ
type = varset
trigger1 = time = 0
var(30) = 1

[State life,3]
type = varset
trigger1 = time = 0
var(26) = 0

[State life,3]
type = varset
trigger1 = time = 0
var(31) = 1


;最後だ！カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 4)
Anim = 6733
id = 6733
pos = 0, 0
postype = back
ownpal = 1
bindtime = -1
removetime = 130
scale = .7,.7
sprpriority = -9
supermovetime = 130

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 322,3333
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 645,44
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;龍カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 24)
Anim = 9176
id = 9176
pos = 20, 85
postype = back
ownpal = 1
bindtime = -1
removetime = 185
scale = 1.3,1.3
sprpriority = -2
supermovetime = 185

[State 0:    Explod] ;拳の光
type 			= Explod
trigger1 		= (AnimElem = 29)
anim 			= 7037
ID 			    = 7037
pos 			= 2,-52
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = .1, .1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光
type 			= Explod
trigger1 		= (AnimElem = 29)
anim 			= 7037
ID 			    = 7037
pos 			= 2,-58
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = .9, .1
sprpriority 	= -1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;拳の光
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= 56,30
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 1, 1
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光
type 			= Explod
trigger1 		= (AnimElem = 29)
anim 			= 7037
ID 			    = 7037
pos 			= 16,-20
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 150
supermove       = 150
pausemovetime   = 150
scale 		    = .7, .4
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光
type 			= Explod
trigger1 		= (AnimElem = 29)
anim 			= 7037
ID 			    = 7037
pos 			= 16,-20
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 150
supermove       = 150
pausemovetime   = 150
scale 		    = 1, .5
sprpriority 	= 2
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;拳の光2
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= -7,-62
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 1.7, .2
sprpriority 	= -2
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光1
type 			= Explod
trigger1 		= (AnimElem = 34)
anim 			= 7037
ID 			    = 7037
pos 			= -7,-40
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 1.7, .4
sprpriority 	= -2
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;拳の光2
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= 48,-70
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 1.9, .2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光2
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= 48,-70
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 1.9, .2
sprpriority 	= 1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;拳の光2
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= 48,-10
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 2.9, .8
sprpriority 	= -1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光2
type 			= Explod
trigger1 		= (AnimElem = 39)
anim 			= 7037
ID 			    = 7037
pos 			= 48,-10
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 50
supermove       = 50
pausemovetime   = 50
scale 		    = 2.6, .7
sprpriority 	= 1
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;拳の光3
type 			= Explod
trigger1 		= (AnimElem = 44)
anim 			= 7037
ID 			    = 7037
pos 			= 50,-67
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 10
supermove       = 10
pausemovetime   = 10
scale 		    = 4, 4
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 19)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.3, 1.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0



[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 19)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 48)
anim            = 7014
ID              = 7014
pos             = 0, 0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 2, 2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 39)
value = -9999
kill = 1 

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 48)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2.1, 1.1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 48)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p2
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2.2, 2.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 48)
helpertype	    = normal
name		    = "baku"
id              = 4100
pos		        = 0,-50
postype         = p2
facing		    = 1
stateno	        = 4100
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 9999
pausemovetime	= 9999
size.xscale	    = 2
size.yscale	    = 2

[State 0:     Bind]
type            = TargetBind
trigger1        = time > 478
pos             = -130,9999

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 3)
pos             = 500,0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (AnimElem = 45)
x               = (P2BodyDist X+45)

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 34,340
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 45)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 15
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 46)
trigger1        = (AnimElem = 47)
x		        = 0
y		        = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 19)
time 			= 20
freq 			= 70
ampl   = -25
phase  = 5

[State 0:     cutin]
type            = Explod
trigger1        = (AnimElem = 19)
anim            = 29962
ID              = 29962
pos             = 160,-130
postype         = p1
facing          = 1
vfacing         = 999
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 270
supermove       = 270
pausemovetime   = 270
scale           = .7, .7
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
;trigger1        = (AnimElem = 10)
trigger1        = (AnimElem = 20)
trigger2        = (AnimElem = 21)
trigger3        = (AnimElem = 22)
trigger4        = (AnimElem = 23)
trigger5        = (AnimElem = 24)
trigger6        = (AnimElem = 25)
trigger7        = (AnimElem = 26)
trigger8        = (AnimElem = 27)
trigger9        = (AnimElem = 28)
trigger10       = (AnimElem = 29)
trigger11        = (AnimElem = 30)
trigger12        = (AnimElem = 31)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 34)
trigger16        = (AnimElem = 35)
trigger17        = (AnimElem = 36)
trigger18        = (AnimElem = 37)
trigger19        = (AnimElem = 38)
trigger20        = (AnimElem = 39)
trigger21        = (AnimElem = 40)
trigger22        = (AnimElem = 41)
trigger23        = (AnimElem = 42)
trigger24        = (AnimElem = 43)
trigger25        = (AnimElem = 44)
x		        = 1.8
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 45)
x		        = 17
y		        = 0


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 370
flag           = NoBarDisplay

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 19)
Time = 500
Trans = Add
Length   = 50
TimeGap  = 2
FrameFap = 5
PalBright = 0 , 0 , 0
PalContrast = 150 , 0 , 0
PalAdd = 150 , 0 , 0
PalMul = .5 , .2 , .2
IgnoreHitPause = 1
Peresistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 191:		AssertSpecial]
type			= AssertSpecial
triggerall = P2name != "Super Vegetto"
trigger1        = 1
flag			= Intro
flag2			= NoMusic


[State 0:     GroundWaves]
type            = Explod
trigger1        = AnimElem = 19
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.4, 1.01
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 6)
time 			= 450
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 450
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = -30
y		        = 0

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 2000
mul             = 250,255,255
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:     SwingSound];拳構え音
type            = PlaySnd
trigger1        = (AnimElem = 7)
value           = 99,53
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 45)
value           = 66,66
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
triggerall = var(25) = 1
trigger1        = (AnimElem = 23)
value           = 5444,544
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];必殺音楽
type            = PlaySnd
triggerall = var(25) = 0
trigger1 = P2Name != "Super Vegetto" 
trigger1        = (AnimElem = 5)
value           = 31,13
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];必殺音楽
type            = PlaySnd
triggerall = var(25) = 1
triggerall = P2name = "Goku_Super4"
trigger1 = P2Name = "Super Vegetto" 
trigger1        = (AnimElem = 5)
value           = 31,13
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 22)
value           = 3450,22
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust]
type            = Explod
trigger1        = (AnimElem = 2) 
anim            = 12970
ID              = 12970
pos             = 120,-270
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 2)
anim            = 8883
ID              = 8883
pos             = 90,-80;20,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 9
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     SwingSound];oto
type            = PlaySnd
trigger1        = (AnimElem = 19)
value           = 1120,550
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 1120,550
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 1120,550
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
triggerall = P2name != "Z-TON"
triggerall = P4name != "Z-TON"
trigger1        = (AnimElem = 2)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 20, 25
guard.pausetime = 20,28
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -80
hitsound        = S1120, 550
guardsound      = S1120, 550
ground.slidetime    = 999
ground.hittime  = 150
guard.hittime   = 150
air.hittime     = 150
ground.velocity = -50, 0
air.velocity    = -50, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 3
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p2stateno       = 976504

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 20, 25
guard.pausetime = 20,28
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -80
hitsound        = S1120, 550
guardsound      = S1120, 550
ground.slidetime    = 999
ground.hittime  = 150
guard.hittime   = 150
air.hittime     = 150
ground.velocity = -50, 0
air.velocity    = -50, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 3
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 48)
time 			= 40
freq 			= 60
ampl   = -25
phase  = 15

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 48)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 99999999, 99999999
pausetime       = 0, 3
guard.pausetime = 20,999
sparkno         = S73300 
guard.sparkno   = S73307
sparkxy         = -25, -80
hitsound        = S3202, 30
guardsound      = S0322, 30
ground.slidetime    = 9
ground.hittime  = 9
guard.hittime   = 9
air.hittime     = 9
ground.velocity = 0,-10
air.velocity    = 0,-10
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 3

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 50)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 99999999, 99999999
pausetime       = 0, 5
guard.pausetime = 20,999
sparkno         = S73300 
guard.sparkno   = S73307
sparkxy         = -25, -80
hitsound        = S3202, 30
guardsound      = S0322, 30
ground.slidetime    = 9
ground.hittime  = 19
guard.hittime   = 19
air.hittime     = 19
ground.velocity = 0,-10
air.velocity    = 0,-10
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 0
givepower       = 0, 3

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 45)
time 			= 20
freq 			= 80
ampl   = -35
phase  = 5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 45)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 99999999, 99999999
pausetime       = 0, 400
guard.pausetime = 20,28
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -80
hitsound        = S453, 454
guardsound      = S453, 454
ground.slidetime    = 99
ground.hittime  = 99
guard.hittime   = 99
air.hittime     = 99
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 0, 3
snap = -80,0
envshake.time   = 20
envshake.freq   = 90
envshake.ampl   = -40
envshake.phase  = 5
p2stateno       = 976504

;[State 0:     Screen Flash]
;type            = EnvColor
;trigger1        = (AnimElem = 10)
;trigger2        = (AnimElem = 11)
;trigger3        = (AnimElem = 12)
;trigger4        = (AnimElem = 13)
;trigger5        = (AnimElem = 14)
;trigger6        = (AnimElem = 15)
;trigger7        = (AnimElem = 16)
;trigger8        = (AnimElem = 17)
;trigger9        = (AnimElem = 18)
;trigger10        = (AnimElem = 19)
;trigger11       = (AnimElem = 20)
;trigger12        = (AnimElem = 20)
;trigger13        = (AnimElem = 21)
;trigger14        = (AnimElem = 22)
;trigger15        = (AnimElem = 23)
;trigger16        = (AnimElem = 24)
;trigger17        = (AnimElem = 25)
;trigger18        = (AnimElem = 26)
;trigger19        = (AnimElem = 27)
;trigger20        = (AnimElem = 28)
;trigger21        = (AnimElem = 29)
;trigger22        = (AnimElem = 30)
;trigger23        = (AnimElem = 31)
;trigger24        = (AnimElem = 32)
;trigger25        = (AnimElem = 33)
;trigger26        = (AnimElem = 34)
;value           = 255,255,255
;time            = 3
;under           = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 26)
trigger2        = (AnimElem = 27)
trigger3        = (AnimElem = 28)
trigger4       = (AnimElem = 29)
trigger5       = (AnimElem = 30)
trigger6        = (AnimElem = 31)
trigger7        = (AnimElem = 32)
trigger8        = (AnimElem = 33)
trigger9        = (AnimElem = 34)
trigger10        = (AnimElem = 35)
trigger11        = (AnimElem = 36)
trigger12        = (AnimElem = 37)
trigger13        = (AnimElem = 38)
trigger14        = (AnimElem = 39)
trigger15        = (AnimElem = 40)
trigger16        = (AnimElem = 41)
trigger17        = (AnimElem = 42)
trigger18        = (AnimElem = 43)
trigger19        = (AnimElem = 44)
trigger20        = (AnimElem = 25)
value           = 255,255,255
time            = 3
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = time = 375
trigger2        = time = 376
trigger3        = time = 377
value           = 255,255,255
time            = 8
under           = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 2)
time			= 30
add		    	= 0,0,0
mul			    = 0,0,0
sinadd		    = 0,0,0,4
invertall		= 1
color			= 0


[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 45)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1





[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 45)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 1.1, 1.1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2.2, 2.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2.5, 2.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 2.8, 2.8
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 45)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 3.1, 3.1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 4)
time            = 475
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 19)
time            = 475
mul             = 0,0,0
add             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 45)
time            = 150
mul             = 255,250,250
add             = 20,20,20
color           = 255
invertall       = 255
ignorehitpause  = 255
persistent      = 0

[State 0:     BGPalFX];超界王拳背景
type            = BGPalFX
triggerall = var(25) = 1
trigger1 = (AnimElem = 47)
time		    = 999
add		        = -45,-45,-45
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX];超界王拳背景
type            = BGPalFX
triggerall = var(25) = 1
trigger1 = (AnimElem = 47)
time		    = 999
add		        = -45,-45,-45
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;[State 0, ]
;type            = BGPalFX
;trigger1        = (AnimElem = 46)
;time            = 400
;mul             = 255,255,255
;color           = 150
;invertall       = 0
;ignorehitpause  = 0
;persistent      = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = time = 375
trigger2        = time = 376
trigger3        = time = 377
trigger4        = time = 378
trigger5        = time = 379
trigger6        = time = 380
value           = 255,255,255
time            = 1
under           = 1


;;;;;;;;;;;;;;;;

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 61
ctrl		    = 1

;---------------

[Statedef 4633]
type            = S
movetype        = A
physics         = S
anim            = 6869
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 50)
flag            = Invisible

;---------------------------------------------------------------------------
; 超４乱舞 突進
[Statedef 665]
type            = S
movetype        = A
physics         = S
anim            = 665
;velset          = 0,0,0
ctrl            = 0
poweradd        = -3000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 9027, 1]
type = Assertspecial
trigger1 = time < 35
flag = NOfg

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 100
y		        = 0







;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 2996
id = 2996
pos = -40, 380
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = .84,1.08
sprpriority = -90
supermovetime = 120

[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 2996
postype = back
pos = ceil(-96+(time*12)),120





[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 88,88
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 2)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 4)
value = SCA
time = 38


[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.3, 1.3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = .9, .9
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1






[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 4)
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 30
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 30
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 99
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 330,330
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 4
attr            = S, NT
priority        = 7, dodge
sparkno         = -1
hitflag         = MAFP
guardflag       = M
pausetime       = 4,50
numhits         = 1
snap            = 40,0
hitsound        = S210,2
guardsound      = S66, 66
p1stateno       = 5879
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;超4乱舞開始前の攻撃;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 5879]
type            = S
movetype        = A
physics         = S
anim            = 5879
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 30
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 4)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 40,0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 10)
x               = (P2BodyDist X-10)


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 4
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
priority        = 7,dodge
damage          = 50, 30
pausetime       = 8, 4
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S454, 454
guardsound      = S636, 66 
ground.slidetime    = 32
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -35, 0
air.velocity    = -35, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 666
ctrl            = 0

;---------------------------------------------------------------------------
; 超４乱舞開始 p1 State
[Statedef 666]
type            = S
movetype        = A
physics         = S
anim            = 666
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 230
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 53)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
triggerall = (time < 100) 
trigger1 = ((time >1) && (timemod = 22,0)) 
value           = 255,255,255
time            = 2
under           = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
x		        = 2
y		        = 0


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 41)
anim 			= 7020
ID 			    = 7020
pos 			= 65,-65
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 7
supermove       = 999
pausemovetime   = 999
scale 		    = 1.3, 1.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 48)
anim 			= 7020
ID 			    = 7020
pos 			= 65,-65
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 7
supermove       = 999
pausemovetime   = 999
scale 		    = 1.3, 1.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0



[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 53)
anim 			= 7020
ID 			    = 7020
pos 			= 65,-65
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 9
supermove       = 999
pausemovetime   = 999
scale 		    = 1.5, 1.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 41)
x		        = 0
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 43)
trigger2        = (AnimElem = 44)
trigger3        = (AnimElem = 45)
trigger4        = (AnimElem = 46)
x		        = 6
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 48)
x		        = 6
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 49)
x		        = 13
y		        = 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 610,210
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 40)
trigger2        = (AnimElem = 46)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 41)
value           = 777,333
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 53)
value           = 454,454
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 39)
value           = 600,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 14)
trigger7        = (AnimElem = 16)
trigger8        = (AnimElem = 18)
trigger9        = (AnimElem = 20)
trigger10        = (AnimElem = 22)
trigger11       = (AnimElem = 25)
trigger12        = (AnimElem = 29)
trigger13        = (AnimElem = 31)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 35)
trigger16        = (AnimElem = 38)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (time < 100)
pos             = 70,0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 47)
pos             = 70,-30


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
attr            = S, HT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 23, 5
pausetime       = 0, 1
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -1.3, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
p2stateno       = 976504


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 39)
attr            = S, HT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 5
pausetime       = 0, 22
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S600, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -2, -3
air.velocity    = -1.3, -4.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 70,-5


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 41)
attr            = S, HT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 82, 5
pausetime       = 9, 8
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -80
hitsound        = S454, 454
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, -4
air.velocity    = -5, -4
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 80,-6


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 48)
attr            = S, HT
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 82, 5
pausetime       = 9, 10
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -80
hitsound        = S454, 454
guardsound      = S454, 454
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 27
air.hittime     = 20
ground.velocity = -5, -4
air.velocity    = -5, -4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -20
snap = 100,-16

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 53)
attr            = S, HT
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 230, 5
pausetime       = 20, 12
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -6
air.velocity    = -20, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 50, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 10

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 53)
anim 			= 7020
ID 			    = 7020
pos 			= 65,-65
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = .1, .1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 53)
anim 			= 7020
ID 			    = 7020
pos 			= 65,-65
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.3, 1.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 41) 
trigger6        = (AnimElem = 48) 
trigger7        = (AnimElem = 53) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:     atatta]
type            = ChangeState
trigger1 = AnimElem = 54
;trigger1        = movehit
value           = 9490
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






[Statedef 9490];画面切り替わり中動作
type            = S
movetype        = I
physics         = S
anim            = 9490
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------



[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 1, >= 1 && AnimElem = 3, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = AnimElem = 3
x               = (P2BodyDist X>50)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x               = 400

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3)
value           = 255,255,255
time            = 2
under           = 1

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 4)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x               = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 500,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;







;---------------------------------------------------------------------------
; 空中・超４乱舞 突進
[Statedef 554]
type            = A
movetype        = A
physics         = S
anim            = 554
;velset          = 0,0,0
ctrl            = 0
poweradd        = -3000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------

[State 9027, 1]
type = Assertspecial
trigger1 = time < 35
flag = NOfg

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 2)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 100
y		        = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 88,88
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Sound
;---------------

;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 2996
id = 2996
pos = -40, 380
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = .84,1.08
sprpriority = -90
supermovetime = 120

[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 2996
postype = back
pos = ceil(-96+(time*12)),120

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 4)
value = SCA
time = 38


[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.3, 1.3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = .9, .9
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1






[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 4)
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 30
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 30
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 35
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 330,330
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 4
attr            = A, NT
priority        = 7, dodge
sparkno         = -1
hitflag         = MAFP
guardflag       = M
pausetime       = 1,50
numhits         = 1
snap            = 40,0
hitsound        = S210,2
guardsound      = S66, 66
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
p1stateno       = 5870
p2facing        = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------

;超4乱舞開始前の蹴り(空中)
[Statedef 5870]
type            = A
movetype        = A
physics         = S
anim            = 5870
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 4)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 40,0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 10)
y               = (P2BodyDist Y-10)
x               = (P2BodyDist X-10)


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 4
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 50, 30
pausetime       = 9, 9
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S4534, 454
guardsound      = S636, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -22, -11
air.velocity    = -22, -11
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 4)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 8
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 454,454
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 555
ctrl            = 0

; 空中・超４乱舞開始 p1 State
[Statedef 555]
type            = A
movetype        = A
physics         = S
anim            = 555
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 48)
trigger2 		= (AnimElem = 54)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 8
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

[State 0:     keriageSound]
type            = PlaySnd
triggerall = enemy,movetype = H
trigger1        = (AnimElem = 55)
value           = 8050,3
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 53)
pos             = 20,-1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 56)
trigger2        = (AnimElem = 57)
pos             = 0,999

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 2, 2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left];叩き落としたエフェクト
type            = Explod
triggerall = enemy,movetype = H
trigger1        = (animelem = 55)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p2
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 23
supermove       = 0
pausemovetime   = 0
scale           = 1.8, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
x		        = 2.55
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 40)
x		        = 7
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 53)
x               = (P2BodyDist X-10)
y               = (P2BodyDist Y-20)





[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 54)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 610,210
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 50)
value           = 330,330
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 53)
value           = 770,770
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 14)
trigger7        = (AnimElem = 16)
trigger8        = (AnimElem = 18)
trigger9        = (AnimElem = 20)
trigger10        = (AnimElem = 22)
trigger11       = (AnimElem = 25)
trigger12        = (AnimElem = 29)
trigger13        = (AnimElem = 31)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 35)
trigger16        = (AnimElem = 38)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 40)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 44)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 200
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (time < 50)
pos             = 70,0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
attr            = S, HA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 23, 5
pausetime       = 0,2
guard.pausetime = 7,3;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
air.hittime     = 20
ground.velocity = -2, -1
air.velocity    = -2, -1
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 41)
attr            = S, HA
hitflag         = MAF
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 50, 5
pausetime       = 6, 6
guard.pausetime = 7,8;7 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10,-1
air.velocity    = -10,-1
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 30



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 48)
attr            = S, HA
hitflag         = MAF
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, dodge
damage          = 70, 5
pausetime       = 4, 4
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S454, 454
guardsound      = S454, 454
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -25, -15
air.velocity    = -25, -15
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 16
envshake.freq   = 90
envshake.ampl   = -20
envshake.phase  = 10




[State 0:     Screen Flash]
type            = EnvColor
triggerall = (time < 100) 
trigger1 = ((time >1) && (timemod = 42,0)) 
value           = 255,255,255
time            = 2
under           = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 50)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 54)
attr            = A, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 180, 5
pausetime       = 6, 13
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 99
air.velocity    = 0, 99
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 150
air.fall        = 0
down.velocity   = 0, 0
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 50, 3
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -15
envshake.phase  = 10


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 1, >= 1 && AnimElem = 3, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 48, >= 1 && AnimElem = 52, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >100) && (timemod = 105,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
p1stateno       = 50
p2facing        = 1




[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

[State 0:     atatta]
type            = ChangeState
trigger1 = AnimElem = 56
value           = 9499
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






[Statedef 9499];画面切り替わり中動作
type            = S
movetype        = I
physics         = A
anim            = 9499
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

;---------------



[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = AnimElem = 1, >= 1 && AnimElem = 3, < 1
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = AnimElem = 3
x               = (P2BodyDist X>30)

[State 0:     VelSet]
type            = VelSet
trigger1        = AnimElem = 3
y               = (P2BodyDist Y>-70)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 3
x               = 20

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 4)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
x               = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 500,0
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 5)
value           = 50
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;超４連打パンチ（強）
[Statedef 8808]
type            = S
movetype        = A
physics         = S
anim            = 8808
;velset          = 0,0,0
ctrl            = 0
poweradd        = 70
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
trigger7        = (AnimElem = 19)
x		        = 5
y		        = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 24)
x		        = 15
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 0
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 90
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 312:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 33,77
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 312:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 22)
value           = 60,78
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 23)
trigger2        = (AnimElem = 18)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 17)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 22, 2
pausetime       = 1, 4
guard.pausetime = 5, 6
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -63, -70
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 30, 15
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 20)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 40, 10
pausetime       = 9, 8
guard.pausetime = 13, 14
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, -3
air.velocity    = -7, -2.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 30, 15
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -15
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)




;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 27)
attr            = S, SA
hitflag         = MAFP
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 80, 15
pausetime       = 30, 27
guard.pausetime = 15, 17
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = 0, -70
hitsound        = S420, 0
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -55
air.cornerpush.veloff = -55
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -13, -6.2
air.velocity    = -13, -6.2
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 50, 30
givepower       = 30, 0
envshake.time   = 17
envshake.freq   = 83
envshake.ampl   = -23
envshake.phase  = 8
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)




;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1


;超４連打パンチ（弱）
[Statedef 88888]
type            = S
movetype        = A
physics         = S
anim            = 88888
;velset          = 0,0,0
ctrl            = 0
poweradd        = 40
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 100
length          = 5
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
x		        = 4
y		        = 0

[State 312:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 19)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 20)
x		        = 5
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 21)
x		        = 3
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 22)
x		        = 1
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0





;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 17)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 23, 2
pausetime       = 1, 5
guard.pausetime = 6, 7
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -70, -70
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -3, -0.1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 30, 15
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 20)
value           = 60,36
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 21)
attr            = S, SA
hitflag         = MAFPD
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 50, 10
pausetime       = 16, 17
guard.pausetime = 18, 18
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 18
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -20, 0
air.velocity    = -20, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 40, 15
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -15
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)





;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1




;超４連打パンチ（強）ＥＸ
[Statedef 8294]
type            = S
movetype        = A
physics         = S
anim            = 8294
;velset          = 0,0,0
ctrl            = 0
poweradd        = -500
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 20

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = (1)
add = 95,25,25
ignorehitpause = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (animelem = 29)
anim            = 7012
ID              = 705
pos             = -15,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 26)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >1) && (timemod = 45,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >1) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >1) && (timemod = 45,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
trigger7        = (AnimElem = 19)
x		        = 6
y		        = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 26) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 20)
x		        = 10
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 22)
x		        = 1
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 23)
x		        = 10
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 24)
x		        = 6
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 28)
x		        = 0
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 29)
x		        = 14
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 28)
x               = (P2BodyDist X-30)

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 30)
x		        = 18
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 31)
x		        = 10
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 32)
x		        = 2
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 33)
x		        = 0
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 90
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 25)
time            = 1
length          = 1
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 28)
time            = 25
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 16)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 534,434
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 19)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 23)
trigger2        = (AnimElem = 29)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 26)
value           = 330,330
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 28)
value           = 60,78
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 17)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 25, 2
pausetime       = 1, 4
guard.pausetime = 3, 4
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -63, -70
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 20)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 40, 8
pausetime       = 6, 7
guard.pausetime = 10, 12
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -55
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 33
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
ground.hittime  = 33
guard.hittime   = 15
air.hittime     = 20
ground.velocity = -9, 0
air.velocity    = -9, -3.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -15
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 24)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 40, 10
pausetime       = 7, 9
guard.pausetime = 12, 13
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -60
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 39
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
ground.hittime  = 39
guard.hittime   = 15
air.hittime     = 20
ground.velocity = -16, -4.4
air.velocity    = -15, -4.4
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 20
envshake.freq   = 70
envshake.ampl   = -15
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 30)
attr            = S, SA
hitflag         = MAFP
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,dodge
damage          = 90, 15
pausetime       = 15, 11
guard.pausetime = 27, 27
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = 0, -70
hitsound        = S420, 0
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -55
air.cornerpush.veloff = -55
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -5
air.velocity    = -15, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 30, 0
envshake.time   = 17
envshake.freq   = 83
envshake.ampl   = -23
envshake.phase  = 8
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)




;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1

;超４連続キックＥＸ
[Statedef 9296]
type            = S
movetype        = A
physics         = S
anim            = 9296
;velset          = 0,0,0
ctrl            = 0
poweradd        = -500
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 20


[State 52, 2]
type = Posadd
trigger1 = (AnimElem = 39)
y = 0

[State 500:     Posset]
type            = Posset
trigger1        = (animelem = 38)
y               = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 34)
value           = 330,330
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     Posadd]
type            = Posadd
trigger1        = (animelem = 35)
x               = (P2BodyDist X-160)
y               = (P2BodyDist X-290)

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 534,434
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >1) && (timemod = 45,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >1) && (timemod = 45,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = (1)
add = 95,25,25
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
trigger2        = (animelem = 34)
value           = 255,255,255
time            = 2
under           = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 17)
trigger6        = (AnimElem = 21)
trigger6        = (AnimElem = 23)
trigger6        = (AnimElem = 28)
x		        = 8
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 30)
x		        = 0
y		        = 0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 36)
x		        = 45
y		        = 27

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 38)
x		        = 0
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 36)
time            = 40
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (AnimElem = 34)
time            = 1
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 19)
trigger7        = (AnimElem = 21)
trigger8        = (AnimElem = 24)
trigger9        = (AnimElem = 29)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 36)
trigger2        = (AnimElem = 40)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 36)
value           = 777,333
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1) 
trigger2        = (AnimElem = 34) 
trigger3        = (AnimElem = 41) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 13)
trigger5        = (AnimElem = 16)
trigger6        = (AnimElem = 20)
trigger7        = (AnimElem = 22)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 33, 5
pausetime       = 1, 12
guard.pausetime = 7, 9
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -7,0
air.velocity    = -3,-1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 25)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 33, 10
pausetime       = 1, 15
guard.pausetime = 7, 10
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -20
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -7,0
air.velocity    = -3,-1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 30)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 45, 15
pausetime       = 6, 5
guard.pausetime = 20, 13
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -60
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 18
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -23, 0
air.velocity    = -11, -4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 37)
attr            = S, SA
hitflag         = MAF
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 70, 15
pausetime       = 9, 8
guard.pausetime = 9, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -60
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 33
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -20
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -10, 0
air.velocity    = -7, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 41)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 4, Hit
damage          = 110, 20
pausetime       = 10, 7
guard.pausetime = 20, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -75
hitsound        = S454, 454
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -43
air.cornerpush.veloff = -43
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -6
air.velocity    = -20, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 0
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 18
envshake.phase  = 15

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1

;超４連続キック
[Statedef 9699]
type            = S
movetype        = A
physics         = S
anim            = 9699
;velset          = 0,0,0
ctrl            = 0
poweradd        = 70
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0, ]
type            = MakeDust
triggerall        = time < 23
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 17)
x		        = 7
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 18)
x		        = 0
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 19)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     voisu] ;何か連続攻撃系の声
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 4,22
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 1) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 13)
trigger5        = (AnimElem = 16)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 33, 5
pausetime       = 1, 15
guard.pausetime = 7, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -7,0
air.velocity    = -3,-1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 40, 15
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 20)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 80, 15
pausetime       = 9, 8
guard.pausetime = 20, 18
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -19, -5
air.velocity    = -19, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 40, 15
givepower       = 15, 0
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1


;超４連続キック(弱)
[Statedef 7722]
type            = S
movetype        = A
physics         = S
anim            = 7722
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0, ]
type            = MakeDust
triggerall        = time < 40
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 80
length          = 5
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .35,.35,.35
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 17)
trigger7        = (AnimElem = 19)
x		        = 8
y		        = 0


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 18)
x		        = 0
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 15)
trigger6        = (AnimElem = 19)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 13)
trigger5        = (AnimElem = 16)
attr            = S, SA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 30, 5
pausetime       = 1, 20
guard.pausetime = 7, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -50
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
ground.hittime  = 12
guard.hittime   = 12
air.hittime     = 20
ground.velocity = -5,0
air.velocity    = -3,-1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 40, 15
givepower       = 20, 0
envshake.time   = 10
envshake.freq   = 50
envshake.ampl   = -10
envshake.phase  = 3
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 20)
attr            = S, SA
hitflag         = MAF
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 140, 25
pausetime       = 17, 10
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S1156, 23
guardsound      = S66, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -6, 40
air.velocity    = -6, 40
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 150, 15
givepower       = 15, 0
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 7
kill            = 1
snap = 30,60

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1





;スラッシュダウンキック
[Statedef 4545]
type            = A
movetype        = A
physics         = A
anim            = 4545
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 5)
value           = 255,255,255
time            = 1
under           = 0



[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x                       =  0
y		        = -13

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
x                       =  0
y		        = -1


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 20
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 25;85
y		        = 10;25


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 85,776
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, SA
hitflag         = MAFPD
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 150, 40
pausetime       = 17, 16
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S454, 454
guardsound      = S66, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, -5
air.velocity    = -20, 38
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -15, 99
down.hittime    = 20
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 100, 15
givepower       = 15, 0
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1


;スラッシュダウンキック(弱)
[Statedef 4546]
type            = A
movetype        = A
physics         = A
anim            = 4546
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 5)
value           = 255,255,255
time            = 1
under           = 0



[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
y		        = -15

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
y		        = -2


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 30
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 5)
x		        = 0
y		        = 40


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 60,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 85,776
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, SA
hitflag         = MAFPD
guardflag       = H
animtype        = Medium
air.animtype    = Medium
priority        = 7,dodge
damage          = 150, 40
pausetime       = 25, 25
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S1156, 23
guardsound      = S66, 66 
ground.slidetime    = 12
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = 0, 99
air.velocity    = 0, 99
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 50
air.fall        = 1
down.velocity   = 0, 99
down.hittime    = 50
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 100, 15
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 85
envshake.ampl   = -25
envshake.phase  = 7
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1


; おめぇはもう終わりだ 突進
[Statedef 919]
type            = S
movetype        = A
physics         = S
anim            = 919
;velset          = 0,0,0
ctrl            = 0
poweradd        = -7000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 11)
x		        = 100
y		        = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 11)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


;カットイン

[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 10)
Anim = 8783
id = 8783
pos = -100, 0
postype = back
ownpal = 1
bindtime = -1
removetime = 15
scale = 1.7,1.7
sprpriority = -90
supermovetime = 120

[State 0:     SwingSound];おめぇは・・・
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 22,16
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];もうおわりだ
type            = PlaySnd
trigger1        = (AnimElem = 10)
value           = 22,19
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 10)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 10)
time 			= 40
freq 			= 70
ampl   = -30
phase  = 5

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 11)
value = SCA
time = 38


[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 25
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 25
supermove       = 999
pausemovetime   = 999
scale           = 1.4, 1.3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7036
ID              = 7036
pos             = 14,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 999
pausemovetime   = 999
scale           = .9, .9
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 2)
anim            = 7036
ID              = 7036
pos             = 14,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 999
pausemovetime   = 999
scale           = .6, .5
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 11)
anim            = 7984
ID              = 7984
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 10
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 9
supermove       = 999
pausemovetime   = 999
scale           = 5, .6
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 11)
anim            = 7984
ID              = 7984
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 10
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 9
supermove       = 999
pausemovetime   = 999
scale           = 3, .8
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 11)
anim            = 7984
ID              = 7984
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 10
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 9
supermove       = 999
pausemovetime   = 999
scale           = 6, 8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 88
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 11)
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time		    = 70
add		        = -55,-55,-55
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 10)
time		    = 40
add		        = -255,-255,-255
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 85
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 85
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 11)
value           = 41,27
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 11) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 10)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 10)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 404:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 
pausetime       = 1, 3
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = -1;S210, 1
guardsound      = -1;S201, 2
ground.slidetime    = 30
ground.hittime  = 30
guard.hittime   = 72
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
air.hittime     = 20
ground.velocity = -18, 0
air.velocity    = -6.3, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 0, 0
pausetime       = 1, 3
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = -1;S210, 1
guardsound      = -1;S201, 2
ground.slidetime    = 30
ground.hittime  = 200;30
guard.hittime   = 72
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
air.hittime     = 20
ground.velocity = -23, 0
air.velocity    = -20, -1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10


[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 11
attr            = S, NT
priority        = 7, dodge 
sparkno         = -1
hitflag         = MAFPD;MAFP
guardflag       = M
damage          = 0,200
pausetime       = 1,55
numhits         = 0
snap            = 40,0
hitsound        = S210,2
guardsound      = S66, 66
p1stateno       = 5888
p2facing        = 1
kill            = 0

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;終わりだ開始前の攻撃;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 5888]
type            = S
movetype        = A
physics         = S
anim            = 5888
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 3)
anim 			= 9640
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 4)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 40,0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 10)
x               = (P2BodyDist X-10)


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 4
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
priority        = 7,dodge
damage          = 50, 30
pausetime       = 8, 6
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S420, 0
guardsound      = S636, 66 
ground.slidetime    = 32
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -35, 0
air.velocity    = -35, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 420,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 9)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 5889
ctrl            = 0

;終わりだ開始前の攻撃2;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 5889]
type            = S
movetype        = A
physics         = S
anim            = 5889
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 3)
anim 			= 9640
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 4) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 3)
trigger2        = (animelem = 9)
value           = 255,255,255
time            = 1
under           = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = 40,0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 10)
x               = (P2BodyDist X-10)


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 4
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1



;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
priority        = 7,dodge
damage          = 50, 30
pausetime       = 8, 6
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S454, 454
guardsound      = S636, 66 
ground.slidetime    = 32
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -35, 0
air.velocity    = -35, -6
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 454,454
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 5999
ctrl            = 0

終わりだ開始前の攻撃３
[Statedef 5999]
type            = S
movetype        = A
physics         = S
anim            = 5999
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 8)
anim 			= 9640
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.6, 1.6
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 3)


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1 		= (AnimElem = 3)
trigger2 		= (AnimElem = 9)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
pos             = -40,0

[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 15)
x               = (P2BodyDist X+10)


[State 312:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 9)
x		        = 4
y		        = 0


[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
priority        = 7,dodge
damage          = 50, 30
pausetime       = 8, 6
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S454, 454
guardsound      = S636, 66 
ground.slidetime    = 32
ground.cornerpush.veloff = -35
air.cornerpush.veloff = -35
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -35, 0
air.velocity    = -35, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, SA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
priority        = 7,dodge
damage          = 30, 30
pausetime       = 7, 4
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -40
hitsound        = S201, 1
guardsound      = S636, 66 
ground.slidetime    = 32
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -9, 0
air.velocity    = -9, -5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 15, 0
envshake.time   = 25
envshake.freq   = 80
envshake.ampl   = -25
envshake.phase  = 9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;---------------

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 8)
value           = 201,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 201,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
value           = 454,454
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Sound]
type            = PlaySnd
trigger1        = (AnimElem = 14)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 14)
value           = 255,255,255
time            = 1
under           = 0


[State 0:     GroundWaves]
type            = Explod
trigger1 		= (AnimElem = 3)
trigger2 		= (AnimElem = 9)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 914
ctrl            = 0

;---------------------------------------------------------------------------
;終わりだ開始 p1 State
[Statedef 914]
type            = S
movetype        = A
physics         = S
anim            = 914
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------


[State 0:     SwingSound];外れ声
type            = PlaySnd
trigger1        = time = 240
value           = 330,65
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 1)
x               = (P2BodyDist X+90)

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
x		        = 1.4
y		        = 0




[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 14)
trigger7        = (AnimElem = 16)
trigger8        = (AnimElem = 18)
trigger9        = (AnimElem = 20)
trigger10        = (AnimElem = 22)
trigger11       = (AnimElem = 25)
trigger12        = (AnimElem = 29)
trigger13        = (AnimElem = 31)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 35)
trigger16        = (AnimElem = 38)
trigger17        = (AnimElem = 45)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Bind]
type            = TargetBind
trigger1        = (time < 50)
pos             = 70,-1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
trigger17        = (AnimElem = 41)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 13, 5
pausetime       = 1, 3
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3.1
air.cornerpush.veloff = -3.1
air.hittime     = 20
ground.velocity = -1.2, 0
air.velocity    = -1.2, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 47)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 13, 5
pausetime       = 1, 3;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -1.2, 0
air.velocity    = -1.2, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
p1stateno       = 918

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 240
value           = 0
ctrl		    = 1




; おわりだつづく 
[Statedef 918]
type            = S
movetype        = A
physics         = S
anim            = 918
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 1) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 1) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 1) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     SwingSound];外れ声
type            = PlaySnd
trigger1        = time = 250
value           = 330,65
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.1, 1.1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.1, 1.1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.5, 1.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
x		        = 4
y		        = 0


[State 0:     Bind]
type            = TargetBind
trigger1        = (1)
pos             = 80,0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     SwingSound];気合声
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 610,210
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Aura]
type            = Explod
trigger1        = animelem = 1
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 390
supermove       = 999
pausemovetime   = 999
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 1
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 390
supermove       = 999
pausemovetime   = 999
scale           = 0.5,0.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 14)
trigger7        = (AnimElem = 16)
trigger8        = (AnimElem = 18)
trigger9        = (AnimElem = 20)
trigger10        = (AnimElem = 22)
trigger11       = (AnimElem = 25)
trigger12        = (AnimElem = 29)
trigger13        = (AnimElem = 31)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 35)
trigger16        = (AnimElem = 38)
value           = 200,0
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 18)
trigger8        = (AnimElem = 21)
trigger9       = (AnimElem = 24)
trigger10        = (AnimElem = 27)
trigger11        = (AnimElem = 29)
trigger12        = (AnimElem = 31)
trigger13        = (AnimElem = 34)
trigger14        = (AnimElem = 38)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 25, 8
pausetime       = 0, 3;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -1.3, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 50

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 40)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 25, 5
pausetime       = 1, 3;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -1.3, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
p1stateno       = 977
snap = 50

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
time			= 4
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 250
value           = 0
ctrl		    = 1

;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




; おわりださらにつづく 
[Statedef 977]
type            = S
movetype        = A
physics         = S
anim            = 977
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------
[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     SwingSound];外れ声
type            = PlaySnd
trigger1        = time = 250
value           = 330,65
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 17)
trigger8        = (AnimElem = 19)
trigger9        = (AnimElem = 21)
trigger10       = (AnimElem = 24)
trigger11        = (AnimElem = 27)
trigger12        = (AnimElem = 30)
trigger13        = (AnimElem = 32)
trigger14        = (AnimElem = 34)
trigger15        = (AnimElem = 37)
trigger16        = (AnimElem = 39)
x		        = 4
y		        = 0


[State 0:     Bind]
type            = TargetBind
trigger1        = (1)
pos             = 80,0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 1
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 270
supermove       = 999
pausemovetime   = 999
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 1
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 270
supermove       = 999
pausemovetime   = 999
scale           = 0.8,0.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 8)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 12)
trigger6        = (AnimElem = 14)
trigger7        = (AnimElem = 16)
trigger8        = (AnimElem = 18)
trigger9        = (AnimElem = 20)
trigger10        = (AnimElem = 22)
trigger11       = (AnimElem = 25)
trigger12        = (AnimElem = 29)
trigger13        = (AnimElem = 31)
trigger14        = (AnimElem = 33)
trigger15        = (AnimElem = 35)
trigger16        = (AnimElem = 38)
trigger16        = (AnimElem = 39)
value           = 200,0
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 6)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 11)
trigger5        = (AnimElem = 13)
trigger6        = (AnimElem = 15)
trigger7        = (AnimElem = 18)
trigger8        = (AnimElem = 21)
trigger9       = (AnimElem = 24)
trigger10        = (AnimElem = 27)
trigger11        = (AnimElem = 29)
trigger12        = (AnimElem = 31)
trigger13        = (AnimElem = 34)
trigger14        = (AnimElem = 38)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 30, 8
pausetime       = 0, 3;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -3.4, 0
air.velocity    = -1.3, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap = 50

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 40)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 30, 5
pausetime       = 1, 3;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -3.4, 0
air.velocity    = -1.3, -1.5
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 14
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 10
snap            = -2,0
p1stateno       = 938

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 36) 
trigger5        = (AnimElem = 53) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 250
value           = 0
ctrl		    = 1

; おわりださらにつづく (後ろに回ってけり上げる)
[Statedef 938]
type            = S
movetype        = A
physics         = S
anim            = 938
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------
[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 2)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.7, 1.7
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)


[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 2)
y               = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-10)




;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     koe];キック音
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     koe];気合声
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 55,564
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 5
pausetime       = 17, 16;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S66, 66
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -29, -37
air.velocity    = -29, -37
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p1stateno       = 949

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 50
value           = 0
ctrl		    = 1



; おわりださらにつづく (上昇攻撃１)
[Statedef 949]
type            = S
movetype        = A
physics         = S
anim            = 949
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.7, 1.7
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-10)



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 5
pausetime       = 10, 10;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S1120, 550
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -30, 15
air.velocity    = -30, 15
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p1stateno       = 904

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     koe];キック音
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 50
value           = 50
ctrl		    = 1

; おわりださらにつづく (上昇攻撃２)
[Statedef 904]
type            = S
movetype        = A
physics         = S
anim            = 904
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.7, 1.7
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-10)



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 5
pausetime       = 10, 10;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S1120,550
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -30, 15
air.velocity    = -30, 15
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p1stateno       = 905

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     koe];キック音
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 50
value           = 50
ctrl		    = 1

; おわりださらにつづく (上昇攻撃３)
[Statedef 905]
type            = S
movetype        = A
physics         = S
anim            = 905
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.7, 1.7
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];キック音
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-50)
y               = (P2BodyDist Y-10)



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 5
pausetime       = 10, 10;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S1120, 550
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -30, -15
air.velocity    = -30, -15
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p1stateno       = 906

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 50
value           = 50
ctrl		    = 1

; おわりださらにつづく (上昇攻撃4)
[Statedef 906]
type            = S
movetype        = A
physics         = S
anim            = 906
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------


[State 0, 画面敵のみ]
type = ScreenBound
trigger1 = (1)
value = 0
movecamera = 0,1
time = 99
ignorehitpause = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time		    = 999
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1.7, 1.7
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)



[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-10)
y               = (P2BodyDist Y-10)



;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 217
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 80, 5
pausetime       = 10, 10;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S1120, 550
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -15, -18
air.velocity    = -15, -18
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 70
envshake.ampl   = -25
envshake.phase  = 5
p1stateno       = 955

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     koe];キック音
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 66,66
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     ChangeState]
type            = ChangeState
trigger1        = time = 50
value           = 50
ctrl		    = 1

; おわりだ（とどめ）
[Statedef 955]
type            = S
movetype        = A
physics         = S
anim            = 955
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------


[State 170, 無敵]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 300


[State 0:		Helper]
type			= Helper
triggerall		= (Time < 40)
trigger1		= (Time > 30) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
triggerall		= (Time < 40)
trigger1		= (Time > 30) && ((GameTime%15) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
triggerall		= (Time < 40)
trigger1		= (Time > 30) && ((GameTime%25) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 1)
value           = 255,255,255
time            = 2
under           = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (animelem = 1)
time		    = 40
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 0
y		        = 100

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time = 10
trigger2        = time = 11
trigger3        = time = 12
trigger4        = time = 13
trigger5        = time = 14
trigger6        = time = 15
trigger7        = time = 16
trigger8        = time = 17
trigger9        = time = 18
trigger10        = time = 19
trigger11        = time = 20
trigger12        = time = 21
trigger13        = time = 22
trigger14        = time = 23
trigger15        = time = 24
trigger16        = time = 25
trigger17        = time = 26
trigger18        = time = 27
trigger19        = time = 28
trigger20        = time = 29
trigger21        = time = 30
trigger22        = time = 31
trigger23        = time = 32
trigger24        = time = 33
trigger25        = time = 34
trigger26        = time = 35
trigger27        = time = 36
trigger28        = time = 37
trigger29        = time = 38
trigger30        = time = 39
trigger31        = time = 40
trigger32        = time = 41
trigger33        = time = 42
trigger34        = time = 43
trigger35        = time = 44
trigger36        = time = 45
trigger37        = time = 46
trigger38        = time = 47
trigger39        = time = 48
trigger40        = time = 49
trigger41        = time = 50
trigger42        = time = 51
trigger43        = time = 52
trigger44        = time = 53
trigger45        = time = 54
trigger46        = time = 55
trigger47        = time = 56
trigger48        = time = 57
trigger49        = time = 58
trigger50        = time = 59
flag           = NoBarDisplay


[state 0, CtrlSet]
type            = CtrlSet
trigger1        = (AnimElem = 10)
value           = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 7) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.6, 1.6
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 7) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.6, 2.6
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 7) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 3
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = .4,5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 3
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = .6,20
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 3
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = .2,7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 3
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = .1,10
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Aura]
type            = Explod
trigger1        = animelem = 3
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 35
supermove       = 999
pausemovetime   = 999
scale           = 0,15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 0
y		        = 100

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
x		        = 0
y		        = 100

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
x		        = 0
y		        = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 6)
y               = 0


[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 7)
trigger1        = (AnimElem = 8)
trigger1        = (AnimElem = 9)
time 			= 100
freq 			= 85
ampl   = -45
phase  = 5

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = .8, .8
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 2, 2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = -20,10
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 60
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7333
ID              = 7333
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 6)
anim            = 7333
ID              = 7333
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 0
pausemovetime   = 0
scale           = 3, 5
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7222
ID              = 7222
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 0
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 7)
anim            = 7222
ID              = 7222
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 200
supermove       = 0
pausemovetime   = 0
scale           = 3, 3
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;カットイン
[State 8001, Explod-3]
type = Explod
trigger1 = (animelem = 2)
Anim = 7659
id = 7659
pos = 100, 100
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = 1,.89
sprpriority = 9
supermovetime = 120



;---------------
;Sound
;---------------

[State 0:     koe];瞬間移動音
type            = PlaySnd
trigger1        = time = 1
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];
type            = PlaySnd
trigger1        = (animelem = 7)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 454,454
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 502,3
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 500:     PosSet]
type            = PosSet
trigger1        = (animelem = 1)
y               = 999




[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 2)
x               = (P2BodyDist X-0)
y               = (P2BodyDist Y-50)

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 2)
time 			= 53
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 53
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 2)
time            = 70
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

;---------------
;Effects/Hit Details
;---------------

[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 150
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 20,0,0
palcontrast     = 170,0,0
palpostbright   = 70,0,0
paladd          = 20,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7, dodge
damage          = 300, 5
pausetime       = 20, 20;40
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S453, 454
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 92
guard.hittime   = 92
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 90
ground.velocity = 0, 99
air.velocity    = 0, 99
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 500
air.fall        = 1
down.velocity   = 0, 0
kill            = 1
down.hittime    = 100
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 95
envshake.freq   = 80
envshake.ampl   = -35
envshake.phase  = 5

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:		BGPalFX]
type			= BGPalFX
trigger1        = (AnimElem = 3) 
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 55,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 10)
value           = 1714
ctrl            = 1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 超４突撃
[Statedef 2488]
type            = S
movetype        = A
physics         = S
anim            = 2488
;velset          = 0,0,0
ctrl            = 0
poweradd        = -5000
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
trigger21       = (AnimElem = 24)
value           = 255,255,255
time            = 3
under           = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 24)
value           = 255,255,255
time            = 4
under           = 0


[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 2996
id = 2996
pos = -40, 380
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = .84,1.08
sprpriority = -90
supermovetime = 120

[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 2996
postype = back
pos = ceil(-96+(time*12)),120


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 3)
anim 			= 9640
ID 			    = 9640
pos 			= 45,-46
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 125
supermove       = 999
pausemovetime   = 999
scale 		    = 0.3, 0.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 2, 2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 2.5, 2.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 2)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
trigger21       = (AnimElem = 24)
time 			= 10
freq 			= 60
ampl   = -15
phase  = 5

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 2)
value = SCA
time = 38


[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 9999
pausemovetime   = 9999
scale           = 1.3, 1.3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1






[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 1)
time			= 30
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 2)
time 			= 35
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 35
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 30
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 2) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 24) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 66,66
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 35
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0


[State 0:     Dust Left]
type            = Explod
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3       = (AnimElem = 13)
trigger4       = (AnimElem = 17)
trigger5       = (AnimElem = 22)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.1, 0.7
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
x		        = 18
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1       = (AnimElem = 24)
x		        = 15
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 25)
x		        = 2
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 3
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 100
supermove       = 999
pausemovetime   = 999
scale           = 2,0.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 3
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 110
supermove       = 999
pausemovetime   = 999
scale           = 1.5,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 22
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 15
supermove       = 999
pausemovetime   = 999
scale           = 1.8,0.7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 15
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 999
pausemovetime   = 999
scale           = 1.5,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



;---------------
;Effects/Sound
;---------------


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 180
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1




[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 24)
value           = 66,66
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 24)
value           = 66,66
volume          = 200
channel         = 1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 1670,0
volume          = 250


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = MakeDust
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

;---------------
;Hit Details
;---------------


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 5)
trigger4        = (AnimElem = 6)
trigger5        = (AnimElem = 7)
trigger6        = (AnimElem = 8)
trigger7        = (AnimElem = 9)
trigger8        = (AnimElem = 10)
trigger9        = (AnimElem = 11)
trigger10        = (AnimElem = 12)
trigger11       = (AnimElem = 13)
trigger12       = (AnimElem = 14)
trigger13       = (AnimElem = 15)
trigger14       = (AnimElem = 16)
trigger15       = (AnimElem = 17)
trigger16       = (AnimElem = 18)
trigger17      = (AnimElem = 19)
trigger18      = (AnimElem = 20)
trigger19       = (AnimElem = 21)
trigger20       = (AnimElem = 22)
trigger21       = (AnimElem = 23)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,dodge
damage          = 50, 18
pausetime       = 2, 1
guard.pausetime = 2, 1
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S8000, 1
guardsound      = S8000, 1 
ground.slidetime    = 20
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -18.5,0
air.velocity    = -13,-1
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 24)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,dodge
damage          = 150, 80
pausetime       = 5, 4
guard.pausetime = 8, 40
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S66, 66
guardsound      = S66, 66
ground.slidetime    = 50
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -22,-9
air.velocity    = -22,-9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
ground.cornerpush.veloff = -55
air.cornerpush.veloff = -55
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 超４突撃（空中）
[Statedef 2499]
type            = A
movetype        = A
physics         = S
anim            = 2499
;velset          = 0,0,0
ctrl            = 0
poweradd        = -5000
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7050
ID              = 7036
pos             = -4,-19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7048
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
trigger21       = (AnimElem = 24)
value           = 255,255,255
time            = 3
under           = 0


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 24)
value           = 255,255,255
time            = 4
under           = 0


[State 8001, Explod-3]
type = Explod
trigger1 = Time = 0
Anim = 2996
id = 2996
pos = -40, 380
postype = back
ownpal = 1
bindtime = -1
removetime = 120
scale = .84,1.08
sprpriority = -90
supermovetime = 120

[State 8001, ModifyExplod-3]
type = ModifyExplod
trigger1 = time <= 8
Id = 2996
postype = back
pos = ceil(-96+(time*12)),120


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 3)
anim 			= 9640
ID 			    = 9640
pos 			= 45,-46
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 125
supermove       = 999
pausemovetime   = 999
scale 		    = 0.3, 0.3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 3, 3
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 2, 2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (animelem = 24)
anim 			= 6414
ID 			    = 6414
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= 16
supermove       = 999
pausemovetime   = 999
scale 		    = 2.5, 2.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 2)
time 			= 20
freq 			= 60
ampl   = -25
phase  = 5


[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
trigger21       = (AnimElem = 24)
time 			= 10
freq 			= 60
ampl   = -15
phase  = 5

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 2)
value = SCA
time = 38


[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1.3, 1.3
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     Aura]
type            = Explod
trigger1        = (!Time)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 1
pausemovetime   = 10
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1






[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 35
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= (AnimElem = 1)
time			= 30
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 2)
time 			= 35
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 35
darken 		    = 0
poweradd 		= 0
unhittable 		= 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 30
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 0,-65
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 0,-65
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 2) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 24) 
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 24)
value           = 66,66
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 404:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 25
length          = 10
palcolor        = 256
palinvertall    = 0
palbright       = 80,0,0
palcontrast     = 190,0,0
palpostbright   = 50,0,0
paladd          = 50,0,0
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 3)
x		        = 35
y		        = 0


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0


[State 0:     Dust Left]
type            = Explod
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3       = (AnimElem = 13)
trigger4       = (AnimElem = 17)
trigger5       = (AnimElem = 22)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3.1, 0.7
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10       = (AnimElem = 13)
trigger11       = (AnimElem = 14)
trigger12       = (AnimElem = 15)
trigger13       = (AnimElem = 16)
trigger14       = (AnimElem = 17)
trigger15       = (AnimElem = 18)
trigger16      = (AnimElem = 19)
trigger17      = (AnimElem = 20)
trigger18       = (AnimElem = 21)
trigger19       = (AnimElem = 22)
trigger20       = (AnimElem = 23)
x		        = 18
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1       = (AnimElem = 24)
x		        = 15
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 25)
x		        = 2
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 3
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 100
supermove       = 999
pausemovetime   = 999
scale           = 2,0.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 3
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 110
supermove       = 999
pausemovetime   = 999
scale           = 1.5,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 22
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 15
supermove       = 999
pausemovetime   = 999
scale           = 1.8,0.7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1 = AnimElem = 15
anim            = 7037
ID              = 7037
pos             = 70,35
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 50
supermove       = 999
pausemovetime   = 999
scale           = 1.5,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



;---------------
;Effects/Sound
;---------------


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 180
length          = 20
palcolor        = 256
palinvertall    = 0
palbright       = 130,130,130
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1




[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 253,253
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 24)
value           = 66,66
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe]
type            = PlaySnd
trigger1        = (animelem = 24)
value           = 66,66
volume          = 200
channel         = 1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 1670,0
volume          = 250


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


;---------------
;Hit Details
;---------------


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 4)
trigger3        = (AnimElem = 5)
trigger4        = (AnimElem = 6)
trigger5        = (AnimElem = 7)
trigger6        = (AnimElem = 8)
trigger7        = (AnimElem = 9)
trigger8        = (AnimElem = 10)
trigger9        = (AnimElem = 11)
trigger10        = (AnimElem = 12)
trigger11       = (AnimElem = 13)
trigger12       = (AnimElem = 14)
trigger13       = (AnimElem = 15)
trigger14       = (AnimElem = 16)
trigger15       = (AnimElem = 17)
trigger16       = (AnimElem = 18)
trigger17      = (AnimElem = 19)
trigger18      = (AnimElem = 20)
trigger19       = (AnimElem = 21)
trigger20       = (AnimElem = 22)
trigger21       = (AnimElem = 23)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,dodge
damage          = 50, 18
pausetime       = 2, 1
guard.pausetime = 2, 1
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S8000, 1
guardsound      = S8000, 1 
ground.slidetime    = 20
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -18.5,0
air.velocity    = -13,-1
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 24)
attr            = S, HA
hitflag         = MAFPD
guardflag       = M
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,dodge
damage          = 150, 80
pausetime       = 5, 4
guard.pausetime = 8, 40
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S66, 66
guardsound      = S66, 66
ground.slidetime    = 50
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -22,-9
air.velocity    = -22,-9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
ground.cornerpush.veloff = -55
air.cornerpush.veloff = -55
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;---------------------------------------------------------------------------
;---- Chain Combos ---------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Power Up - Start
[Statedef 700]
type            = S
movetype        = I
physics         = N
anim            = 700
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0



[State 0:     PunchSound];ダッシュ音止め用音
type            = PlaySnd
trigger1        = (!Time)
value           = 11,33
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Push Effect]
type            = Helper
trigger1        = (animelem = 3)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale	    = 1.1
size.yscale	    = 1.1

;---------------

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime); && (Pos Y >= 0)
value           = 705

[State 0:     ChangeState] ;Air
type            = Null;ChangeState
trigger1        = (!AnimTime) && (Pos Y < 0)
value           = 710
;---------------------------------------------------------------------------
; Power Up (Charge)
[Statedef 705]
type            = S
movetype        = A
physics         = S
anim            = 705
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Push Effect]
type            = Helper
trigger1        = (animelem = 6)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale	    = 1.1
size.yscale	    = 1.1

[State 0:     Push Effect]
type            = Helper
trigger1        = (animelem = 3)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 999
pausemovetime	= 999
size.xscale	    = 1.1
size.yscale	    = 1.1

[State 0:     NothitBy]
type 			= NotHitBy
triggerall = var(22) = 1
trigger1 		= (1)
value 		    = SCA 
time 			=  1


[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = ((Time > 20) && ((GameTime%70) = 0));(animelem = 2)
value           = 255,255,255
time            = 5
under           = 1



[State 0:     PowerAdd]
type            = PowerAdd
triggerall = var(9) = 1
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (1)
value           = 22

[State 0:     PowerAdd]
type            = PowerAdd
triggerall = var(9) = 0
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (1)
value           = 17

[State 0:     PowerAdd]
type            = PowerAdd
triggerall = var(2) = 1
triggerall = var(22) = 0
triggerall = var(25) = 1
trigger1        = (1)
value           = 35

[State 0:     PowerAdd]
type            = PowerAdd
triggerall = var(25) = 1
triggerall = var(22) = 1
trigger1        = (1)
value           = 57

[State 0:    Explod] ;Energy Ring
type 			= Explod
triggerall = var(22) = 1
trigger1 		= (animelem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -1
supermove       = 999
pausemovetime   = 999
scale 		    = 2.5, 2.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
triggerall = var(22) = 1
trigger1 		= (animelem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -1
supermove       = 999
pausemovetime   = 999
scale 		    = 1.2, 1.2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
triggerall = var(22) = 1
trigger1 		= (animelem = 1)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -1
supermove       = 999
pausemovetime   = 999
scale 		    = 1.5, 1.5
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 705:    PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 9999999

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7020
ignorehitpause  = 0
persistent      = 1

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = movetype = H 
ID              = 7020
ignorehitpause  = 0
persistent      = 1

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = movetype = H 
ID              = 7010
ignorehitpause  = 0
persistent      = 1

;---------------
;Sound
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 700, 0
volume		    = -100
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (time > 30) && (TimeMod = 24, 0)
value           = 700, 1
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (time > 30) && (TimeMod = 24, 0)
value           = 76, 66
volume		    = 255
channel	        = 0
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = hard
air.animtype    = hard
priority        = 7,Hit
damage          = 15, 10
pausetime       = 0, 5
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -30
hitsound        = S0, 1
guardsound      = S0, 1 
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -15, -5
air.velocity    = -15, -4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State -2,Helper];へるぱーよぶ
type = Helper
triggerall = var(22) = 1
trigger1 = time = 25
name = "singo"
ID = 5903
pos = 10, -80
postype = p1
sprpriority = 4
stateno = 5903
keyctrl = 0
ownpal = 1

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = diagup
air.animtype    = diagup
priority        = 7,Hit
damage          = 10, 10
pausetime       = 0, 4
guard.pausetime = 0, 4
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -30
hitsound        = S11320, 5530
guardsound      = S0, 1 
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -18, -8
air.velocity    = -18, -8
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 15, 10
pausetime       = 0, 5
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -30
hitsound        = S222, 122
guardsound      = S222, 122 
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -16, -5
air.velocity    = -16, -4
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = C, NA
hitflag         = MAFPD
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 15, 10
pausetime       = 0, 5
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -30
hitsound        = S0, 1
guardsound      = S0, 1 
ground.slidetime    = 12
ground.cornerpush.veloff = -1
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -10, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 3
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 3
volume		    = 255
channel	        = 2
freqmul	        = 1.0
loop		    = 1
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 4
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 1
pan		        = 0
abspan		    = 0



[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 0
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (animelem = 2)
value           = 700, 2
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = (animelem = 2)
value           = 99, 32
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (animelem = 2)
value           = 1110, 3330
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0, PalFXWiz] 
type            = PalFX
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = time > 30 && (1)
time            = 1
add             = -25,-25,-25
mul             = 328,328,328
sinadd          = 0,0,0,1
invertall       = 0
color           = 180
ignorehitpause = 0
persistent     = 1

;---------------
;Effects
;---------------

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = -10,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = -15,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = 15,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = (TimeMod = 24,0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.3, 1.1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (TimeMod = 24,0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1,0.3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1,1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1.1,1.1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1.2,1.2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(22) = 1
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 2.3,2.3
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(22) = 1
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 2.7,.3
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(22) = 1
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = .5,3
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura];tuika
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1.6,.2
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 25,0))
anim            = 7048
ID              = 7036
pos             = 5,-15
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0))
anim            = 7049
ID              = 7036
pos             = 5, 20
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 30,0))
anim            = 7050
ID              = 7036
pos             = -2, -10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.15, 1.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -15,-20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.35, 1.35
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = 15,-20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.45, 1.45
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -15,-20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.65, 1.65
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = ((time >30) && (timemod = 25,0))
anim            = 7048
ID              = 7036
pos             = 5,-55
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.55, 1.55
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >30) && (timemod = 25,0))
anim            = 7048
ID              = 7036
pos             = 5,-55
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.55, 1.55
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = ((time >30) && (timemod = 35,0))
anim            = 7049
ID              = 7036
pos             = 5, 20
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.85, 1.85
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = ((time >30) && (timemod = 30,0))
anim            = 7050
ID              = 7036
pos             = -52, -10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.15, 2.15
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >30) && (timemod = 30,0))
anim            = 7050
ID              = 7036
pos             = -52, -10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.8, 1.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
triggerall = var(25) = 1
trigger1        = ((time >50) && (timemod = 85,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(25) = 1
trigger1        = ((time >50) && (timemod = 35,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(25) = 1
trigger1        = ((time >50) && (timemod = 50,0))  
anim            = 7047
ID              = 7036
pos             = -53,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 3, 3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 85,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 35,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 50,0))  
anim            = 7047
ID              = 7036
pos             = -53,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2.5, 2.5
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     Elec]
type            = Explod
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 85,0)) 
anim            = 7048
ID              = 7036
pos             = 13,10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 23,77
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 35,0))  
anim            = 7047
ID              = 7036
pos             = -33,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = ((time >50) && (timemod = 50,0))  
anim            = 7047
ID              = 7036
pos             = -53,30
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -61,43
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >50) && (timemod = 75,0)) 
anim            = 7048
ID              = 7036
pos             = 12,42
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -39,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1




[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Ring]
type            = Explod
trigger1        = (!time)
anim            = 7020
ID              = 7020
pos             = 3,-40
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.1, 1.1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.95,0.58))
size.yscale		= (IfElse(Random <= 499,0.95,0.58))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.59,0.75))
size.yscale		= (IfElse(Random <= 499,0.59,0.75))

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 3

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(9) = 1
triggerall = var(25) = 0
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 4

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(25) = 1
triggerall = var(22) = 0
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 6

[State 0:     EnvShake]
type 			= EnvShake
triggerall = var(25) = 1
triggerall = var(22) = 1
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 75
ampl 			= 9

;---------------
[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7036
ignorehitpause  = 0
persistent      = 1

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7049
ignorehitpause  = 0
persistent      = 1

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7010
ignorehitpause  = 0
persistent      = 1

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0



[State 0:     Huge dust]
type            = Explod
trigger1        = ((command != "holda") && (command !="holdx"))
anim            = 7014
ID              = 7014
pos             = 3, 0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 0
ctrl            = 1
;---------------------------------------------------------------------------
;Super Jump
[Statedef 9001]
type            = A
movetype        = I
physics         = N
anim            = 41
velset          = 0,-15
ctrl            = 0
poweradd        = 20
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, VarSet]
type            = VarSet
trigger1        = Time = 0
var(10)         = 1

[State 0, VelSet]
type            = VelSet
trigger1        = AnimTime = 0
x               = 0
y               = -11

[State 0, ChangeState]
type            = ChangeState
trigger1        = AnimTime = 0
value           = 50
ctrl            = 1

[State 0, ChangeAnim]
type            = ChangeAnim
trigger1        = Time = 0
value           = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = Time >= 1
value           = 1

[state 0, VelSetFwd]
type            = VelSet
trigger1        = command = "holdfwd"
x               = 7

[state 0, VelSetBack]
type            = VelSet
trigger1        = command = "holdback"
x               = -7

[state 0, VelAdd]
type            = VelAdd
trigger1        = Time > 10
x               = 0
y               = .44

;---------------
;Sound
;---------------

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,1230

;---------------
;Effects
;---------------

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (Time = 0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.2, 1.2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------

;---------------
[state 0, End]
type            = ChangeState
trigger1        = Pos Y >= 1 
value           = 52
ctrl            = 1

;---------------------------------------------------------------------------
;Flashy kill
[Statedef 1122]
type            = S
movetype        = I
physics	        = N
velset          = 0,0,0
ctrl            = 0



[State 0, ]
type            = AssertSpecial
trigger1        = (1)
flag            = Noshadow
flag2           = Invisible
ignorehitpause  = 1

[State 0:     super effect]
type            = AssertSpecial
triggerall = roundstate != 2
trigger1        = time < 1500
flag           = NoBarDisplay




[State 0, ]
type            = AllPalFX
triggerall = roundstate != 2
trigger1        = time =[0,40]
add             = (255-((time)*6)),(-255+((time)*6)),(-255+((time)*6))
mul             = (80+((time)*4)),(0+((time)*4)),(0+((time)*4))
time            = 1
ignorehitpause  = 1

[State -1:		BGPalFX]
type			= BGPalFX
triggerall = roundstate != 2
trigger1 		= time = 0
time			= 0
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,255
invertall		= 0
color			= 256
supermove = 1

[State 0:     PlaySND]
type            = PlaySnd
triggerall = roundstate != 2
trigger1        = (Time = 0)
value           = 1122, 0
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 10
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 11
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 12
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 13
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 14
value           = 0

[State -2:      StopSND] ;Stop Powerup Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 1

[State -2:      StopSND] ;Stop Powerup  wind Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 2

[State -2:      StopSND] ;Stop Powerup rumble Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 3

[State -2:      PosSet]
type 			= PosSet
trigger1 		= (Pos Y > 0) && (StateNo = 0)
y               = 0

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 40
range           = -40, -10

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 41
range           = 10, 40

[State -2: Win Once]
Type            = VarSet
Trigger1        = Win
var(59)         = 1

[State -2, 5] 
type                = AttackMulSet
triggerall          = !Var(59) && p2life <= 1
trigger1            = RoundNo != 1 && Win=0
trigger2            = p2stateno = 987123
value               = 9999



[state -2, 1]
type                = Helper
trigger1            = NumHelper(9010) = 1
trigger1            = NumHelper(9011) = 0
trigger1            = enemy(0), stateno = 987123
ID                  = 9011
pos                 = 160, -140
postype             = left
stateno             = 9011
helpertype          = normal
name                = "NO MERCY!! MSG"
keyctrl             = 0
ownpal              = 1

z;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3:      DisplayToClipboard]
type            = DisplayToClipboard
trigger1        = (1)
text		    = "Var(10) = %d, Var(11) = %d"
params		    = Var(10), Var(11)
