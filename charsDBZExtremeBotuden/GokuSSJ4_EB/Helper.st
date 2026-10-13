;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	sheld
;	
;------------------------------------------------------

;-Stateno 8000-8999

;=============================================================
;---------------------------------------------------------------------------
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
;sprpriority     = 0
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
; Ki Shot Helper
[Statedef 8000]
type            = S
movetype        = A
physics         = S
anim            = 8002
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 1

;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 20
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT,NP,SP,HP
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 0: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 10,90
;pos2           = 0,0
spacing         = 2

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------
;---------------
;Hit Details
;---------------

;---------------


[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1        = (1)
attr            = S, SP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 25,8
pausetime       = 0, 5
guard.pausetime = 0, 2
sparkno         = S7006
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, -0.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
triggerall = parent,var(9) = 1
trigger1        = (1)
attr            = S, SP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 50,14
pausetime       = 0, 5
guard.pausetime = 0, 2
sparkno         = S7006
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, -0.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1        = (1)
attr            = S, SP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 80,20
pausetime       = 0, 5
guard.pausetime = 0, 2
sparkno         = S7006
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, -0.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 1
trigger1        = (1)
attr            = S, SP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 220,40
pausetime       = 0, 5
guard.pausetime = 0, 2
sparkno         = S7006
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, -0.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8010



;---------------------------------------------------------------------------
; Ki Shot Destroy
[Statedef 8010]
type            = S
movetype        = I
physics         = N
anim            = 7005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
supermove = 1
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------

; 8483時止めヘルパー
[Statedef 8483]
type            = S
movetype        = A
physics         = S
anim            = 8483
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 0
supermove = 999

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (enemynear(0),alive=0)
time 			= 0
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 1
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoMusic

;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = root, stateno = 3681
trigger2 = root, stateno = 919
trigger3 = root, stateno = 3000
trigger4 = root, stateno = 9900
trigger5 = root, stateno = 1474
trigger6 = root, stateno = 1557
trigger7 = root, stateno = 2488
trigger8 = root, stateno = 2499
trigger9 = root, stateno = 665
trigger10 = root, stateno = 554
trigger11 = root, stateno = 2201
trigger12 = root, stateno = 1149
trigger13 = root, stateno = 6868
trigger14 = root, stateno = 117
trigger15 = root, stateno = 3214
trigger16 = (enemynear(0),alive=0)
trigger17        = (AnimElem = 4) 


; 観戦ヘルパー

[State 0, ]
type            = AssertSpecial
trigger1        = (1)
flag            = Noshadow
ignorehitpause  = 1

[Statedef 5559]
type            = S
movetype        = I
physics         = S
anim            = 5559
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 0
supermove = 9999

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -55,-55,-55
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:     界王神];やりますね。。超サイヤ人４の・・・
type = Explod
trigger1 = (AnimElem = 2)
Anim = 3819
id = 3819
pos = 250,40
postype = left
ownpal = 0
bindtime = 780
removetime = 780
scale = 0.18, 0.18
sprpriority = 1
supermovetime = 1900
ontop           = 0
facing = 1

[State 0:     老界王神];お前、何をみとるんじゃ、よくみてみい。
type = Explod
trigger1 = (AnimElem = 3)
Anim = 3820
id = 3820
pos = -10,40
postype = left
ownpal = 0
bindtime = 260
removetime = 260
scale = 0.18, 0.18
sprpriority = 1
supermovetime = 1900
ontop           = 0
facing = 1

[State 0:     老界王神];ゴクウの奴これっぽっちもパワーを出しちゃおらん。
type = Explod
trigger1 = (AnimElem = 4)
Anim = 3821
id = 3821
pos = -10,40
postype = left
ownpal = 0
bindtime = 310
removetime = 310
scale = 0.18, 0.18
sprpriority = 1
supermovetime = 1900
ontop           = 0
facing = 1


[State 0:     界王神];そ、そんな。
type = Explod
trigger1 = (AnimElem = 5)
Anim = 3822
id = 3822
pos = 250,40
postype = left
ownpal = 0
bindtime = 90
removetime = 90
scale = 0.16, 0.16
sprpriority = 1
supermovetime = 1900
ontop           = 0
facing = 1

