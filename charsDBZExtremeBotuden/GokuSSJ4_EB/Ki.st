;================================
;Goku Super4
;================================

;------------------------------------------------------
;Author:	sheld
;	
;------------------------------------------------------

;-Stateno 2000-2999

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
; Ki Shot
[Statedef 2000]
type            = S
movetype        = A
physics         = S
anim            = 2000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
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

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------



[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki ball]
type            = Explod
trigger1        = (!Time)
anim            = 8000
ID              = 8000
pos             = 15,-60
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 2)
anim            = 8001
ID              = 8001
pos             = 79,-99;40,-65
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 2, 2) 
helpertype	    = normal
name		    = "Ki Shot Straight"
id              = 8000
pos		        = 79,-99;42,-67
postype         = p1
facing		    = 1
stateno	        = 8000
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------
[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2001
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Ready
[Statedef 2001]
type            = S
movetype        = A
physics         = S
anim            = 2001
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "z") && (power >= 100)
value           = 2002
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Fire 2
[Statedef 2002]
type            = S
movetype        = A
physics         = S
anim            = 2002
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8001
ID              = 8001
pos             = 59,-79;35,-65
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Ki Shot Straight"
id              = 8000
pos		        = 59,-79
postype         = p1
facing		    = 1
stateno	        = 8000
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1
;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2003
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Ready 2
[Statedef 2003]
type            = S
movetype        = A
physics         = S
anim            = 2001
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "z") && (power >= 100)
value           = 2000
ctrl		    = 1
;---------------------------------------------------------------------------
; 気はこうやって使うんだ！
[Statedef 2005]
type            = S
movetype        = A
physics         = S
anim            = 2233
;velset          = 0,0,0
ctrl            = 0
poweradd        = -300
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8787, 10
volume		    = 255
channel	        = 0
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= time = 5 
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8050, 2
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0


[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 2, 2)
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


[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 2, 2)
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

;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 3) 
helpertype	    = normal
name		    = "invisble Ki"
id              = 8000
pos		        = 42,0;42,0
postype         = p1
facing		    = 1
stateno	        = 8015
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 2
size.yscale	    = 2

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
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Ready
[Statedef 2020]
type            = A
movetype        = A
physics         = A
anim            = 2020
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -2

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "holdz") && (power >= 100)
value           = 2021
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Fire
[Statedef 2021]
type            = A
movetype        = A
physics         = A
anim            = 2021
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8010
ID              = 8010
pos		        = 46,-65;35,-43
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Air Ki Shot"
id              = 8040
pos		        = 46,-65;38,-40
postype         = p1
facing		    = 1
stateno	        = 8040
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2022
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Ready 2
[Statedef 2022]
type            = A
movetype        = A
physics         = A
anim            = 2020
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -2

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "holdz") && (power >= 100)
value           = 2023
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Fire 2
[Statedef 2023]
type            = A
movetype        = A
physics         = A
anim            = 2021
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8010
ID              = 8010
pos		        = 44,-60
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Air Ki Shot"
id              = 8040
pos		        = 44,-60
postype         = p1
facing		    = 1
stateno	        = 8040
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2020
ctrl		    = 1



;---------------------------------------------------------------------------
; ガードキャンセル　瞬間移動
[Statedef 8109]
type            = S
movetype        = A
physics         = S
anim            = 8109
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
supermove       = 1
pausemovetime   = 10

;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 70
length          = 10
palcolor        = 156
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 270,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 4)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 4)
x               = (P2BodyDist X-40)

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = -5
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
x		        = -4
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 7)
x		        = -3
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 8)
x		        = -2
y		        = 0

[State 500:     VelSet]
type            = VelSet
trigger1        = (animelem = 9)
x		        = -1
y		        = 0


[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 100

;---------------
;Sound/Effects
;---------------

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 90
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 105
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 105
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 33, 36
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 4)
value           = 500, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0


[State 0:    ChangeState]
type            = ChangeState
trigger1        = (animelem = 21)
value           = 0
ctrl		    = 1








;;;;;;;;;;;;;;;;;;;;;











;---------------------------------------------------------------------------
; ガードキャンセル　気合
[Statedef 2025]
type            = S
movetype        = A
physics         = S
anim            = 1029
;velset          = 0,0,0
ctrl            = 0
poweradd        = -500
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
supermove       = 1
pausemovetime   = 10

