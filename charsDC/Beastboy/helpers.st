;*Titans Go:
;Robin or Starfire (air)
;Cyborg or terra (ground)

;Cyborg
[Statedef 1060]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 99998
poweradd = -500

[State 1080,VirtuaS]
type = helper
trigger1 = time = 5
helpertype = normal
name = "VirtuaS"
id = 2222
pos = -150,0
postype = back
stateno = 1061
ownpal = 0

[State 1080, 1]
type = ChangeState
trigger1 = Time = 90
value = 0
ctrl = 1


;----------------------------------------------------------------------
[Statedef 1061, Complete]
type    = S
movetype= A
velset = 7,0
ctrl = 0
anim = 1991
sprpriority = -2

[State 1000,]
type = PlaySnd
trigger1 = time = 4
value = 400,0

[State 1082, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 1068
time = -1

[State 1085, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 80,5
hitflag = MAFD
guardflag = MA
pausetime = 6,12
sparkno = S9992
sparkxy = 0,0
hitsound   = 5,3
guardsound = 9,9
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -5,0
air.velocity = -5,-2
fall=1

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  time=1
value = 1
movecamera = 160,0


[State 1069, 2]
type = DestroySelf
trigger1 = animtime = 200




;----------------------------------------------------------------------
;Robin
[Statedef 1080]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 99998
poweradd = -500

[State 1080,VirtuaS]
type = helper
trigger1 = time = 5
helpertype = normal
name = "VirtuaS"
id = 2222
pos = 85,-60
postype = p1
stateno = 1081
ownpal = 0

[State 1080, 1]
type = ChangeState
trigger1 = Time = 70
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1081, Complete]
type    = A
movetype= A
velset = -2,0
ctrl = 0
anim = 1987


[State 0, ScreenBound]
type = ScreenBound
trigger1 =  time=1
value = 1
movecamera = 160,0

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
hitflag = MAF
damage = 70, 5
pausetime = 8,8
hitsound = 5,3
sparkno = S9992
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6,-3
guard.velocity = -4
air.velocity = 6,0
fall=1

[State 1000,]
type = PlaySnd
trigger1 = time = 4
value = 400,3

[State 1081, 1]
type = Velset
trigger1 = time = 0
x = -7
y = 0

[State 1081, 1]
type = Velset
trigger1 = time = 24
ignorehitpause = 1
x = -10
y = -2

[State 1081, 1]
type = Velset
trigger1 = pos x = -70
y = 0

[State 1069, 2]
type = DestroySelf
trigger1 = animtime = 200


[Statedef 1090, Starfire]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 99998
poweradd = -500

[State 1080,VirtuaS]
type = helper
trigger1 = time = 5
helpertype = normal
name = "VirtuaS"
id = 2222
pos = -150,-20
postype = back
stateno = 1091
ownpal = 0

[State 1090, 1]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;   Starfire
;---------------------------------------------------------------------------
[Statedef 1091, Render]
type    = A
movetype= A
velset = 15,0
ctrl = 0
anim = 1988

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 0

[State 0, Width]
type = Width
trigger1 = anim = 1988
edge = 3000,0
player = 0,0
;value = 0,0
;ignorehitpause = 
;persistent = 

[State 1085, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 80,5
guardflag = MA
pausetime = 6,12
sparkno = S9992
guard.sparkno = S9998
sparkxy = 30,-155
hitsound   = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -5,-7
air.velocity = -6,-9

[State 1000,]
type = PlaySnd
trigger1 = time = 1
value = 313,7

[State 1000,]
type = PlaySnd
trigger1 = time = 1
value = 605,2
channel = 0

[State 1091, 1]
type = Velset
trigger1 = time = 0
x = 10
y = 0

[State 1091, 2]
type = destroyself
trigger1 = time = 100


;----------------------------------------------------------------------