[State 0:     koe];界王神セリフ
type            = PlaySnd
trigger1        = (AnimElem = 2)
value           = 55,59
volume          = 255
channel         = -1
lowpriority     = 1 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];老界王神のセリフ
type            = PlaySnd
trigger1        = (AnimElem = 3)
value           = 55,666
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];老界王神のセリフ
type            = PlaySnd
trigger1        = (AnimElem = 4)
value           = 55,599
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     koe];界王神のセリフ
type            = PlaySnd
trigger1        = (AnimElem = 5)
value           = 55,60
volume          = 255
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = root, stateno = 3214
trigger2 = root, stateno = 1977
trigger3 = root, stateno = 9992
trigger4 = root, stateno = 180
trigger5   = (enemynear(0),alive=0)
trigger6        = (AnimElem = 6) 

; 観戦ヘルパー２

[Statedef 6020]
type            = S
movetype        = I
physics         = S
anim            = 6020
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 0
supermove = 9999

[State 0:     koe];セリフ
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 55,59
volume          = 255
channel         = -1
lowpriority     = 1 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1 = root, stateno = 3214
trigger2 = root, stateno = 1977
trigger3 = root, stateno = 9992
trigger4 = root, stateno = 180
trigger5   = (enemynear(0),alive=0)
trigger6        = (AnimElem = 5) 

; 煽りヘルパー

[Statedef 12044]
type            = S
movetype        = I
physics         = S
anim            = 12044
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 0
supermove = 9999

[State 0:     koe];セリフ
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 111,221
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1   = (enemynear(0),alive=0)
trigger2        = (AnimElem = 5) 



; 爆発
[Statedef 4100]
type            = S
movetype        = A
physics         = S
anim            = 4100
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 0
supermove = 999

;---------------

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = time = 1
value           = 3050,3
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound];声
type            = PlaySnd
trigger1        = time = 1
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;--------------


;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (AnimElem = 18) 

;---------------------------------------------------------------------------
; Ki Shot Helper(tuik)
[Statedef 8339]
type            = S
movetype        = A
physics         = S
anim            = 8339
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
numhits         = 1

;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 20
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 0: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 10,90
;pos2           = 0,0
spacing         = 2

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------
;---------------
;Hit Details
;---------------

;---------------


[State 0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, SP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 23,8
pausetime       = 0, 5
guard.pausetime = 0, 2
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -7, -0.5
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2
;---------------

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8010

;---------------------------------------------------------------------------
; Ki Shot Destroy(tuik)
[Statedef 8010]
type            = S
movetype        = I
physics         = N
anim            = 7005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
; 極身
[Statedef 3699]
type            = S
movetype        = I
physics         = N
anim            = 3699
velset          = 0,0,0
ctrl            = 1
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 0
supermove = 0
;---------------

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%3) = 0
time = 1
add = 15,15,15
ignorehitpause = 1