;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 50
length          = 10
palcolor        = 156
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 270,0,0
palpostbright   = 0,0,0
paladd          = 200,20,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------
;Sound/Effects
;---------------

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 17
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 17
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 7
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 2025, 0
volume		    = 255
channel	        = 0
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8050, 23
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 1120, 550
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

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
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 3) 
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
trigger1 		= (AnimElem = 3) 
time 			= 25
freq 			= 100
ampl   = -20
phase  = 20


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3)
value           = 255,255,255
time            = 2
under           = 0



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
ground.velocity = -20, -8.9
air.velocity    = -20, -7.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.juggle      = 4
fall            = 1
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



;---------------
;Misc
;---------------



;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 気合
[Statedef 3385]
type            = S
movetype        = A
physics         = S
anim            = 1020
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
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 55, 58
volume		    = 255
channel	        = 0
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8050, 23
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 1120, 550
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

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
scale           = 2, 2
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (AnimElem = 3) 
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
trigger1 		= (AnimElem = 3) 
time 			= 25
freq 			= 100
ampl   = -20
phase  = 20


[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3)
value           = 255,255,255
time            = 2
under           = 0



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
ground.velocity = -20, -10
air.velocity    = -20, -7.0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.juggle      = 4
fall            = 1
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



;---------------
;Misc
;---------------



;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1





















;---------------------------------------------------------------------------
; 超４ナックル
[Statedef 2040]
type            = S
movetype        = A
physics         = S
anim            = 1050
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 10
y		        = 0

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
;Sound/Effects
;---------------

[State 0:     PunchSound]
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

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 20
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

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60,36
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Misc
;---------------


[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = MAFP
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4, Hit
damage          = 150, 15
pausetime       = 30, 30
guard.pausetime = 20, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -45
hitsound        = S201, 1
guardsound      = S66, 66 
ground.slidetime    = 20
ground.cornerpush.veloff = -6
ground.hittime  = 18
guard.hittime   = 18
air.hittime     = 20
ground.velocity = -20, 0
air.velocity    = -17, -3
air.juggle      = 4
fall            = 0
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
getpower        = 100, 20
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 18
envshake.phase  = 15




;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 超４ナックル(強力ver)
[Statedef 2050]
type            = S
movetype        = A
physics         = S
anim            = 1051
;velset          = 0,0,0
ctrl            = 0
poweradd        = 250
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 30
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 1121,12
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (animelem = 8)
value           = S60, 78
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (animelem = 9)
value           = S55, 1
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 99,53
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (animelem = 5)
time            = 33
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

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 9) 
value           = 255,255,255
time            = 3
under           = 0

;---------------
;Misc
;---------------

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 5)
value = SCA
time = 43

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, NA
hitflag         = MAFP
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 4, Hit
damage          = 320, 55
pausetime       = 35, 28
guard.pausetime = 20, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -45
hitsound        = S444, 21
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -22, -7
air.velocity    = -22, -7
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
getpower        = 150, 150
givepower       = 100, 50
envshake.time   = 23
envshake.freq   = 65
envshake.ampl   = 20
envshake.phase  = 18

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAFP
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4, Hit
damage          = 10, 3
pausetime       = 5, 3
guard.pausetime = 5, 3
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -25
hitsound        = S1120, 550
guardsound      = S1120, 550
ground.slidetime    = 50
ground.cornerpush.veloff = -10
ground.hittime  = 80
guard.hittime   = 80
air.hittime     = 80
ground.velocity = -3,-6.5
air.velocity    = -3,-5.5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 0
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 100, 150
givepower       = 0, 0
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 20
envshake.phase  = 20



[State 0:     Elec]
type            = Explod
trigger1        = ((time >25) && (timemod = 27,0)) 
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
trigger1        = ((time >25) && (timemod = 27,0)) 
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
trigger1        = ((time >25) && (timemod = 27,0)) 
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


