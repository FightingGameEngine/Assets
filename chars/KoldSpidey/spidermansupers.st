;---------------------------------------------------------------------------
;---{Super Attacks}---
;---------------------------
; Maximum Spider
[Statedef 2000]
type    = A
movetype= I
physics = N
velset = backedgedist/-5 * (.35),-10
anim = 2000
ctrl = 0
sprpriority = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = VelAdd
trigger1 = vel y <= 0
y = .6

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = backedgedist < 25
x = .45

[State 0, ]
type = changestate
trigger1 = pos y < -65
trigger1 = backedgebodydist <= 25
trigger2 = vel y > 1
value = 2001

[State 0, ]
type = Playerpush
trigger1 = 1
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 12
value = 0
ignorehitpause = 0
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50

[statedef 2001]
type = A
movetype = A
physics = N
anim = 2001
velset = 0,0
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 12
value = 0
ignorehitpause = 0
persistent = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2001
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2001
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S3,5

[State 3000, Strength]
type = varset
trigger1 = var(42) != 5
var(42) = 5
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 2
helpertype = normal
stateno = 17500
ID = 7500
name = "Super Charge"
postype = p1
pos = floor(0*const(size.xscale)), floor(-70*const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3000, Super Pause]
type = superpause
trigger1 = time = 2
time = 45
movetime = 45
anim = -1
sound = s17, 0
p2defmul = 1
darken = 0
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = time = 2
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 2
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Changestate
triggerall = animtime = 0 && !var(0)
trigger1 = command = "holddown" && command != "holdup" && command != "holdfwd"
value = ifelse(p2bodydist x >= 60,2005,2025)

[State 0, ]
type = Changestate
triggerall = animtime = 0 && !var(0)
trigger1 = command = "holdup" && command != "holdfwd" && command != "holddown"
value = ifelse(p2bodydist x >= 60,2010,2020)

[State 0, ]
type = Changestate
triggerall = animtime = 0 && !var(0)
trigger1 = command = "holdfwd" && command != "holdup" && command != "holddown"
value = 2015

[State 0, ]
type = Changestate
triggerall = animtime = 0
trigger1 = !var(0) && command = "holdfwd" && command != "holdup" && command != "holddown"
trigger2 = p2bodydist y = [-20,20]
trigger3 = enemynear,vel y >= -5 && (p2bodydist y = [-60,60]) && var(0)
trigger4 = p2dist x >= 150 && (p2bodydist y = [-60,60]) && var(0)
value = 2015

[State 0, ]
type = Changestate
triggerall = animtime = 0
trigger1 = !var(0) && command = "holddown" && command != "holdup" && command != "holdfwd"
trigger2 = p2bodydist y > 20
value = ifelse(p2bodydist x >= 60,2005,2025)

[State 0, ]
type = Changestate
triggerall = animtime = 0
trigger1 = !var(0) && command = "holdup" && command != "holdfwd" && command != "holddown"
trigger2 = p2bodydist y < -20
value = ifelse(p2bodydist x >= 60,2010,2020)

[State 0, ]
type = Changestate
trigger1 = animtime = 0
value = 2015

[statedef 2002]
type = A
movetype = A
physics = N
anim = 2002
velset = 0,0
hitcountpersist = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2002
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2002
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2002
time = 5

[State 0, ]
type = Changestate
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y > 20
value = 2005
value = ifelse(p2bodydist x <= 80,2005,2025)

[State 0, ]
type = Changestate
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = Changestate
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = Changestate
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y > 20
value = 2025

[State 0, ]
type = Changestate
trigger1 = p2statetype = L
trigger2 = hitcount = 0
trigger3 = var(12) = 0
value = 2030

[statedef 2003]
type = S
movetype = A
physics = S
anim = 2003
velset = 0,0
hitcountpersist = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = p2dist x < 0
persistent = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2003
time = 10

[State 0, ]
type = Changestate
trigger1 = animtime = 0
value = ifelse(p2bodydist x >= 120,2015,ifelse(p2bodydist x >= 20 && p2bodydist y >= -100,2010,2020))

[State 0, ]
type = Changestate
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = Changestate
trigger1 = p2statetype = L
trigger2 = hitcount = 0
trigger3 = var(12) = 0
value = 2030

[statedef 2004]
type = A
movetype = A
physics = N
anim = 2004
velset = 0,0
hitcountpersist = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = p2dist x < 0
persistent = 0

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2004
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2004
time = 10

[State 0, ]
type = VelSet
trigger1 = screenpos y >= 50
y = 0

[State 0, ]
type = VelSet
trigger1 = screenpos y > 50
y = -5

[State 0, ]
type = Changestate
trigger1 = animtime = 0
value = ifelse(p2bodydist x >= 20 && p2bodydist y <= 100,2005,2025)

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
trigger2 = hitcount = 0
trigger3 = var(12) = 0
value = 2030

