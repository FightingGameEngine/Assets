[StateDef 1300 - Hurricane Bow X]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1300
poweradd = 35
sprpriority = 2
facep2 = 1
 
[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 1300,0
channel = 0

[state -]
type = nothitBy
trigger1 = time <= 7
value = SCA

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 12
trigger3 =  animelem = 22
trigger4 =  animelem = 30
value = 173,3


[State 230, HitDef]
type = HitDef
trigger1 = timemod = 10,1
attr = S,SA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,5 
sparkno = -1+0*(var(32):=8008)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=75),var(36):=-73
hitsound = s1,0
guardsound = s2,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
ground.type = Low
ground.slidetime = 12
ground.hittime = 17
ground.velocity = -0.5
air.type = Low
air.hittime = 12
air.velocity = -0.5,-0.5
getpower = 15,15
givepower = 7,7
air.fall = 1
fall.recover = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
ignorehitpause = 1
persistent = 0

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1310 - Hurricane Bow Y]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1310
poweradd = 35
sprpriority = 2
facep2 = 1

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 12
trigger3 =  animelem = 22
trigger4 =  animelem = 30
value = 173,3


[State 230, HitDef]
type = HitDef
trigger1 = timemod = 10,1
attr = S,SA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,5
sparkno = -1+0*(var(32):=8008)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=75),var(36):=-73
hitsound = s1,0
guardsound = s2,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
ground.type = Low
ground.slidetime = 12
ground.hittime = 17
ground.velocity = -0.5
air.type = Low
air.hittime = 12
air.velocity = -0.5,-0.5
getpower = 15,15
givepower = 7,7
air.fall = 1
fall.recover = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
ignorehitpause = 1
persistent = 0


[State 230, back to stance]
type = ChangeState 
trigger1 = animelemtime(16) >= 0
value = 1311
 
[StateDef 1311]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 420
;poweradd = 55
sprpriority = 2 

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 8
x = 16

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 10

[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 1310,0
channel = 0

[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 174,4

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = S, SA
damage = 80, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit 
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-74
hitsound=s1,6
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 21
ground.hittime = 21
air.hittime = 21
guard.ctrltime = 17
ground.velocity = 0,-9
guard.velocity = -8.5
air.velocity = 0, -9
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 70,70
givepower = 35,35
fall = 1
air.fall = 1
fall.recovertime = 45
envshake.time = 9
envshake.ampl = 3

[State 420, 1]
type = varset
trigger1 = movehit 
var(16) = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5) >= 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 420, 1]
type = ChangeState
triggerall = movehit
trigger1 = command = "holdup"
value = 50
ctrl = 1 

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
 
[StateDef 1320 - Hurricane Bow Z]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1300
poweradd = 35
sprpriority = 2
facep2 = 1 

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 12
trigger3 =  animelem = 22
trigger4 =  animelem = 30
value = 173,3

[State 230, HitDef]
type = HitDef
trigger1 = timemod = 10,1
attr = S,SA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,5
sparkno = -1+0*(var(32):=8008)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=75),var(36):=-73
hitsound = s1,0
guardsound = s2,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
ground.type = Low
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -0.5
air.type = Low
air.hittime = 20
air.velocity = -0.5,-0.5
getpower = 15,15
givepower = 7,7
guard.hittime = 20
fall = 0
ID = 1300

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 1010, Anti-Projectile]
type = Helper
triggerall = !numhelper(1000)
trigger1 = AnimElemTime(2) = 0
ownpal = 0
name = "Anti-Projectile"
postype = p1
pos = 0,0
stateno = 1060
ID = 1000
ignorehitpause = 1 

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
ignorehitpause = 1
persistent = 0

[State 230, back to stance]
type = ChangeState
trigger1 = numtarget(1300)
trigger1 = animelemtime(16) >= 0 
trigger1 = movecontact
value = cond(var(14) = 250, 2510, cond(var(14) = 251,2511, 2512))