[State 1002:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 1000
length          = 2
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


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

; 気はこうやって使うんだの気
[Statedef 8015]
type            = S
movetype        = A
physics         = S
anim            = 8005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 1
y               = 0

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT,NP,SP,HP
ignorehitpause  = 1


;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = Time = 0
value           = 255,255,255
time            = 1
under           = 0
;;
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = 5
envshake.phase  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFPD
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7, dodge
damage          = 250, 30
pausetime       = 2, 18
guard.pausetime = 7, 35
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 90
ground.hittime  = 60
guard.hittime   = 60
air.hittime     = 60
ground.velocity = -25, -7.5
air.velocity    = -25, -7.5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -22, -6
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 20
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(22) = 0
triggerall = parent,var(9) = 1
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFPD
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7, dodge
damage          = 350, 40
pausetime       = 2, 24
guard.pausetime = 7, 35
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 90
ground.hittime  = 60
guard.hittime   = 60
air.hittime     = 60
ground.velocity = -29, -8
air.velocity    = -29, -8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -22, -6
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 20

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 0
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFPD
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7, dodge
damage          = 500, 50
pausetime       = 2, 20
guard.pausetime = 7, 35
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 90
ground.hittime  = 60
guard.hittime   = 60
air.hittime     = 60
ground.velocity = -25, -7.5
air.velocity    = -25, -7.5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -22, -6
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 20

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 1
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFPD
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7, dodge
damage          = 1500, 60
pausetime       = 2, 24
guard.pausetime = 7, 35
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 90
ground.hittime  = 60
guard.hittime   = 60
air.hittime     = 60
ground.velocity = -29, -8
air.velocity    = -29, -8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -22, -6
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 15
envshake.freq   = 80
envshake.ampl   = -20
envshake.phase  = 20

;---------------

[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (movecontact) 
trigger2        = (time = 15) 


;---------------------------------------------------------------------------
; Invisible Ki Destroy
[Statedef 8020]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
; Push Effect
[Statedef 8030]
type            = S
movetype        = I
physics         = S
anim            = 8030
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 15
y		        = 0

[State 0:    PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
time            = 1
value           = SCA

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (Time = 20)

;---------------------------------------------------------------------------
; Air Ki Shot Helper
[Statedef 8040]
type            = S
movetype        = A
physics         = S
anim            = 8011
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 10
y               = 10

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8050
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
trigger1        = (1)
attr            = S, NP
hitflag         = MAFD
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 24, 4
pausetime       = 0, 7
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 15
guard.hittime   = 15
air.hittime     = 15
ground.velocity = 0, 0
air.velocity    = -3, 4
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -4
envshake.phase  = 2
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(22) = 0
triggerall = parent,var(25) = 1
trigger1        = (1)
attr            = S, NP
hitflag         = MAFD
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 70, 8
pausetime       = 0, 7
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 15
guard.hittime   = 15
air.hittime     = 15
ground.velocity = 0, 0
air.velocity    = -3, 4
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -4
envshake.phase  = 2

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 1
triggerall = parent,var(22) = 1
trigger1        = (1)
attr            = S, NP
hitflag         = MAFD
guardflag       = H
animtype        = Light
air.animtype    = Light
priority        = 7, dodge
damage          = 200, 50
pausetime       = 0, 7
guard.pausetime = 0, 5
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 15
guard.hittime   = 15
air.hittime     = 15
ground.velocity = 0, 0
air.velocity    = -3, 4
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -4
envshake.phase  = 2

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))|| (pos y > 0)
value           = 8050

;---------------------------------------------------------------------------
; Air Ki Shot Destroy
[Statedef 8050]
type            = S
movetype        = I
physics         = N
anim            = 7005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (animtime = 0)
;---------------------------------------------------------------------------
; Taioken Helper
[Statedef 8060]
type            = S
movetype        = A
physics         = S
anim            = 7051
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (time = 0)
value           = 255,255,255
time            = 1
under           = 0

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (time = 0)
attr            = S, NP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 0, 0
pausetime       = 0, 70
guard.pausetime = 0, 0
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = -1
guardsound      = -1
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (animtime = 0)

;---------------------------------------------------------------------------

; K.Y.O. Ki punch helper
[Statedef 8065]
type            = S
movetype        = I
physics         = S
anim            = 8020
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1


[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8020
attr            = SCA, NP, SP, HP
ignorehitpause  = 1





;[State 0:    HitBy]
;type            = HitBy
;trigger1        = (Time > 0)
;value           = SCA, NP, SP, HP
;time            = 1
;ignorehitpause  = 1

;[State 0:    HitOverride]
;type            = HitOverride
;trigger1        = (Time > 0)
;slot            = 1
;time            = 1
;stateno         = 8066
;attr            = SCA, NP, SP, HP
;ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 0:     KiSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1050,0
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

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (time = 0)
time 			= 999
framegap 		= 4
length 		    = 9999
paladd 		    = 500, 50, 50
palmul 		    = 50, 50, 50
palcontrast 	= 333, 0, 0
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (time = 0)
attr            = S, NP
hitflag         = MAFP
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
priority        = 4, Hit
damage          = 20, 5
pausetime       = 35, 35
guard.pausetime = 30, 35
sparkno         = S7006
guard.sparkno   = S7006
sparkxy         = -10, 0
hitsound        = S1050, 0
guardsound      = S1050, 1
ground.slidetime    = 10
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -7, 0
air.velocity    = -7, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 50, 0
givepower       = 20, 3
kill            = 0;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = 5
envshake.phase  = 5
;---------------

;---------------

[State 0:    End]
type            = changestate
trigger1        = (!animtime) || (movecontact) && (!animtime)
value           = 8066

;---------------------------------------------------------------------------
; K.Y.O. Ki punch destroy
[Statedef 8066]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
;Rock
[Statedef 8200]
type 			= S
movetype		= I
physics		    = N
anim			= 8200
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-.5,-1))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .5




