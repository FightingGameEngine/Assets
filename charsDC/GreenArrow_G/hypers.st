[StateDef 4000 - Target Practice]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 4000
velset = 0,0
faceP2 = 1
 

[state 0]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 0]
type = playsnd 
trigger1 = time = 0
value = 4000,1
channel = 0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial 
trigger1 = time = 0
flag = noFG
ignorehitpause = 1

[State 3000, Helper]
type = Helper
trigger1 = time = 0
stateno = 8500
supermovetime = 99999999
pos = 0,-75
ownpal = 1
id = 8500

[State 3000, SuperPause]
type = SuperPause 
trigger1 = time = 0
Time = 60
anim =-1;s3012
pos = 40,-75
sound = S10,0
poweradd = -3000
darken = 0
movetime = 10

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 1300, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 111,1

[State 1300, grunt]
type = PlaySnd
trigger1 = AnimElem = 11
value = 8,0

[state 0]
type = nothitBy
trigger1 = animelemtime(11) >= 0
value = SCA

[State 420, 2]
type = HitDef 
trigger1 = time = 0
attr = S, HA
damage = 0,10
priority  = 4,Hit 
guardflag = MA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-130
hitsound = s1, 8;s1,8;sifelse(hitcount, -1, 1), 8
guardsound=s2,0 
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -1.5,-12;-2.5,0
guard.velocity = -10
airguard.velocity = -8,-1.5;-2.9,-1.6 
air.velocity = -1.5,-12
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0
givepower = 30,30
fall = 0 
;fall.recovertime = 120
yaccel = 0.5
id = 4000
p2facing = 1
kill = 0 

[state 0]
type = targetlifeadd
trigger1 = numtarget(4000)
trigger1 = movehit = 1
value = -60
absolute = 1

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(4000)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(4000),ishelper
trigger1 = target(4000),time=0 && target(4000),movetype=H
value = 5450
ID = 4000
ignorehitpause = 1
persistent = 0

; end DCvM stuff

[state 0]
type = velset
trigger1 = animelemtime(11) >= 0
y = -10
 
[state 0]
type = velmul
trigger1 = animelemtime(11) >= 0
y = 2

[State 3110, back to stance]
type = ChangeState
trigger1= screenpos y <= -320
value = 4001
ctrl = 0

[StateDef 4001]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 1998
velset = 0,0
faceP2 = 1

[state 0]
type = playsnd
trigger1 = var(13) 
value = 4000,0
channel = 0
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "YOU HAVE FAILED THIS CITY"
ID = 4050
stateno = 4050
pos = 0,0
postype = p1   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[state 0]
type = posset
trigger1 = numhelper(4050)
x = helper(4050), pos x

[state 0]
type = screenbound
trigger1 = 1
value = 0 

[State 3110, back to stance]
type = ChangeState
trigger1= numhelper(4050)
trigger1 = helper(4050),stateno = 40510
value = 4002

[StateDef 4002]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 4002
velset = 0,0
faceP2 = 1
  

[state 0]
type = posset
trigger1 = var(13)
trigger1 = time = 0
x = enemy,pos x

[State 4100, vel]
type = velset
trigger1 = time = 0
y = 20

[State 4100, grav]
type = gravity
trigger1 = 1

[state 0]
type = screenbound
trigger1 = 1
value = 1

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, HA 
damage = 0, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag =
hitflag = MAFD
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 10,10
sparkno = -1+0*(var(32):=8008)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=0),var(36):=0
hitsound = s1,0
guardsound = s2,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.slidetime = 10
guard.hittime = 10
ground.velocity = 0
air.velocity = 0,0
getpower = 0
givepower = 50
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
p2stateno = 3081 
Envshake.Time=20
Envshake.Ampl=20
id = 4000


[state 0]
type = targetlifeadd
trigger1 = numtarget(4000)
trigger1 = movehit = 1
value = -100
absolute = 1

[State ,Hiver Laurant]
Type=Explod
trigger1 = movehit=1
Anim=7351
ID=7300
Pos=Ceil(0*Const(Size.XScale)),Ceil(0*Const(Size.YScale))
Scale=0.4,0.4
PosType=Left
OwnPal=1
BindTime=-1
PauseMoveTime=99999
SuperMoveTime=99999
IgnoreHitPause=1
ReMoveOnGetHit=1
Ontop=1

