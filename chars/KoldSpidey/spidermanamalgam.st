;---------------------------------------------------------------------------
;---{Amalgam Hyper}---
;---------------------------
;--[Spider-man]-------------
[Statedef 15000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 15000
juggle  = 0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = time = 0
v =  20
value = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NP,SP,HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
trigger2 = animelem = 3
x = -20

[State 0, ]
type = VelSet
trigger1 = animelem = 6
trigger2 = animelem = 7
x = -10

[State 0, ]
type = VelSet
trigger1 = animelem = 1
trigger2 = animelem = 4
trigger3 = animelem = 5
x = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S0,1
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animtime = 0
value = S5,10
channel = 2

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0 && backedgedist <= -50
value = 15005

[Statedef 15005]
type = S
movetype = A
physics = S
velset = 15,0
anim = 15005
juggle  = 0
ctrl = 0

[State 0, ]
type = Width
trigger1 = 1
edge = 200,200
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
framegap = 4
palcontrast = 220,100,100
paladd = 25,0,0
palmul = .95,.85,.85
trans = add1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = animelem = 6
time = 2
length = 20
framegap = 4
palcontrast = 100,100,220
paladd = 0,0,25
palmul = .85,.85,.95
trans = add
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = time = 0 && facing = 1
x = -250
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = time = 0 && facing = -1
x = 250
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = VelSet
trigger1 = time <= 10
x = 15

[State 0, ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Superboy"
stateno = 20000
ID = 20000
pos = 505,0
facing = -1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "AmalgamPortrait"
ID = 9100
stateno = 9100
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S0,3
channel = 1
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 1
attr = S,NA
animtype = back
priority = 7,miss
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-50
hitsound = S5,9
guardsound = S5,8
ground.slidetime = 50
guard.slidetime = 50
ground.hittime = 50
guard.hittime = 50
air.hittime = 50
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 5,5
sprpriority = 2
persistent = 0
snap = 50,0

[State 0, ]
type = TargetBind
trigger1 = time <= 16 && movehit = 1
time = 2
pos = 50,0
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
priority = 7,hit
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 90,10
pausetime = 0,30
guard.pausetime = 5,4
sparkno = 2
numhits = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = 0,-20
guard.velocity = -3
air.velocity = 0,-19
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
p2stateno = 20103
snap = 50,0
fall = 1
air.fall = 1

[State 0, ]
type = Helper
trigger1 = animelem = 7
name = "bolt"
stateno = 11000
ID = 11000
pos = 10,0
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 35
anim = 15006
ID = 15006
pos = -18,0
bindtime = -1
removetime = -2
supermovetime = 999999999
pausemovetime = 999999999
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ]
type = VarSet
trigger1 = movehit = 1
trigger2 = helper(20000),movehit = 1
v =  20
value = 1
persistent = 0
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = animelem = 7 && var(20) = 1
time = 100
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20100

[Statedef 15010]
type = S
movetype = A
physics = S
velset = 0,0
anim = 15010
juggle  = 0
ctrl = 0

[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 10
anim = -1
sound = F20,3
movetime = 1
poweradd = -3000
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F300
ID = 300
bindtime = 1
supermove = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F300
ID = 300
bindtime = 1
supermove = 99999
pausemovetime = 99999
scale = 0.5, 1
facing = -1
sprpriority = 10
ontop = 1
ownpal = 1

[State 0, ]
type = PalFX
trigger1 = animelem = 2
time = 8
add = 255,255,255

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = -15

[State 0, ]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Superboy"
stateno = 20010
ID = 20000
pos = 0,0
facing = -1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--[Superboy]-------------
[Statedef 20000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 20000
sprpriority = 2
ctrl = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
framegap = 4
palcontrast = 100,100,220
paladd = 0,0,25
palmul = .85,.85,.95
trans = add1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = ChangeState
trigger1 = parent,stateno = 15005
value = 20005

[Statedef 20005]
type = S
movetype = A
physics = S
velset = 15,0
anim = 20005
sprpriority = 2
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time <= 10
x = 15

[State 0, ]
type = HitDef
trigger1 = animelem = 1
attr = S,NA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-50
hitsound = S5,9
guardsound = S5,8
ground.slidetime = 50
guard.slidetime = 50
ground.hittime = 50
guard.hittime = 50
air.hittime = 50
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 5,5
sprpriority = 2
persistent = 0
snap = 20,0

[State 0, ]
type = TargetBind
trigger1 = time <= 16 && movehit = 1
time = 2
pos = 20,0
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 20010]
type    = S
movetype= I
physics = S
velset = -15,0
anim = 20010
sprpriority = -1
ctrl = 0

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 8
add = 255,255,255

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20015

[Statedef 20015]
type    = A
movetype= I
physics = N
velset = -3,-0.5
anim = 20015
sprpriority = -1
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = time = 30
value = 20020

[Statedef 20020]
type    = A
movetype= I
physics = N
anim = 20020
sprpriority = -1
ctrl = 0

[State 0, ]
type = Turn
trigger1 = time = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 15
y = -15
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -50
trigger2 = time >= 100
ignorehitpause = 1

[Statedef 20025]
type    = A
movetype= I
physics = N
anim = 20025
velset = -2,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = Gravity
trigger1 = 1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 4
add = 255,255,255
ignorehitpause = 1

[State 0, ]
type = changestate
trigger1 = pos y >= 0
value = 20030

[Statedef 20030]
type    = S
movetype= I
physics = S
anim = 20030
velset = 0,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = VelSet
trigger1 = 1
y = 0

[State 0, ]
type = changestate
trigger1 = animtime = 0
value = 20020
ctrl = 0

;---------------------------
;--[Spider-Boy]-------------
[Statedef 20100]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 20100
sprpriority = -1
juggle  = 0
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = PosAdd
trigger1 = time = 0
x = 10

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 20101
ID = 20101
bindtime = -1
supermove = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = var(20) = 1
pos = 50,-10
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0 && var(20) = 1
value = 20105

[State 0, ]
type = ChangeState
trigger1 = animtime = 0 && var(20) = 0
value = 15010
ctrl = 0

[Statedef 20103]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA,N,S,H
time = 1
ignorehitpause = 1

[State 0, ]
type = ChangeAnim
trigger1 = 1
value = 5051
ignorehitpause = 1

[Statedef 20104]
type    = A
movetype= H
physics = A
velset = 0,-15
sprpriority = 2
ctrl = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5051
ignorehitpause = 1

[Statedef 20105]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 20105
sprpriority = -1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 7505, 2]
type = SuperPause
trigger1 = time = 0
time = 60
anim = -1
pos = 45,-95
sound = F20,1
poweradd = -3000

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F100
ID = 100
pos = 45,-95
bindtime = -1
supermove = 99999
pausemovetime = 99999
sprpriority = -5
ontop = 0
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F101
ID = 101
pos = 45,-95
bindtime = -1
supermove = 99999
pausemovetime = 99999
sprpriority = 5
ontop = 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F102
ID = 102
pos = 45,-95
bindtime = -1
supermove = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,4
channel = 1

[State 0, ]
type = VelSet
trigger1 = animelem = 5
y = -15

[State 0, ]
type = StateTypeSet
trigger1 = vel y < 0
statetype = A
movetype = A
physics = A
ignorehitpause = 1

[State 0, ]
type = TargetBind
trigger1 = 1
time = 1
pos = 50,-10

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 20104

[State 0, ]
type = TargetState
trigger1 = vel y > 0
value = 20111

[State 0, ]
type = ChangeState
trigger1 = vel y > 0
value = 20110

[Statedef 20110]
type    = A
movetype= I
physics = A
anim = 20110
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time >= 0
y = 3

[State 0, ]
type = TargetBind
trigger1 = time >= 0
time = 2
pos = 30,-57
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F0
pos = 44,-67
postype = p1
random = 2,2
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20115

;Enemy Get Hit
[Statedef 20111]
type    = A
movetype= H
physics = A
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20111
ignorehitpause = 1

[Statedef 20115]
type    = A
movetype= I
physics = A
anim = 20115
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time >= 0
y = 3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
value = S5,1
channel = 1

[State 0, ]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
anim = F1
pos = 35,-35
bindtime = 1
random = 2,2
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = HitAdd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
value = 1

[State 0, ]
type = TargetState
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
value = 20116

[State 0, ]
type = TargetState
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 16
value = 20111

[State 0, ]
type = TargetBind
trigger1 = time >= 0
time = 4
pos = 6,-42
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20120

[Statedef 20116]
type    = A
movetype= H
physics = A
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20116
ignorehitpause = 1

[Statedef 20120]
type    = A
movetype= A
physics = A
anim = 20120
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 0
y = -6

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 1
pos = -5,30
ignorehitpause = 1

[State 0, ]
type = TargetBind
trigger1 = animelem = 18
time = 2
pos = 8,155

[State 0, ]
type = TargetState
trigger1 = animelem = 1
value = 20121

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S5,2
channel = 1

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = F2
pos = 15,-25
bindtime = 1
random = 2,2
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = HitAdd
trigger1 = animelem = 1
value = 1

[State 0, ]
type = VelSet
trigger1 = time >= 22
x = 0
y = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 22
value = S6,0
channel = 1
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 18
value = S6,1
channel = 2
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20125

[Statedef 20121]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20121

[State 0, ]
type = VelSet
trigger1 = 1
y = 10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[Statedef 20125]
type    = A
movetype= I
physics = A
anim = 20125
sprpriority = -1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = 1
y = 1

[State 0, ]
type = TargetBind
trigger1 = time <= 10
time = 2
pos = 8,155

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 20126

[State 0, ]
type = ChangeState
trigger1 = p2bodydist y <= 0
value = 20130

[Statedef 20126]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20126

[State 0, ]
type = VelSet
trigger1 = 1
y = -10

[Statedef 20130]
type    = A
movetype= I
physics = N
anim = 20130
sprpriority = -1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time <= 7
y = 1

[State 0, ]
type = VelSet
trigger1 = time = 8
y = -10

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 2
pos = 0,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = 0,0-const(size.mid.pos.y)

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 20116
persistent = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 20131
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,2

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F0
pos = 0,-64
sprpriority = 2
ontop = 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F1
pos = 0,-75
sprpriority = 2
ontop = 1
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "Web"
ID = 20135
stateno = 20135
pos = 0,-30
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 1

[State 0, ]
type = ChangeState
trigger1 = vel y > 1 
value = 20140

[Statedef 20131]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 1
value = 20131

[State 0, ]
type = PosFreeze
trigger1 = 1

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[Statedef 20135]
type    = S
movetype= I
physics = S
anim = 20135
sprpriority = -2
ctrl = 0

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 20135
ID = 20135
pos = 0,0
postype = p1
facing = 1
vfacing = -1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 20135
ID = 20135
pos = 0,0
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 20135
ID = 20135
pos = 0,0
postype = p1
facing = -1
vfacing = -1
bindtime = 1
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = parent,stateno = 20150
ID = 20135

[State 0, ]
type = ChangeState
trigger1 = parent,stateno = 20150
value = 20136


[Statedef 20136]
type    = S
movetype= I
physics = S
anim = 4006
sprpriority = -2
ctrl = 0

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 4006
ID = 20136
pos = 0,0
postype = p1
facing = 1
vfacing = -1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 4006
ID = 20136
pos = 0,0
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = animelem = 1
anim = 4006
ID = 20136
pos = 0,0
postype = p1
facing = -1
vfacing = -1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1

;-----------------------------------------------------------------
;Super Action
;-----------------------------------------------------------------
[Statedef 20140] 
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 20140
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 2
under = 1
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
trigger4 = animelem = 7
trigger5 = animelem = 9
trigger6 = animelem = 11
x = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = 20
y = 20
ignorehitpause = 1


[State 0, ]
type = VelSet
trigger1 = animelem = 4
x = 20

[State 0, ]
type = VelSet
trigger1 = animelem = 6
x = 20
y = -20

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 20
y = 16

[State 0, ]
type = VelSet
trigger1 = animelem = 10
x = 12
y = -20

[State 0, ]
type = VelSet
trigger1 = animelem = 12
x = 14
y = 20

[State 0, ]
type = Turn
trigger1 = animelem = 3
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Turn
trigger1 = animelem = 5
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Turn
trigger1 = animelem = 7
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Turn
trigger1 = animelem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Turn
trigger1 = animelem = 11
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 1
time = 1
pos = 160,-120
ignorehitpause = 1

[State 0, ]
type = BindToTarget
trigger1 = animelem = 3
time = 1
pos = -160,20
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 5
time = 1
pos = 160,200
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 7
time = 1
pos = -160,-90
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 9
time = 1
pos = 80,200
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 11
time = 1
pos = -60,-120
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
pausetime = 0,50
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
hitsound = S5,3
ground.slidetime = 50
ground.hittime = 50
fall = 1
air.fall = 1
kill = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
ground.type = Low
air.type = Low
pausetime = 0,50
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
ground.slidetime = 50
ground.hittime = 50
fall = 1
air.fall = 1
kill = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 6
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
pausetime = 0,50
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-105
hitsound = S5,3
ground.slidetime = 50
ground.hittime = 50
fall = 1
air.fall = 1
kill = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 8
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
ground.type = Low
air.type = Low
pausetime = 0,50
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-20
hitsound = S5,3
ground.slidetime = 50
ground.hittime = 50
fall = 1
air.fall = 1
kill = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 10
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
pausetime = 0,50
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-140
hitsound = S5,3
ground.slidetime = 50
ground.hittime = 50
fall = 1
air.fall = 1
kill = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 12
attr = S,HA
hitflag = MAF
animtype = Hard
air.animtype = Hard
ground.type = Trip
air.type = Trip
pausetime = 10,10
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-20
hitsound = S5,6
snap = 0,0
p2facing = 1
p1stateno = 20150
p2stateno = 20151

[State 7501, 27]
type = ChangeState
trigger1 = AnimTime = 0
value = 20201
ctrl = 0

[statedef 20150]
type    = A
movetype= I
physics = N
anim = 20150
sprpriority = -1
ctrl = 0

[State 0, ]
type = Null
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 2
under = 1
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = 1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 0
y = -15

[State 0, ]
type = ChangeState
trigger1 = vel y >= 0 
value = 20155

[Statedef 20155]
type    = A
movetype= A
physics = N
anim = 20155
velset = 0,-1
sprpriority = 2
ctrl = 0

[State 0, ]
type = Null
trigger1 = 1
value = 0
movecamera = 0,1
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 64
under = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time <= 10
x = 0
y = 0.5

[State 0, ]
type = HitAdd
trigger1 =  pos y >= target,pos y-100
value = 1
persistent = 0

[State 0, ]
type = TargetState
trigger1 =  pos y >= target,pos y-100
value = 20161
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  pos y >= target,pos y-100
value = S5,6
volume = 0
persistent = 0

[State 0, ]
type = Superpause
trigger1 = time = 0
movetime = 8
time = 40
anim = F301
sound = F20,2
pos = 35,-80
movetime = 1
darken = 0

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 20156
ID = 20156
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 99999
pausemovetime = 99999
sprpriority = 2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = VelAdd
trigger1 = time >= 2
y = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 
value = 20160

[Statedef 20160]
type    = S
movetype= I
physics = N
anim = 20160
velset = 0,0
sprpriority = -2
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = var(20) = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ]
type = BGPalFX
trigger1 = var(20) = 1
time = 2
add = -255,-255,-255
ignorehitpause = 1

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = 0
y = -5