[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 1
[Statedef 8210]
type 			= S
movetype		= I
physics		    = N
anim			= 8210
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-1.5,-2.5))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .1


[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 2
[Statedef 8220]
type 			= S
movetype		= I
physics		    = N
anim			= 8220
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		= (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			= var(0)
y			= 0

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
y			= 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			= (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			= (IfElse(Random <= 499,-2,-3))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			= .1



[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		= 1
framegap 		= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)
;----------------------------------------------------------------------------------------------------------------
;-Kamehameha stage 1 Beam
[Statedef 8100]
type            = S
movetype        = A
physics         = S
anim            = 6007
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 7
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT,SP,NP,HP
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 20
timegap		    = 2
framegap 		= 3
length 		    = 8
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100,100,100
trans 		    = add

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 30, -58
;ignorehitpause = 0
;persistent = 1

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(9) = 0
trigger1        = (!Time)
attr 			= S, HP
hitflag 		= MAF
guardflag 		= M
animtype 		= Hard
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 500,100
pausetime 		= 0,30
guard.pausetime =  0,35
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  90
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -55, -9
air.velocity    = -55, -9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 20
envshake.freq   = 80
envshake.ampl   = 14
envshake.phase  = 10

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(25) = 0
triggerall = parent,var(9) = 1
trigger1        = (!Time)
attr 			= S, HP
hitflag 		= MAF
guardflag 		= M
animtype 		= Hard
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 750,150
pausetime 		= 0,30
guard.pausetime =  0,35
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  90
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -55, -9
air.velocity    = -55, -9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 20
envshake.freq   = 80
envshake.ampl   = 14
envshake.phase  = 10

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(22) = 0
triggerall = parent,var(25) = 1
trigger1        = (!Time)
attr 			= S, HP
hitflag 		= MAF
guardflag 		= M
animtype 		= Hard
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 1100,200
pausetime 		= 0,30
guard.pausetime =  0,35
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  90
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -55, -9
air.velocity    = -55, -9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 20
envshake.freq   = 80
envshake.ampl   = 14
envshake.phase  = 10

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(22) = 1
trigger1        = (!Time)
attr 			= S, HP
hitflag 		= MAF
guardflag 		= M
animtype 		= Hard
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 2550,300
pausetime 		= 0,30
guard.pausetime =  0,35
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  90
ground.hittime  = 33
guard.hittime   = 33
air.hittime     = 33
ground.velocity = -55, -9
air.velocity    = -55, -9
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 20
envshake.freq   = 80
envshake.ampl   = 14
envshake.phase  = 10

;---------------

;---------------

[State 0:    End]
type            = DestroySelf
trigger1        = (!Animtime)

;---------------------------------------------------------------------------
;Kamehameha Ring waves
[Statedef 8101]
type            = S
movetype        = I
physics         = N
anim            = 6003
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .60, .60, .60
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3000,-1,51))
trigger2 		= (parent,stateno=3001)
trigger3 		= (parent,movetype=H)
;---------------------------------------------------------------------------
;Kamehameha Ball
[Statedef 8102]
type            = S
movetype        = I
physics         = N
anim            = 6001
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .20, .20, .20
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3000,-1,51))
trigger2 		= (parent,stateno=3001)
trigger3 		= (parent,movetype=H)

;----------------------------------------------------------------------------------------------------------------
;kamehame 10倍かめはめ波
[Statedef 8103]
type            = S
movetype        = A
physics         = S
anim            = 6009
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
ontop = 0



;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT,SP,NP
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------
;---------------
;Effects
;---------------