[state 0]
type = Helper 
trigger1 = movehit=1
name = "ZOOOOOOM"
id = 19980
pos = 0,0
postype = p1
stateno = 19980
helpertype = normal
sprpriority = -5
ownpal = 1
persistent = 0
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999 

[State ,Hiver Laurant]
Type=EnvColor
Trigger1=MoveHit=1
Value=255,255,255
Time=1
Under=0
IgnoreHitPause=1
Persistent=0

[State ,Hiver Laurant]
Type=PlaySnd
Trigger1=MoveHit=1
Value=S2,5
Volume=255
VolumeScale=100
IgnoreHitPause=1
Persistent=0

[state 0]
type = pause
trigger1 = movehit = 1
movetime = 0
time = 40

[state 0]
type = posset
trigger1 = movehit = 1
y = 0

[State 3110, back to stance]
type = ChangeState
trigger1= movehit
value = 4003

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >= 0
value = 4005
ctrl = 0

[StateDef 4003]
type = A
movetype = I
physics = A
ctrl = 1

[state 0]
type = playSnd
trigger1 = time = 0
value = 4000,2
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -5
y = -7
 
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 4003

[StateDef 4005 - Miss]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 4005
;poweradd = 15
sprpriority = 2 
velset = 0,0

[state 0]
type = posset
trigger1 = 1
y = 0

[State -3, Landing Dust]
type = Explod 
trigger1 = Time = 0
anim = 7088
ID = 7104
pos = 3,2
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ownpal = 1
removeongethit = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 0
value = 8, 1



[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 3300 - Queen's Gambit]
type    = C
movetype= A
physics = N;C
ctrl = 0
anim = 3300
sprpriority = 1
juggle = 4 ;use Juggle
facep2 = 1
poweradd = 0
 

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial 
trigger1 = time = 0
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause 
trigger1 = time = 0
Time = 60
anim =-1;s3012
pos = 45,-50
sound = S10,0
poweradd = -1000
darken = 0
movetime = 0

[State 3000, Helper]
type = Helper
trigger1 = time = 0
stateno = 8500
supermovetime = 99999999
pos = 0,-50
ownpal = 1
id = 8500

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
 

; end DCvM stuff

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
type = statetypeset
trigger1 = animelemtime(3) = 0
physics = C
ignorehitpause = 1

[State 420, 2]
type = HitDef 
trigger1 = time = 0
attr = C, HA
damage = 60,10
priority  = 4,Hit
animtype  = hard
guardflag = LA
hitflag = MAFD
pausetime = 10,10
sparkno = -1 * (var(32):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-10
hitsound = s1, 8;s1,8;sifelse(hitcount, -1, 1), 8
guardsound=s2,0
ground.type = Low;trip
ground.slidetime = 26
ground.hittime  = 26
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -1.5,-6.2;-2.5,0
guard.velocity = -10
airguard.velocity = -8,-1.5;-2.9,-1.6
air.type = High
air.velocity = -1.5,-6
air.hittime = 26
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0
givepower = 30,30
fall = 0 
;fall.recovertime = 120
yaccel = 0.5
id = 3300
p2facing = 1
kill = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3) = 0
trigger2 = movecontact
movetype = I
persistent = 0
ignorehitpause = 1

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(3300)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(3300),ishelper
trigger1 = target(3300),time=0 && target(3300),movetype=H
value = 10250	
ID = 3300
ignorehitpause = 1
persistent = 0
  
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9
ignorehitpause = 1
persistent = 0

[State 430, 3]
type = ChangeState  
trigger1 = AnimTime = 0
trigger1 = movehit
value = 3301
  
[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[StateDef 3301]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3301
;poweradd = 55
sprpriority = 2 
facep2 = 1

[state 0]
type = nothitBy
trigger1 = 1
value = SCA

[state 0]
type = playerPush
trigger1 = 1
value = 0

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
value = 0,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 174,4

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = S, HA
damage = 80, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag =
hitflag = MAFD
priority = 4, Hit 
pausetime=18,18
sparkno = -1 * (var(32):=8070)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-74
hitsound = s1, 8;s1,8;sifelse(hitcount, -1, 1), 8
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 21
ground.hittime = 21
air.hittime = 21
guard.ctrltime = 17
ground.velocity = -(((p2dist X)-65)/25),-15
air.velocity = -(((p2dist X)-65)/25),-15
yaccel=.47
guard.velocity = -8.5 
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0
givepower = 40
p2facing = 1
fall = 1
air.fall = 1 
id = 3301
kill = 0

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(3301)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(3301),ishelper
trigger1 = target(3301),time=0 && target(3301),movetype=H
value = 10612
ID = 3301
persistent = 0
ignorehitpause = 1 
 
[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5) >= 0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1
 

[State 420, 1]
type = ChangeState
trigger1 = movehit 
trigger1 = AnimTime = 0
value = 3302

[StateDef 3302]
type = S
movetype = A
physics = S
anim = 3302
ctrl = 0
velset = 0,0
faceP2 = 1 

[state 0]
type = varset
trigger1 = time = 0
var(51) = 200

[state 0]
type = playerPush
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3300,1
channel = 0

[state 0]
type = screenBound
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 1101
ID = 1101
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
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 18
anim = 1043
ID = 1043
pos = 2,-163
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
scale = 0.8,0.8
sprpriority = 10
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 18
value = 173,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 18
helpertype = normal ;player
name = "flechacima"
ID = 1110
stateno = 1110
pos = 0,-120
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 3150 - Light It Up]
type = A
movetype = A
physics = N
anim = 3100
ctrl = 0
poweradd = 0
velset = 0,0
juggle = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = s3150,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 173,15

[State 0, Explod]
type = Explod
trigger1 =  animelem = 2
anim = 3101
ID = 3101
pos = 5,-23
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 8
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 3102
ID = 3102
pos = 45,-50
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 70
supermovetime = 9999
pausemovetime = 9999
scale = 0.3,0.3
sprpriority = 10
ownpal = 1
removeongethit = 1
 
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial 
trigger1 = time = 0
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause 
trigger1 = time = 0
Time = 60
anim =-1;s3012
pos = 45,-50
sound = S10,0
poweradd = -1000
darken = 0
movetime = 20

[State 3000, Helper]
type = Helper
trigger1 = time = 0
stateno = 8500
supermovetime = 99999999
pos = 45,-50
ownpal = 1
id = 8500

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
 

; end DCvM stuff


[State 1000, changestate]
type = ChangeState
trigger1 =  AnimTime = 0
value = 3151
ctrl = 0

[StateDef 3151]
type = A
movetype = A
physics = A
anim = 1052
ctrl = 0
juggle = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.3

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3101)>0
id =  3101

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3102)>0
id =  3102