[State 230, back to stance]
type = ChangeState
trigger1 = numhelper(1000)
trigger1 = helper(1000),stateno = 10600 || helper(1000),var(1) = 1
value = cond(var(14) = 250, 2510, cond(var(14) = 251,2511, 2512))

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1500 - Stinger X]
type    = C
movetype= A
physics = N;C
ctrl = 0
anim = 1500
sprpriority = 1
juggle = 4 ;use Juggle
facep2 = 1
poweradd = 80


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7001
ID = 7002
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7000
ID = 7000
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0


[State 420, VS]
type = velset
trigger1 = animelemtime(2) = 0
;trigger1 = animelemtime(5) < 6
x = 10

[State 420, STS]
type = velmul
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0
x = 0.99
ignorehitpause = 1

[State 420, STS]
type = playerpush
trigger1 = animelemtime(3) < 0
value = 0

[State 420, STS]
type = statetypeset
trigger1 = animelemtime(3) = 0
physics = C
ignorehitpause = 1

[State 420, 2]
type = HitDef
trigger1 = var(33) = 0
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -2.5,-8.2;-2.5,0
Guard.Velocity = -4
air.velocity = -2.5,-8
Down.Velocity = -2.5,-8.2
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 0 
;fall.recovertime = 120
yaccel = 0.5
id = 1510
p2facing = 1

[State 420, 2]
type = HitDef
trigger1 = var(33) = 1
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
id = 555
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
Ground.Velocity = 1,-8
Guard.Velocity = -4
Air.Velocity = 1,-4
Down.Velocity = -27,-2
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 1
fall.recover = 1;time = 42
fall.recovertime = 120
yaccel = 0.5 
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[state -2]
type = playsnd
trigger1 = movehit = 1
trigger1 = var(33) = 0
value = 1500,0
channel = 0
persistent = 0
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3) = 0
trigger2 = movecontact
movetype = I
persistent = 0
ignorehitpause = 1
 

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(1510)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(1510),ishelper
trigger1 = target(1510),time=0 && target(1510),movetype=H
value = 5450
ID = 1510
ignorehitpause = 1
persistent = 0
  
[State 200, Damage Dampen]
type = varset 
trigger1 = movehit
var(33) = 1
ignorehitpause = 1
persistent = 0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 1510 - Stinger Y]
type    = C
movetype= A
physics = N;C
ctrl = 0
anim = 1510
sprpriority = 1
juggle = 4 ;use Juggle
facep2 = 1
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7001
ID = 7002
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7000
ID = 7000
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0

[State 420, VS]
type = velset
trigger1 = animelemtime(2) = 0
;trigger1 = animelemtime(5) < 6
x = 10

[State 420, STS]
type = velmul
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0
x = 0.99
ignorehitpause = 1

[State 420, STS]
type = playerpush
trigger1 = animelemtime(3) < 0
value = 0

[State 420, STS]
type = statetypeset
trigger1 = animelemtime(3) = 0
physics = C
ignorehitpause = 1

[State 420, 2]
type = HitDef
trigger1 = var(33) = 0
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
Ground.Velocity = 1,-10
Guard.Velocity = -4
Air.Velocity = 1,-6
Down.Velocity = 1,-10
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 0 
;fall.recovertime = 120
yaccel = 0.5
id = 1510
p2facing = 1

[State 420, 2]
type = HitDef
trigger1 = var(33) = 1
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
id = 555
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
Ground.Velocity = 1,-8
Guard.Velocity = -4
Air.Velocity = 1,-4
Down.Velocity = -27,-2
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 1
fall.recover = 1;time = 42
fall.recovertime = 120
yaccel = 0.5 
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[state -2]
type = playsnd
trigger1 = movehit = 1
trigger1 = var(33) = 0
value = 1500,0
channel = 0
persistent = 0
ignorehitpause = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3) = 0
trigger2 = movecontact
movetype = I
persistent = 0
ignorehitpause = 1
 

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(1510)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(1510),ishelper
trigger1 = target(1510),time=0 && target(1510),movetype=H
value = 5450
ID = 1510
ignorehitpause = 1
persistent = 0
  
