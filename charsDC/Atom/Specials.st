;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = -4

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 7
name = "Special Dust"
anim = 8170
pos = 25,3
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

[State 1000, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "sombra"
ID = 191
stateno = 1198
pos = -51,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1001, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "laser"
ID = 192
stateno = 9000
pos = -40,-88
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = time = 80
value = 0
ctrl = 1
;--------------------------------------------------------------
;laser
[Statedef 9000]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7704
sprpriority = 10

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
trigger1 = animelem = 2
value = 190,10
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage    = 130
guardflag = MA
pausetime = 10,10
hitsound = S190,11
guardsound = s8000,6
sparkno = S6002
guard.sparkno = -1
sparkxy = -30, 0; (enemynear,pos y)
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
palfx.time = 50
palfx.add = 49,173,231
palfx.mul = 13,179,199
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 99]
type = DestroySelf
trigger1 = time = 35

;--------------------------------------------------------------
;sombra
[Statedef 1198]
type = S
ctrl = 0
anim = 7705

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = animelem = 15

;---------------------------------------------------------------------------
; Special 2
;---------------------------------------------------------------------------
;Yellow beam
[StateDef 1002]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1002
ctrl = 0
sprpriority = -4

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 7
name = "Special Dust"
anim = 8170
pos = 25,3
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

[State 1000, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "sombra"
ID = 191
stateno = 1198
pos = -51,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1001, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "laser"
ID = 192
stateno = 9001
pos = 50,-100
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = time = 83
value = 0
ctrl = 1
;--------------------------------------------------------------
;laser
[Statedef 9001]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1003
sprpriority = 10

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
trigger1 = animelem = 2
value = 190,10
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage    = 130
guardflag = MA
pausetime = 10,10
hitsound = S190,11
guardsound = s8000,6
sparkno = S6002
guard.sparkno = -1
sparkxy = -30, 0; (enemynear,pos y)
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
palfx.time = 50
palfx.add = 224,68,-40
palfx.mul = 256,192,128
palfx.sinadd = -160,-160,-160,14
palfx.color = 0
palfx.invertall = 1
fall=1

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 99]
type = DestroySelf
trigger1 = time = 48

;--------------------------------------------------------------
;sombra
[Statedef 1198]
type = S
ctrl = 0
anim = 7705

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = animelem = 15


;--------------------------------------------------------------

;Charge Punch
[Statedef 1003]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 182
poweradd= 40
ctrl = 0
spriority = -5

[State 191, Helper]
type = Helper
trigger1 = time =0
helpertype = normal ;player
name = "llama"
ID = 191
stateno = 1192
pos = 5,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 99

[State 405, 6]
type = PlaySnd
triggerall = var(3)= 0
trigger1 = Time = 0
value = 3006,7

[State 405, 6]
type = PlaySnd
triggerall = var(3)!= 0
trigger1 = Time = 0
value = 3006,0

[State 142, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 146

;--------------------------------------------------------------
;llama
[Statedef 1192]
type = S
ctrl = 0
anim = 7703

[State 1192, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1192, end]
type = DestroySelf
trigger1 = time = 20

;-------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 146,Punch]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 7711
poweradd= 40
ctrl = 0
spriority = -5

[State 2101, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 9

[State 405, 6]
type = PlaySnd
trigger1 = time = 0
value = 191,10

[State 2101, 3]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 146, 3]
type = HitDef
trigger1 = animelem =2
attr = S, HA
animtype  = High
damage    = 100
guardflag = MA
pausetime = 30, 30
sparkxy = -10,-70
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -3
air.velocity = 0,0
sparkno = s8223
guard.sparkno = -1
fall = 1
envshake.time = 19
envshake.ampl = 16
p2stateno = 1111300


