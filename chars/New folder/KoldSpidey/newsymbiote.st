;---------------------------
; Seperation Anxiety
[Statedef 6000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6000
ctrl = 0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,SA,NP,SP,NT,ST
time = 2
ignorehitpause = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,HA,HP,HT
time = 2
ignorehitpause = 0
persistent = 1

[State 3000, Strength]
type = varset
trigger1 = var(42) != 7
var(42) = 7
[State 3000, Super Pause FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 17500
ID = 7500
name = "Super Charge"
postype = p1
pos = floor(-5*const(size.xscale)), floor(-45*const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3000, Super Pause]
type = superpause
trigger1 = animelem = 2
time = 45
movetime = 45
anim = -1
sound = s17, 0
p2defmul = 1
darken = 0
poweradd = -3000

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,0

[State 0, ]
type = Projectile
trigger1 = animelem = 3
ProjID = 6005
projanim = 6005
projremovetime = 8
projshadow = -1
projhits = 1
attr = A,HP
hitflag = MAF
guardflag = MA 
pausetime = 15,15
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
sparkxy = 180,-35
guard.sparkno = s17001
hitsound = S6,1
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
p2facing = 1
p1stateno = 6010
p2stateno = 6205
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 6010]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6010
ctrl = 0
sprpriority = 2

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 1007
ID = 1007
pos = 0,0
facing = -1
postype = p2
bindtime = 9999
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 1
pos = floor(180*const(size.xscale)),0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S4,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6015

[Statedef 6015]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 6015
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 15
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S0,3

[State 0, ]
type = PosAdd
trigger1 = animelem = 3
x = 80

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6020

[Statedef 6020]
type    = S
movetype= A
physics = S
velset = 5,0
anim = 6020
ctrl = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = 1
edge = 75,0

[State 0, ]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 30

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S13,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S5,6

[State 0, ]
type = RemoveExplod
trigger1 = animelem = 5
ID = 1007

[State 0, ]
type = Explod
trigger1 = animelem = 5
anim = 1008
ID = 1008
pos = 0,0
facing = -1
postype = p2
removetime = -2
sprpriority = 7
shadow = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 17030 + (random % 8)
ID = 47000
pos = 10,-45
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 5
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 5
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 6220

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6030

[Statedef 6030]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6030
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 2

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S13,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S5,6

[State 0, ]
type = PlaySnd
trigger1 = animelem = 10
value = S5,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S6,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 17030 + (random % 8)
ID = 47000
pos = 5,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 2
trigger2 = animelem = 10
time = 18
ampl = 6
freq = 120

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
anim = 17030 + (random % 8)
ID = 47000
pos = -20,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 10
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 2
value = -20
kill = 0

[State 0, Width]
type = Width
trigger1 = time <= 15
edge = (time*10),0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = floor(170*const(size.xscale)),-55

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = floor(170*const(size.xscale)),-40

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = floor(150*const(size.xscale)),-75

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = floor(50*const(size.xscale)),-20

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 6230

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 6231

[State 0, ]
type = TargetState
trigger1 = animelem = 10
value = 6235

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6035

[Statedef 6035]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6035
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 2

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, Width]
type = Width
trigger1 = time = 2
edge = 100,0
time = 2

[State 0, Width]
type = Width
trigger1 = time = 4
edge = 200,0
time = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,1

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1
persistent = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = floor(230*const(size.xscale)),-80

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = floor(230*const(size.xscale)),-75

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = floor(230*const(size.xscale)),-70

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = floor(225*const(size.xscale)),-60

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = floor(200*const(size.xscale)),-70

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = floor(120*const(size.xscale)),-60

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6236
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6040

[Statedef 6040]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6040
ctrl = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = -15,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6240
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 12
pos = floor(75*const(size.xscale)),-25

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6050

[Statedef 6050]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6050
ctrl = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = 10,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6250
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 10
pos = floor(70*const(size.xscale)),0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6060

[Statedef 6060]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6060
ctrl = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = -17,-65
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6260
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 12
pos = floor(40*const(size.xscale)),0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6070

[Statedef 6070]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6070
ctrl = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = -10,-75
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -40
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6270
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 10
pos = floor(70*const(size.xscale)),0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6080

[Statedef 6080]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6080
ctrl = 0
sprpriority = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 12

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S13,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = 45,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -5
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6250
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = floor(65*const(size.xscale)),0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6090

[Statedef 6090]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6090
ctrl = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S13,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = 45,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -5
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6290
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = floor(65*const(size.xscale)),0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 6095
ctrl = 1

