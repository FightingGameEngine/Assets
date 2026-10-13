;================================
;Goku Super4
;================================

;------------------------------------------------------
;Author:	sheld
;	
;------------------------------------------------------

;-Stateno 1000-1999

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;おめぇの負けだ・・！---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;
[Statedef 10009]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= -4000
velset = 0,0
anim = 10009
sprpriority = 2
ctrl = 0

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 1)
value = SCA
time = 200

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
scale           = 0.9,0.9
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
scale           = 0.9,0.2
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



[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 9)
trigger2        = (AnimElem = 12)
trigger3        = (AnimElem = 14)
trigger4        = (AnimElem = 17)
value           = 0,5
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 7)
Time = 120
Trans = Add
Length   = 30
TimeGap  = 1
FrameFap = 1
PalBright = 0 , 0 , 0
PalContrast = 150 , 0 , 0
PalAdd = 150 , 0 , 0
PalMul = .5 , .2 , .2
IgnoreHitPause = 1
Peresistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 0:     VelSet]
type            = VelSet
trigger1        = Time > 50
x		        = 2.5
y		        = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 8)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 11)
trigger6        = (AnimElem = 12)
trigger7        = (AnimElem = 13)
trigger8        = (AnimElem = 14)
trigger9        = (AnimElem = 15)
trigger10        = (AnimElem = 16)
trigger11        = (AnimElem = 17)
attr            = S, NT
priority        = 7, dodge
sparkno         = -1
hitflag         = M
guardflag       = 
pausetime       = 0,50
numhits         = 1
snap            = 40,0
hitsound        = S500,0
guardsound      = S210,2
p1stateno       = 10010
p2facing        = 1



[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1


; おめえの負けだ・・！発動
[Statedef 10010]
type            = S
movetype        = A
physics         = S
anim            = 10010
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


[State life, 2];まけだスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(37) = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 1)
Time = 130
Trans = Add
Length   = 50
TimeGap  = 1
FrameFap = 1
PalBright = 0 , 0 , 0
PalContrast = 150 , 0 , 0
PalAdd = 150 , 0 , 0
PalMul = .5 , .2 , .2
IgnoreHitPause = 1
Peresistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 19)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
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
scale 		    = 2.2,2.2
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 19) 
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 25
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 21)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 4
value           = 0,0,0
time            = 95
under           = 0






[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 100
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 4)
time			= 150
add		    	= 5,5,5
mul			    = 155,155,155
sinadd		    = 35,35,35,35
invertall		= 1
color			= 255
supermove = 1
ontop = 1




[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -35, -115
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -165, 55
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 105, -65
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -75, -20
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 0, 0
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -85, -95
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 45, 1
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -95, -80
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 12)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 15, -85
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 13)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -115, -75
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -1
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 15)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -98, -95
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -98, -48
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 50, -110
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 18)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -35, 0
hitsound        = S11156, 23
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 19)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 300, 99999
pausetime       = 5, 27
guard.pausetime = 15, 20
sparkno         = S70052 
guard.sparkno   = S70072
sparkxy         = 15, -65
hitsound        = S1122, 0
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0.04, -6
air.velocity    = 0.04, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 4)
trigger2        = (AnimElem = 5)
trigger3        = (AnimElem = 6)
trigger4        = (AnimElem = 7)
trigger5        = (AnimElem = 8)
trigger6        = (AnimElem = 9)
trigger7        = (AnimElem = 10)
trigger8        = (AnimElem = 11)
trigger9        = (AnimElem = 12)
trigger10        = (AnimElem = 13)
trigger11        = (AnimElem = 14)
trigger12        = (AnimElem = 15)
trigger13        = (AnimElem = 16)
trigger14        = (AnimElem = 17)
trigger15        = (AnimElem = 18)
value           = 717,99
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 71
ctrl            = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;おめぇの負けだ・・！(超本気)---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;
[Statedef 10019]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= -4000
velset = 0,0
anim = 10019
sprpriority = 2
ctrl = 0

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 1)
value = SCA
time = 70

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
scale           = 0.9,0.9
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
scale           = 0.9,0.2
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 50
flag           = NoBarDisplay


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



