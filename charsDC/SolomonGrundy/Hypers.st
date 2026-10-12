;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
;
[StateDef 3000]
anim = 3000
ctrl = 0
type = s
movetype = A
physics = S
velset = 0, 0
juggle  = 10


[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 220,3
channel = 0


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem = 5
time = 45
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
;persistent =


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 3
time = 34
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
movetime = 34

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1



[State 0, Explod]
type = Explod
trigger1 = animelem =7
anim = 7023
ID = 7023
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
ontop = 1
removeongethit = 1


; end DCvM stuff
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
trigger9 = animelem = 13
x = 15
y = 0


[State 3200, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 4

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,10
guardflag = MA
pausetime = 10,8
hitsound = S8000,2
guardsound = 6,0
priority = 4,hit
sparkno = s8222
guard.sparkno = s8001
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 70
guard.velocity = -5
ground.velocity = 0,0
air.velocity = 0,4
p2stateno = 3002
kill = 0

[State 3013, blind]
type = targetbind
trigger1 = time = 0
pos = 85, 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3001
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 79
value = 106
ctrl = 1

;---------------------------------------------------------------------------
;
[Statedef 3001]
anim = 3001
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time 
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 528
;ignorehitpause = 
;persistent = 

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = unguardable
persistent = 1


[State 3013, blind]
type = targetbind
trigger1 = time = 0
pos = 85, 0

;[State 0, VelSet]
type = VelSet
trigger1 = animelem= 2
trigger2 = animelem= 7
trigger3 = animelem= 13
trigger4 = animelem= 22
trigger5 = animelem= 30
trigger6 = animelem= 36
trigger7 = animelem= 45
trigger8 = animelem= 50
trigger9 = animelem= 57
trigger10 = animelem= 62
trigger11 = animelem=69
trigger12 = animelem=73
x = 5


[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 537
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 4
trigger2 = animelem= 14
trigger3 = animelem= 31
trigger4 = animelem= 45
trigger5 = animelem= 57
trigger6 = animelem= 69
trigger7 = animelem= 80
trigger8 = animelem= 88
trigger9 = animelem= 96
trigger10 = animelem= 102
trigger11= animelem= 108
trigger12 = animelem= 112
value = 8400,1
channel=-1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 7
trigger2 = animelem= 23
trigger3 = animelem= 38
trigger4 = animelem= 52
trigger5 = animelem= 64
trigger6 = animelem= 75
trigger7 = animelem= 84
trigger8 = animelem= 92
trigger9 = animelem= 99
trigger10 = animelem= 105
trigger11 = animelem= 110
trigger12 = animelem= 114 
value = 8400,2
channel=-1


;[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 4
trigger2 = animelem= 14
trigger3 = animelem= 31
trigger4 = animelem= 45
trigger5 = animelem= 57
trigger6 = animelem= 69
trigger7 = animelem= 80
trigger8 = animelem= 88
trigger9 = animelem= 96
trigger10 = animelem= 102
trigger11= animelem= 108
value = 200,0 + (random%2)
channel=0

[State 0, PlaySnd];grito previo
type = PlaySnd
trigger1 = animelem= 112
value = S220,5
channel= 0

[State 0, PlaySnd];woosh final kick
type = PlaySnd
trigger1 = animelem= 153
value = S8400,2
channel= -1

[State 0, PlaySnd];grito final
type = PlaySnd
trigger1 = animelem= 153
value = S220,6
channel= 0



[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 4
trigger2 = animelem= 14
trigger3 = animelem= 31
trigger4 = animelem= 45
trigger5 = animelem= 57
trigger6 = animelem= 69
trigger7 = animelem= 80
trigger8 = animelem= 88
trigger9 = animelem= 96
trigger10 = animelem= 102
trigger11= animelem= 108
trigger12 = animelem= 112
attr = S, NA
damage = 10,1
guardflag = MA
pausetime = 1,1
hitsound = S8000,0
guardsound = s2,1
priority = 4,hit
sparkno = s8002
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = High
ground.hittime  = 70
air.hittime  = 70
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
kill=0


;low
[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 7
trigger2 = animelem= 23
trigger3 = animelem= 38
trigger4 = animelem= 52
trigger5 = animelem= 64
trigger6 = animelem= 75
trigger7 = animelem= 84
trigger8 = animelem= 92
trigger9 = animelem= 99
trigger10 = animelem= 105
trigger11 = animelem= 110
trigger12 = animelem= 114 
attr = S, NA
damage = 10,1
guardflag = MA
pausetime = 1,1
hitsound = S8000,0
guardsound = s2,1
priority = 4,hit
sparkno = s8022
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = low
ground.hittime  = 70
air.hittime  = 70
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
kill=0




[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 116
attr = S, NA
damage = 10,1
guardflag = MA
pausetime = 10,10
hitsound = S8000,1
guardsound = s2,1
priority = 4,hit
sparkno = s8022
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = low
ground.slidetime = 0
ground.hittime  = 100
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
p2stateno = 5300
kill=0

[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 153
attr = S, NA
damage = 15,5
guardflag = MA
pausetime = 20,20
hitsound = S8000,2
guardsound = s2,1
priority = 4,hit
sparkno = s8222
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10,-2
air.velocity = -10,-2
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall.envshake.time = 7
fall.envshake.freq = 80
fall.envshake.ampl = -5
fall.envshake.phase = 90
fall = 1
fall.recover = 0
down.hittime = 25


[State 1001, EnvColor]
type = EnvColor
trigger1 = animelem = 153
value = 255,255,255
ignorehitpause = 1


[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------
;p2 rage combo state
[StateDef 3002]
type = S
movetype = H
physics = S
ctrl = 0
sprpriority = -1

[State 7600, Stuck]
type = ChangeAnim2
trigger1 = !time 
value = 5000

[State 0, Posset]
type = Posset
trigger1 = time = 0
x = 20
y = 0
;ignorehitpause = 
;persistent = 

[State 0, Posset]
type = Posset
trigger1 = Pos Y < -1
x = 20
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
x = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 3002, End]
type = SelfState
trigger1 = movetype = H
value = 5000
ctrl = 0

;---------------------------------------------------------------------------
;Grave Rot
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1



[State 3000, ?????]
type = PlaySnd
trigger1 = time = 1
value = 220,4
channel = 0


[State 1000, pos]
type = posset
trigger1 = time = 0
y = 0

;[State 3000,vel x]
;type = null;posadd
;trigger1 = animelemtime(4)=0
;x = 46

;[State 3000,vel x]
;type = null;posadd
;trigger1 = animelemtime(7)=0
;x = -46

[State 801, ?????????]
type = Width
trigger1 = time = 0
edge = 60,0 ;???????????(??????)

[State 3000, NotHitBy];??
type = NotHitBy
trigger1 = animelemtime(3)>0
trigger1 = animelemtime(6)<9
value = SCA

[State 3000,push]
type = PlayerPush
trigger1 = 1
value = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
movetime = 40


[State 3100, Helper]
type = Helper
trigger1 = time = 40
helpertype = normal
name = "deadfactor"
ID = 3101
stateno = 3101
size.xscale= .5
size.yscale= 1
pos = -20,0
sprpriority = 5


[State 3110, back to stance]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3101]
type = A
movetype = A
physics = C
anim = 3101
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y ;- 125



[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable
ignorehitpause =1
persistent =1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 50,0
attr = S,HA
hitflag = MAF
damage = 25,25
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 2
guard.velocity = 2
air.velocity = 2,-2
kill = 1
guard.kill = 1
palfx.time = 25
palfx.add = 54,64,15
p2stateno = 3103

[State 3115, DestroySelf]
type = Changestate
trigger1 = Time = 800
value = 3102

[StateDef 3102]
type = A
movetype = I
physics = N
anim = 3102
ctrl = 0
sprpriority = 10

[State 3115, DestroySelf]
type = Destroyself
trigger1 = animtime = 0


;p2 spores state
[Statedef 3103]
type = U
movetype = H

[State 3002, PalFX]
type = PalFX
trigger1 = time = 0
time = 25
add = -100,-100,-100
mul = 154,224,56
sinadd = -10,-10,-10,10
invertall = 0
color = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movecontact = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 3002, ChangeState];Dead
type = SelfState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 3002, End]
type = SelfState
trigger1 = time >= 2
value = ifelse(StateType = A, 50,0)
ctrl = 1

;Truck Hyper
[StateDef 3200]
anim = 3200
ctrl = 0
type = s
movetype = A
physics = S
velset = 0, 0
juggle  = 10

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 17
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 129
;ignorehitpause = 
;persistent = 


[State 3000]
type = PlaySnd
trigger1 = AnimElem = 17
value = 8600,0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 20
value = 1000,1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 31
value = 8400,2

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 32
value = 8000,5


[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 220,1
channel = 0


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1



[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
movetime = 40

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1



[State 0, Explod]
type = Explod
trigger1 = animelem =7
anim = 7023
ID = 7023
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
ontop = 1
removeongethit = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 32
attr = S, NA
damage = 60,10
guardflag = MA
pausetime = 15,15
hitsound = S8000,2
guardsound = 6,0
priority = 4,hit
sparkno = s8222
guard.sparkno = s8001
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -12, -2
air.velocity = -12, -2
guard.velocity = -5
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall.envshake.time = 7
fall.envshake.freq = 80
fall.envshake.ampl = -5
fall.envshake.phase = 90
fall = 1


[State 3100, Helper]
type = Helper
trigger1 = animelem = 17
helpertype = normal
name = "Truck"
ID = 3201
stateno = 3201
pos = 0,0
sprpriority = 1
ignorehitpause = 1


[State 1010, effect]
type = Explod
trigger1 = AnimElem = 32
persistent = 0
anim = 3202
postype = p1
sprpriority = -1
pos = 0, -50
velocity = 0, 0
accel = .5, -1.5
removetime = 20





[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3201]
type = U
movetype = A
physics = U
anim = 3201
ctrl = 0
sprpriority = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 99
pos = 0,0
ignorehitpause = 1
;ignorehitpause = 
;persistent = 



[State 3000, 6]
type = HitDef
trigger1 = time= 0
attr = S, HA
animtype  = Hard
damage    = 200,5
getpower  = 0
priority  = 5
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -5, -4
guard.velocity = -12
air.velocity = -2,4
airguard.velocity = -3,-3
fall.animtype = Hard
fall = 1
palfx.time = 30
palfx.invertall = 1
palfx.color = 0
palfx.add = 192,32,0
palfx.sinadd = 0,32,0,4
fall.recover = 0

[State 440, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 221, 1

[State 440, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 221, 0

[State 3000, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
ampl = 5
freq = 190


[State 1000, explod2]
type = Explod
trigger1 = AnimElem = 7
persistent = 0
anim = 3203
pos = 125,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1000, explod3]
type = Explod
trigger1 = AnimElem = 9
persistent = 0
anim = 3203
pos = 185,-20
postype = p1
sprpriority = -1
bindtime = 1
ownpal = 1



[State 1001, EnvColor]
type = EnvColor
trigger1 = animelem = 7
value = 255,255,255
ignorehitpause = 1


[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 1





