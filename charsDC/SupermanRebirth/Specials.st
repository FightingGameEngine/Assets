;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------

;-HEAT VISION-----------------
;Heat Vision X
[Statedef 1000]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1000

[State 1000, Explod];LIGHT
type = Explod
trigger1 = animelem = 3
anim = 1012
ID = 1012
pos = 0,0
postype = p1
bindtime = -1
scale = const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 190,9

[State 405, 6]
type = PlaySnd
trigger1 = Time = 13
value = 190,10


[State 1000, 0]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Heat ray X"
id = 1011
postype = p1
pos = 0,-66
stateno = 1011
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3
;size.xscale=0.3
size.yscale=0.3

[State 1000, 1]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1
;-------------------
;Heat ray X
[Statedef 1011]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1001 ;1011 ;6504 ;<-Experimental beam

[State 1015, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 4
time = 10
palcontrast = 140,0,0 ;130,80,82;222,142,82
paladd = 10,-250,-250
trans = add
length = 15
timegap = 1
framegap = 1

[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1011 , 1]
type = HitDef
trigger1 = AnimElem = 1
;persistent = 0
attr = SCA, HP
damage    = 45,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,20
sparkno = -1
hitsound   = -1
guardsound = S0, 42
guard.sparkno = S8100
ground.type = High
;ground.slidetime = 15
;ground.hittime  = 20
;ground.velocity = -10, -10
;air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

;[state 1011, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1010
;pos = 0,0

[state 1011, 8]
type = destroyself
trigger1 = time = 35

;---------------------------------------------------------------------------
;flypunch
[Statedef 1002]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 7822
ctrl = 0

[State 1006, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 40

[State 1006, flash]
type = explod
trigger1 = Animelem = 2
anim = 7816
postype = p1
pos = 20,0
sprpriority = 2
ignorehitpause = 1
removetime = 10
ownpal = 1
supermove = 0
scale = 2,0.8

[State 1006, flash]
type = explod
trigger1 = Animelem = 2
trigger2 = Animelem = 3
trigger3 = Animelem = 4
anim = 7803
postype = p1
pos = -15, -60
sprpriority = 2
ignorehitpause = 1
removetime = 2
ownpal = 1
supermove = 0


[State 405, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 191,9

[State 1006, 3]
type = HitDef
trigger1 = Animelem = 2
trigger2 = Animelem = 3
trigger3 = Animelem = 4
attr = A, NA
animtype  = High
damage    = 45
getpower = 0
guardflag = MA
pausetime = 0, 0
sparkno = S8200
sparkxy = -10,-85
hitsound = s8000,2
guardsound = S8500,0
guard.sparkno = S8100
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 10, -5
air.velocity = -10,-5
sparkno = s8223
fall = 1

[State 1006, 4]
type = HitDef
trigger1 = Animelem = 2
trigger2 = Animelem = 3
trigger3 = Animelem = 4
attr = S, HA
animtype  = High
damage    = 45
getpower = 0
guardflag = MA
pausetime = 0, 0
sparkno = S8200
sparkxy = -10,-85
hitsound = s8000,2
guard.sparkno = S8100
guardsound = S8500,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 10, -25
air.velocity = -10,-5
sparkno = s8223
fall = 1

[State 1006, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 0

[State 1006, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------

;ice breath
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
poweradd = 120
velset = 0,0
anim = 7005

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 190,7
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 720, 1]
type = Helper
trigger1 = AnimElem = 5
ID = 555
pos = 8,-92;25,-88;My mugen size
postype = p1
facing = 1
stateno = 721
helpertype = normal
name = "Soplo"
keyctrl = 0
ownpal = 1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


; Soplo
[Statedef 721]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 6000
sprpriority = 5

[State 1001, 2]
type = VelSet
trigger1 = 1
x = 1.5
y = 0

[State 1001, 2]
type = Destroyself
trigger1 = time = 50

[State 1001, 2]
type = HitDef
trigger1 = p2stateno != 722
trigger1 = p2stateno != 723
trigger1 = Time = 0
attr = S, HA
animtype  = Medium
damage    = 0,0
getpower = 0,0
givepower = 0,0
guardflag =
priority = 5, Hit
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = S2,3
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 722

; P2 Freeze
[State 1001, 2]
type = HitDef
trigger1 = p2stateno = 722
trigger1 = p2stateno != 723
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 0,0
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 723

[State 2000, 1]
type = Explod
trigger1 = Movehit = 1
anim = 31025
SprPriority = 3
postype = P2
pos = -20, -77
ownpal = 1

[State 1001, 4]
type = Destroyself
trigger1 = Animelem = 15

; P2 congelado
[Statedef 722]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 722, treme]
type = PosAdd
trigger1 = time <= 17
x = 1-2*(time%2)

[State 722, 3]
type = PosFreeze
trigger1 = 1
trigger1 = time > 17
value = 1

[State 722, 2]
type = changeanim
trigger1 = 1
value = (anim)
elem = (animelemno(0))

[State 722, 3]
type = PalFX
trigger1 = time != 0
add = 49,173,231
mul = 13,179,199
time = 1

[State 722, 1]
type = HitOverride
trigger1 = Pos Y < 0
time = 130
attr = SCA;, AA, AT, NP
slot = 0
stateno = 223
forceair = 1

[State 722, 3]
type = SelfState
trigger1 = time = 130
trigger1 = Pos Y >= 0
ctrl = 1
value = 0

[State 722, 3]
type = SelfState
trigger1 = time = 130
trigger1 = Pos Y < 0
ctrl = 1
value = 5050

[State 722, 2]
type = Gravity
trigger1 = time = 130
trigger1 = statetype = A
trigger1 = Pos Y < 0

; P2 congelado (2? vez)
[Statedef 723]
movetype= H
velset = 0,0
ctrl = 0

[State 723, 2]
type = changeanim
trigger1 = time = 0
value = (anim)
elem = (animelemno(0))

[State 723, 3]
type = PalFX
trigger1 = time = 0
add = 49,173,231
mul = 13,179,199
time = 1

[State 723, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y >= 0
ctrl = 1
value = 0

[State 723, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y < 0
ctrl = 1
value = 5050





;-----------------------------------------------------------------
;dublepunch
[Statedef 1004]
type    = S
movetype= A
physics = N
poweradd= 60
ctrl = 0
velset = 0, 0
anim = 1002

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 5,5

[State 100, 1]
type = MakeDust
trigger1 = Time >= 0
pos = -25,-2
spacing = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = animelem = 2
attr = SCA,NP,SP,NT
slot = 0
stateno = 1002
time = 4
ignorehitpause = 1
;persistent =

[State 3502]
type = EnvShake
trigger1 = animelem = 1
time = 20
ampl = -4
freq = 65
phase = 1
removeongethit = 1

[State 2101, 1]
type = VelAdd
trigger1 = AnimElem = 1
x = 25

[State 100, 0]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 100, 0]
type = VelSet
trigger1 = animelem = 5
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)

[State 52, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 18
time = 10
palcontrast = 130,80,82 ;222,142,82
trans = add
length = 15
timegap = 1
framegap = 1

[State 1040, 2]
type = Explod
trigger1 = Time = 15
anim = 10035
scale = .5,.5
pos = -75,10
sprpriority = 3

[State 1011 , 1]
type = HitDef
trigger1 = AnimElem = 2
attr = SCA, HP
damage    = 60,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 5, Hit
pausetime = 12,12
sparkno = S8200
sparkxy = -10,-70
hitsound   = s8000,2
guardsound = S8500,0
guard.sparkno = S8100
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 0, -3
air.velocity = 0,-3
guard.slidetime = 20
guard.velocity = -15
envshake.time = 12
envshake.ampl = 5
fall.recover = 0

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 2,13

[State 1100, 8]
type = ChangeState
trigger1 = Movehit
value = 101199

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 2

[State 142, 6]
type = ChangeState
trigger1 = Moveguarded
value = 0
ctrl = 1

[State 142, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
-------------------------------------------------
[Statedef 101199]
type    = A
movetype= A
physics = N
poweradd= 20
ctrl = 0
velset = 0, 0
anim = 1005

[State 2101, 1]
type = Veladd
trigger1 = AnimElem = 1
x = 6

[State 604 , 1]
type = HitDef
trigger1 = AnimElem = 4
persistent = 0
attr = A, HA;NA
damage    = 55
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 7,7
sparkno = S8200
sparkxy = -10,-70
hitsound   = s8000,2
guardsound = S6,0
guard.sparkno = S8100
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = 0,30
air.fall = 1
envshake.time = 12
envshake.ampl = 6
fall.yvelocity = -10
fall.recover = 0
p2stateno = 1111401

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 1,5

[State 1614, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
--------------------------------------------
[Statedef 1111401]
type = A
movetype = H
physics = N
velset = 0, 0
[State 1111401, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111401, End]
type = changestate
trigger1 = hitshakeover
value = 1111402


;--- Falling ---
[Statedef 1111402]
type = A
movetype = H
physics = N

[State 1111402, Vel]
type = hitvelset
trigger1 = !time
x = 12
y = 1

[State 1111402, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)


[State 1111402, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111402, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111401, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1111403
[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;--- Hitting Wall ---
[Statedef 1111403]
type = A
movetype = H
physics = N

[State 1111403, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111403, Pos]
type = posset
trigger1 = 1
x = -160 * facing

[State 1111303, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111403, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1111403, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111403, snd]
type = playsnd
trigger1 = !time
value = f7, 0

[State 1111403, FX]
type = explod
trigger1 = !time
anim = f72
pos = 0, floor(screenpos y) -50
postype = back
sprpriority = 3

[State 1111403, End]
type = changestate
trigger1 = time >= 4
value = 1111404


;--- Falling ---
[Statedef 1111404]
type = A
movetype = H
physics = N

[State 1111404, turn]
type = turn
trigger1 = !time

[State 1111404, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1111404, Vel]
type = velset
trigger1 = !time
x = -2.5
y = -10

[State 1111404, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 1111304, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111404, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1111404, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111404, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111404, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;--Get Hit Custom State----
;--- Hit Pause ---
[Statedef 1111501]
type = A
movetype = H
physics = N
velset = 0, 0
[State 1111401, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111401, End]
type = changestate
trigger1 = hitshakeover
value = 1111502


;--- Falling ---
[Statedef 1111502]
type = L
movetype = H
physics = S

[State 1111502, Vel]
type = hitvelset
trigger1 = !time
;x = 12
y = -3

[State 1111502, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)


[State 1111502, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111502, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------------------------------------------
;fastpunchs
[Statedef 1006]
type = S
movetype = A
physics = S
anim = 1006
ctrl = 0
juggle= 10
velset = 0,0
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 10
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 12
value = 8400, 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 5 || AnimElem = 8
attr = S,SA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 3,2
sparkno = S8200+random%2
sparkxy = 0,-100 + floor(random/20)
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1
air.type = Low
air.hittime = 4
air.velocity = -3,-1
guard.velocity = -5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0
fall = 0

[State 1005, changestate]
type = changestate
trigger1 = animelem = 8
value = 3030
ctrl = 0

[Statedef 3030]
type    = S
movetype= A
physics = S
anim = 1005
ctrl = 0
velset = 0,0

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 100
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 40,40
sparkno = S8200
sparkxy = -30,-89
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90

[state 3030,end]
type = changestate
trigger1 = animelem = 5
value = 0
ctrl = 1
;---------------------------------------------------------------------------------------------------------------
;schock
[Statedef 1500]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1007
ctrl = 0
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,9
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 191,11
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 3
name = "Special Dust"
anim = 8170
pos = -8,3
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 3
name = "tierra"
anim = 7715
pos = 0,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .8, .8
facing = 1
ownpal = 1
ignorehitpause = 1


[State 1007, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "remolino"
ID = 7819
stateno = 7819
pos = 240,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 193, shake it]
Type = EnvShake
Trigger1 = AnimElem = 3
Time = 10
ampl = 17
ignorehitpause = 1

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1007, End]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1


;------------------------------------------------------------------------
[Statedef 7819]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7705
sprpriority = -9

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage    = 120
guardflag = MA
pausetime = 10,10
hitsound = s8000,2
guardsound = s8000,6
sparkno = S8200
guard.sparkno = S8100
guardsound = S8500,0
sparkxy = -30,-70; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
fall=1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;tremor
[Statedef 2401]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1009
poweradd = 20

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,5

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 192,0

[State 1100, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 7701
projhitanim = 1112
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 10
attr = S, SP
damage   = 45
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = s8000,2
sparkno = s8022
sparkxy = 60,-10
guardsound = S8500,0
guard.sparkno = S8100
ground.type = Low
ground.slidetime = 5
ground.hittime  = 0
ground.velocity = 0,-7
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = 0,-9
air.juggle = 3
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 193, sand]
type = Explod
trigger1 = AnimElem = 6
anim = 7510
pos = 0,0
sprpriority = -999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 193, sand]
type = Explod
trigger1 = AnimElem = 6
anim = 8170
pos = 0,0
sprpriority = -999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 193, shake it]
Type = EnvShake
Trigger1 = AnimElem = 6
Time = 10
ampl = 17
ignorehitpause = 1

[State 200, sand]
type = Explod
trigger1 = AnimElem = 6
anim = 8676
pos = 40, 20
sprpriority = 999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1


[State 1100, end]
type = ChangeState
trigger1 = time = 25
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------------------------
;Twister
[StateDef 7703]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1010
poweradd= 80
sprpriority = -2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 192, 2

[State 1000, 0]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "whir"
id = 10112
postype = p1
pos = 0,10
stateno = 10112
keyctrl = 0
ownpal = 0
sprPriority = 3
scale = 0.75,0.625


[State 1000, 1]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1
;-------------------
;whir
[Statedef 10112]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1750 ;1011 ;6504 ;<-Experimental beam

[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1000, dust]
type = Explod
triggerall = !NumExplod(8171)
trigger1 = animelem = 3
trigger2 = animelem = 6
anim = 8171
pos = 50,0
supermove = 1
sprpriority = -5
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(8170)
trigger1 = animelem = 3
trigger2 = animelem = 6
anim = 8170
pos = -50,0
supermove = 1
sprpriority = -5
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
trigger9 = animelem = 27
value = S800,5
volume = 255
channel = -1
freqmul = 1
loop = 0
pan = 0

[State 1011 , 1]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
trigger9 = animelem = 27
attr = S, HA
animtype  = back;DiagUp
damage    = 10
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 0,0
sparkno = s8022
sparkxy = -30,-89
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90


;[state 1011, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1010
;pos = 0,0

[state 1011, 8]
type = destroyself
trigger1 = Animtime = 100
trigger2 = parent, stateno != 7703

----------------------------------------------------------

;flybeam
[Statedef 1007]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1008
sprpriority = 1

[State 1000, Explod];LIGHT
type = Explod
trigger1 = animelem = 3
anim = 1012
ID = 1012
pos = 9,-42
postype = p1
bindtime = -1
scale = const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 190,9

[State 405, 6]
type = PlaySnd
trigger1 = Time = 6
value = 190,10


[State 1000, 0]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Heat ray Y"
id = 10111
postype = p1
pos = 6,-109
stateno = 10111
keyctrl = 0
ownpal = 0
;size.xscale=0.3
size.yscale=0.3

[State 1000, 1]
type = ChangeState
trigger1 = time = 50
value = 2000
ctrl = 1
;-------------------
;Heat ray Y
[Statedef 10111]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1001 ;1011 ;6504 ;<-Experimental beam

[State 1015, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 10
time = 20
palcontrast = 140,0,0 ;130,80,82;222,142,82
paladd = 10,-250,-250
trans = add
length = 15
timegap = 1
framegap = 1

[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 9999

[State 1011 , 1]
type = HitDef
trigger1 = AnimElem = 1
;persistent = 0
attr = SCA, HP
damage    = 45,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,20
sparkno = -1
hitsound   = S0,25
guardsound = S0, 42
ground.type = High
;ground.slidetime = 15
;ground.hittime  = 20
;ground.velocity = -10, -10
;air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

;[state 1011, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1010
;pos = 0,0

[state 1011, 8]
type = destroyself
trigger1 = time = 35