[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 50
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



[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 6)
value           = 330,330
volume          = 255
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

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
removetime      = 20
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 7)
Time = 20
Trans = Add
Length   = 30
TimeGap  = 1
FrameFap = 1
PalBright = 0 , 0 , 0
PalContrast = 150 , 0 , 0
PalAdd = 150 , 0 , 0
PalMul = .5 , .2 , .2
IgnoreHitPause = 1
Peresistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 8)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 11)
trigger6        = (AnimElem = 12)
trigger7        = (AnimElem = 13)
trigger8        = (AnimElem = 14)
trigger9        = (AnimElem = 15)
trigger10        = (AnimElem = 16)
trigger11        = (AnimElem = 17)
x		        = 40
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 18)
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 6
value           = 255,255,255
time            = 3
under           = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 8)
trigger3        = (AnimElem = 9)
trigger4        = (AnimElem = 10)
trigger5        = (AnimElem = 11)
trigger6        = (AnimElem = 12)
trigger7        = (AnimElem = 13)
trigger8        = (AnimElem = 14)
trigger9        = (AnimElem = 15)
trigger10        = (AnimElem = 16)
trigger11        = (AnimElem = 17)
attr            = S, NT
priority        = 7, dodge
sparkno         = -1
hitflag         = MAFP
guardflag       = 
pausetime       = 0,50
numhits         = 1
snap            = 40,0
hitsound        = S500,0
guardsound      = S210,2
p1stateno       = 10020
p2facing        = 1



[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1


; おめえの負けだ・・！発動(超本気)
[Statedef 10020]
type            = S
movetype        = A
physics         = S
anim            = 10020
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



[State life, 2];まけだスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(37) = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (animelem = 1)
Time = 130
Trans = Add
Length   = 50
TimeGap  = 1
FrameFap = 1
PalBright = 0 , 0 , 0
PalContrast = 150 , 0 , 0
PalAdd = 150 , 0 , 0
PalMul = .5 , .2 , .2
IgnoreHitPause = 1
Peresistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (AnimElem = 19)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
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
scale 		    = 2.2,2.2
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 19) 
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 19)
x		        = 30
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 21)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 4
value           = 0,0,0
time            = 95
under           = 0






[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (AnimElem = 1)
time 			= 100
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 100
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State -1:		BGPalFX]
type			= BGPalFX
trigger1 		= (AnimElem = 4)
time			= 150
add		    	= 5,5,5
mul			    = 155,155,155
sinadd		    = 35,35,35,35
invertall		= 1
color			= 255
supermove = 1
ontop = 1






[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -35, -115
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -165, 55
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 105, -65
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -75, -20
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 8)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 0, 0
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 9)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -85, -95
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 10)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 45, 1
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 11)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -95, -80
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 12)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 15, -85
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 13)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -115, -75
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 14)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -1
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 15)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -98, -95
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -98, -48
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = 50, -110
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 18)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 70, 15
pausetime       = 2, 5
guard.pausetime = 3, 5
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -35, 0
hitsound        = S717, 99
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 0 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 89
envshake.ampl   = -29
envshake.phase  = 6


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 19)
attr            = S, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7, dodge
damage          = 300, 99999
pausetime       = 5, 27
guard.pausetime = 15, 20
sparkno         = S70052 
guard.sparkno   = S70072
sparkxy         = -15, -65
hitsound        = S1122, 0
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -5
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 0.04, -6
air.velocity    = 0.04, -6
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
kill            = 1 ;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 64
envshake.ampl   = -15
envshake.phase  = 5



[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 71
ctrl            = 1



; 5秒で倒す！！
[Statedef 2590]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= -5000
velset = 0,0
anim = 2590
sprpriority = 2
ctrl = 0

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 180

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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

[State 0:     super effect]
type            = AssertSpecial
trigger1        = (AnimElem = 12)
flag           = NoBarDisplay


[State 0:    Super effect]
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6500
ID              = 6500
pos		        = 5,-80
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

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 12)
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