[State 0, ]
type = Gravity
trigger1 = time >= 106

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F61
bindtime = 1
sprpriority = 1
ontop = 1
ownpal = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = time = 0
value = -700

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 20165

[Statedef 20165]
type    = A
movetype= I
physics = N
anim = 20165
velset = -2,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = Gravity
trigger1 = 1

[State 0, ]
type = PosAdd
trigger1 = time = 0
x = -50

[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 30
anim = -1
movetime = 1
pos = 50,-80
darken = 1

[State 0, ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 6
under = 0

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 10
add = 255,255,255
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F102
ID = 100
pos = 50,-80
bindtime = 1
supermove = 99999
pausemovetime = 99999
scale = 2.5, 2.5
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F100
ID = 100
pos = 50,-80
bindtime = 1
supermove = 99999
pausemovetime = 99999
;scale = .5, .5
sprpriority = -5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 0
name = "Superboy"
ID = 20000
pos = 100,0
facing = -1
stateno = 20025
ownpal = 0

[State 0, ]
type = changestate
trigger1 = pos y >= 0
value = 20170

[Statedef 20170]
type    = S
movetype= I
physics = S
anim = 20170
velset = 0,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = VelSet
trigger1 = 1
y = 0

[State 0, ]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------

[Statedef 20151]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20121

[State 0, ]
type = VelSet
trigger1 = 1
y = 0

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 20152

[Statedef 20152]
type    = L
movetype= H
physics = S
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20152

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F60
bindtime = 1
sprpriority = -2
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F61
bindtime = 1
sprpriority = 1
ontop = 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F62
bindtime = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = F7,0

;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------

[Statedef 20161]
type    = A
movetype= H
physics = S
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 2

[State 0, Explod]
type = Explod
trigger1 = time  = 0
anim = F3
ontop = 1
pos = 0,-50

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5030

[State 0, ]
type = ChangeState
trigger1 = time = 20
value = 20162

[Statedef 20162]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 15

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5070

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 20163

[Statedef 20163]
type    = L
movetype= H
physics = S
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 20143

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 40
freq = 75
ampl = -10
persistent = 0

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F60
bindtime = 1
sprpriority = -2
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F61
bindtime = 1
sprpriority = 1
ontop = 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F62
bindtime = 1
sprpriority = 2
ontop = 1
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = F7,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = SelfState
trigger1 = time = 100
value = 5080