[statedef 2005]
type = A
movetype = A
physics = N
anim = 2005
velset = 17,11
facep2 = 1
hitcountpersist = 1
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit
v = 12
value = 1
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 0
y = (p2dist y/20)-5
x = (p2dist x/30)

[State 0, VelSet]
type = VelSet
trigger1 = vel y <= 2
y = 2

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2005
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2005
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2005
time = 20

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 40,5
pausetime = 5+((hitcount>=4)*20),5+((hitcount>=4)*20)
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 0,-55
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 50
ground.hittime = 50
air.hittime = 100
ground.velocity = 0,-10
guard.velocity = -4
air.velocity = 0-((hitcount>=4)*10),-10
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 2050
getpower = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = var(12) >= 5
value = 2030

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 5
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = screenpos y >= 225
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = Null
triggerall = frontedgedist <= 5 || pos y >= 0
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 2030

[statedef 2010]
type = A
movetype = A
physics = N
anim = 2010
velset = 18,-11
hitcountpersist = 1
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit
v = 12
value = 1
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = -0.2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2010
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2010
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2010
time = 20

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 40,4
pausetime = 5+((hitcount>=4)*20),5+((hitcount>=4)*20)
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 0,-55
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = 0,-10
guard.velocity = -4
air.velocity = 0-((hitcount>=4)*10),-10
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 2050
getpower = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
triggerall = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = var(12) >= 5
value = 2030

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 5
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
trigger1 = screenpos y <= 0
;trigger1 = movehit = 1
;rigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = Null
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = frontedgedist <= 5
trigger2 = p2stateno = 5100
value = 2030

[statedef 2015]
type = A
movetype = A
physics = N
anim = 2015
velset = 24,0
hitcountpersist = 1
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit
v = 12
value = 1
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, VelAdd]
type = Null
trigger1 = time = 0
y = -1*(p2dist y/20)

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = ifelse(p2dist y > -10,3,ifelse(p2dist y <= -20,-3,0))
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 0
x = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2015
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2015
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2015
time = 20

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 40,4
pausetime = 5+((hitcount>=4)*20),5+((hitcount>=4)*20)
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 0,-55
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = 0,-10
guard.velocity = -4
air.velocity = 0-((hitcount>=4)*10),-10
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 2050
getpower = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = var(12) >= 5
value = 2030

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 5
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = Null
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = frontedgedist <= 5
trigger2 = p2stateno = 5100
value = 2030

[statedef 2020]
type = A
movetype = A
physics = N
anim = 2020
velset = 11,-17
hitcountpersist = 1
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit
v = 12
value = 1
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y <= -100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = -0.2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2020
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2020
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2020
time = 20

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 40,4
pausetime = 5+((hitcount>=4)*20),5+((hitcount>=4)*20)
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 0,-55
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -3-((hitcount>=4)*10),-8
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 2050
getpower = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = var(12) >= 5
value = 2030

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 5
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
trigger1 = screenpos y <= 50
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = Null
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = frontedgedist <= 5
trigger2 = p2stateno = 5100
trigger3 = screenpos y <= 50 && movehit = 0 && hitcount = 0
value = 2030

[statedef 2025]
type = A
movetype = A
physics = N
anim = 2025
velset = 11,17
hitcountpersist = 1
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit
v = 12
value = 1
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = p2dist x >= 10
x = 2
persistent = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y >= 100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2025
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2025
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2025
time = 20

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 40,4
pausetime = 5+((hitcount>=4)*20),5+((hitcount>=4)*20)
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 0,-55
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -3-((hitcount>=4)*10),-8
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 2050
getpower = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = var(12) >= 5
value = 2030

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 5
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = screenpos y >= 225
;trigger1 = movehit = 1
;trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = Null
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 2030

[statedef 2030]
type = S
movetype = A
physics = N
facep2 = 1
hitcountpersist = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, Gravity]
type = Gravity
trigger1 = time >= 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -2
y = -8

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = hitcount = 0
value = 43

[State 0, ScreenBound]
type = ScreenBound
trigger1 = hitcount > 0
value = 0
movecamera = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && hitcount >= 1
value = 2030

