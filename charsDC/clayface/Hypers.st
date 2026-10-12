;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Claywave
;---------------------------------------------------------------------------
[Statedef 2526]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 2556
ctrl = 0
sprpriority = -1


[State 3015, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S8889,0
pos = 0,-50
darken = 1
poweradd = -1000
sprpriority=4


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6





[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0


[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2

[State 2000, 8]
type = HitDef
triggerall = P2Life > 0
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MA
damage    = 40,5
getpower  = 0
priority  = 6
pausetime = 8,5
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
;air.fall = 1
;fall = 1
;fall.recover = 0
;air.fall.recover = 0
p1sprpriority = -1
p1stateno = 2556

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,0


[State 220, End]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Steamroller - rolling
;---------------------------------------------------------------------------
[Statedef 2556]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 2526
ctrl = 0
sprpriority = 5

[State 3050, 10]
type = helper
trigger1 = time = 0
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1


[State 2000, 1]
type = Screenbound
trigger1 = 1
value = 1

[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0



[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2

[State 2000, 8]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 40,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 3
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 40,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 6
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 40,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 9
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 50,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 12
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 50,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 15
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 50,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[State 2000, 8]
type = HitDef
trigger1 = Time = 18
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 50,5
getpower  = 0
priority  = 6
pausetime = 4,2
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -9,0
air.velocity = -3.5,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5
p2stateno = 2665


[State 220, End]
type = ChangeState
trigger1 = animtime= 0
value = 0
ctrl = 1

[Statedef 2665]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 3600, PosSet]
type = PosSet
trigger1 = time= 0
y = 0


[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 2665



[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 882, SelfState]
type = SelfState
trigger1 = Time >= 60
value = 5120


[Statedef 2999]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 2999
ctrl = 0
sprpriority = 2

[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1




[State 3015, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S8889,0
pos = 0,-50
darken = 1
poweradd = -1000
sprpriority=4


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3050, 10]
type = helper
trigger1 = time = 30
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 3000,2



[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = 1
x = -8
y = 0

[State 3100, End]
type = ChangeState
trigger1 = animtime= 0
value = 29999
ctrl = 1

[Statedef 29999]
type    = S
movetype= A
physics = N
anim = 29999
ctrl = 0
velset = 6,0
sprpriority = 2



[State 2000, 1]
type = Screenbound
trigger1 = 1
value = 0

[State 2000, 1]
type = PosSet
trigger1 = facing = 1
trigger1 = time = 0
x = -220
y = 0

[State 2000, 1]
type = PosSet
trigger1 = facing = -1
trigger1 = time = 0
x = 220
y = 0

[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 5.5

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2


[State 52]
type = EnvShake
trigger1 = TimeMod = 6,1
time = 12
ampl = 4

[State 2000, 8]
type = HitDef
triggerall = P2Life > 0
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 50,5
getpower  = 0
priority  = 6
pausetime = 3,3
sparkno = -1
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = 0,0
air.velocity = -3.5,0
;air.fall = 1
;fall = 1
;fall.recover = 0
;air.fall.recover = 0
p1sprpriority = -1
p1stateno = 2172

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
triggerall = time > 70
trigger1 = FrontEdgedist < -80
time = 5

[State 220, End]
type = ChangeState
trigger1 = time = 125
value = 108
ctrl = 1

[Statedef 2172]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 29999
ctrl = 0
sprpriority = -1

[State 52]
type = EnvShake
trigger1 = TimeMod = 6,1
time = 12
ampl = 4


[State 2000, 1]
type = Screenbound
trigger1 = 1
value = 0

[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 2000, 1]
type = velset
trigger1 = time >= 0
x = 5.5

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2

[State 2000, 8]
type = HitDef
triggerall = P2Life > 0
trigger1 = TimeMod = 6,0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = N
damage    = 45,5
getpower  = 0
priority  = 6
pausetime = 3,3
sparkno = -1
sparkxy = -15,-30
hitsound   = s8000,5
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 7


[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 130
time = 5

[State 220, End]
type = ChangeState
trigger1= time = 125
value = 108
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------


[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3000
ctrl = 0
sprpriority = 2



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,5


[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 52]
type = EnvShake
trigger1 = animelem = 2
time = 16
freq = 120
ampl = -8

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 25, 2

[State 3015, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S8889,0
pos = 0,-50
darken = 1
poweradd = -1000
sprpriority=4


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = helper
trigger1 = time = 25
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 420, HitDef]
type = HitDef
trigger1 = !moveguarded
trigger1 = Time % 6 = 0 && Time < 117
attr = C, NA
damage = 45,5
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = 0, -18
air.velocity = 0,-18
airguard.velocity = -6,0
yaccel = 0.39+(enemynear,const(movement.yaccel)/2)
envshake.time = 1
envshake.ampl = 1
fall = 1
fall.recover = 0


[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1


[Statedef 3040]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3040
ctrl = 0
sprpriority = -1


[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1




[State 3015, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S8889,0
pos = 0,-50
darken = 1
poweradd = -1000
sprpriority=4


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = helper
trigger1 = AnimElem = 5
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 11


[State 0, Grenade Helper]
type = Helper
trigger1 =  AnimElem = 7
helpertype = normal
name = "Grenade"
ID = 3004
pos = 160,0
postype = P1
facing = 1
stateno = 3004
priority = 5
ownpal = 0



[State 3100, End]
type = ChangeState
triggerall = numhelper(3004) > 0
trigger1 = helper(3004),movehit
value = 3005
ctrl = 0


[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 3006
ctrl = 1

[Statedef 3006]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3006
ctrl = 0
sprpriority = -2




[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

[Statedef 3005]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3005
ctrl = 0
sprpriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,11


[State 781, Envshake]
type = Envshake
trigger1 = time = 72 || time = 84 || time = 96 || time = 108 || time = 120 || time = 132 || time = 144
time = 16
freq = 120
ampl = -8

[State 20]
type = PlaySnd
trigger1 = time = 72 || time = 84 || time = 96 || time = 108 || time = 120 || time = 132 || time = 144
value = 25,0

[State 20]
type = PlaySnd
trigger1 = time = 42
value = 25,1

[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 3006
ctrl = 1

;Grenade Helper
[Statedef 3004]
type = S
movetype = A
physics = N
juggle  = 4
poweradd= 0
ctrl = 0
anim = 3004
velset = 2,0
sprpriority = 5

[state 5355, 1]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 52001
ignorehitpause = 1


[State 420, HitDef]
type = HitDef
triggerall = numhelper(3004) > 0
trigger1 = !moveguarded
trigger1 = time = 0
attr = S,N
damage = 200,5
animtype = Medium
guardflag = MA
hitflag = MF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = -1
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s25,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
p2stateno = 3041





[State 99]
type = DestroySelf
trigger1 = helper(3004),movehit

[State 99]
type = DestroySelf
trigger1 = time = 25


[Statedef 3041]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0





[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3041




[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 882, SelfState]
type = SelfState
trigger1 = Time >= 156
value = 5050
ctrl = 0
; END
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef -2, 190
; Var(2) - StateDef -2
; Var(18) - StateDef -2

;--------------------- Float Variable List ----------------------

; fVar(5) - StateDef -3
; fVar(17) - StateDef 1000