[State 0:    Super effect 2]
type            = Explod
trigger1        = (AnimElem = 12)
anim            = 6501
ID              = 6501
pos		        = 5,-80
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
time            = 90
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 90
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 90
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 5
value           = 99,53
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 12
value           = 5,5
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 11
value           = 5,4
volume          = 200
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 1
trigger2= animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, ST
reversal.attr = SCA, NA, SA,HA
hitflag = MAFPD
priority = 7, miss
pausetime = 5,10
sparkno = s7002
hitsound = S200,1
p2facing = 1
p1stateno = 2591
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動
[Statedef 2591]
type            = S
movetype        = A
physics         = S
anim            = 2591
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------


;ふ。カットイン

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 3
value           = 5,6
volume          = 200
channel         = -1
lowpriority     = 1
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 100
flag           = NoBarDisplay


[State 0, ]
type            = PlaySnd
trigger1        = animelem = 23
value           = 5,15
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 8001, Explod-3]
type = Explod
trigger1 = (AnimElem = 1)
Anim = 6734
id = 6734
pos = 0, 0
postype = back
ownpal = 1
bindtime = -1
removetime = 130
scale = .7,.7
sprpriority = -9
supermovetime = 130
ontop = 1

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 2
value           = 20,201
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 23
trigger2        = animelem = 26
trigger3        = animelem = 30
value           = 201,0
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 21
value           = 1120,550
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 23
trigger2        = animelem = 26
trigger3        = animelem = 30
value           = 255,255,255
time            = 5
under           = 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = animelem = 23
trigger2        = animelem = 26
trigger3        = animelem = 30
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
scale 		    = 2.5,2.5
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 23)
x               = (P2BodyDist X+5)

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 21)
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 27)
x		        = 17
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 31)
x		        = 17
y		        = 0

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 230
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 250
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 250
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
trigger1        = animelem = 3
time            = 350
length          = 20
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

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------




;---------------
;Hit Details
;---------------
[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 24) 
trigger2        = (AnimElem = 27) 
trigger3        = (AnimElem = 30) 
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
trigger1        = (AnimElem = 24)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 250, 300
pausetime       = 15, 10
guard.pausetime = 15, 10
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -15,-0
air.velocity    = -15,3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 28)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 250, 300
pausetime       = 15, 10
guard.pausetime = 15, 10
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 50
guard.hittime   = 50
air.hittime     = 50
ground.velocity = -15,0
air.velocity    = -5,-3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -6,-4
down.hittime    = 30
down.bounce     = 1
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 31)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7,Hit
damage          = 250, 300
pausetime       = 12, 15
guard.pausetime = 12, 15
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -6,-6
air.velocity    = -4,-4.5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -6,-4
down.hittime    = 30
down.bounce     = 1
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7



[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 34)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7,Hit
damage          = 100, 300
pausetime       = 1, 15
guard.pausetime = 1, 15
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S2140, 2
guardsound      = S646, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -6,-4
air.velocity    = -6,-4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -6,-4
down.hittime    = 30
down.bounce     = 1
ID              = 212
chainID         = -1
numhits         = 1
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 0, 3
givepower       = 0, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25
p1stateno       = 5353
p2facing        = 1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5

;---------------

[state 500:     nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 400


;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ５秒ラッシュ 
[Statedef 5353]
type            = S
movetype        = A
physics         = S
anim            = 5353
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

[State life, 2];倒すスイッチ
type = varset
trigger1 = (AnimElem = 1)
var(15) = 1

[state 500:     nothitby]
type = nothitby
trigger1 = (AnimElem = 1)
value = SCA
time = 100


[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = animelem = 2
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
scale 		    = 2.5,2.5
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 2
value           = 255,255,255
time            = 5
under           = 0

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
x		        = 2
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 1)
x		        = 3
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 7
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 37)
x		        = 10
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 42)
x		        = 5
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 43)
x		        = 12
y		        = 0