[Statedef 6095]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6095
ctrl = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 105,10

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = -8

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
physics = N

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S13,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 17030 + (random % 8)
ID = 47000
pos = 45,-60
postype = p2 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 18
ampl = 6
freq = 120

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -5
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6295
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = floor(65*const(size.xscale)),0

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 6100
ctrl = 0


;--[Final Throw!]-----------------------------------------------------
[Statedef 6100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6100
sprpriority = -2
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 2

[State 0, Turn]
type = Turn
trigger1 = !time
ignorehitpause = 0
persistent = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 95,30

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
y = -5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = -8
y = -8

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
physics = N

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S13,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1

[State 0, ]
type = HitAdd
trigger1 = animelem = 1
value = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 18
ampl = 6
freq = 120

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 1
value = -5
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 1
value = 6231
persistent = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 6900
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = floor(-65*const(size.xscale)),-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = floor(5*const(size.xscale)),-30

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 3
pos = floor(160*const(size.xscale)),5

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = floor(175*const(size.xscale)),40

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
value = 101
ctrl = 1

[Statedef 6205]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
facep2 = 1
sprpriority = -1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6205

[State 0, ]
type = StateTypeSet
trigger1 = pos y >= -5
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = pos y >= -5
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= -5
y = 0

;--[Get Hit By]-----------------------------------------------------
[Statedef 6220]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6220

;--[Get Hit By]-----------------------------------------------------
[Statedef 6230]
type    = S
movetype= H
physics = S
velset = 0,0
facep2 = 1
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6230

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -8
y = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = N

;--[Get Hit By]-----------------------------------------------------
[Statedef 6231]
type    = A
movetype= H
physics = N
velset = 0,-6
facep2 = -1
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 7

[State 0, VelSet]
type = VelSet
trigger1 = time = 8
y = -3

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6231

;--[Get Hit By]-----------------------------------------------------
[Statedef 6235]
type    = S
movetype= H
physics = S
velset = 0,0
facep2 = 1
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6230

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -15
y = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = N

;--[Get Hit By]-----------------------------------------------------
[Statedef 6236]
type    = A
movetype= H
physics = N
velset = 0,-6
facep2 = 1
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6231

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 6

[State 0, VelSet]
type = VelSet
trigger1 = time = 18
y = -3

[State 0, Gravity]
type = Gravity
trigger1 = 1

;--[Get Hit By]-----------------------------------------------------
[Statedef 6240]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, Gravity]
type = Gravity
trigger1 = time >= 8

[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = -2

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5011

;--[Get Hit By]-----------------------------------------------------
[Statedef 6250]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = -3

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5001

;--[Get Hit By]-----------------------------------------------------
[Statedef 6260]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = -3

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5002

;--[Get Hit By]-----------------------------------------------------
[Statedef 6270]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = -4

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(AnimExist(5035), 5035, 5050)

[State 0, ]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 5040
value = 5040

;--[Get Hit By]-----------------------------------------------------
[Statedef 6290]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5070

;--[Get Hit By]-----------------------------------------------------
[Statedef 6295]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -10

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5051

[State 0, ]
type = ChangeAnim
triggerall = anim = 5051
trigger1 = vel y >=  1
value = ifelse(AnimExist(5035), 5035, 5061)

[State 0, ]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 5035
trigger2 = vel y >=  8
value = 5050

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
physics = N

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, SelfState]
type = SelfState
trigger1 = anim = 5050 && pos y >= 0
value = 5100

;--[Get Hit By]-----------------------------------------------------
[Statedef 6900]
type    = A
movetype= H
physics = N
velset = 0,0
facep2 = 1
ctrl = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -10
y = 8

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(animexist(5061),5061,5050)

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, SelfState]
type = ChangeState
trigger1 = pos y >= 0
value = 6901

;--[Get Hit By]-----------------------------------------------------
[Statedef 6901]
type    = L
movetype= H
physics = S
velset = 0,0
facep2 = 1
ctrl = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 0,40

[State 0, VelSet]
type = VelSet
trigger1 = 1
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 0, ]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 5100
value = 5110

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 40
freq = 180
ampl = -12

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F60
bindtime = 1
random = 10,0
scale = 1,1
sprpriority = -5
ontop = 0
shadow = -1,-1,-1
ownpal = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F61
bindtime = 1
random = 10,0
scale = 1.2,1
sprpriority = 0
ontop = 1
shadow = -1,-1,-1
ownpal = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F62
bindtime = 1
random = 10,0
scale = 1.4,1
sprpriority = 2
ontop = 1
shadow = -1,-1,-1
ownpal = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F7,2
persistent = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -240
kill = 1

[State 0, SelfState]
type = SelfState
trigger1 = time = 75
value = ifelse(lose = 1,5150,5120)
