;================================
;Goku Super4
;================================

;------------------------------------------------------
;Author:	sheld
;	
;------------------------------------------------------

;-Stateno 3000-4999

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










;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;ÉXÅ[ÉpÅ[äEâ§åùÅiçUåÇóÕ10î{!Åj

;
[Statedef 12345]
type            = S
movetype        = A
physics         = S
anim            = 12345
ctrl            = 0
poweradd        = -9000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
kill = 0

[State 0:     1]
type            = NotHitBy
trigger1        = time = 170
value           = SCA
time            = 100

[State life, 2];ÉJÉCÉIÉEåùÉXÉCÉbÉ`
type = varset
trigger1 = time = 170
var(22) = 1

[State life 1];ëÃóÕâÒïú
type = Lifeadd
trigger1 = time = 169
value = 700

[State -2,Helper];Ç÷ÇÈÇœÅ[ÇÊÇ‘
type = Helper
trigger1 = time = 170
name = "singo"
ID = 5923
pos = 10, -80
postype = p1
sprpriority = 4
stateno = 5923
keyctrl = 0
ownpal = 1

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 40
flag           = NoBarDisplay

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = time = 1
time		    = 50
add		        = -105,-105,-105
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = (animelem = 1)
trigger2        = (animelem = 2)
trigger3        = (animelem = 3)
trigger4        = (animelem = 4)
trigger5        = (animelem = 5)
flag           = NoBarDisplay


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
trigger1        = (time = 170)
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
trigger1 		= (time = 170)
anim 			= 7020
ID 			    = 7020
pos 			= -10,-37
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
trigger1        = time = 170
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



;---------------

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1


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
removetime      = 90
supermove       = 90
pausemovetime   = 90
scale           = 2,1.8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = time = 170
anim            = 6501
ID              = 6501
pos		        = 0,-55
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
removetime      = 150
supermove       = 150
pausemovetime   = 150
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
random          = 33,60
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
random          = 12,57
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
pos             = 10,29
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 22,10
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
random          = 25,37
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
trigger1        = (AnimElem = 4)
value           = 3200,1110
volume          = 255
channel         = -1
lowpriority     = 1 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (time = 170)
value           = 700,0
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
value           = 16,655
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     ChangeState]
type            = ChangeState
trigger1        = Time = 170
value           = 12346
ctrl		    = 1




[Statedef 12346]
type     = S
movetype = A
physics  = N
juggle   = 0
ctrl     = 0
anim     = 12346
sprpriority = -999

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1)
value           = 255,255,255
time            = 1
under           = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (animelem = 3)
value           = 0
ctrl		    = 1











;---------------------------------------------------------------------------
; Kamehameha stage 1 - Charge
[Statedef 3000]
type            = S
movetype        = A
physics         = S
anim            = 3000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 0
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
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 8050 ,1
volume          = 255
channel         = 0

[State 0, ]
type            = PlaySnd
triggerall      =(command = "holdy") 
trigger1        = time = 395
value           = 21 ,44
volume          = 255
channel         = 0

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 57
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 57
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:    Dust Right]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -20,7
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

[State 0:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 20,7
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
sprpriority     = 4
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
scale           = 1, 1
sprpriority     = 5
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
scale           = 1, 1
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
scale           = 1, 1
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
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Push Effect]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 20
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
pos		        = -15,-55
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
pos		        = -15,-45
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
trigger1        = (TimeMod = 24,0)
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
scale           = 1, 1
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
scale           = 1.4, 1.4
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1 		= (!Time)
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

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
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
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Ring waves
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8101
id              = 8101
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

; KHH Ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8102
id              = 8102
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;------------------------------------------------------------ I T L


[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     PosAdd]
type            = PosAdd
triggerall      = (time > 57) 
trigger1        = (command = "c")
x               = (P2BodyDist X+300)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
triggerall      = (time > 57)
trigger1        = (command = "c")
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall      = (time > 57)
trigger1        = (command = "c")
time            = 15
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0, ]
type            = PowerAdd
triggerall      = (time > 57)
trigger1        = (command = "c")
value           = 0
;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdy") && (time > 57))
ID 			    = 6001


;---------------

[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdy") && (time > 57))
value           = 3001
ctrl		    = 0;1

;---------------------------------------------------------------------------
; Kamehameha stage 1 - Fire
[Statedef 3001]
type            = S
movetype        = A
physics         = S
anim            = 3001
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
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

[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 15

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3000 ,0
volume          = 255
channel         = 0

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3200 ,1
volume          = 255
channel         = 6


[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (AnimElem = 2) 
time 			= 30
freq 			= 50
ampl   = -10
phase  = 10


;---------------
;Effects/Hit Details
;---------------
; Ball
[State 0:    Explod]
type 			= Explod
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
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
removeongethit 	= 1

[State 0:    Explod]
type 			= Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
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
removeongethit 	= 1

[State 0:    Dust Left]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Dust Left]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
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
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7011
ID              = 705
pos             = 20,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7012
ID              = 705
pos             = 20,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Beam head]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .8, .8
sprpriority     = 6
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .6, .6
sprpriority     = 6
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = 1.1, 1.1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .9, .9
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "KHH Stage 1 Beam"
ID 			    = 8100
stateno 		= 8100
pos 			= 30, -50
postype 		= p1
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= 1.3
size.yscale 	= .92

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 30)
ID 			    = 6005

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 35)
ID 			    = 6006

[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= time = 82
value 		    = 0
ctrl 			= 1
;---------------------------------------------------------------------------










; Kamehameha stage ãÛíÜÇ©ÇﬂÇÕÇﬂîg
[Statedef 9900]
type            = A
movetype        = A
physics         = A
anim            = 9900
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x		        = 0
y		        = -4

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 2)
trigger2        = (animelem = 3)
trigger3        = (animelem = 4)
x		        = 0
y		        = -0.3

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 8050 ,1
volume          = 255
channel         = 0

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 64 ,2
volume          = 255
channel         = -1

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 55
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 55
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:     Push Effect]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 20
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
pos		        = -15,-55
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
pos		        = -15,-45
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


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
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
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Ring waves
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8101
id              = 8101
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

; KHH Ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8102
id              = 8102
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1
sprpriority     = 2

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;------------------------------------------------------------ 


[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     PosAdd]
type            = PosAdd
triggerall      = (time > 24) 
trigger1        = (command = "c")
x               = (P2BodyDist X+800)
y               = (P2BodyDist Y-35)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
triggerall      = (time > 24)
trigger1        = (command = "c")
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall      = (time > 24)
trigger1        = (command = "c")
time            = 15
length          = 15
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0, ]
type            = PowerAdd
triggerall      = (time > 24)
trigger1        = (command = "c")
value           = 0
;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdy") && (time > 57))
ID 			    = 6001


;---------------

[State 0:    ChangeState]
type            = ChangeState
trigger1        = time = 53
value           = 9901
ctrl		    = 0

;---------------------------------------------------------------------------
; Kamehameha stage ãÛíÜÇ©ÇﬂÇÕÇﬂîgî≠éÀ
[Statedef 9901]
type            = A
movetype        = A
physics         = A
anim            = 9901
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 10
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 10
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:    VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = -1

[State 0:    VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = -9
y		        = -3

[State 0:    VelSet]
type            = VelSet
trigger1        = (AnimElem = 13)
x		        = 0
y		        = -0.7

[State 0:    VelSet]
type            = VelSet
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
x		        = 0
y		        = -0.7


[state 500:     nothitby]
type = nothitby
trigger1        = (AnimElem = 1)
value = SCA
time = 15

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3200 ,1
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 70 ,3
volume          = 100
channel         = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (AnimElem = 2) 
time 			= 30
freq 			= 50
ampl   = -10
phase  = 10


;---------------
;Effects/Hit Details
;---------------
; Ball
[State 0:    Explod]
type 			= Explod
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
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
removeongethit 	= 1

[State 0:    Beam head]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .9, .9
sprpriority     = 6
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .6, .6
sprpriority     = 6
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
triggerall = var(2) = 1
triggerall = var(25) = 1
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = 1.1, 1.1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .9, .9
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "KHH Stage 1 Beam"
ID 			    = 8100
stateno 		= 8100
pos 			= 30, -50
postype 		= p1
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= 1.3
size.yscale 	= .92
sprpriority     = 2

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 30)
ID 			    = 6005

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 35)
ID 			    = 6006

[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= time = 58
value 		    = 50
ctrl 			= 1
;---------------------------------------------------------------------------














; 10î{Ç©ÇﬂÇÕÇﬂîg Kamehameha - Charge



; Ç©ÇﬂÇÕÇﬂÇ´Ç†Ç¢
[Statedef 117]
type            = S
movetype        = A
physics         = S
anim            = 117
;velset          = 0,0,0
ctrl            = 0
poweradd        = -9000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2;2
;---------------



[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 0
y		        = 0

;í¥ãCçáÇ¢ÉJÉbÉgÉCÉì
[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 10)
Anim = 8788
id = 8788
pos = -160, -80
postype = back
ownpal = 1
bindtime = -1
removetime = 50
scale = 2.5,1.8
sprpriority = -90
supermovetime = 120



[State 0:     EnvShake]
type 			= EnvShake
trigger1        = (AnimElem = 10)
time 			= 35
freq 			= 70
ampl   = -35
phase  = 5

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 1)
value = SCA
time = 999

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
supermove       = 99
pausemovetime   = 99
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

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
supermove       = 1
pausemovetime   = 0
scale           = 1.5, 1.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
trigger2        = (AnimElem = 12)
attr            = A, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
priority        = 7,Hit
damage          = 0, 0
pausetime       = 0, 5
guard.pausetime = 0, 1
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -25
hitsound        = S66,66
guardsound      = S66,66 
ground.slidetime    = 80
ground.hittime  = 59
guard.hittime   = 59
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -60
ground.cornerpush.veloff = -60
ground.velocity = -13,-7.5
air.velocity    = -13,-7.5
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
fall.envshake.time = 13   ;Åp
fall.envshake.freq = 80  ;ÅpÅwçUåÇÇÉqÉbÉgÇ≥ÇπÇΩëäéËÇ™ínñ Ç…åÉìÀÇµÇΩèuä‘ÇÃâÊñ êUìÆÅx
fall.envshake.ampl = -13   ;ÅpÇ‚ÇËï˚ÇÕenvshakeånÇ∆àÍèèÅB
fall.envshake.phase = 5 ;Åp

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 10)
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


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 999
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 600
supermove       = 99
pausemovetime   = 99
scale           = 1.35, 1.05
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
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 999
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 600
supermove       = 99
pausemovetime   = 99
scale           = 1.5, .3
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 10)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 600
supermove       = 99
pausemovetime   = 99
scale           = 1.05, 1.05
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Elec]
type            = Explod
trigger1        = ((time >110) && (timemod = 115,0)) 
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
trigger1        = ((time >80) && (timemod = 85,0)) 
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
trigger1        = ((time >47) && (timemod = 50,0)) 
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

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 95
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 10)
trigger2        = (AnimElem = 11)
value           = 700,0
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     SwingSound];ê∫
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 395,395
volume          = 255
channel         = 7
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0, ]
type            = BGPalFX
trigger1        = (AnimElem = 10)
time            = 300;80
mul             = 120,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

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
scale           = 1.6, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 11)
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



[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 300
flag           = NoBarDisplay


[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 200
mul             = 25,0,0
color           = 256
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 3002
ctrl		    = 1





[Statedef 3002]
type            = S
movetype        = A
physics         = S
anim            = 3002
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------


[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 1)
value = SCA
time = 999

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     SwingSound];ê∫
type            = PlaySnd
trigger1        = (AnimElem = 43)
value           = 19,10
volume          = 255
channel         = 7
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 43)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7, Hit
damage          = 0, 0
pausetime       = 0, 0
guard.pausetime = 7,8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S1120, 550
guardsound      = S1120, 550
ground.slidetime    = 12
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -13,-6
air.velocity    = -13,-6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -13,-6
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 0
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 15


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = ((time >200) && (timemod = 205,0)) 
value           = 700,1
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     Elec]
type            = Explod
trigger1        = ((time >37) && (timemod = 41,0)) 
anim            = 7047
ID              = 7036
pos             = 3,-4
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -5,-4
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >59) && (timemod = 61,0)) 
anim            = 7050
ID              = 7036
pos             = -5,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 5,40
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2,2 
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >75) && (timemod = 80,0)) 
anim            = 7047
ID              = 7036
pos             = 5,19
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,20
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2,2 
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >95) && (timemod = 99,0)) 
anim            = 7050
ID              = 7036
pos             = 8,20
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = -3,15
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2,2 
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
pos             = 0,60
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 20,20
removetime      = -2
supermove       = 1
pausemovetime   = 0
scale           = 2.1,2.1 
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
pos             = 0,9
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
scale           = 2, 2
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 43)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 7
supermove       = 500
pausemovetime   = 500
scale           = 1.45, 1.09
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 44)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 7
supermove       = 777
pausemovetime   = 777
scale           = 1.09, 1.09
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 44)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 7
supermove       = 777
pausemovetime   = 777
scale           = 1.91, 0.3
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[state 0:     nothitby]
type = nothitby
trigger1        = AnimElem = 44
value = SCA
time = 10

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 43)
value           = 700 ,3
volume          = 255
channel         = 0

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 3002 ,0
volume          = 255
channel         = 6

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 44)
value           = 700 ,3
volume          = 255
channel         = 6

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 1010 ,1010
volume          = 255
channel         = 7


[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 3000 ,1
volume          = 255
channel         = 8

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 13)
value           = 3000 ,3
volume          = 255
channel         = 10

;;kakaka


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 6500
ID              = 6500
pos		        = -30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 130
supermove       = 999
pausemovetime   = 999
scale           = .3, .1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 3)
anim            = 6501
ID              = 6501
pos		        = -30, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 130
supermove       = 999
pausemovetime   = 999
scale           = .3, .1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 6)
anim            = 6500
ID              = 6500
pos		        = -30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .5, .2
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
pos		        = -30, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .5, .2
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 8)
anim            = 6500
ID              = 6500
pos		        = -30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .7, .4
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 8)
anim            = 6501
ID              = 6501
pos		        = -30, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .7, .4
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6500
ID              = 6500
pos		        = -30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .9, .5
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6501
ID              = 6501
pos		        = -30, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = .9, .5
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 15)
anim            = 6500
ID              = 6500
pos		        = -30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 999
pausemovetime   = 999
scale           = 1.1, .7
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 15)
anim            = 6501
ID              = 6501
pos		        = -30, -57
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
scale           = 1.1, .7
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 7
under           = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 400
flag           = NoBarDisplay


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 400
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 400
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:    Dust Right]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -20,7
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
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 20,7
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
sprpriority     = 4
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
scale           = 1.5, 1.5
sprpriority     = 5
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
scale           = 1.5, 1.5
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
scale           = 1.5, 1.5
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
scale           = 1.5, 1.5
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 400
mul             = 210,25,25
color           = 256
invertall       = 0
ignorehitpause  = 0
persistent      = 7

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 10) && ((GameTime%10) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 100,0,0
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 30, -67
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
pos		        = 30, -67
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
trigger1        = (TimeMod = 24,0)
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
scale           = 1.3, 1.3
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 30,0)
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

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
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
scale 		    = 2,2
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Ring waves
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8104
id              = 8104
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1.2
size.yscale	    = 1.2
ignorehitpause  = 1
persistent      = 1

; KHH Ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8105
id              = 8105
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 80
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;------------------------------------------------------------ I T L

[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     PosAdd]
type            = PosAdd
triggerall      = (time > 400) 
trigger1        = (command = "c")
x               = (P2BodyDist X+300)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
triggerall      = (time > 400) 
trigger1        = (command = "c")
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall      = (time > 400) 
trigger1        = (command = "c")
time            = 5
length          = 5
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1


[State 0, ]
type            = PowerAdd
triggerall      = (time > 400)
trigger1        = (command = "c")
value           = 0
;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdy") && (time > 400))
ID 			    = 6001
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,1.75,4))
size.yscale		= (IfElse(Random <= 799,1.75,4))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%10) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
size.xscale		= (IfElse(Random <= 499,0.99,0.68))
size.yscale		= (IfElse(Random <= 499,0.99,0.68))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%20) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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
size.xscale		= (IfElse(Random <= 499,0.69,0.85))
size.yscale		= (IfElse(Random <= 499,0.69,0.85))

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdy") && (time > 400))
value           = 3003
ctrl		    = 0;1

;---------------------------------------------------------------------------
; ÇPÇOî{Kamehameha  - Fire
[Statedef 3003]
type            = S
movetype        = A
physics         = S
anim            = 3355
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
supermovetime 	= 999
pausemovetime 	= 999
supermove 	= 1

;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
trigger3        = (AnimElem = 4)
trigger4        = (AnimElem = 5)
trigger5        = (AnimElem = 6)
trigger6        = (AnimElem = 7)
trigger7        = (AnimElem = 8)
trigger8        = (AnimElem = 9)
trigger9        = (AnimElem = 10)
trigger10        = (AnimElem = 11)
trigger11        = (AnimElem = 12)
trigger12        = (AnimElem = 13)
trigger13        = (AnimElem = 14)
trigger14        = (AnimElem = 15)
trigger15        = (AnimElem = 16)
trigger16        = (AnimElem = 17)
trigger17        = (AnimElem = 18)
trigger18        = (AnimElem = 19)
trigger19        = (AnimElem = 20)
trigger20        = (AnimElem = 21)
trigger21        = (AnimElem = 22)
attr            = S, NT
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, Hit
damage          = 20, 0
pausetime       = 2, 9999
guard.pausetime = 0, 99
sparkno         = S72000
guard.sparkno   = S72007
sparkxy         = -10,-65
hitsound        = 1, 55
guardsound      = 1, 55
ground.slidetime    = 10
ground.cornerpush.veloff = -5
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -99, -3
air.velocity    = -99, -3
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 0
Kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 40
envshake.freq   = 777
envshake.ampl   = -99
envshake.phase  = 700
getpower        = 0, 0
givepower       = -100, -100


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 28)
trigger2        = (AnimElem = 30)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, Hit
damage          = 99999999, 999999999
pausetime       = 0, 5
guard.pausetime = 0, 99
sparkno         = S72000
guard.sparkno   = S72007
sparkxy         = -10,-65
hitsound        = 1, 55
guardsound      = 1, 55
ground.slidetime    = 10
ground.cornerpush.veloff = -5
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = -99, -3
air.velocity    = -99, -3
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 0
Kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)

;[State 0, ]
;type            = PlaySnd
;trigger1        = (animelem = 23)
;value           = 111,221
;volume          = 255
;channel         = -1

[State 0:     Bind]
type            = TargetBind
trigger1        = (AnimElem = 2)
trigger2        = (AnimElem = 3)
pos             = 60,0



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


[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 210
supermove       = 99
pausemovetime   = 99
scale           = 2, 1.09
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 210
supermove       = 99
pausemovetime   = 99
scale           = 2, .5
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = (AnimElem = 1)
anim            = 7036
ID              = 7036
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 999
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 210
supermove       = 99
pausemovetime   = 99
scale           = 1.7, 1.1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 1)
time 			= 999
framegap 		= 2
length 		    = 99
paladd 		    = 10, 0, 0
palmul 		    = 10, 0, 0
palcontrast 	= 260,0,0
trans = Add
alpha = 256,256 
;trans 		    = add

[State 0:     GroundWaves]
type            = Explod
trigger1        = AnimElem = 2
trigger2        = AnimElem = 6
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


[state 0:     nothitby]
type = nothitby
trigger1        = AnimElem = 1
value = SCA
time = 150

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (AnimElem = 2) 
time 			= 30
freq 			= 100
ampl   = -20
phase  = 20

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = time = 2
value           = 34 ,344
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd
trigger1        = time = 3
value           = 34 ,344
volume          = 255
channel         = -1

[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999


[State 0, ]
type            = PlaySnd
trigger1        = time = 1
value           = 3000 ,5
volume          = 255
channel         = -1

[State 0, ]
type            = PlaySnd
trigger1        = time = 3
value           = 3000 ,5
volume          = 255
channel         = -1

;îgÅ[Å[Å[Å[ÅIÅIÅIÉJÉbÉgÉCÉì
[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 2971
id = 2971
pos = -100, -70
postype = back
ownpal = 1
bindtime = -1
removetime = 60
scale = .9,.9
sprpriority = 99
supermovetime = 120

[State 0, ]
type            = PlaySnd
trigger1        = time = 3
value           = 3000 ,5
volume          = 255
channel         = 7

[State 0, ]
type            = PlaySnd
trigger1        = time = 5
value           = 3000 ,5
volume          = 255
channel         = -1

;[State 0, ]
;type            = PlaySnd
;trigger1        = (animelem = 24)
;value           = 101 ,101
;volume          = 255
;channel         = -1


;---------------
;Effects/Hit Details
;---------------
; Ball
[State 0:    Explod]
type 			= Explod
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
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
removeongethit 	= 1

[State 0:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
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
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1.5
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7011
ID              = 705
pos             = -20,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7012
ID              = 705
pos             = -20,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 20, -30
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = 1.4,1.3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State -2]
type = PalFX;ì_ñ≈
trigger1 = (GameTime%3) = 0
time = 1
add = 100,100,100
ignorehitpause = 5
sprpriority = 8

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
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
trigger1		= (Time > 10) && ((GameTime%10) = 0) && (Random > 749) && (NumHelper(8210) < 5)
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
size.xscale		= (IfElse(Random <= 499,0.99,0.68))
size.yscale		= (IfElse(Random <= 499,0.99,0.68))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 10) && ((GameTime%20) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
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
size.xscale		= (IfElse(Random <= 499,0.69,0.85))
size.yscale		= (IfElse(Random <= 499,0.69,0.85))


[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 70, -53
;ignorehitpause = 0
;persistent = 1


[State 0:    KHH waves]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
postype         = p1
pos 			= 20, -50
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = 1.6, 1.6
sprpriority     = 1
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 1)
time 			= 99
framegap 		= 2
length 		    = 99
paladd 		    = 10, 0, 0
palmul 		    = 10, 0, 0
palcontrast 	= 260,0,0
trans = Add
alpha = 256,256 
;trans 		    = add

[State 0:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "Chou KHH Beam"
ID 			    = 8103
stateno 		= 8103
postype 		= p1
pos 			= 99, 40
keyctrl 		= 0
ownpal 		    = 1
removetime      = 999
supermovetime 	= 9999
pausemovetime 	= 9999
trans = AddAlpha
alpha = 256,256 
random          = 0,0
sprpriority     = 2
size.xscale 	= 8
size.yscale 	= 8
removeongethit  = 0


[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 40, -53
;ignorehitpause = 0
;persistent = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 1)
time 			= 99
framegap 		= 2
length 		    = 99
paladd 		    = 10, 0, 0
palmul 		    = 10, 0, 0
palcontrast 	= 260,0,0
trans = Add
alpha = 256,256 
;trans 		    = add


[State 1];ÉJÉÅÉâå≈íË
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------
[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 5) && ((GameTime%5) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 250,250,250
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = Time = 160
value           = 255,255,255
time            = 10
under           = 1

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= time = 150
time			= 300
add		    	= 255,255,255
mul			    = 255,255,255
sinadd		    = 255,255,255,4
invertall		= 1
color			= 256


[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 100)
ID 			    = 6005

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 100)
ID 			    = 6006

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 1)
ID 			    = 6500

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 1)
ID 			    = 6501

[State 0, 	ChangeState]
type 			= ChangeState
trigger1        = (animelem = 45)
value 		    = ifelse(random>500,898,ifelse(random> 500,868,868))
ctrl 			= 0

;----------------------------------------------------------

;Instant translocationÅ@ÇPÇOî{Ç©ÇﬂÇÕÇﬂå„
[Statedef 898]
type            = S
movetype        = I
physics         = N
anim            = 898
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Bind]
type            = TargetBind
trigger1        = enemy,alive = 0
pos             = 115,9999


[State 0:     End]
type            = ChangeState
triggerall        =(enemy,alive=1)
trigger1        = time = 90
value           = 0
ctrl            = 1


[State life, 2];10î{ÉXÉCÉbÉ`
type = varset
trigger1 = time = 0
var(16) = 1

[State life,3]
type = varset
trigger1 = time = 0
var(26) = 0

;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 6)
value           = 101, 101
volume          = 255
channel         = 0
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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

[State 0, ]
type = CtrlSet
trigger1 = (AnimElem = 35)
value = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 36)
value           = 0
ctrl            = 1



;Instant translocationÅ@ÇPÇOî{Ç©ÇﬂÇÕÇﬂå„2
[Statedef 868]
type            = S
movetype        = I
physics         = N
anim            = 868
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State life, 2];10î{ÉXÉCÉbÉ`
type = varset
trigger1 = time = 0
var(16) = 1

[State 0:     End]
type            = ChangeState
triggerall        =(enemy,alive=1)
trigger1        = time = 90
value           = 0
ctrl            = 1


;---------------
;Sound
;---------------

[State 0:     PlaySND]
type 		    = PlaySnd
trigger1        = (AnimElem = 7)
value           = 101, 701
volume          = 255
channel         = 0
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0




[State 0:     Elec]
type            = Explod
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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
trigger1        = ((time >90) && (timemod = 95,0)) 
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

[State 0, ]
type = CtrlSet
trigger1 = (AnimElem = 54)
value = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimElem = 56)
value           = 0
ctrl            = 1