;[State 0:     VelSet]
;type            = VelSet
;trigger1        = (AnimElem = 44)
;x		        = 25
;y		        = 0

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 44)
x               = (P2BodyDist X-5)

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 45)
x		        = 5
y		        = 0


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 55,564
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


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
removetime      = 140
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
removetime      = 140
supermove       = 999
pausemovetime   = 999
scale           = 0.8,0.3
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 44
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
removetime      = 25
supermove       = 999
pausemovetime   = 999
scale           = .4,8.5
sprpriority     = -3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 45
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
removetime      = 20
supermove       = 999
pausemovetime   = 999
scale           = 1,18.5
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 45
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
removetime      = 20
supermove       = 999
pausemovetime   = 999
scale           = .7,12
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 44
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
removetime      = 25
supermove       = 999
pausemovetime   = 999
scale           = 2,0.3
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 45)
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
supermove       = -1
pausemovetime   = -1
scale           = 1.4, 1.4
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (AnimElem = 44)
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
supermove       = -1
pausemovetime   = -1
scale           = 1.2, 1.2
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

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
value           = 200,0
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 1)
value           = 700,0
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
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4, Hit
damage          = 40, 8
pausetime       = 0, 1;40
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
air.velocity    = -1.5, -0.64
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

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = animelem = 37
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
scale 		    = 2.5,2.5
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = animelem = 44
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
scale 		    = 2.8,2.8
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1        = animelem = 45
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
scale 		    = 3,3
sprpriority 	= -4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 37
value           = 255,255,255
time            = 5
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 44
value           = 255,255,255
time            = 5
under           = 0

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 38)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4, Hit
damage          = 50000, 50000
pausetime       = 30, 20
guard.pausetime = 7,8;7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, -9
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = -4, -9
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 45)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, Hit
damage          = 99999, 99999
pausetime       = 20, 12
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S453, 454
guardsound      = S453, 454
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
air.hittime     = 20
ground.velocity = -7.5, -30
air.velocity    = -7.5, -30
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 25
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25


[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 40)
attr            = S, HA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, Hit
damage          = 0, 0
pausetime       = 0, 0
guard.pausetime = 7,8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -30, -70
hitsound        = S1120, 550
guardsound      = S4053, 454
ground.slidetime    = 22
ground.hittime  = 22
guard.hittime   = 72
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3
air.hittime     = 20
ground.velocity = -1, -9
air.velocity    = -1, -9
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = 1
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 0, 3
givepower       = 20, 3
envshake.time   = 24
envshake.freq   = 88
envshake.ampl   = -15
envshake.phase  = 12


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 37)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0



[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 3) 
trigger2        = (AnimElem = 12) 
trigger3        = (AnimElem = 24) 
trigger4        = (AnimElem = 38) 
trigger5        = (AnimElem = 45) 
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

[State 0:     GroundWaves]
type            = Explod
trigger1        = (AnimElem = 44) 
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
scale           = 1.6, 1.2
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
trigger4        = (AnimElem = 38) 
trigger5        = (AnimElem = 45) 
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

[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;;;;;;;;;;;;;;;;;;;;;;(５秒で倒すラッシュ終わり)
;---------------------------------------------------------------------------

; 当身技;飛び道具
[Statedef 7151]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 7151
sprpriority = -1
ctrl = 0

[State 0:     oto]
type            = PlaySnd
trigger1        = (AnimElem = 1) 
value           = 33,19
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >40) && (timemod = 45,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 1
trigger2= animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, ST
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
hitflag = MAFPD
priority = 7, hit
pausetime = 0,10
sparkno = s7002
hitsound = S500,0
p2facing = 1
p1stateno = 7152
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動
[Statedef 7152]
type            = S
movetype        = A
physics         = S
anim            = 7152
;velset          = 0,0,0
ctrl            = 0
poweradd        = -200
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 1) 
value           = 255,255,255
time            = 5
under           = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x		        = -20
y		        = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time		    = 20
add		        = -105,-105,-105
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 35
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 35
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 60
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

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 2
value           = 60,78
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

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= animelem = 17
time 			= 25
freq 			= 50
ampl   = -10
phase  = 10

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = animelem = 17
value           = 8050, 2
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 17)
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
trigger1        = (animelem = 17)
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
scale           = 2, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 18)
attr            = C, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 300, 35
pausetime       = 3, 10
guard.pausetime = 3, 10
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S8000, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -22,-7
air.velocity    = -22,-7
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
envshake.ampl   = 30
envshake.phase  = 25

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;