[State 200, swoosh]
type = PlaySnd
trigger1 =  time = 0
value = 173,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "flechbomba"
ID = 3155
stateno = 3155
pos = 30,-60
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale =1
size.yscale =1




[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3152
ctrl = 0

[StateDef 3152]
type = A
movetype = A
physics = A
anim = 48
ctrl = 0

[State 1000, changestate]
type = null
trigger1 = AnimTime = 0
value = 3152
ctrl = 0

[StateDef 3000 - Longbow Hunter]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0
faceP2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = s3000,0+random&1
channel = 0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial 
trigger1 = time = 0
flag = noFG
ignorehitpause = 1

[State 3000, Helper]
type = Helper
trigger1 = time = 0
stateno = 8500
supermovetime = 99999999
pos = 40,-75
ownpal = 1
id = 8500

[State 3000, SuperPause]
type = SuperPause 
trigger1 = time = 0
Time = 60
anim =-1;s3012
pos = 40,-75
sound = S10,0
poweradd = -1000
darken = 0

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper 
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


; end DCvM stuff

[State 0, Explod]
type = Explod
trigger1 =  animelem = 6
anim = 1040
ID = 1040
pos = 60,-85
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.75,0.75
sprpriority = 10
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 173,15

[State 200, swoosh]
type = PlaySnd
trigger1 =  animelem = 6
value = 173,2
 

[State 1010, Effect]
type = helper
trigger1 = animelem = 6
helpertype = normal
name = "Arrow"
ID = 3000
pos = 60,-80
postype = p1
stateno = 3001
ownpal = 1
facing = 1
 
[State 1010, Effect]
type = helper
trigger1 = animelem = 6
helpertype = normal
name = "Arrow"
ID = 3001
pos = 50,-80
postype = p1
stateno = 3001
ownpal = 1
facing = 1
 
[State 1010, Effect]
type = helper
trigger1 = animelem = 6
helpertype = normal
name = "Arrow"
ID = 3002
pos = 30,-80
postype = p1
stateno = 3001
ownpal = 1
facing = 1
 
[State 3110, back to stance]
type = ChangeState
trigger1 = time = 60
value = 3010
ctrl = 0

[StateDef 3010]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3001
velset = 0,0


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

 
 