[State 200, Damage Dampen]
type = varset 
trigger1 = movehit
var(33) = 1
ignorehitpause = 1
persistent = 0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 1520 - Stinger Z]
type    = C
movetype= A
physics = N;C
ctrl = 0
anim = 1510
sprpriority = 1
juggle = 4 ;use Juggle
facep2 = 1
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7001
ID = 7002
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0

[State Explod, 1]
type = Explod
trigger1 = animelem = 2
anim = 7000
ID = 7000
pos = -20,0
postype = p1
sprpriority = -1
ownpal = 1
scale = 0.315,0.315
bindtime = 0

[State 420, VS]
type = velset
trigger1 = animelemtime(2) = 0
;trigger1 = animelemtime(5) < 6
x = 10

[State 420, STS]
type = velmul
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0
x = 0.99
ignorehitpause = 1

[State 420, STS]
type = playerpush
trigger1 = animelemtime(3) < 0
value = 0

[State 420, STS]
type = statetypeset
trigger1 = animelemtime(3) = 0
physics = C
ignorehitpause = 1

[State 420, 2]
type = HitDef
trigger1 = var(18) = 0
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
Ground.Velocity = 2,-13
Guard.Velocity = -4
Air.Velocity = 2,-13 
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 0 
;fall.recovertime = 120
yaccel = 0.5
id = 1510
p2facing = 1

[State 420, 2]
type = HitDef
trigger1 = var(18) = 1
trigger1 = time = 0
attr = C, SA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8020)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound=s1,6
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
Ground.Velocity = 1,-13
Guard.Velocity = -4
Air.Velocity = 1,-8
Down.Velocity = -27,-2
air.type = High
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 60,60
givepower = 30,30
fall = 1
fall.recover = 0;time = 42
;fall.recovertime = 120
yaccel = 0.5
id = 555
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3) = 0
trigger2 = movecontact
movetype = I
persistent = 0
ignorehitpause = 1

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(1510)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(1510),ishelper
trigger1 = target(1510),time=0 && target(1510),movetype=H
value = 5450
ID = 1510
ignorehitpause = 1
persistent = 0
  
[State 200, Damage Dampen]
type = varadd
trigger1 = movehit
var(18) = 1
ignorehitpause = 1
persistent = 0

[State 430, 3]
type = ChangeState
trigger1 = var(18) = 1
trigger1 = AnimTime = 0
trigger1 = movehit
value = 1031 

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1 

[StateDef 1031 - Stinger Z Success]
type = S
movetype = A
physics = S
anim = 1031
ctrl = 0
velset = 0,0
facep2 = 1

[state 0]
type = playsnd
trigger1 = time = 0
value = 1530,0+random&1
channel = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1012)>0
id =  1012

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1072)>0
id =  1072

[State 0, Explod]
type = Explod
trigger1 = 1; time = 0
anim = 1036
ID = 1036
pos = 30,-111
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = command != "holdz"
trigger1 = time > 4
value = 1035
ctrl = 0

[StateDef 1035]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1033
ID = 1033
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 15
anim = 1041
ID = 1041
pos = 49,-140
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 10
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 15
value = 173,4
 
[State 1010, Effect]
type = helper
trigger1 = time = 0
trigger2 = time = 15
helpertype = normal
name = "Arrow"
ID = 1530
pos = 30,-110
postype = p1
stateno = 1530
ownpal = 1
facing = 1
 
[State 1000, changestate]
type = ChangeState
trigger1 = time = 28
value = 1032
ctrl = 0

[StateDef 1032]
type = S
movetype = A
physics = S
anim = 1032
ctrl = 0
velset = 0,0
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1041
ID = 1041
pos = 49,-140
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 10
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 173,4
 
