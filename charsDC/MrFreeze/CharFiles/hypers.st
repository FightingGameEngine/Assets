; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = N
ctrl = 0
anim = 3000
velset = 0,0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 8000
ID = 8000
pos = 0,-50
bindtime = 1
removetime = -2
sprpriority = -1
removeongethit = 1
persistent = 1
[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -3000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 1
value = S10000,3000
channel = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "MegaBoom"
ID = 3009
stateno = 3009
pos = 105,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 5
trigger2 = animelemtime(5) > 30 && backedgedist > -80
x = -7
[State 0, VelSet]
type = VelSet
trigger1 = backedgedist < -80
x = 0
y = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(5) > 30
flag = invisible
[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(5) > 30
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3110, back to stance]
type = ChangeState
trigger1 = Time > 180
value = 101
ctrl = 1
;-------------------------------------------------------------------------------
[StateDef 3009]
type = S
movetype = A
physics = N
anim = 3009
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time > 60
anim = 3011
ID = 3011
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,.1
random = 30,30
removetime = -2
pausemovetime = 0
scale = .2,.2
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VelAdd]
type = VelAdd
trigger1 = time = 60
x = (IfElse(FrontEdgeDist > 100 ,4, -4))
y = -6
[State 0, Gravity]
type = Gravity
trigger1 = time > 60

[State 0, ChangeState]
type = ChangeState
triggerall = time > 70
trigger1 = Pos Y > -1
value = 3010
ctrl = 0

; Hyper 1 - beam helper
[StateDef 3010]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 9
velset = 0,0
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 1
value = 1
scale = 2,2 ;fvar(1),fvar(1)
[State 0, Trans]
type = Trans
trigger1 = 1
trans = ADD ;none, add, addalpha, add1, sub
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 0
time = 10
add = 0,1,240
mul = 120,120,200
sinadd = 85,55,110,10
invertall = 0
color = 0
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = 0,1,100
mul = 120,120,200
sinadd = 85,55,110,10
invertall = 1
color = 0

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3000,1

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = hitcount = 11 && movehit
value = S3000,0

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

[State 420, HitDef]
type = HitDef
triggerall = hitcount < 12
trigger1 = Timemod = 2,1
attr = S, SP
hitflag = MAFD
damage = 25
guardflag = A
pausetime = 3,3
hitsound = S2,2
guardsound = S3,0
sparkno = 3
sparkxy = 0,-120
p2stateno = IfElse(hitcount >= 11, 105050,-1)
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-1
guard.velocity = -5
air.velocity = -1,-1;-2,-11
EnvShake.time = IfElse(var(40) > 0,10,5)
EnvShake.freq = 90
EnvShake.ampl = -10
EnvShake.phase = 100

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0; || Root, stateno != 3000

;-------------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3100]
type    = S
physics = N
ctrl = 0
anim = 3100
velset = 0,0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 8000
ID = 8000
pos = 0,-50
bindtime = 1
removetime = -2
sprpriority = -1
removeongethit = 1
persistent = 1
[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -2000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 0, Helper]
type = Helper
trigger1 = animelem = 3 && !NumHelper(3120)
helpertype = normal ;player
name = "NoraHyper"
ID = 3120
stateno = 3120
pos = -50,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S10000,3100
volume = 200
channel = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = Time > 60
value = 0
ctrl = 1

[Statedef 3120]
type = S
physics = N
anim = 3120
sprpriority = 1
velset = 8,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S10000,3120
volume = 200
channel = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 90 && vel X < 8
x = 2

[State 0, Turn]
type = Turn
trigger1 = time = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 2,1
trigger2 = timemod = 2,1
value = S1400,1
volume = 200
[State 0, Helper]
type = Helper
trigger1 = timemod = 2,1
helpertype = normal ;player
name = "NoraSpikes"
ID = 3130
stateno = 3130
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = .7
size.yscale = .8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 8,4
value = S1050,1
volume = -50

[State 0, Explod]
type = Explod
trigger1 = timemod = 4,2
anim = 3121
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = -.1,0
random = 5,5
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1

[State 3110, ]
type = DestroySelf
trigger1 = Time > 160 && FrontEdgeDist < -60

[Statedef 3130]
type = S
movetype = A
physics = N
anim = 3130
sprpriority = 1

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage = 15
guardflag =
pausetime = 1,1
hitsound = S1400,2
guardsound = S3,0
sparkno = 1
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0,0
guard.velocity = -2
air.velocity = 0,-1

[State 0, Explod]
type = Explod
trigger1 = time = 60 || movecontact
anim = 3131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -.1,-1
accel = 0,.1
random = 5,5
removetime = -2
pausemovetime = 0
scale = .7,.9
sprpriority = 2
ontop = 1

[State 3110, ]
type = DestroySelf
trigger1 = Time > 60 || movecontact

;-------------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3200]
type    = S
physics = N
ctrl = 0
anim = 3200
velset = 0,0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 8000
ID = 8000
pos = 0,-50
bindtime = 1
removetime = -2
sprpriority = -1
removeongethit = 1
persistent = 1
[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3200 && time = 5
movetype = A
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3200 && time = 0
value = S10000,3200
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3200 && timemod = 6,4
value = S10,10

[State 0, Helper]
type = Helper
triggerall = anim = 3200
trigger1 = animelem = 2
trigger2 = animelem = 3
helpertype = normal ;player
name = "IceRocks"
ID = 3210
stateno = 3210
pos = 77,-91
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Explod]
type = Explod
triggerall = anim = 3200 && time > 4
trigger1 = time < 90
trigger2 = time < 90
anim = 1111
pos = 90,-91
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .2,-.3
accel = 1.2,.15
random = 20,25
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 2
ontop = 1
ownpal = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time > 90 && anim != 3201
value = 3201

[State 3110, back to stance]
type = ChangeState
trigger1 = Anim = 3201 && Animtime = 0
value = 0
ctrl = 1

;----------------
[Statedef 3210]
type = S
movetype = A
physics = N
anim = 3211
sprpriority = 1
velset = 4,-3

[State 0, VarRandom]
type = VarRandom
trigger1 = time < 5
v = 1
range = 1,4
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 3210+Var(1)
[State 0, VelSet]
type = VelSet
trigger1 = time = 1
y = 2 - Var(1)
[State 0, VelSet]
type = VelSet
trigger1 = time = 2
x = 7 + Var(1)

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 5
y = .2

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 2,2
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 10,0
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-1

[State 0, Explod]
type = Explod
trigger1 = movecontact || Pos Y > -1
anim = 3210
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -.1,-1
accel = 0,.1
random = 5,5
removetime = -2
pausemovetime = 0
scale = .7,.9
sprpriority = 2
ontop = 1

[State 3110, ]
type = DestroySelf
trigger1 = movecontact || Pos Y > -1