[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
pos             = 60,0


[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 35, -43
;ignorehitpause = 0
;persistent = 1

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%1) = 0
time = 1
add = 255,0,0
ignorehitpause = 1

;[State 0:	AfterImage]
;type			= AfterImage
;trigger1 		= Time = 1
;time 			= 99
;timegap		    = 2
;framegap 		= 2
;length 		    = 999
;paladd 		    = 10, 0, 0
;palmul 		    = 10, 0, 0
;palcontrast 	= 255,0,0
;trans 		    = add
;sprpriority = 7
;ontop = 1    

;[State 0:	AfterImage]
;type			= AfterImage
;trigger1 		= Time = 1
;time 			= 999
;timegap		    = 999
;framegap 		= 999
;length 		    = 999
;paladd 		    = 200, 0, 0
;palmul 		    = 200, 0, 0
;palcontrast 	= 255,0,0
;trans 		    = Add
;alpha = 256,256 
;sprpriority = 7
;ontop = 1 

[State 0, ]
type            = PlaySnd
trigger1        = time = 1
value           = 3200, 1110
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd
trigger1        = time = 55
value           = 3200, 1110
volume          = 255
channel         = -1

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(22) = 0
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 12)
trigger10        = (AnimElem = 14)
trigger11        = (AnimElem = 16)
trigger12        = (AnimElem = 17)
trigger13        = (AnimElem = 18)
trigger14        = (AnimElem = 20)
trigger15        = (AnimElem = 23)
trigger16        = (AnimElem = 24)
trigger17        = (AnimElem = 26)
trigger18        = (AnimElem = 28)
trigger19        = (AnimElem = 29)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 200,0
pausetime 		= 4,55
guard.pausetime =  0,30
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3270 ,1110
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  300
guard.slidetime    = 300
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -15,0
air.velocity    = -9999,0
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -50, 0
down.hittime    = 30
down.bounce     = 0
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 0
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 40
envshake.freq   = 777
envshake.ampl   = -60
envshake.phase  = 700
p2stateno       = 976504

[State 0: 	HitDef]
type            = HitDef
triggerall = parent,var(22) = 1
trigger1        = (AnimElem = 1)
trigger2        = (AnimElem = 2)
trigger3        = (AnimElem = 3)
trigger4        = (AnimElem = 4)
trigger5        = (AnimElem = 5)
trigger6        = (AnimElem = 6)
trigger7        = (AnimElem = 7)
trigger8        = (AnimElem = 8)
trigger9        = (AnimElem = 12)
trigger10        = (AnimElem = 14)
trigger11        = (AnimElem = 16)
trigger12        = (AnimElem = 17)
trigger13        = (AnimElem = 18)
trigger14        = (AnimElem = 20)
trigger15        = (AnimElem = 23)
trigger16        = (AnimElem = 24)
trigger17        = (AnimElem = 26)
trigger18        = (AnimElem = 28)
trigger19        = (AnimElem = 29)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 500000,500000
pausetime 		= 4,55
guard.pausetime =  0,30
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3270 ,1110
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  300
guard.slidetime    = 300
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -15,-1
air.velocity    = -9999,-1
air.juggle      = 0
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -50, 0
down.hittime    = 30
down.bounce     = 0
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 0;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 40
envshake.freq   = 777
envshake.ampl   = -60
envshake.phase  = 700;koko
p2stateno       = 976504