[State 1010, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Arrow"
ID = 1530
pos = 30,-110
postype = p1
stateno = 1530
ownpal = 1
facing = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 

[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15




[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1011
ID = 1011
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1005
ctrl = 0

[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1022)>0
id =  1022

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1036)>0
id =  1036

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = vel x = 0
trigger1 = numexplod(1072)>0
id =  1072

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = vel x != 0
trigger1 = numexplod(1012)>0
id =  1012



[State 0, VelSet]
type = VelSet
trigger1 =  command = "holdfwd"
x = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =  command = "holdback"
x = -1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =  command != "holdfwd" && command != "holdback"
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1001
trigger1 =  vel x = 0
value = 1001

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1071
trigger1 =  vel x > 0
value = 1071

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1070
trigger1 =  vel x < 0
value = 1070






[State 0, Explod]
type = Explod
trigger1 =  vel x = 0
anim = 1012
ID = 1012
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 0, Explod]
type = null;Explod
trigger1 =  vel x != 0
anim = 1012
ID = 1072
pos = 0,-6
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = command = "holddown" && time > 7
value = 1021
ctrl = 0

[State 1000, changestate]
type = ChangeState
trigger1 = command = "holdup" && time > 7
value = 1031
ctrl = 0
 

[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 173,4

[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 1040
ID = 1040
pos = 90,-80
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 10
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1012)>0
id =  1012
 

[State 0, Projectile]
type = Projectile
trigger1 = time = 0
ProjID = 1010
projanim = 1010
projhitanim = 1015
projremanim = 1015
projcancelanim = 1015
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 15,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 50,-80
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 3,3
sparkno = s1013
sparkxy = 30,0
hitsound = s2,3
guardsound = s3,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -1,0
air.velocity = -2,-3
;afterimage.length = 10
;afterimage.palbright = 5,5,5
;afterimage.palcontrast = 55,55,55
;afterimage.paladd =  5,5,5
;afterimage.palmul = 1,1,1
;afterimage.framegap = 1
;afterimage.trans = add
;afterimage.time = 20
getpower = 30,30
givepower = 15,15

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

 
;flecha abaixado

[StateDef 1020 - Quick Shot X]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0
poweradd = 15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1023
ID = 1023
pos = 0,19
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1	
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1
 

[State 1000, changestate]
type = ChangeState
trigger1 = var(41) && AnimTime = 0
value = 1025
ctrl = 0

[State 1000, changestate]
type = ChangeState
trigger1 = !var(41) && AnimTime = 0
value = 1021
ctrl = 0

[StateDef 1021 - Quick Shot X Follow up]
type = S
movetype = A
physics = S
anim = 1021
ctrl = 0
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 0
trigger1 = prevStateNo = 1050 ;Jump land
trigger2 = prevStateNo = 1051
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 0
trigger1 = prevStateNo = 1050 ;Jump land
trigger2 = prevStateNo = 1051
value = 8, 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1012)>0
id =  1012

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1072)>0
id =  1072



[State 0, Explod]
type = Explod
trigger1 = 1; time = 0
anim = 1012
ID = 1022
pos = -10,22
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = command = "holdup" && time > 10
value = 1001
ctrl = 0
 

[StateDef 1022]
type = S
movetype = A
physics = S
anim = 1022
ctrl = 0
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1040
ID = 1040
pos = 75,-55
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 10
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 173,4
 

[State 0, Projectile]
type = Projectile
trigger1 = time = 0
ProjID = 1010
projanim = 1010
projhitanim = 1015
projremanim = 1015
projcancelanim = 1015
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 13,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 56,-56
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 3,3
sparkno = s1013
sparkxy = 30,0
hitsound = s2,3
guardsound = s3,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -1,0
air.velocity = -2,-3
getpower = 30,30
givepower = 15,15

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1025]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1023
ID = 1023
pos = 0,19
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 20
value = 173,4

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 20
anim = 1040
ID = 1040
pos = 75,-55
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 10
removeongethit = 1
 