; 当身技;パンチ
[Statedef 7721]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 30
velset = 0,0
anim = 7721
sprpriority = -1
ctrl = 0

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >40) && (timemod = 45,0)) 
value           = 44,77
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     batiSound]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 12,111 
volume          = 255
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------------[当身判定]
[State 1700, 0];相手がオレ式超ベジット
type = ReversalDef
triggerall = P2name = "Super Vegetto"
trigger1 = animelem = 1
trigger2= animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, ST
reversal.attr = SCA, NA, SA,HA
hitflag = MAFPD
priority = 7, miss
pausetime = 1,15
sparkno = s7002
hitsound = S200,133
p2facing = 1
p1stateno = 11588
numhits         = 0

[State 1700, 0];
type = ReversalDef
triggerall = P2name != "Super Vegetto"
trigger1 = animelem = 1
trigger2= animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, ST
reversal.attr = SCA, NA, SA,HA
hitflag = MAFPD
priority = 7, miss
pausetime = 1,10
sparkno = s7002
hitsound = S200,1
p2facing = 1
p1stateno = 7728
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動;相手が超ベジット
[Statedef 11588]
type            = S
movetype        = A
physics         = S
anim            = 11588
;velset          = 0,0,0
ctrl            = 0
poweradd        = 1000
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 65
flag           = NoBarDisplay

[State 500:     Turn]
type            = Turn
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 16

[State 500:     PosAdd]
type            = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 16
x               = (P2BodyDist X-55)

[State 0:     VelSet]
type            = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 19
x		        = 2
y		        = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
trigger2        = animelem = 7
trigger3        = animelem = 15
value           = 330,330
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 3
trigger2        = animelem = 9
trigger3        = animelem = 17
value           = 201,0
volume          = 250
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = animelem = 1
trigger2        = animelem = 7
trigger3        = animelem = 15
value           = 255,255,255
time            = 2
under           = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

; 当身発動
[Statedef 7728]
type            = S
movetype        = A
physics         = S
anim            = 7728
;velset          = 0,0,0
ctrl            = 0
poweradd        = 300
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------



[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 17)
x		        = 18
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 18)
x		        = 18
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 19)
x		        = 0
y		        = 0

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (AnimElem = 1)
time		    = 75
add		        = -105,-105,-105
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 90
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 90
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = animelem = 3
time            = 100
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

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 182,98
volume          = 250
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


;---------------
;Hit Details
;---------------
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
scale           = 2, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = C, NA
hitflag         = MAFPD
guardflag       = 
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 330, 35
pausetime       = 15, 17
guard.pausetime = 15, 17
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S420, 0
guardsound      = S66, 66 
ground.slidetime    = 20
ground.hittime  = 10
guard.hittime   = 10
air.hittime     = 10
ground.velocity = -22,-7
air.velocity    = -22,-7
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
getpower        = 100, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;


; 当身技キック
[Statedef 7989]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 30
velset = 0,0
anim = 7989
sprpriority = 1
ctrl = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 45
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

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
sprpriority     = -1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >40) && (timemod = 45,0)) 
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
trigger1        = ((time >40) && (timemod = 45,0)) 
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

[State 0:     batiSound]
type            = PlaySnd
trigger1        = ((time >40) && (timemod = 45,0)) 
value           = 44,77 
volume          = 100
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     oto]
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

;---------------------[当身判定]
[State 1700, 0];
type = ReversalDef
trigger1 = animelem = 1
trigger2= animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, ST
reversal.attr = SCA, NA, SA, HA
hitflag = MAFPD
priority = 7, miss
pausetime = 5,10
sparkno = s7002
hitsound = S201,2
p2facing = 1
p1stateno = 7999
numhits         = 0