[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 300,300
pausetime 		= 4,55
guard.pausetime =  0,30
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,1110
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  300
guard.slidetime    = 300
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -7,-5
air.velocity    = -7,-5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -50, -20
down.hittime    = 30
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 0;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 40
envshake.freq   = 777
envshake.ampl   = -60
envshake.phase  = 700
p2stateno       = 976504

[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 30)
trigger2        = (AnimElem = 31)
trigger3        = (AnimElem = 32)
trigger4        = (AnimElem = 27)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 5555500,5555500
pausetime 		= 1,35
guard.pausetime =  0,30
sparkno 		= S202020;7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S993 ,10
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  300
guard.slidetime    = 300
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -20,-5
air.velocity    = -20,-5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -50, -20
down.hittime    = 30
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 0;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 10
envshake.freq   = 200
envshake.ampl   = -200
envshake.phase  = 5555
p2stateno       = 976504

[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 33)
trigger2        = (AnimElem = 34)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 55500000,55500000
pausetime 		= 1,35
guard.pausetime =  0,30
sparkno 		= S20202020;7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S992 ,102
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  300
guard.slidetime    = 300
ground.hittime  = 30
guard.hittime   = 30
air.hittime     = 30
ground.velocity = -20,-15
air.velocity    = -20,-15
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -50, -20
down.hittime    = 30
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 50
envshake.freq   = 200
envshake.ampl   = -200
envshake.phase  = 55




[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 35)
trigger2        = (AnimElem = 36)
attr 			= S, HP
hitflag 		= MAFPD
guardflag 		= 
animtype 		= DiagUp
air.animtype 	= DiagUp
fall.animtype 	= DiagUp
priority 		= 7,dodge
damage 		    = 55500000,55500000
pausetime 		= 55,99999
guard.pausetime =  0,30
sparkno 		= S202020;S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,1100
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  9999
guard.slidetime    = 9999
ground.hittime  = 3099
guard.hittime   = 3099
air.hittime     = 30
ground.velocity = -50,-1
air.velocity    = -50,-1
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -50, -1
down.hittime    = 9999
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 0
kill            = 1
getpower        = 0, 0
givepower       = 150, 100
envshake.time   = 40
envshake.freq   = 100
envshake.ampl   = -100
envshake.phase  = 2000

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = (AnimElem = 35)
trigger2 = (AnimElem = 36)
value = -3333333333
kill = 1


[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999



[State 901, Hurt]
type = TargetLifeAdd
trigger1        = (AnimElem = 10)
trigger2        = (AnimElem = 30)
trigger3        = (AnimElem = 31)
trigger4        = (AnimElem = 32)
trigger5        = (AnimElem = 27)
value = -300
kill = 0



;---------------

;---------------

[State 0:    End]
type            = DestroySelf
trigger1        = (!Animtime)


;---------------------------------------------------------------------------
;Kamehameha Ring waves
[Statedef 8104]
type            = S
movetype        = I
physics         = N
anim            = 6004
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%2) = 0
time = 1
add = 200,2,2
ignorehitpause = 1

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------


;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 15
length 		    = 30
paladd 		    = 0, 0, 0
palmul 		    = 260, 0, 0
palcontrast 	= 260,0,0
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3002,-1,51))
trigger2 		= (parent,stateno=3003)
trigger3 		= (parent,movetype=H)
;---------------------------------------------------------------------------
;Kamehameha Ball
[Statedef 8105]
type            = S
movetype        = I
physics         = N
anim            = 6002
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State -2]
type = PalFX;点滅
trigger1 = (GameTime%2) = 0
time = 1
add = 200,2,2
ignorehitpause = 1

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999
framegap 		= 10;4
length 		    = 30
paladd 		    = 0, 0, 0
palmul 		    = 260, 0, 0
palcontrast 	= 260,0,0
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3002,-1,51))
trigger2 		= (parent,stateno=3003)
trigger3 		= (parent,movetype=H)

;---------------------------------------------------------------------------
; かめカットイン
[Statedef 2971]
type            = S
movetype        = I
physics         = S
anim            = 2971
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
numhits         = 0
supermovetime 	= 999
pausemovetime 	= 999
supermove 	= 1


;---------------
;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


;---------------
;Hit Details
;---------------
;---------------
;Hit Details
;---------------

;---------------


[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, SP
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 0,0
pausetime       = 100, 0
guard.pausetime = 0, 2
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity =  0, 0
air.velocity    =  0, 0 
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 2971
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2
;---------------

;---------------

[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= Time < 1000


; いくぞカットイン
[Statedef 2996]
type            = S
movetype        = I
physics         = S
anim            = 2996
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
numhits         = 0
supermovetime 	= 999
pausemovetime 	= 999
supermove 	= 1


;---------------
;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0


;---------------
;Hit Details
;---------------
;---------------
;Hit Details
;---------------

;---------------


[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, SP
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 0,0
pausetime       = 100, 0
guard.pausetime = 0, 2
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity =  0, 0
air.velocity    =  0, 0 
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 2971
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2
;---------------

;---------------

[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= Time < 1000

;龍拳カットイン
[Statedef 29962]
type            = S
movetype        = I
physics         = S
anim            = 29962
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
numhits         = 0
supermovetime 	= 999
pausemovetime 	= 999
supermove 	= 1

[State 29962:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 100
length          = 100
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
supermove       = 270
pausemovetime   = 270
;---------------
;---------------
;Sound
;---------------

;---------------
;Effects
;---------------
;---------------
;Hit Details
;---------------
;---------------
;Hit Details
;---------------

;---------------


[State 0: 	HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, SP
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 0,0
pausetime       = 100, 0
guard.pausetime = 0, 2
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity =  0, 0
air.velocity    =  0, 0 
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 2971
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = 1;IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
envshake.time   = 9
envshake.freq   = 60
envshake.ampl   = 4
envshake.phase  = 2
;---------------

;---------------

[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= Time < 1000
