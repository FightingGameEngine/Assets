  [StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = -20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S20,0
volume = 10
channel = -1
;lowpriority = -1
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S30,2
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0

[State 1010, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 1010
projanim = 1010
projscale = 1,1
projremove = 0
projremovetime = 48
velocity = 6,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 30
projmiss = 0
projmisstime = 3
projpriority = 2
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 100,-68
postype = p1 ;p2,front,back,left,right
projshadow = 0,0,0
attr = S,SA
damage = 8,4
ground.type = Low
air.type = Low
hitsound = 5,2
pausetime = 0,8
ground.hittime = 10
air.hittime = 10
ground.velocity = -3,0
air.velocity = -3,0
sparkno = -1
sparkxy = 20,0
fall = 1
fall.recover = 1
palfx.time = 15
palfx.add = 148,20,20
palfx.mul = 247,226,123
palfx.sinadd = 105,61,77,10
Palfx.color = 0
palfx.invertall = 0

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;================================================================

[StateDef 2000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2000
poweradd = -20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S20,0
volume = 10
channel = -1
;lowpriority = -1
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S30,2
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
[State 1010, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 1010
projanim = 1010
projscale = 1,1
projremove = 0
projremovetime = 108
velocity = 6,2
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 30
projmiss = 0
projmisstime = 3
projpriority = 2
projsprpriority = 3
projedgebound = 100
projstagebound = 40
projheightbound = -240
offset = 110,-38
postype = p1 ;p2,front,back,left,right
projshadow = 0,255,0
attr = S,SA
damage = 8,4
ground.type = Low
air.type = Low
hitsound = 5,2
pausetime = 0,8
ground.hittime = 10
air.hittime = 10
ground.velocity = -3,0
air.velocity = -3,0
sparkno = -1
sparkxy = 20,0
fall = 1
fall.recover = 1
palfx.time = 15
palfx.add = 148,20,20
palfx.mul = 247,226,123
palfx.sinadd = 105,61,77,10
Palfx.color = 0
palfx.invertall = 0

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -65
ctrl = 0
velset = 0,0
anim = 3000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S20,3
volume = 10
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = S30,3
freqmul = 1.0
[State 600, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
attr = S, NA
damage = 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -40, -62
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, VelAdd]
type = VelAdd
trigger1 = (command = "holdfwd")
x = 1
y = 0
;ignorehitpause =
;persistent =
[State 0, VelAdd]
type = VelAdd
trigger1 = (command = "holdback")
x = -1
y = 0
;ignorehitpause =
;persistent =

[State 250, 5]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -65
ctrl = 0
velset = 0,0
anim = 4000


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S20,3
volume = 10
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = S30,3
freqmul = 1.0
[State 600, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
attr = S, NA
damage = 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -40, -62
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