;---------------------[立ちステートに戻る]
[state a]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; 当身発動
[Statedef 7999]
type            = S
movetype        = A
physics         = S
anim            = 7999
;velset          = 0,0,0
ctrl            = 0
poweradd        = 300
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = -1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
trigger2        = (animelem = 4)
x		        = 9
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 0
y		        = 0


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
supermove       = 999
pausemovetime   = 999
scale           = 2, 1.5
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= time = 0
time 			= 20
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 20
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 40
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

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 2
value           = 60,1;777,333
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
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAFPD
guardflag       = 
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,Hit
damage          = 150, 35
pausetime       = 19, 23
guard.pausetime = 19, 23
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S1156, 23
guardsound      = S66, 66 
ground.slidetime    = 35
ground.hittime  = 55
guard.hittime   = 55
air.hittime     = 55
ground.velocity = -8
air.velocity    = -8,-1.5
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
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 100, 3
givepower       = 20, 3
envshake.time   = 21
envshake.freq   = 75
envshake.ampl   = 30
envshake.phase  = 25

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


; 龍昇脚
[Statedef 1000]
type            = A
movetype        = A
physics         = S
anim            = 212
;velset          = 0,0,0
ctrl            = 0
poweradd        = 60
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
time            = 50
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 9
y		        = -14

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 4
y		        = -2

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 3
y		        = -1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
x		        = 6
y		        = -1

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 7)
x		        = 1.4
y		        = -.3

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

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
value           = 777, 333
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 6)
value           = 201,0
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
scale           = .6, .6
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
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 70, 10
pausetime       = 15, 15
guard.pausetime = 20, 20
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 7
ground.cornerpush.veloff = -4
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -2, -10
air.velocity    = -2, -10
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
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 13
envshake.freq   = 60
envshake.ampl   = -17
envshake.phase  = 15

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
attr            = C, NA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 130, 10
pausetime       = 14, 10
guard.pausetime = 20, 20
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 7
ground.cornerpush.veloff = -4
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -6.1, 17
air.velocity    = -6.1, 17
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 30
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 3
givepower       = 20, 3
envshake.time   = 13
envshake.freq   = 60
envshake.ampl   = -17
envshake.phase  = 15
snap = 20,50

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
; 龍昇脚（強）
[Statedef 1002]
type            = A
movetype        = A
physics         = S
anim            = 2126
;velset          = 0,0,0
ctrl            = 0
poweradd        = 80
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 20
y		        = -17

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------


;---------------
;Effects
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


[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

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
value           = 777,333
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
pos             = -10,0
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
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 130, 15
pausetime       = 12, 12
guard.pausetime = 20, 20
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 7
ground.cornerpush.veloff = -4
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -13, -17.2
air.velocity    = -13, -17.2
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
getpower        = 150, 15
givepower       = 20, 15
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 15

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
; サイヤSソルト
[Statedef 383]
type            = A
movetype        = A
physics         = S
anim            = 383
;velset          = 0,0,0
ctrl            = 0
poweradd        = 80
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 3.1
y		        = -14

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 18)
x		        = 0
y		        = -3

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------


;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 70
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


[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (animelem = 5)
trigger2        = (animelem = 9)
trigger3        = (animelem = 13)
value           = 201,0
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 3)
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

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (animelem = 9)
value           = 550,3
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
pos             = -10,0
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
trigger1        = (AnimElem = 6)
trigger2        = (AnimElem = 10)
trigger3        = (AnimElem = 14)
attr            = C, NA
hitflag         = MAFP
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 70, 13
pausetime       = 9, 5
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.cornerpush.veloff = -4
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = 0.4, -11
air.velocity    = 0.4, -11
air.juggle      = 1
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 15
givepower       = 20, 15
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 15

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

; サイヤSソルト（弱）
[Statedef 382]
type            = A
movetype        = A
physics         = S
anim            = 382
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 3
y		        = -9

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 12)
x		        = 0
y		        = -2

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------


;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 70
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


[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 201,0
volume          = 200
channel         = 0
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0


[State 0:     GroundWaves]
type            = Explod
trigger1        = (animelem = 3)
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

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (animelem = 5)
value           = 550,3
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
pos             = -10,0
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
trigger1        = (AnimElem = 6)
attr            = C, NA
hitflag         = MAFPD
guardflag       = M
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 7,Hit
damage          = 100, 20
pausetime       = 10, 5
guard.pausetime = 20, 30
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 2
guardsound      = S66, 66 
ground.slidetime    = 20
ground.cornerpush.veloff = -4
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = 1, -10
air.velocity    = 1, -10
air.juggle      = 1
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = 1, -12
down.hittime    = 25
down.bounce     = 1
ID              = 212
chainID         = -1
numhits         = 1
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 150, 15
givepower       = 20, 15
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -12
envshake.phase  = 15
snap = 50,65

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
;烈風脚（弱）
[Statedef 1005]
type            = S
movetype        = A
physics         = S
anim            = 1005
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 5
y		        = -8


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 5

[State 0, ]
type            = Gravity
trigger1        = (animelem = 5)
ignorehitpause  = 0
persistent     = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0, ]
type            = StateTypeSet
trigger1        = animelem = 3
statetype       = A
physics         = A


