; HYPERS
; =======

;-------------------------------------------------------------------------------------------
; Ice Storm
[Statedef 3000]
type    = S
movetype= A     
physics = S   
juggle  = 1     
ctrl = 0  
anim = 3000

[State 3000, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-80
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3000, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-80
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3000, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3000, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3000, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3000, afterimg]
type = AfterImage
trigger1 = animelem = 1
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1
;--

[State 3000, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .02

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 0
value = 10,0
channel = 0

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,3
channel = 1

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 20
value = 5,8
channel = 2

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 35
value = 5,8
channel = 3

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 50
value = 5,8
channel = 4

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 20
value = 5,8
channel = 5

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 35
value = 5,8
channel = 6

[State 3000, 6]
type = PlaySnd
trigger1 = Time = 50
value = 5,8
channel = 7

[State 3000, 1]
type = Velset
trigger1 = Time = 35
x = -1

[State 3000, Wave]
type = Explod
trigger1 = Time = 35
anim = 3001
pos = 20,-105
postype =p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 2,2

[State 3000, Wave]
type = Explod
trigger1 = Time = 35
anim = 3001
pos = 20,-95
postype =p1
sprpriority = 3
supermove = 1
bindtime = 25
scale = 2,2

[State 3000, Wave]
type = Explod
trigger1 = Time = 35
anim = 3001
pos = 20,-85
postype =p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 2,2

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 40,29
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 9,-2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 10,2
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 10,-2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 30,14
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,-1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 25,10
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,-1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 35 
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,-0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 30,19
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,0.5
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 4,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1     

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 30,5
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 3,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,1.5
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 10,2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 25,9
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 9,2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 8,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 35 
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 15,3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,-3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 35
projanim = 3002
projremanim = -1
projhitanim = 3003
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,-3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 2,1
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------------------------------------------------
; MegaVision
[Statedef 3100]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3100

[State 3100, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 10,0
channel = 0

[State 3100, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-80
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3100, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-80
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3100, flash]
type = explod
trigger1 = animelem = 9
anim = 10001
postype = p1
pos = 7,-101
sprpriority = 2
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.30,0.30

[State 3100, flash]
type = explod
trigger1 = animelem = 9
anim = 10001
postype = p1
pos = 14,-101
sprpriority = 2
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.30,0.30

[State 3100, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3100, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3100, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3100, afterimg]
type = AfterImage
trigger1 = animelem = 1
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1
;--

[State 3100, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .02

[State 3100, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,3
channel = 1

[State 3100, 6]
type = PlaySnd
trigger1 = Time = 20
value = 9,3
channel = 2

;Mega Heat ray
[State 3100, 0]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "M_RAY"
id = 696
postype = p1
pos = 17,13
stateno = 3101
keyctrl = 0
ownpal = 0
priority = 3

[State BG Pal FX]
type = BGPalfx
trigger1 = animelem = 13
sinadd = -205,-205,-205,180
add = 155,-55,-55
ignorehitpause = 1
time = 83
invertall = 1

[State 3100, 8]
type = ChangeState
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
trigger1 = Time = 125
value = 52

[State 3100, 7]
type = ChangeState
trigger1 = Time = 125
value = 50
ctrl = 1

[State 3100, 4.2]
type = ChangeState
trigger1 = (Time = 125) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;Heat ray state
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
poweradd = 0
anim = 3101

[State 3101, 4]
type = PalFX
triggerall = var(3) != 0
trigger1 = time = 1
time = 30
add = 49,173,231
mul = 13,179,199
ignorehitpause = 1

[State 3101, 2]
type = SprPriority
trigger1 = Time >= 0
value = 5

[State 3101 , 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 22
trigger12 = AnimElem = 24
trigger13 = AnimElem = 25
trigger14 = AnimElem = 27
trigger15 = AnimElem = 28
trigger16 = AnimElem = 30
trigger17 = AnimElem = 31
trigger18 = AnimElem = 33
trigger19 = AnimElem = 34
trigger20 = AnimElem = 36
trigger21 = AnimElem = 37
trigger22 = AnimElem = 39
trigger23 = AnimElem = 40
attr = SCA, HP
damage    = 8,7
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
hitsound   = S9,4
guardsound = S9,5
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3101, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 3101, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 125, 10
pos = -10,0
postype = p2
sprpriority = 5
bindtime = 1

[state 3101, 6]
type = AssertSpecial
trigger1 = time = [0,100]
flag = Noshadow

[state 3101, 8]
type = BindToParent
trigger1 = parent, stateno = 3100
trigger1 = time = 125
pos = 0,0

[state 3101, 8]
type = destroyself
trigger1 = time = 125
trigger2 = parent, stateno != 3100

;---------------------------------------------------------------------------
; Heartquake_Z L_3 (Rockwave)
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0  
anim = 3200 

[State 3200, superpause]
type = SuperPause
trigger1 = time = 10
time = 29
pos = -70,-120
darken = 1
movetime = 29
sound = s10,1
poweradd = -3000

[State 3200, flash]
type = explod
trigger1 = time = 10
anim = 10001
postype = p1
pos = -70,-120
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3200, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3200, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3200, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[state 3200, aft]
type = AfterImage
trigger1 = AnimElem = 5
time = 75
color = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3200, Kaboom]
type = Explod
trigger1 = AnimElem = 7
anim = 9998
pos = 55,0
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3200, Kaboom]
type = Explod
trigger1 = animelem = 6
anim = 3221
pos = 55,0
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3200, Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 9996
pos = -60,-15
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3200, Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 9996
pos = -83,-15
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 1.5, 1.5

[State 3200, Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 9996
pos = -112,-15
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 2, 2

[State 3200, Wave]
type = Explod
trigger1 = AnimElem = 7
anim = 9996
pos = -161,-15
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 2.75, 2.75

[State 3200, Kaboom]
type = Explod
trigger1 = AnimElem = 7
anim = 9998
pos = 45,0
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 3200, 6]
type = PlaySnd
trigger1 = time = 0
value = 10,0
channel = 0

[State 3200, 6]
type = PlaySnd
trigger1 = time = 2
value = 1,3
channel = 1

[State 3200, 6]
type = PlaySnd
trigger1 = animelem = 7
value = 5,0

[State 3200, 6]
type = PlaySnd
trigger1 = animelem = 7
value = 5,3

[State 3200, 1]
type = Projectile
trigger1 = animelem = 8
projanim = 3220
projremovetime = 2
projhitanim = 3220
projpriority = 1
projshadow = -1
offset = 75,0
velocity = 0
attr = S, SP
damage   = 300,150
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1
fall = 1

[State 3200, 6]
type = PlaySnd
trigger1 = animelem = 9
value = 5,3

[State 3200, 1]
type = Projectile
trigger1 = animelem = 9
projanim = 3220
projremovetime = 2
projhitanim = 3220
projpriority = 1
projshadow = -1
offset = 140,0
velocity = 0
attr = S, SP
damage   = 150,75
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1
fall = 1

[State 3200, 6]
type = PlaySnd
trigger1 = animelem = 10
value = 5,3

[State 3200, 3]
type = Projectile
trigger1 = animelem = 10
projanim = 3220
projremovetime = 2
projhitanim = 3220
projpriority = 1
projshadow = -1
offset = 215,0
velocity = 0
attr = S, SP
damage   = 100,50
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1
fall = 1

[State 3200, 6]
type = PlaySnd
trigger1 = animelem = 12
value = 5,3

[State 3200, 4]
type = Projectile
trigger1 = animelem = 12
projanim = 3220
projremovetime = 2
projhitanim = 3220
projpriority = 1
projshadow = -1
offset = 250,0
velocity = 0
attr = S, SP
damage   = 50,25
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1
fall = 1

[State 3200, shake]
type=envshake
trigger1=animelem=8 || animelem=9 || animelem=10 || animelem=12
time=18
freq=60
ampl=6
ignorehitpause=1

[State 3200, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Aerial Flying Dive
[Statedef 3300]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 3300

[State 3300, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .01

[State 3300, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-80
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3300, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-80
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3300, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3300, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3300, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3300, afterimg]
type = AfterImage
trigger1 = animelem = 4
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1

[State 3300, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 10,0
channel = 0

[State 3300, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 1

[State 3300, 6]
type = PlaySnd
trigger1 = Time = 30
value = 5,7
channel = 2

[State 3300, 6]
type = PlaySnd
trigger1 = Time = 31
value = 5,7
channel = 3

[State 3300, Break]
type = Explod
trigger1 = Time = 30
anim = 9994
pos = 80,-140
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1

[State 3300, 6]
type = PlaySnd
trigger1 = animelem = 12
value = 5,7
channel = 3

[State 3300, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 4

[State 3300, 1]
type = VelSet
trigger1 = AnimElem = 12
x = 20
y = 20

[State 3300, 3]
type = HitDef
trigger1 = Animelem = 9
trigger2 = Animelem = 10
trigger3 = Animelem = 11
trigger4 = Animelem = 12
trigger5 = Animelem = 13
trigger6 = Animelem = 14
trigger7 = Animelem = 15
trigger8 = Animelem = 16
attr = A, NA
animtype  = Heavy
damage    = 250
guardflag = MA
pausetime = 0, 0
sparkno = S9993
sparkxy = 20,-90
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -16, 0
air.velocity = 0,0
fall = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
p2stateno = 940

[State 2105, 3]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 188, 1st Boom]
type = Explod
trigger1 = Movehit = 1
anim = 9995
pos = -25,-60
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1.5,1.5

[State 3300, 1st Boom]
type = Explod
trigger1 = Movehit = 1
anim = 9995
pos = 40,-40
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1.9,1.9

[State 3300, 1st Boom]
type = Explod
trigger1 = Movehit = 1
anim = 9995
pos = 20,-90
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 2.5,2.5

[State 3300, 8]
type = ChangeState
trigger1 = MoveContact && HitOver = 1
value = 3301

[State 3300, 9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3302

;No Hit!! Deep Slide
[Statedef 3302]
type = A
movetype = H
physics = N
anim = 3302
velset = 30, 0

[State 3302, 1]
type = HitDef
trigger1 = Animelem = 1
attr = A, NA
animtype  = High
damage    = 175
guardflag = MA
pausetime = 0, 0
sparkxy = -10,-70
hitsound   = s2,2
guardsound = s3,0
ground.type = Low
ground.slidetime = 50
ground.hittime  = 15
ground.velocity = 5, -7
air.velocity = 0, 2
sparkno = 3
P2stateno = 943
fall = 1

[State 3302, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 3302, 2]
type = VelSet
trigger1 = Time = 0
Y = 0

[State 3302, 3]
type = VelMul
trigger1 = Time >= 3
X = 0.9

[State 3302, Rocks]
type = Explod
trigger1 = Time = 2
anim = 9992
sprpriority = 4
scale = 0.85,0.85

[State 3302, Rocks]
type = Explod
trigger1 = Time = 5
anim = 9992
sprpriority = 4

[State 3302, Rocks]
type = Explod
trigger1 = Time = 10
anim = 9992
sprpriority = 4
scale = 0.75,0.75

[State 3302, Rocks]
type = Explod
trigger1 = Time = 15
anim = 9992
sprpriority = 4
scale = 0.5,0.5

[State 3302, Rocks]
type = Explod
trigger1 = Time = 20
anim = 9992
sprpriority = 4
scale = 0.25,0.25

[State 3302, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hit !!! Explosive Impact
[Statedef 3301]
type = A
movetype = I
physics = N
anim = 1702
velset = -2,-7.2

[State 3301, 2nd Boom]
type = Explod
trigger1 = time = 1
anim = 9993
pos = -10,-90
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1.5,1.5

[State 3301, 2nd Boom]
type = Explod
trigger1 = time = 2
anim = 9993
pos = -30,-82
postype = p2
sprpriority = 3
supermove = 1
bindtime = 1
scale = 1.2,1.2

[State 3301, 2nd Boom]
type = Explod
trigger1 = time = 3
anim = 9993
pos = -20,-90
postype = p2
sprpriority = 3
supermove = 1
bindtime = 1

[State 3301, 1]
type = VelAdd
trigger1 = Time >= 0
Y = 0.5

[State 3301, 9]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 52

[State 3301, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 3301, 4.2]
type = ChangeState
trigger1 = (AnimElem = 5) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;----------------------------------------------------------------------
; Super Grab (Bizarro)
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0  
anim = 3500

[state 3500, aft]
type = AfterImage
trigger1 = time = 0
time = 45
color = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3500, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = -56, -87
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3500, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

[State 3500, flash]
type = explod
trigger1 = time = 10
anim = 10001
postype = p1
pos = -56, -87
sprpriority = 2
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.80,0.80

[State 3500, Fire]
type = Explod
trigger1 = animelem = 6
anim = 20002
postype = p1
pos = -40, -95
sprpriority = 4
ignorehitpause = 1
removeongethit = 1
ownpal = 1
supermove = 1

;Zoom - Part One
[State 3500, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3500, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3500, fire]
type = explod
trigger1 = animelem = 5
anim = 9000
postype = p1
pos = 75, -94
sprpriority = 2
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 3500, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s10,0
channel = 0

[State 3500, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s1,3
channel = 1

[State 3500, 6]
type = PlaySnd
trigger1 = animelem = 5
value = 9,1
channel = 2

[State 3500, 6]
type = PlaySnd
trigger1 = animelem = 5
value = 9,1
channel = 3

[State 3500, 1]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = MAF
guardflag = 
priority = 1
pausetime = 0,10
snap = -40, 0
sparkno = -1
p2facing = 1
p1stateno = 3550
p2stateno = 3600 
hitsound = S3,1

[State 3500, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;p1 grab animation
[Statedef 3550]
type    = S
movetype= A
physics = N
anim = 3550
sprpriority = 5

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 30
value = 0,6

[State 3550, fire]
type = explod
trigger1 = animelem = 1
anim = 9000
ID = 9000
sprpriority = 3
postype = p1
pos = 75,-94
removeongethit = 1
bindtime = -1
ownpal = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 1
pos = 80,-16
time = 26

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 2
pos = 16,-40
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 3
pos = 4,-21
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 4
pos = -22,-19
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 5
pos = -4,-111
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 6
pos = 1,-8
time = 4

[State 3550, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 6
value = -50

[State 3550, Wave]
type = Explod
trigger1 = Time = 50
anim = 9996
pos = -50,-10
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 50
value = 5,4

[State 3550, Kaboom]
type = Explod
trigger1 = Time = 50
anim = 9998
pos = 10,9
postype = p1
sprpriority = 7
removetime = 27 
supermove = 1
bindtime = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 7
pos = 15,-5
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 8
pos = 20,0
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 9
pos = 20,-4
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 10
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 11
pos = -4,-111
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 12 
pos = 1,-8
time = 4

[State 3550, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 12
value = -60

[State 3550, Wave]
type = Explod
trigger1 = Time = 72
anim = 9996
pos = -50,-10
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 72
value = 5,4

[State 3550, Kaboom]
type = Explod
trigger1 = Time = 72
anim = 9998
pos = 10,9
postype = p1
sprpriority = 7
removetime = 27
supermove = 1
bindtime = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 13 
pos = 15,-5
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 14
pos = 20,0
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 15
pos = 20,-4
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 16
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 17
pos = -4,-111
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 18
pos = 1,-8
time = 4

[State 3550, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 18
value = -50

[State 3550, Wave]
type = Explod
trigger1 = Time = 93
anim = 9996
pos = -50,-10
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 93
value = 5,4

[State 3550, Kaboom]
type = Explod
trigger1 = Time = 93
anim = 9998
pos = 10,9
postype = p1
sprpriority = 7
removetime = 27
supermove = 1
bindtime = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 19
pos = 15,-5
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 20
pos = 20,0
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 21 
pos = 20,-4
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 22
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 23
pos = -4,-111
time = 5

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 24
pos = 1,-8
time = 4

[State 3550, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 24
value = -80

[State 3550, Wave]
type = Explod
trigger1 = Time = 109
anim = 9996
pos = -50,-10
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 109
value = 5,4

[State 3550, Kaboom]
type = Explod
trigger1 = Time = 109
anim = 9998
pos = 10,9
postype = p1
sprpriority = 7
removetime = 27
supermove = 1
bindtime = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 25
pos = 15,-5
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 26
pos = 20,0
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 27
pos = 20,-4
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 28
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 29
pos = 24,-101
time = 8

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 30
pos = -4,-111
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 31
pos = 1,-8
time = 2

[State 3550, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 31
value = -80

[State 3550, Wave]
type = Explod
trigger1 = Time = 133
anim = 9996
pos = -50,-10
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 133
value = 5,4

[State 3550, 6]
type = PlaySnd
trigger1 = Time = 133
value = 5,0

[State 3550, Kaboom]
type = Explod
trigger1 = Time = 133
anim = 9998
pos = 10,9
postype = p1
sprpriority = 7
supermove = 1
bindtime = 1

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 32 
pos = 1,-8
time = 2

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 33
pos = 1,-8
time = 7

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 34
pos = 15,-5
time = 6

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 35 
pos = 20,0
time = 6

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 36 
pos = 20,-4
time = 6

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 37
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 38
pos = 20,-4
time = 4

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 39
pos = -16,-2
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 40
pos = -47,-124
time = 10

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 41
pos = -20,-2
time = 3

[State 3550, 2]
type = TargetBind
Trigger1 = animelem = 42 
pos = 79,-24
time = 1

[State 3550, 9]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;state for p2 when grab
[Statedef 3600]
type    = A
movetype= H
physics = N
anim = 5050
ctrl = 0
velset = 0,0
sprpriority = 6

[State 3600, 2]
type = SprPriority
trigger1 = animelem = 29
value = 4

[State 3600, 2]
type = SprPriority
trigger1 = animelem = 30
value = 6

[State 3600, 9]
type = Changeanim2
Trigger1 = Time = 0
value = 3600
ctrl = 0

[State 3600, 1]
type = VelAdd
trigger1 = animelem = 42
x = -55

[State 3600, 6]
type = ScreenBound
trigger1 = Time = 168
Trigger2 = MoveHit
value = 100

[State 3600, 4]
type = changestate
trigger1 = animtime = 0
value = 3601

;----------------------------------------------------------------------
;P2 Get Thrown
[Statedef 3601]
type    = A
movetype= H ;Get hit
physics = N
lifeadd = -100

[State 3601, Sacudida]
type = EnvShake
Trigger1 = Time = 0
time = 15
ampl = -3
freq = 90
phase = 90

[State 3601,19]
type = GameMakeAnim
trigger1 = time = 0 
value = 72
postype = p2

[State 3601, 4]
type = SelfState
trigger1 = Time = 0
value = 5050
;end for p2

;--------------------------------------------------------------------------------------------
; Invencibility (Solar Sheild)
[Statedef 3700]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3700
;
[State 3700, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-70
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3700, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-90
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3700, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3700, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3700, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3700, afterimg]
type = AfterImage
trigger1 = animelem = 4
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1

[State 3700, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 10,0
channel = 0

[State 3700, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 1

[State 3700, 25]
type = PalFX
trigger1 = animelem = 11
time = 2
add = 235, 235, 235
ignorehitpause = 1

[State 3700, 25]
type = PalFX
trigger1 = animelem = 12
time = 2
add = 135, 135, 135
ignorehitpause = 1

[State 3700, 25]
type = PalFX
triggerall = numhelper(009) = 1
trigger1 = TimeMod = 2,0
trigger1 = animelem = 13
time = 485
add = 35, 35, 35
ignorehitpause = 1

[State 3700, 6]
type = PlaySnd
triggerall = var(3)= 1
trigger1 = Time = 3
value = 7,5
channel = 1

[State 3700, 6]
type = PlaySnd
triggerall = var(3)!= 1
trigger1 = Time = 3
value = 9,15
channel = 1

[State 3700, 6]
type = PlaySnd
trigger1 = Time = 5
value = 8,5
channel = 2

[State 3700, 6]
type = PlaySnd
trigger1 = Time = 5
value = 8,5
channel = 3

[State 3700, 1]
type = HitDef
trigger1 = AnimElem >= 3
persistent = 0
attr = S, NA
damage    = 80
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = -1
sparkxy = -10,-70
hitsound = S20,2
guardsound = S20,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -4,-3

[State 3700, 6]
type = VarSet
trigger1 = AnimElem = 11
V = 1
Value = 500

[State 3700, 0]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "shield"
id = 009
postype = p1
pos = 0,-10
stateno = 3701
keyctrl = 0
ownpal = 1
priority = 0

[State 3700, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------
; Shield State
[Statedef 3701]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 3701

[State 3701, 2]
type = SprPriority
trigger1 = Time >= 0
value = 3

[State 3701, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 3704

[State 3701,Turn]
type = Turn
trigger1 = P2bodydist X < -40

[State 3701, 0]
type = BindToParent
trigger1 = IsHelper(009) = 1
pos = 0,0

[State 3701]
type = NotHitBy
trigger1 = IsHelper(009) = 1
value = C,NT

[State 3701, 0]
type = Helper
trigger1 = Animtime = 0
helpertype = normal
name = "littleshield"
id = 010
postype = p1
pos = 0,-10
stateno = 3702
keyctrl = 0
ownpal = 1
priority = 0

[State 3701, 7]
type = ChangeState
trigger1 = parent,Var(1) <= 50
trigger2 = parent,Win = 1
trigger3 = parent,Lose = 1
value = 3703

;--------------------------------------------------------------------------------------------------
; Little Shield State
[Statedef 3702]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 3701

[State 3702, 2]
type = SprPriority
trigger1 = Time >= 0
value = 3

[State 3702, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 3704

[State 3702,Turn]
type = Turn
trigger1 = P2bodydist X < -40

[State 3702, 0]
type = BindToParent
trigger1 = IsHelper(010) = 1
pos = 0,0

[State 3702]
type = NotHitBy
trigger1 = IsHelper(010) = 1
value = C,NT

[State 3702, 0]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,Var(1) <= 0
trigger3 = root,Win = 1
trigger4 = root,Lose = 1

;---------------------------------------------------------------------------------------------------
; Shield Ending
[Statedef 3703]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 3701

[State 3703, 2]
type = SprPriority
trigger1 = Time >= 0
value = 3

[State 3703, 0]
type = BindToRoot
trigger1 = IsHelper(009) = 1
pos = 0,0

[State 3703, 0]
type = destroyself
trigger1 = parent,Var(1) <= 0

;----------------------------------------------------------------------------------------------------
; Shield State (being hit)
[Statedef 3704]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 3701

[State 3704, 6]
type = PlaySnd
trigger1 = Time = 0
value = 3,0
channel = 1

[State 3704, 0]
type = BindToRoot
trigger1 = IsHelper(010) = 1
pos = 0,0

[State 3704]
type = NotHitBy
trigger1 = IsHelper(009) = 3
value = SCA, HTP

[State 3704, 2]
type = SprPriority
trigger1 = Time >= 0
value = 3

[State 3704, 25]
type = PalFX
trigger1 = Time >= 0
time = 4
add = 108, 108, 108
ignorehitpause = 1

[State 3704, 7]
type = ChangeState
trigger1 = Time >= 4
value = 3701
ctrl = 1

;--------------------------------------------------------------------------------------------
; Invencibility Aerial (Solar Sheild)
[Statedef 3800]
type    = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3700
;
[State 3800, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-70
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3800, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-90
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3800, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3800, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3800, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3800, afterimg]
type = AfterImage
trigger1 = animelem = 4
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1

[State 3800, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 10,0
channel = 0

[State 3800, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 1

[State 3800, 25]
type = PalFX
trigger1 = animelem = 11
time = 2
add = 235, 235, 235
ignorehitpause = 1

[State 3800, 25]
type = PalFX
trigger1 = animelem = 12
time = 2
add = 135, 135, 135
ignorehitpause = 1

[State 3800, 25]
type = PalFX
triggerall = numhelper(009) = 1
trigger1 = TimeMod = 2,0
trigger1 = animelem = 13
time = 485
add = 35, 35, 35
ignorehitpause = 1

[State 3800, 6]
type = PlaySnd
triggerall = var(3)= 1
trigger1 = Time = 3
value = 7,5
channel = 1

[State 3800, 6]
type = PlaySnd
triggerall = var(3)!= 1
trigger1 = Time = 3
value = 9,15
channel = 1

[State 3800, 6]
type = PlaySnd
trigger1 = Time = 5
value = 8,5
channel = 2

[State 3800, 6]
type = PlaySnd
trigger1 = Time = 5
value = 8,5
channel = 3

[State 3800, 1]
type = HitDef
trigger1 = AnimElem >= 3
persistent = 0
attr = S, NA
damage    = 80
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = -1
sparkxy = -10,-70
hitsound = S20,2
guardsound = S20,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -4,-3

[State 3800, 6]
type = VarSet
trigger1 = AnimElem = 11
V = 1
Value = 500

[State 3800, 0]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "shield"
id = 009
postype = p1
pos = 0,-10
stateno = 3701
keyctrl = 0
ownpal = 1
priority = 0

[State 3800, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 3800, 4.2]
type = ChangeState
trigger1 = (AnimElem = 24) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;---------------------------------------------------------------------------
; Heartquake (Stonerose)
[Statedef 3850]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0  
anim = 3800 

;------------------------

[State 3850, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2

[State 3850, 1]
type = SuperPause
trigger1 = time = 0
movetime = 60
time = 60
sound = s10,1
poweradd= -2000
pos = -74, -127

[State 3850, flash]
type = explod
trigger1 = time = 10
anim = 10001
postype = p1
pos = -74,-127
sprpriority = -1
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

;Zoom - Part One
[State 3850, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3850, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[state 3850, aft]
type = AfterImage
trigger1 = AnimElem = 5
time = 75
color = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3850, Wave]
type = Explod
trigger1 = Time = 60
anim = 9996
pos = 0,-18
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 3850, Wave]
type = Explod
trigger1 = Time = 60
anim = 9996
pos = -83,-5
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 1.5, 1.5

[State 3850, Wave]
type = Explod
trigger1 = Time = 60
anim = 9996
pos = -112,-8
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 2, 2

[State 3850, Wave]
type = Explod
trigger1 = Time = 60
anim = 9996
pos = -161,-11
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1
scale = 2.75, 2.75

[State 3850, Kaboom]
type = Explod
trigger1 = Time = 60
anim = 9998
pos = 45,0
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 3850, 6]
type = PlaySnd
trigger1 = Time = 0
value = 10,0
channel = 0

[State 3850, 6]
type = PlaySnd
trigger1 = Time = 3
value = 1,3
channel = 1

[State 3850, 6]
type = PlaySnd
trigger1 = Time = 60
value = 5,0
channel = 2

[State 3850, 6]
type = PlaySnd
trigger1 = Time = 60
value = 5,3
channel = 3

[State 3850, 1]
type = Projectile
trigger1 = time = 60
projanim = 3850
projremovetime = 50
projhitanim = 3850
projpriority = 1
projshadow = -1
offset = 75,7
velocity = 0
attr = S, SP
damage   = 200,70
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1
fall = 0

[State 3850, 1]
type = Projectile
trigger1 = time = 65
projanim = 3850
projremovetime = 50
projhitanim = 3850
projpriority = 1
projshadow = -1
offset = 125,12
velocity = 0
attr = S, SP
damage   = 120,50
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S9,5
guardsound = s3,0
sparkxy = 0,-20
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1

[State 3850, 3]
type = Projectile
trigger1 = time = 68
projanim = 3851
projremovetime = 33
projhitanim = 3851
projpriority = 1
projshadow = -1
offset = 160,0
velocity = 0
attr = S, SP
damage   = 80,30
animtype = back
guardflag = MA
hitflag = MAFDP
pausetime = 7,5
hitsound   = S2,2
sparkxy = 0,-20
guardsound = 6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -1.1
ground.cornerpush.veloff = 0
air.velocity = -15,-1.1
guard.velocity = -10
air.juggle = 1
air.fall = 1

[State 3850, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------------
;Lava Geiser (Bizarro)
[Statedef 3900]
type = S
movetype = A
physics = S
anim = 3900
velset = 0
ctrl = 0
;
[State 3900, superpause]
type = SuperPause
trigger1 = time = 1
time = 29
pos = 0,-70
darken = 1
movetime = 29
sound = s10,1
poweradd = -1000

[State 3900, flash]
type = explod
trigger1 = time = 0
anim = 10001
postype = p1
pos = 0,-70
sprpriority = 4
ignorehitpause = 1
removetime = 26
removeongethit = 1
ownpal = 1
supermove = 1
scale = 0.90,0.90

[State 3900, Flash]
type = Explod
trigger1 = Time = 0
anim = 20000
pos         = 0,0
postype     = back
sprpriority = -3
supermove = 1
bindtime = 2
removetime = 54

;Zoom - Part One
[State 3900, BizzFace]
type        = explod
trigger1    = Time = 3
anim        = 10000
pos         = 0,90
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.1,0.1

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 4
anim        = 10000
pos         = 0,80
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.2,0.2

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 5
anim        = 10000
pos         = 0,70
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.3,0.3

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 6
anim        = 10000
pos         = 0,60
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.4,0.4

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 7
anim        = 10000
pos         = 0,50
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.5,0.5

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 8
anim        = 10000
pos         = 0,40
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.6,0.6

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 9
anim        = 10000
pos         = 0,30
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.7,0.7

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 10
anim        = 10000
pos         = 0,20
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.8,0.8

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 11
anim        = 10000
pos         = 0,10
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
scale = 0.9,0.9

[State 3900, BizzFace]
type        = explod
trigger1    = Time = 12
anim        = 10002
pos         = 0,0
postype     = back
sprpriority = -2
bindtime    = 100
ownpal      = 1
supermove   = 1
;end Zoom - Part One

[State 3900, afterimg]
type = AfterImage
trigger1 = animelem = 4
time = 96
length = 28
framegap = 7
trans = add1
removeongethit = 1

[State 3900, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 10,0
channel = 0

[State 3900, playsnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3
channel = 1

[State 3900, 0]
type = ChangeState
trigger1 = time = 22
value = 3901
ctrl = 0

;----------------------------------------------------------------------
;Lava Geiser (Going Under Ground)
[Statedef 3901]
type = S
movetype = A
physics = S
anim = 3901
velset = 0
ctrl = 0

[State 3901, NotHitBy]
type = NotHitBy
trigger1 = animelem = 8
time = 25
value = SCA
ignorehitpause = 1

[State 3901, 2]
type = Explod
trigger1 = Time = 33
anim = 9991
sprpriority = 3

[State 3901, 6]
type = PlaySnd
trigger1 = Time = 33
value = 9,6
channel = 0

[State 3901, 6]
type = PlaySnd
trigger1 = Time = 33
value = 9,6
channel = 1

[State 3901, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 3902

;----------------------------------------------------------------------
;Lava Geiser (Under Ground)
[Statedef 3902]
type = A,SA
movetype= A
physics = N
juggle = 1
anim = 3902
ctrl = 0

[State 3902, 2]
type = VelSet
trigger1 = time > 1
x = 7

[State 3902, NotHitBy]
type = NotHitBy
trigger1 = time = 0
time = 75
value = SCA
ignorehitpause = 1

[State 3902, 6]
type = PlaySnd
trigger1 = time = 2
value = 9,7
channel = 0

[State 3902, 6]
type = PlaySnd
trigger1 = time = 2
value = 9,7
channel = 1

[State 3902, 2]
type = Projectile
trigger1 = time = 10 || time = 15 || time = 20 || time = 30 || time = 35
trigger2 = time = 40 || time = 45 || time = 50 || time = 55
projanim = 9992
projhitanim = 9992
projremovetime = 36
projpriority = 1
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 40,15
animtype = light
guardflag = MA
hitflag = MAFDP
pausetime = 7,7
hitsound   = S2,2
guardsound = s3,0
sparkxy = 0,-20
guard.sparkno = 40
ground.type = high
ground.slidetime = 15
ground.hittime  = 11
ground.velocity = -8
ground.cornerpush.veloff = 0
air.velocity = -1,-3
air.juggle = 1
air.fall = 1
fall = 0

[State 3902, 3]
type = EnvShake
trigger1 = time = 0
Time = 74

[State 3902, 2]
type = VelSet
trigger1 = time = 74
x = 0

[State 3902, 3]
type = ChangeState
trigger1 = time = 75
value = 3903

;----------------------------------------------------------------------
;Lava Geiser (Coming Out)
[Statedef 3903]
type = A,SA
movetype= A
physics = N
juggle = 1
anim = 3903
poweradd= 40
ctrl = 0

[State 3903, 3]
type=PosSet
trigger1= animelem = 2
x=(enemy(0),Pos x)

[State 3903, 6]
type = PlaySnd
trigger1 = time = 0
value = 5,0
channel = 0

[State 3903, 6]
type = PlaySnd
trigger1 = time = 1
value = 5,3
channel = 1

[State 3903, 6]
type = PlaySnd
trigger1 = time = 3
value = 5,4
channel = 2

[State 3903, 6]
type = PlaySnd
trigger1 = time = 0
value = 5,0
channel = 3

[State 3903, 3]
type = PalFX
trigger1 = time = 0
add = 210,10,-200
mul = 200,200,200
sinadd = 60,40,50,20
color = 0
invertall = 1
time = 50

[State 3903, 2]
type = Explod
trigger1 = Time = 1
anim = 9990
sprpriority = 3
ownpal = 1
scale = 2, 1

[State 3903, Kaboom]
type = Explod
trigger1 = Time = 0
anim = 3221
pos = 0,9
postype = p1
sprpriority = -1
supermove = 1
bindtime = 5
scale = 2, 1
ownpal = 1

[State 3903, 2]
type = VelSet
trigger1 = AnimElem = 5
x = 0
y = -8

[State 3903, 5]
type = HitDef
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5
trigger2 =  animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
attr = A,NA
animtype = Hard
damage = 50,10
guardflag = MA
pausetime = 0, 5
sparkxy = -10,-65
guard.sparkno = 3
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 20
ground.hittime = 45
ground.velocity = 1,-17
air.velocity = -1.2,-5.2
fall = 1
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3903, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 3903, 2]
type = VelSet
trigger1 = AnimElem = 6
y = 0.25

[State 3903, 0]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1