[State 0, Projectile]
type = Projectile
trigger1 = time = 0
trigger2 = time = 20
ProjID = 1010
projanim = 1010
projhitanim = 1015
projremanim = 1015
projcancelanim = 1015
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 13,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 56,-56
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF       ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 3,3
sparkno = s1013
sparkxy = 30,0
hitsound = s2,3
guardsound = s3,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 25
ground.velocity = -1,0
air.velocity = -2,-4
getpower = 30,30
givepower = 15,15


[State 1000, changestate]
type = ChangeState
trigger1 = time = 38
value = 1022
ctrl = 0

;flecha cima

[StateDef 1030]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0
poweradd = 15
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1033
ID = 1033
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035
ctrl = 0

 
 

 
 

;fogo

 

[StateDef 1901 - Flame State]
type = A
movetype = H
physics = N
;anim = 1002
ctrl = 0
velset = -3,-5
poweradd = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 2,1
value = -3
kill = 0


[State 0, VelAdd]
type = VelAdd
trigger1 =1
y = 0.3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animexist(7697)
trigger1 = time = 0
value = 7697

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = !animexist(7697)
trigger1 = time = 0
value = 5002

[State 0, PalFX]
type = PalFX
;triggerall = !animexist(7696)
trigger1 = time = 0
time = 40
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,5
invertall = 0
color = 0

[State 1000, changestate]
type = changeState
triggerall = time > 1
trigger1 = pos y >0
value = 1902
ctrl = 0

[StateDef 1902]
type = A
movetype = H
physics = N
;anim = 1002
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1000, changestate]
type = SelfState
trigger1 = time = 0
value = 5100
ctrl = 1

 


 


[StateDef 1400 - Savage Blast]
type = A
movetype = A
physics = N
anim = 1400
ctrl = 0
velset = -10,-4
poweradd = 40

[State 0, VelSet]
type = Veladd
trigger1 = animelem = 8
y = 10

[State 200, swoosh]
type = PlaySnd
trigger1 =  time = 0
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 8
value = 173,1

[State 0, VelSet]
type = Veladd
trigger1 = animelem = 8
y = 0.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 3
anim = 1401
ID = 1401
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401

[StateDef 1401 - Savage Blast]
type = A
movetype = A
physics = N
anim = 14000
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = PosFreeze
trigger1 = 1

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 1
value = 173,1

[State 0, VelSet]
type = Veladd
trigger1 = animelem = 1
y = 0.2

[State 0, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "fbomba"
ID = 1410
stateno = 1410
pos = 30,-60
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale =1
size.yscale =1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



[StateDef 1410]
type = A
movetype = A
physics = N
anim = 1410
ctrl = 0
velset = 8,7
sprpriority = 8
juggle = 1
 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause = 1


[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 50,3
animtype = medium
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 7,7
guard.pausetime = 7,7
sparkno = -1
sparkxy = 5,0
hitsound = s2,1
guardsound = s3,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -3,0
air.velocity = -3,3
getpower = 60,60
givepower = 30,30
palfx.time = 10
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  movecontact
value = 1412
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >= 0
value = 1412
ctrl = 0

[StateDef 1411]
type = A
movetype = I
physics = N
anim = 1411
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8
juggle = 4

[State 200, swoosh]
type = PlaySnd
trigger1 =  time = 0
value = 173,8

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2bodydist x < 10  &&  p2bodydist x > -10
trigger2 = time > 200
value = 1412
ctrl = 0
;anim =
;ignorehitpause =
;persistent =






[StateDef 1412]
type = A
movetype = A
physics = N
anim = 1420
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8
juggle = 14

[State 200, swoosh]
type = PlaySnd
trigger1 =  time = 0
value = 171,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noshadow
ignorehitpause = =1


[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0 
[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 90,10
animtype = medium
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = 5,0
hitsound = s173,10
guardsound = s3,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  =  10
air.hittime  =  10
ground.velocity = 2,-5
guard.velocity = -5
air.velocity = 2,-5
getpower = 60,60
givepower = 30,30
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0
fall = 1
air.fall = 1


[State 0, ChangeState]
type = destroyself
trigger1 =  animtime = 0
 