;---------------
;Effects/Sound
;---------------


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
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


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (time = 0)
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
trigger1        = (animelem = 3)
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
value           = 60,1
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

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 50, 4
pausetime       = 4, 4
guard.pausetime = 7, 10
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -12
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -12
ground.velocity = -2
air.velocity    = -2,-5
air.juggle      = 1
fall            = 0
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
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 50, 4
pausetime       = 4, 4
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -20
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -20
ground.velocity = -2
air.velocity    = -2,-5
air.juggle      = 1
fall            = 0
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
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 55, 4
pausetime       = 4, 6
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -35
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -27
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -27
ground.velocity = -5, -6
air.velocity    = -10,3
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
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 6
;---------------

;---------------
[State 0,2 ]
type                = ChangeState
trigger1            = animtime = 0
value               = 50
ctrl                = 1

;---------------------------------------------------------------------------
; 烈風脚
[Statedef 1006]
type            = S
movetype        = A
physics         = S
anim            = 1006
;velset          = 0,0,0
ctrl            = 0
poweradd        = 60
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 6
y		        = -6

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 6)
trigger2        = (animelem = 10)
x		        = 6
y		        = -3

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 15)
x		        = 7
y		        = -0.5


[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 9

[State 0, ]
type            = Gravity
trigger1        = (animelem = 5)
ignorehitpause  = 0
persistent     = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0, ]
type            = StateTypeSet
trigger1        = animelem = 3
statetype       = A
physics         = A
;ignorehitpause = 0
;persistent = 1

;---------------
;Effects/Sound
;---------------


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
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


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 2)
trigger2        = (animelem = 6)
trigger3        = (animelem = 10)
trigger4        = (animelem = 15)
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
trigger1        = (animelem = 3)
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
value           = 7,77
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

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 40, 4
pausetime       = 4, 3
guard.pausetime = 7, 10
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -12
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -12
ground.velocity = -2
air.velocity    = -2,-4
air.juggle      = 1
fall            = 0
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
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 7)
trigger2        = (AnimElem = 11)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 40, 4
pausetime       = 4, 3
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -20
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -20
ground.velocity = -2
air.velocity    = -2,-2
air.juggle      = 1
fall            = 0
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
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -10
envshake.phase  = 6

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 16)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 7,Hit
damage          = 55, 10
pausetime       = 9, 9
guard.pausetime = 27, 28
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -35
hitsound        = S201, 1
guardsound      = S66, 66 
ground.slidetime    = 20
ground.cornerpush.veloff = -27
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 24
air.cornerpush.veloff = -27
ground.velocity = -15, -8
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
kill            = 1;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 90, 3
givepower       = 20, 3
envshake.time   = 10
envshake.freq   = 65
envshake.ampl   = -15
envshake.phase  = 7
;---------------

[State 0:     ctrlSet]
type            = ctrlSet
trigger1        = (animelem = 18)
value           = 1

;---------------
[State 0,2 ]
type                = ChangeState
trigger1            = animtime = 0
value               = 50
ctrl                = 1

;---------------------------------------------------------------------------
; 絶撃
[Statedef 1008]
type            = S
movetype        = A
physics         = S
anim            = 203
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 20
y		        = 0

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 35
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
value           = 201,0
volume          = 200
channel         = -1
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
scale           = .6, .6
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
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 4,Hit
damage          = 110, 15
pausetime       = 10, 8
guard.pausetime = 15, 15
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S201, 1
guardsound      = S66, 66 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -9,-4
air.velocity    = -9,-4
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
getpower        = 100, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10
snap = 50,-15

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; 絶撃・強
[Statedef 1009]
type            = S
movetype        = A
physics         = S
anim            = 203
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 35
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