[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 43
value = 50
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = anim != 43
trigger1 = pos y >= 0
value = 2031
ctrl = 0

[statedef 2031]
type = S
movetype = I
physics = S
velset = 0,0
anim = 0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = ChangeState
trigger1 = time = 40
trigger2 = backedgedist >= -25
value = 101

[statedef 2050]
type = A
movetype = H
physics = N
velset = 0,-10
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeState
trigger1 = hitshakeover
trigger2 = time >= 20
value = 2051
ignorehitpause = 0
persistent = 0

[Statedef 2051]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5030
ignorehitpause = 1
persistent = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = screenpos y <= 55
value = 2052
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = backedgedist <= 5
trigger2 = frontedgedist <= 5
value = 2053
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 2054
ctrl = 0

[statedef 2052]
type = A
movetype = H
physics =N
vel = 0,0
ctrl = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = -4
phase = 90
ignorehitpause = 1
persistent = 0

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 0
value = 6
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -1
ignorehitpause = 1
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5010 && time = 5
value = 5030
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 2054
ctrl = 0

[statedef 2053]
type = A
movetype = H
physics =N
facep2 = 1
vel = 0,0
ctrl = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 75
ampl = -8
phase = 90
ignorehitpause = 1
persistent = 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 0
value = 6
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1
y = -6
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = f71
postype = back
pos = 0,pos y + const(size.mid.pos.y)
facing = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5010 && time = 5
value = 5030
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 2054
ctrl = 0

[statedef 2054]
type = L
movetype = H
physics = N
facep2 = 1
vel = 0,0
ctrl = 0

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61 + (sysvar(1) > 14)
pos = 0, 0
ontop = 1

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 75
ampl = -8
phase = 90
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
ignorehitpause = 1
persistent = 1

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 0
value = 6
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 5090
x = -1
y = -6
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5100
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5100 && animtime = 0
value = ifelse(selfanimexist(5090),5090,5030)
ignorehitpause = 1
persistent = 0

[State 0, SelfState]
type = SelfState
trigger1 = anim = 5090
trigger2 = anim = 5030
value = 5101

;---------------------------
;Crawler Assult
[statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,SA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 3000, Strength]
type = varset
trigger1 = var(42) != 5
var(42) = 5
[State 3000, Super Pause FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 17500
ID = 7500
name = "Super Charge"
postype = p1
pos = floor(-25*const(size.xscale)), floor(-43*const(size.yscale))
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
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = animelem = 2
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 2
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
movetype = A

[State 0, ]
type = VelSet
trigger1 = time = 55
x = 7

[State 0, ]
type = VelSet
trigger1 = time >= 55
x = 4.5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 3
value = 0,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 4
value = 0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 1
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 2
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = MoveHitReset
trigger1 = movecontact = 1
persistent = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 24
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
priority = 6,Hit
damage = 27,4
pausetime = 2,15
guard.pausetime = 2,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -5,-75
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 26
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
air.type = low
priority = 6,Hit
damage = 24,2
pausetime = 2,15
guard.pausetime = 2,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10+ceil(random/50),-65+ceil(random/25)
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3005

[statedef 3005]
type = S
movetype = A
physics = S
anim = 3005
velset = 5,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 3

[State 0, ]
type = PosAdd
trigger1 = movehit = 1
trigger1 = backedgedist <= -60
x = -100
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
fall.animtype = back
priority = 6,Hit
damage = 40,15
pausetime = ifelse(frontedgedist <= 20,12,35),12
guard.pausetime = 4,3
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10,-65
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
ground.velocity = -8,-8
guard.velocity = -5
air.velocity = -8,-8
airguard.velocity = -5
yaccel = 0.5
ground.cornerpush.veloff = -50
air.cornerpush.veloff = -50
getpower = 0,0
forcestand = 1
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = ifelse(backedgedist <=-20,624,101)

;---------------------------
; Ultimate-Web-Throw
[Statedef 4000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4000
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = -2.5
y = const(velocity.jump.y)+0.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = A

[State 0, ]
type = ChangeState
trigger1 = time = 21
value = 4001

[Statedef 4001]
type    = A
movetype= A
physics = A
anim = 4001
sprpriority = 4
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosFreeze
trigger1 = time > 13
value = 1

[State 3000, Strength]
type = varset
trigger1 = var(42) != 5
var(42) = 5
[State 3000, Super Pause FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 17500
ID = 7500
name = "Super Charge"
postype = p1
pos = floor(0*const(size.xscale)), floor(-90*const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3000, Super Pause]
type = superpause
trigger1 = animelem = 3
time = 45
movetime = 45
anim = -1
sound = s17, 0
p2defmul = 1
darken = 0
poweradd = -1000

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S6,0

[State 0, ]
type = Projectile
trigger1 = animelem = 5
ProjID = 4005
projanim = 4005
projhitanim = 4006
projcancelanim = 4006
projremovetime = 16
projshadow = -1,-1,-1
projhits = 1
attr = A,HA
hitflag = MAF
guardflag = MA 
offset  = 46,-62
pausetime = 5,5
guard.pausetime = 5,5
sparkno = s17030 + (random % 8)
sparkxy = 130,ceil(P2bodydist y)
guard.sparkno = s17001
hitsound = S6,1
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
p2stateno = 4020
fall = 1
air.fall = 1
fall.recover = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = projhit = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 4010
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = projhit = 1
value = 4010

[State 0, ]
type = TargetState
trigger1 = projhit = 1
value = 4020

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4010]
type    = A
movetype= A
physics = N
anim = 4010
velset = 1,-10
sprpriority = 1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = numtarget <= 0
value = 2030
ctrl = 0

[State 0, Width]
type = Width
trigger1 = animelem = 1
edge = 50,50
player = 0,0

[State 0, Width]
type = Width
trigger1 = time >= 10
edge = 100,100
player = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 1
y = -6
persistent = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y <= 0
y = 0.24

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animtime = 0
value = S0,5
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = floor(130*const(size.xscale)),5

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 2
pos = floor(55*const(size.xscale)),10

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = floor(25*const(size.xscale)),30

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = floor(-15*const(size.xscale)),30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = floor(-20*const(size.xscale)),30

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = floor(-100*const(size.xscale)),-5

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = floor(-115*const(size.xscale)),-40

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = floor(-120*const(size.xscale)),-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 2
pos = floor(-120*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 2
pos = floor(-80*const(size.xscale)),-165

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 2
pos = floor(-50*const(size.xscale)),-190

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 2
pos = floor(-10*const(size.xscale)),-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 2
pos = floor(-5*const(size.xscale)),-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 2
pos = floor(100*const(size.xscale)),-175

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 2
pos = floor(120*const(size.xscale)),-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 16
time = 2
pos = floor(130*const(size.xscale)),-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 17
time = 2
pos = floor(130*const(size.xscale)),-100

[State 0, ]
type = TargetBind
trigger1 = animelem = 18
time = 2
pos = floor(105*const(size.xscale)),25

[State 0, ]
type = TargetBind
trigger1 = animelem = 19
time = 2
pos = floor(65*const(size.xscale)),45

[State 0, ]
type = TargetBind
trigger1 = animelem = 20
time = 2
pos = floor(35*const(size.xscale)),50

[State 0, ]
type = TargetBind
trigger1 = animelem = 21
time = 2
pos = floor(30*const(size.xscale)),50

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 18
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 10
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 12
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 14
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 4027

[State 0, ]
type = ChangeState
trigger1 = animtime = 0 && vel y >= 4
value = 4015

[Statedef 4015]
type    = A
movetype= A
physics = N
anim = 4015
velset = 1,-1
sprpriority = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = -0.25
y = -6
persistent = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = [17,36]
value = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = floor(25*const(size.xscale)),50

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 0,45

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = floor(-50*const(size.xscale)),20

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = floor(-115*const(size.xscale)),-30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = floor(-30*const(size.xscale)),-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = floor(40*const(size.xscale)),-185

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = floor(140*const(size.xscale)),-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = floor(130*const(size.xscale)),5

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 8
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 7
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 8,2
value = 4028

[State 0, ]
type = Null
trigger1 = animelem = 8
value = -360

[State 0, ]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0
trigger2 = pos y >= 0
value = 4016
ctrl = 0

[Statedef 4016]
type    = S
movetype= I
physics = S
anim = 47
sprpriority = 1
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 47 && animtime = 0
value = 195

[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 195 && animelem = 5; && time >= 60
value = 0
ctrl = 1

[Statedef 4020]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = AfterImage
triggerall = prevstateno != 4020
triggerall = prevstateno != 4026
triggerall = prevstateno != 4027
trigger1 = time = 0 
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4020

[State 0, ]
type = SelfState
trigger1 = time >= 10
value = 5000

[Statedef 4021]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4021

[Statedef 4022]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4022

[Statedef 4023]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4023

[Statedef 4024]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4024

[Statedef 4025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4025

[Statedef 4026]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4026

[Statedef 4027]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4027

[Statedef 4028]
type    = A
movetype= H
physics = N
velset = -5,15
sprpriority = 0
facep2 = 1
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -4
y = 15
persistent = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5050

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && anim = 5050
value = 4029
ctrl = 0

[Statedef 4029]
type    = L
movetype= H
physics = C
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = !time
value = -210
kill = 1
persistent = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0
persistent = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5100

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61 + (sysvar(1) > 14)
pos = 0, 0
ontop = 1

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7,2; (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 20
freq = 120
ampl = -25
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 4030
ctrl = 0

[Statedef 4030]
type    = A
movetype= H
physics = N
velset = -3,-12
sprpriority = 0
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -3
y = -12
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5050
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && animtime = 0 && vel y >= 3
value = 5050
persistent = 0

[State 0, ]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0 && anim = 5050
value = 5110


;--[Ground Stomp]------------------
[Statedef 7110]
type = S
movetype = A
physics = N
anim = 7110
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7110
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,7
channel = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;--[Super Animations]------------------
[Statedef 8000]
type = S
movetype = I
anim = 8000
sprpriority = 8;

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow;

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F100
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1

[State 0, ]
type = Explod
trigger1 = time = 12
anim = F101
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1;

[State 0, ]
type = Explod
trigger1 = time = 0
anim = F102
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1;

[State 0, ]
type = null
trigger1 = time = 0
time = 999
length = 7
framegap = 3
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0
;
;;--[Super Animations]------------------
[Statedef 9100]
type = S
movetype = I
physics = N
anim = 30000
sprpriority = 0

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 9100
ID = 9100
postype = right
pos = 188,0
facing = 1
bindtime = 1
vel = -16,0
removetime = 22
supermove = -1
pausemovetime = -1
sprpriority = -10
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 9105
ID = 9105
postype = left
pos = -167,0
facing = 1
bindtime = 1
vel = 16,0
removetime = 22
supermove = -1
pausemovetime = -1
sprpriority = -9
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = ModifyExplod
trigger1 = time = 21
anim = 9100
ID = 9100
postype = left
pos = 161,0
facing = 1
bindtime = -1
vel = 0,0
removetime = -1
supermove = -1
pausemovetime = -1
sprpriority = -10
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = ModifyExplod
trigger1 = time = 21
anim = 9105
ID = 9105
postype = right
pos = -159,0
facing = 1
bindtime = -1
vel = 0,0
removetime = -1
supermove = -1
pausemovetime = -1
sprpriority = -9
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = parent,movehit != 1 && time >= 49
ID = 9100
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = parent,movehit != 1 && time >= 49
ID = 9105
ignorehitpause = 1

[State 0, ]
type = DestroySelf
triggerall = parent,stateno != 15005
trigger1 = parent,movehit != 1 && time >= 49

;--[Super Animations]------------------
[Statedef 11000]
type = S
movetype = I
physics = N
anim = 11000
sprpriority = 5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,5
channel = -1

[State 0, ]
type = Helper
trigger1 = time = 0
name = "ring"
stateno = 7110
ID = 7110
ownpal = 1
size.xscale = 1
size.yscale = 0.25
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;Spidey Tracker
;-------------------------------------------------------------------------
[statedef 7000]
type = S
movetype = A
physics = S
anim = 7000
sprpriority = 3
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = SuperPause
trigger1 = animelem = 2
time = 44
movetime = 0
sound = S20,0
pos = -10,-45
darken = 1
poweradd = -1000
anim = s14000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3,0
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = animelem = 2
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 4
time = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 194
ID = 194
pos = floor(5*const(size.xscale)),-80
bindtime = -1
removetime = 60
supermovetime = 9999999
pausemovetime = 9999999
scale = 2,2
sprpriority = 2
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 194
ID = 194
pos = floor(5*const(size.xscale)),-70
bindtime = -1
removetime = 60
supermovetime = 9999999
pausemovetime = 9999999
scale = 1,1
sprpriority = 2
ontop = 1

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = SCA,NA,SA,HA,NT,ST,HT
pausetime = 20,20
sparkno = s17030 + (random % 8)
hitsound = S5,8
sprpriority = -5
p1stateno = ifelse(numhelper(7010) = 0,7005,2510)
p2stateno = ifelse(numhelper(7010) = 0,7014,5000)
snap = 50,0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 52
ctrl = 0

[statedef 7005]
type = S
movetype = A
physics = S
anim = 7005
sprpriority = -3
velset = 0,0
ctrl = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 2
pos = floor(-50*const(size.xscale)),0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = floor(75*const(size.xscale)),0-(pos y)
persistent = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 5
value = 1
ignorehitpause = 1
persistent = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 6
value = 1
ignorehitpause = 1
persistent = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 6
value = 4
ignorehitpause = 1

[State 0, Pause]
type = Pause
trigger1 = time = [0,25]
time = 3
movetime = 1

[State 0, Pause]
type = Pause
trigger1 = animelem = 6
time = 20
movetime = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 0, Turn]
type = Turn
trigger1 = time = 0

[State 0, VelSet]
type = VelSet
trigger1 = time < 15
x = -4

[State 0, VelSet]
type = VelSet
trigger1 = time = [16,25]
x = -4
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = time = 25
x = -15
y = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S5,9
persistent = 0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S0,5
persistent = 0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S5,3
persistent = 0
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 2,2
channel = 1
lowpriority = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 14003
pos = 0,-75
postype = p2  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -135-(ceil(random/100))
ignorehitpause = 1
persistent = 0

[State 0, TargetState]
type = TargetState
trigger1 = animelem = 6
value = 7015
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0 && numhelper(7010) = 0
helpertype = normal ;player
name = "Tracer"
stateno = 7010
ID = 7010
postype = p2    ;p2,front,back,left,right
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 0
pausemovetime = 0
facing = 1
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = numtarget = 1
v = 19    ;fv = 10
value = enemy,ID;(1)
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 31
statetype = A
movetype = A
physics = A

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 1

;--------------------------------
[statedef 7010]
type = S
movetype = I
physics = S
anim = 7010
sprpriority = -2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = time = 16  && numexplod(7013) = 0
anim = 7013
ID = 7013
bindtime = -1
removetime = 1015
sprpriority = 3
scale = 0.5,0.5
ontop = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = nofg
flag2 = nobg
ignorehitpause = 1
persistent = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 16
ID = 7011
sprpriority = 10
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = time = 15 && numexplod(7020) = 0
anim = 7020
ID = 7020
pos = 5,35
postype = left  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 1013
sprpriority = 5
ontop = 1
ownpal = 1
persistent = 0

[State 0, PosSet]
type = PosSet
trigger1 = (var(19))>=0
x = (enemy(var(19)),pos x)+(enemy(var(19)),const(size.mid.pos.x)) ;x = ((parent,facing)*(parent,p2dist x))+(parent,pos x)
y = (enemy(var(19)),pos y)+(enemy(var(19)),const(size.mid.pos.y))-((enemy(var(19)),statetype =A )*10)+((enemy(var(19)),statetype =C )*10);y = (parent,p2dist y)+(parent,pos y)
persistent = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = win
trigger2 = var(0)
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 1015
trigger2 = win
trigger3 = var(0)

[statedef 7014]
type = S
movetype = H
physics = S
sprpriority = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = 1
value = 5000

[statedef 7015]
type = S
movetype = H
physics = S
sprpriority = 3

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 7015

[State 0, Turn]
type = Turn
trigger1 = anim = 7015
ignorehitpause = 1
persistent = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 7015
x = -8
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = lose
value = 5030
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 7016
ctrl = 0

[statedef 7016]
type = S
movetype = I
physics = S
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[State 0, SelfState]
type = SelfState
trigger1 = time >= 100
trigger2 = lose
trigger3 = life <= 0
anim = 5000
value = 0
ctrl = 1





;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;Web Dome
;-------------------------------------------------------------------------
[statedef 4500]
type = S
movetype = A
physics = S
anim = 4500
velset = 0,0
ctrl = 0

[State 0, HitOverride]
type = NotHitBy
trigger1 = 1
value = SCA,NT,ST,HT
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2
ignorehitpause = 1
persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = SuperPause
trigger1 = animelem = 4
time = 44
sound = S20,0
pos = -22,-26
darken = 1
poweradd = -1000
anim = s14000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S4,1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = animelem = 4
time = 4
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Web-Dome"
stateno = 4600
ID = 4600
pos = -20,5
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1.45
size.yscale = 0.7
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Web-Dome"
stateno = 4600
ID = 4600
pos = -20,0
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1.45
size.yscale = 0.7
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "3 Shield"
stateno = 4610
ID = 4610
pos = 5,0
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "1 Shield"
stateno = 4610
ID = 4610
pos = -15,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "6 Shield"
stateno = 4620
ID = 4620
pos = 5,20
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "4 Shield"
stateno = 4620
ID = 4620
pos = -15,20
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "9 Shield"
stateno = 4630
ID = 4630
pos = 5,20
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "7 Shield"
stateno = 4630
ID = 4630
pos = -15,20
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "8 Shield"
stateno = 4640
ID = 4640
pos = 0,0
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player  0
name = "8 Shield"
stateno = 4640
ID = 4640
pos = 0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
trigger2 = animtime = 0 && !var(0)
trigger2 = command != "holdx"
trigger2 = command != "holdy"
trigger2 = command != "holdz"
trigger3 = var(0) && (enemynear,ctrl = 0) && time >= 8
value = 4505
ctrl = 0

[statedef 4505]
type = S
movetype = A
physics = S
anim = 4505
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2,2
volume = 0
ignorehitpause = 1
persistent = 0
channel = 1
lowpriority = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---[Web Dome]---------------------------------
[statedef 4600]
type = S
movetype = A
physics = S
anim = 4600
sprpriority = 8
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 2
pos = -20,5
facing = 1
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno != 4500
value = 4605
ctrl = 0

[statedef 4605]
type = S
movetype = A
physics = S
anim = 4605
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S6,0
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4605
postype = p1  ;p2,front,back,left,right
facing = -1
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = 2,1.25
sprpriority = 8
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 4
anim = 4605
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = 3,1.25
sprpriority = 8
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 0

[statedef 4610]
type = S
movetype = A
physics = S
anim = 4610
sprpriority = 7
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno != 4500
value = 4615

[statedef 4615]
type = S
movetype = A
physics = N
anim = 4615
vel = 12,0
sprpriority = 7
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 12
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,3
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !movecontact
attr = S,HA
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
givepower = 20,5
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 6,Hit   ;Hit,Miss,Dodge
damage = 60+(random/100),(random/150)
pausetime = 0,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 5,-60
hitsound = S5,2
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
air.hittime = 20
ground.velocity = -1,-10
guard.velocity = -6
air.velocity = -1,-9
down.velocity = -1,-11
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
sprpriority = 1
;p1stateno = 0
;p2stateno = 0
forcestand = 1
fall = 1
fall.damage = 10
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ignorehitpause = 1
persistent = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = win
v = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = ChangeState
trigger1 = frontedgedist <= -20
trigger2 = movecontact
value = 4616
ignorehitpause = 0
persistent = 0

[statedef 4616]
type = S
movetype = I
physics = N
anim = 144
vel = 10,0
sprpriority = 1
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 0


;-----------------------------
[statedef 4620]
type = S
movetype = A
physics = S
anim = 4620
sprpriority = 7
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,20
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno != 4500
value = 4625

[statedef 4625]
type = S
movetype = A
physics = N
anim = 4625
vel = 10,0
sprpriority = 7
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 10
y = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S6,0
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !movecontact
attr = S,HA
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
givepower = 20,5
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 6,Hit   ;Hit,Miss,Dodge
damage = 60+(random/100),(random/150)
pausetime = 0,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 5,-60
hitsound = S5,0+ceil(random/500)
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
air.hittime = 20
ground.velocity = -2,-12
guard.velocity = -6
air.velocity = -2,-14
down.velocity = -2,-13
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
sprpriority = 1
;p1stateno = 0
;p2stateno = 0
forcestand = 1
fall = 1
fall.damage = 10
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ignorehitpause = 1
persistent = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = win
v = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = ChangeState
trigger1 = frontedgedist <= -20
trigger2 = movecontact
value = 4626
ignorehitpause = 0
persistent = 0

[statedef 4626]
type = S
movetype = I
physics = N
anim = 143
vel = 10,-4
sprpriority = 1
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 0


;-----------------------------
[statedef 4630]
type = S
movetype = A
physics = S
anim = 4620
sprpriority = 7
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,20
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno != 4500
value = 4635

[statedef 4635]
type = S
movetype = A
physics = N
anim = 4635
vel = 8,-6
sprpriority = 7
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 8
y = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,3
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !movecontact
attr = S,HA
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
givepower = 20,5
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 6,Hit   ;Hit,Miss,Dodge
damage = 60+(random/100),(random/150)
pausetime = 0,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 5,-60
hitsound = S5,0+ceil(random/500)
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
air.hittime = 20
ground.velocity = -5,-8
guard.velocity = -6
air.velocity = -5,-7
down.velocity = -5,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
sprpriority = 1
;p1stateno = 0
;p2stateno = 0
forcestand = 1
fall = 1
fall.damage = 10
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ignorehitpause = 1
persistent = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = win
v = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = ChangeState
trigger1 = frontedgedist <= -20
trigger2 = movecontact
value = 4636
ignorehitpause = 0
persistent = 0

[statedef 4636]
type = S
movetype = I
physics = N
anim = 143
vel = 8,-6
sprpriority = 1
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 0


;-----------------------------
[statedef 4640]
type = S
movetype = A
physics = S
anim = 4640
sprpriority = 7
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,20
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno != 4500
value = 4645

[statedef 4645]
type = S
movetype = A
physics = N
anim = 4645
vel = 4,-8
sprpriority = 7
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 2
y = -10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,3
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !movecontact
attr = S,HA
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
givepower = 20,5
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 6,Hit   ;Hit,Miss,Dodge
damage = 60+(random/100),(random/150)
pausetime = 0,2
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = 5,-60
hitsound = S5,0+ceil(random/500)
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
air.hittime = 20
ground.velocity = -5,-8
guard.velocity = -6
air.velocity = -5,-7
down.velocity = -5,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
sprpriority = 1
;p1stateno = 0
;p2stateno = 0
forcestand = 1
fall = 1
fall.damage = 10
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ignorehitpause = 1
persistent = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = win
v = 1
value = 1
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = ChangeState
trigger1 = frontedgedist <= -20
trigger2 = movecontact
value = 4646
ignorehitpause = 0
persistent = 0

[statedef 4646]
type = S
movetype = I
physics = N
anim = 143
vel = 2,-8
sprpriority = 1
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
persistent = 0

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;---[Maximum Assault]------------------------------
; Maximum Spider
[Statedef 2500]
type = A
movetype = I
physics = N
anim = 1800
poweradd = 0
sprpriority = -1
velset = backedgedist /-2 * (.35),-10
ctrl = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = backedgedist < -25
x = .45

[State 0, ChangeState]
type = ChangeState
trigger1 = backedgedist <= 0
trigger1 = pos y < -65
trigger2 = time >= 20
value = 2505
ctrl = 0

[statedef 2505]
type = A
movetype = A
physics = N
anim = 1805
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 44
sound = S20,0
anim = -1
pos = 0,-70
darken = 1
poweradd = -1000
anim = s14000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = time = 2
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 2
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
trigger2 = time >= 20
value = 2510

[statedef 2510]
type = A
movetype = A
physics = N
anim = 1806
sprpriority = -1
velset = p2bodydist x/10,((p2bodydist y-50)/10)
ctrl = 0

[State 0, ]
type = VelAdd
triggerall = vel x >= 2
trigger1 = p2bodydist x <= 50
x = .5

[State 0, ]
type = VelAdd
triggerall = vel y != [-2,2]
trigger1 = p2bodydist y <= -10
y = .5

[State 0, ChangeState]
type = ChangeState
trigger1 = p2bodydist x <= 60
trigger2 = time >= 4
value = 2515
ctrl = 0

[statedef 2515]
type = A
movetype = A
physics = A
anim = 1807
sprpriority = -1
velset = vel x,vel y
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact
v = 21
value = 1
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 36,10
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 45,0
pausetime = 10,35
guard.pause = 10,10
sparkxy = 5,-60
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
hitsound = S5,3
guardsound = S5,8
ground.type = Low
air.type = Low
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = 0,-1
air.velocity = 0,-1
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
;p1stateno = 2520
snap = 50,-10
sprpriority = 1
ignorehitpause = 0
persistent = 1
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 1
y = -4
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 2520
ignorehitpause = 0
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1706
ignorehitpause = 0
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;-----------------------------------------------------
[statedef 2520]
type = A
movetype = A
physics = N
anim = 2520
sprpriority = 1
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 9
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = 2,0+ceil(random/500)
channel = 1
lowpriority = 1
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 17
trigger3 = animelem = 28
attr = S,HA
hitflag = MAF        ;HLAFD+-
getpower = 0,0
givepower = 5,1
ground.type = High      ;Low,Trip,None
air.type = High
animtype = hard
air.animtype = Hard
damage = 60,0
pausetime = 2,20
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10+ceil(random/50),-65+ceil(random/25)  ;;; put the x,y offset relative to P1 hit box colision "where the move hits"
hitsound = S5,1+(ceil(random/500))
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -5,-2
air.velocity = -5,-2
snap = 50,-20
p2facing = 1
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 10
trigger2 = animelem = 22
attr = S,HA
hitflag = MAF        ;HLAFD+-
getpower = 0,0
givepower = 5,1
ground.type = Low      ;Low,Trip,None
air.type = Low
animtype = hard
air.animtype = Hard
damage = 65,0
pausetime = 2,20
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10+ceil(random/50),-65+ceil(random/25)  ;;; put the x,y offset relative to P1 hit box colision "where the move hits"
hitsound = S5,1+(ceil(random/500))
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -5,-2
air.velocity = -5,-2
snap = 50,-20
p2facing = 1
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 33
attr = S,HA
hitflag = MAF        ;HLAFD+-
getpower = 0,0
givepower = 5,1
ground.type = Low      ;Low,Trip,None
air.type = Low
animtype = hard
air.animtype = Hard
damage = 75,0
pausetime = 2,20
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10+ceil(random/50),-65+ceil(random/25)  ;;; put the x,y offset relative to P1 hit box colision "where the move hits"
hitsound = S5,1+(ceil(random/500))
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -5,-2
air.velocity = -5,-2
snap = 50,-20
p2facing = 1
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, ]
type = MoveHitReset
trigger1 = movecontact = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 2525
ctrl = 0

;-----------------------------------------------------
[statedef 2525]
type = A
movetype = A
physics = N
anim = 2525
sprpriority = 1
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2
channel = 1
lowpriority = 1
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAF        ;HLAFD+-
getpower = 0,0
givepower = 5,1
ground.type = High      ;Low,Trip,None
air.type = High
animtype = hard
air.animtype = Hard
damage = 100,0
pausetime = 4,50
sparkno = s17030 + (random % 8)
guard.sparkno = s17001
sparkxy = -10+ceil(random/50),-65+ceil(random/25)
hitsound = S5,6
guardsound = S5,8
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = 0,-5
air.velocity = 0,-5
snap = 50,-20
p2facing = 1
fall = 1
fall.recover = 0
persistent=0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 0, PosAdd]
type = PosAdd
trigger1 = movehit
x = 100
y = 10
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0.5
y = 0.05
ignorehitpause = 1
persistent = 1

[State 0, Pause]
type = Pause
trigger1 = movehit
time = 4
movetime = 2
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 100
value = 2530
ctrl = 0

;-----------------------------------------------------
[statedef 2530]
type = A
movetype = A
physics = A
anim = 2530
sprpriority = 1
velset = 0,0
facep2 = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1