[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 5)
anim            = 7010
ID              = 7010
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
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 8)
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
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

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

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 瞬間移動　地
[Statedef 500]
type            = S
movetype        = A
physics         = S
anim            = 500
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 105, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 12
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     Turn]
type            = Turn
trigger1        = (time = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
x               = (P2BodyDist X+45)


;---------------
;Sound
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


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 15
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

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1


; 瞬間移動　地(ふっ飛ばし追いかけ演出用)
[Statedef 1966]
type            = S
movetype        = A
physics         = S
anim            = 500
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------
[State 500:     Turn]
type            = Turn
trigger1        = (time = 2)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 23

[State 105, 3]
type = CtrlSet
trigger1 = Time = 22
value = 1

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 12
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
x               = (P2BodyDist X+125)


;---------------
;Sound
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


[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 15
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

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; 超速移動　前
[Statedef 521]
type            = S
movetype        = A
physics         = S
anim            = 521
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

;[State 500:     PosAdd]
;type            = PosAdd
;trigger1        = (Time = 1)
;x               = (P2BodyDist X+1)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 80
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

;[State 500:     Turn]
;type            = Turn
;trigger1        = (time = 11)

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
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 85,776
volume          = 155
channel         = -1

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
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 12
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

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; 超速移動　前(空)
[Statedef 911]
type            = S
movetype        = A
physics         = S
anim            = 911
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 4)
x		        = 1
y		        = -3


;[State 500:     PosAdd]
;type            = PosAdd
;trigger1        = (Time = 1)
;x               = (P2BodyDist X+1)

[State 5005:     Turn]
type            = Turn
trigger1        = (time = 11)

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 100
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

;[State 500:     Turn]
;type            = Turn
;trigger1        = (time = 11)


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 85,776
volume          = 155
channel         = 0

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 12
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

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1

; 超速移動　後ろ（空中）
[Statedef 523]
type            = S
movetype        = A
physics         = S
anim            = 523
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 0
trigger1        = (AnimElem = 1)
value = -1000

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = -50
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 85,776
volume          = 155
channel         = 0

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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 10
length          = 18
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 3
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1


; 超速移動　後ろ
[Statedef 913]
type            = S
movetype        = A
physics         = S
anim            = 913
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 20

[State life 1];パワー消費
type = poweradd
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State 500:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
y		        = -1

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = -50
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 85,776
volume          = 155
channel         = -1

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
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 10
length          = 18
palcolor        = 256
palinvertall    = 0
palbright       = 230,230,230
palcontrast     = 220,0,0
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.65
timegap         = 1
framegap        = 3
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 50
ctrl            = 1


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------


; 瞬間移動　空（地面へ行く）
[Statedef 5005]
type            = S
movetype        = A
physics         = S
anim            = 3961
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 2
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 2
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State life 1];パワー消費
type = poweradd
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
value = -1000

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 330,330
volume          = 155
channel         = -1

[state 5005:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 25

[State 105, 3]
type = CtrlSet
trigger1 = (Time = 3)
value = 1


[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X-55)


[State 500:     VelSet]
type            = VelSet
trigger1        = (Time = 2)
x		        = 5
y		        = 0

;---------------
;Effects
;---------------

[State 5005:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 10
length          = 25
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
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

[State 52, 1]
type = VelSet
trigger1 = (Time = 0)
y = 0

[State 52, 2]
type = PosSet
trigger1 = (Time = 0)
y = 0


[State 5005:     End]
type            = ChangeState
trigger1        = (Time = 34)
value           = 0
ctrl            = 1


; 瞬間移動　空
[Statedef 5659]
type            = A
movetype        = A
physics         = S
anim            = 5659
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 5
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 5
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)

[State life 1];パワー消費
type = poweradd
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
value = -1000

[state 5005:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 15

[State 105, 3]
type = CtrlSet
trigger1 = (AnimElem = 3)
value = 1


[State 105, 3]
type = Veladd
trigger1 = (AnimElem = 3)
y = -1

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 3)
y = 0

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 4)
y = -1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X+55)
y               = (P2BodyDist Y-7)


;---------------
;Sound
;---------------

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 330,330
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 5005:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 10
length          = 25
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
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


[State 5005:     End]
type            = ChangeState
trigger1        = (animelem = 5)
value           = 50
ctrl            = 1


; 瞬間移動　空(本気)
[Statedef 5411]
type            = A
movetype        = A
physics         = S
anim            = 5659
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
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

[State life 1];パワー消費
type = poweradd
triggerall = var(20) = 1
trigger1        = (AnimElem = 1)
value = 550

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 1
under           = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 5
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 5
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 2)

[State life 1];パワー消費
type = poweradd
triggerall = var(25) = 0
triggerall = var(9) = 1
trigger1        = (AnimElem = 1)
value = -500

[State life 1];パワー消費
type = poweradd
triggerall = var(9) = 0
triggerall = var(25) = 0
trigger1        = (AnimElem = 1)
value = -1000

[state 5005:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 15

[State 105, 3]
type = CtrlSet
trigger1 = (AnimElem = 3)
value = 1


[State 105, 3]
type = Veladd
trigger1 = (AnimElem = 3)
y = -1

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 3)
y = 0

[State 105, 3]
type = Velset
trigger1 = (AnimElem = 4)
y = -1

[State 5005:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


[State 5005:     PosAdd]
type            = PosAdd
trigger1        = (Time = 0)
x               = (P2BodyDist X+55)
y               = (P2BodyDist Y-7)


;---------------
;Sound
;---------------

[State 5005:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 330,330
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 5005:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 25
length          = 25
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
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


[State 5005:     End]
type            = ChangeState
trigger1        = (animelem = 5)
value           = 50
ctrl            = 1



;---------------------------------------------------------------------------