[State 500:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 35
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

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 1670,0
volume          = 250

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
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = low
priority        = 7,Hit
damage          = 130, 15
pausetime       = 12, 12
guard.pausetime = 22, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S201, 1
guardsound      = S66, 66 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -10,-6
air.velocity    = -10,-5.8
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
getpower        = 150, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = 15
envshake.phase  = 10
snap = 58,-22

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; ダッシュキック１
[Statedef 1040]
type            = S
movetype        = A
physics         = S
anim            = 1040
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

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 1)
x		        = 1
y		        = 0


[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 3)
x               = (P2BodyDist X-20)

[State 0:    PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 3

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 80
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 5)
x		        = 5
y		        = 0

;---------------
;Sound
;---------------


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

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 3) 
value           = 255,255,255
time            = 1
under           = 1

;---------------
;Effects/Hit Details
;---------------
[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 330,330
volume          = 200
channel         = 0
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

[State 0, ]
type            = EnvShake
trigger1        = movecontact = 1
time            = 10
freq            = 60
ampl            = -4

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 5)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 7, Hit
damage          = 120, 10
pausetime       = 23, 19
guard.pausetime = 25, 35
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -50, -35
hitsound        = S210, 2
guardsound      = S66, 66
ground.cornerpush.veloff = -15
ground.cornerpush.veloff = -15
ground.slidetime    = 32
ground.hittime  = 32
guard.hittime   = 7
air.hittime     = 30
ground.velocity = -12,0
air.velocity    = -0.5,-5
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
kill            = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 15
envshake.freq   = 60
envshake.ampl   = -15
envshake.phase  = 15
snap = 50

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1


;---------------------------------------------------------------------------
; ダッシュキック２
[Statedef 1041]
type            = S
movetype        = A
physics         = S
anim            = 1041
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


[State 500:     Turn]
type            = Turn
trigger1        = (animelem = 5)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (animelem = 4)
x               = (P2BodyDist X+100)

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
supermove       = 0
pausemovetime   = 0
scale           = 1.1, 1.1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 7)
x		        = 1
y                       = 0

[State 0:    PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 1

;---------------
;Sound
;---------------

[State 1002:     AfterImage]
type            = AfterImage
triggerall = var(2) = 0
triggerall = var(25) = 0
trigger1        = (!Time)
time            = 15
length          = 10
palcolor        = 255
palinvertall    = 0
palbright       = 250,250,250
palcontrast     = 0,0,0
palpostbright   = 30,30,30
paladd          = 255,0,0
palmul          = .65,.65,.65
timegap         = 1
framegap        = 3
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (AnimElem = 2) 
value           = 255,255,255
time            = 1
under           = 1


[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 330,330
volume          = 200
channel         = 0
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
channel         = 7
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects/Hit Details
;---------------


[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = S, NA
hitflag         = M
guardflag       = 
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 7, Hit
damage          = 0, 0
pausetime       = 0, 0
guard.pausetime = 0, 0
sparkno         = S32232
guard.sparkno   = S3232
sparkxy         = -10, -35
hitsound        = S0000, 000
guardsound      = S11, 22230
ground.slidetime    = 12
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
ground.hittime  = 20
guard.hittime   = 20
air.hittime     = 20
ground.velocity = 5,0
air.velocity    = 5,0
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
numhits         = 0
kill            = 0;IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = 18
envshake.phase  = 15





[State 0, ]
type            = EnvShake
trigger1        = movecontact = 1
time            = 10
freq            = 60
ampl            = -4

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 6)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = DiagUp
air.animtype    = DiagUp
ground.type     = high
priority        = 7, Hit
damage          = 140, 10
pausetime       = 12, 7
guard.pausetime = 20, 25
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S454, 454
guardsound      = S66, 66
ground.slidetime    = 12
ground.cornerpush.veloff = -55
air.cornerpush.veloff = -55
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -20, -6.7
air.velocity    = -20, -6.7
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
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 20
envshake.freq   = 60
envshake.ampl   = 18
envshake.phase  = 15
snap = 50

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