[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4


[State 142, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;========================< Super Punch P2 Custom State >=============================
;--- Hit Pause ---
[Statedef 1111300]
type = A
movetype = H
physics = N
velset = 0, 0
[State 1111300, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111300, End]
type = changestate
trigger1 = hitshakeover
value = 1111301


;--- Falling ---
[Statedef 1111301]
type = A
movetype = H
physics = N

[State 1111301, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 1111301, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111301, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111301, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;yellow charge
[Statedef 1006]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 7802
juggle  = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 20
y = 0

[State 0, FX]
type = Afterimage
trigger1 = time = 0
time    = 50
length  = 150
palcontrast =  200, 200, 64
palbright = 130,130,130
timegap = 1
trans = addalpha
alpha = 100, 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8889,0

[State 1006, HitDef]
type = HitDef
trigger1 = animelem = 8
attr = S,HA
damage = 55,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,14
sparkno = s8223
sparkxy = -10, -70
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,0
air.type = Low
air.hittime = 3
air.velocity = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = movecontact = 1
x = 0
y = 0

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[State 1006, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist > -1
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1006, ChangeState]
type = ChangeState
trigger1 = movecontact = 1
value = 3205
ctrl = 0

;End
[Statedef 3205]
type    = A
movetype= A
physics = N
vel = 7,0
ctrl = 0
anim = 7725
juggle  = 4

[State 251, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 3
attr = S,HA
damage = 55,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,17
sparkno = s8223
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,0
air.type = Low
air.hittime = 3
air.velocity = 0,0

[State 251, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
damage = 55,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 30,30
sparkno = s8223
sparkxy = -10, -70
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -6,-2
air.type = Low
air.hittime = 3
air.velocity = 0,0
fall = 1

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 30
freq = 80
;ampl = -4
;phase = 90
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 5
y = 0

[State 1200, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ground shock
[Statedef 1007]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7804
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
trigger1 = animelem = 6
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
trigger1 = AnimElem = 8
name = "Special Dust"
anim = 8170
pos = 20,0
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


[State 1007, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "remolino"
ID = 192
stateno = 9003
pos = 20,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1007, End]
type = ChangeState
trigger1 = time = 47
value = 0
ctrl = 1
;--------------------------------------------------------------
;remolino
[Statedef 9003]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7805
sprpriority = 99999

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage    = 120
guardflag = MA
pausetime = 10,10
hitsound = s8000,2
guardsound = s8000,6
sparkno = s8223
guard.sparkno = -1
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

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 30
freq = 80

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 21

;---------------------------------------------------------------------------
;high beam
[Statedef 1008]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 70
ctrl = 0
velset = 0,0
anim = 7806
sprpriority = 0

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


[State 1200, Ground FX]
type = Explod
trigger1 = AnimElem = 6
name = "Special Dust"
anim = 8170
pos = -30,3
sprpriority = -4
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = animelem =6
helpertype = normal ;player
name = "sombra"
ID = 191
stateno = 1201
pos = -58,28
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal ;player
name = "Heat Vision"
ID = 9040
stateno = 9040
pos = -58,-72
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1200, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1

;------------------------------------------------------------------

[Statedef 9040]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7807
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 190,10
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage    = 130
guardflag = MA
pausetime = 10,10
hitsound = S190,11
guardsound = s8000,6
sparkno = S6002
guard.sparkno = -1
sparkxy = -30, 0; (enemynear,pos y)
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
palfx.time = 50
palfx.add = 49,173,231
palfx.mul = 13,179,199
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 99]
type = DestroySelf
trigger1 = time = 24

;--------------------------------------------------------------
;sombra
[Statedef 1201]
type = S
ctrl = 0
anim = 7817

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = time = 20
;------------------------------------------------------------------

[Statedef 1010]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7801
ctrl = 0
sprpriority = 0


[State 1010, Helper]
type = Helper
trigger1 = animelem =1
helpertype = normal ;player
name = "sombra"
ID = 191
stateno = 1203
pos = 28,-37
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Heat Vision"
ID = 9000
stateno = 9000
pos = 60,-110
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 45
value = 2000
ctrl = 0

;------------------------------------------------------------------

[Statedef 9000]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1001
ctrl = 0
sprpriority = 10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 45,3
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = -1
sparkxy = -30, 0; (enemynear,pos y)
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
fall = 1
envshake.time = 7
envshake.ampl = 4

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 100)
anim = 8001
scale = 0.4,0.4

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 24

;--------------------------------------------------------------
;sombra
[Statedef 1203]
type = S
ctrl = 0
anim = 7705

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = animelem = 8

; End
