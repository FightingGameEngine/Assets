[Statedef 3000 - Strength of Hercules]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3000
sprpriority = -1

[State -1,Effect]
Type = Explod
Trigger1 = time = 0
Anim = 2090
ID = 2090
PosType = P1
Pos = -20,-30
scale = 1,1
vel = -.5,-.2
OwnPal = 1
SprPriority = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999
facing = -1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 30
anim = -1
sound = S3000,0
pos = 0,-70
movetime = 0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[state helper]
type = Helper
trigger1 = time = 0
id = 6005
name = "bg"
pos = 0,0
postype = p1
stateno = 6005
helpertype = normal
supermovetime = 999999
ownpal = 1

[State explod]
type = explod
trigger1 = !time
anim = 7000
id = 3000
sprpriority = 1
postype = p1
pos =-10,-85
bindtime = 1
under = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999
scale = 0.5,0.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2)<0;time=0
value = SCA,AA,AP,AT 
ignorehitpause = 1 
;persistent = 

[State 800, IDDQD]
type = HitDef 
trigger1 = time = 0
;trigger1 = var(30) = 0; Throw Limited;!Movecontact && !Movereversed ;Just in case 
attr = S,HT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
SparkNo=-1+(0*(var(50):=0))
hitsound = -1
yaccel = 0.5
;ground.velocity = -1.5,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
p1stateno = 3001;+1*(var(10)=1)
fall = 1
fall.recover = 0
id = 3000
numhits = 0
guard.dist = 0

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3001 - Hit]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3001 
ctrl = 0
sprpriority = 1

[state 0]
type = varset
trigger1 = time = 0
fvar(10) = 0.5

[State 801]
type = Targetstate
trigger1 = time = 0
value = 117000

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 190,3
channel = 0
  
[State 801]
type = posset
trigger1 = Time = 0
y = 0

[State 801]
type = posadd
trigger1 = Time = 0
x = 10

[State 801]
type = Width
trigger1 = Time = 0	
edge = 80,0
value = 80,0
 
[State 801]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 68,-14

[State 801]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 13, < 0
pos = 19,-14

[State 801]
type = TargetBind
trigger1 = AnimElem = 13, >= 0
trigger1 = AnimElem = 30, < 0
pos = 49,-14

[State 0, Speed FX]
type = Helper
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(30) < 0
trigger1 = timemod = 5,1
helpertype = normal
name = "Speed FX"
ID = 1061
stateno = 1061
pos = 10+random%20,-55-random%45
ignorehitpause = 1
supermovetime = 999
postype = p1
sprpriority = 4
ontop = 1
Size.xscale = .4
size.yscale = .3

[State 0, Aspas]
type = Explod
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(30) < 0
trigger1 = timemod = 4,0
anim = 70017
ID = 70017
pos = 5+random%30,-50-random%45
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
ignorehitpause = 1
supermovetime = 999
scale = .4,.4
sprpriority = 5
vel = -6,0
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime 	= 999
ignorehitpause  = 1

[State 0]
type = Explod
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(30) < 0
trigger1 = timemod = 6,0
anim = 2007+random%3
ID = 2007
pos = 20+random%20,-50-random%80
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .7,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
supermove = 999
supermovetime = 999
pausemove = 999
pausemovetime = 999

[State 0]
type = Explod
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(30) < 0
trigger1 = timemod = 6,0
anim = 2007+random%3
ID = 2007
pos = 30+random%35,-40-random%40
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = .7,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
supermove = 999
supermovetime = 999
pausemove = 999
pausemovetime = 999
angle = -45+random%90

[State 0, Spark CVS]
type = Explod
trigger1 = animelemtime(13) >= 0
trigger1 = animelemtime(30) < 0
trigger1 = timemod = 3,0
anim = 411
ID = 7002
postype = P1
pos = 30+random%60,-50-random%70
facing = 1
sprpriority = 3
supermove = 1
removetime = -2
bindtime = 1
ownpal = 1
vel = -2,0
scale = .4,.4
removeongethit = 1
ontop = 1
supermovetime 	= 999
ignorehitpause  = 1

[State 901, Throw]
type = TargetState
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
value = 3306

[State 901, Throw]
type = TargetState
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(16) = 0
trigger3 = animelemtime(18) = 0
trigger4 = animelemtime(20) = 0
trigger5 = animelemtime(22) = 0
trigger6 = animelemtime(24) = 0
trigger7 = animelemtime(26) = 0
trigger8 = animelemtime(28) = 0
trigger9 = animelemtime(30) = 0
value = 3307

[State 2601, EnvShake]
type = PlaySnd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
trigger10 = animelemtime(14) = 0
trigger11 = animelemtime(16) = 0
trigger12 = animelemtime(18) = 0
trigger13 = animelemtime(20) = 0
trigger14 = animelemtime(22) = 0
trigger15 = animelemtime(24) = 0
trigger16 = animelemtime(26) = 0
trigger17 = animelemtime(28) = 0
trigger18 = animelemtime(30) = 0
value = 1,4

[State 2601, EnvShake]
type = PlaySnd 
trigger1 = animelemtime(31) = 0
value = 1,2

[State 2601, EnvShake]
type = HitAdd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
trigger10 = animelemtime(14) = 0
trigger11 = animelemtime(16) = 0
trigger12 = animelemtime(18) = 0
trigger13 = animelemtime(20) = 0
trigger14 = animelemtime(22) = 0
trigger15 = animelemtime(24) = 0
trigger16 = animelemtime(26) = 0
trigger17 = animelemtime(28) = 0
trigger18 = animelemtime(30) = 0
trigger19 = animelemtime(31) = 0
value = 1

[State 2601, EnvShake]
type = TargetLifeAdd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
trigger10 = animelemtime(14) = 0
trigger11 = animelemtime(16) = 0
trigger12 = animelemtime(18) = 0
trigger13 = animelemtime(20) = 0
trigger14 = animelemtime(22) = 0
trigger15 = animelemtime(24) = 0
trigger16 = animelemtime(26) = 0
trigger17 = animelemtime(28) = 0
trigger18 = animelemtime(30) = 0 
value = -10
kill = 0

[State 2601, EnvShake]
type = TargetLifeAdd
trigger1 = animelemtime(31) = 0 
value = -140
kill = 1

[State 2601, EnvShake]
type = EnvShake
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
trigger10 = animelemtime(14) = 0
trigger11 = animelemtime(16) = 0
trigger12 = animelemtime(18) = 0
trigger13 = animelemtime(20) = 0
trigger14 = animelemtime(22) = 0
trigger15 = animelemtime(24) = 0
trigger16 = animelemtime(26) = 0
trigger17 = animelemtime(28) = 0
trigger18 = animelemtime(30) = 0
time = 12
ampl = 3

[State 1000, Spark]
type = Helper
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(17) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(23) = 0
trigger7 = animelemtime(25) = 0
trigger8 = animelemtime(27) = 0
trigger9 = animelemtime(29) = 0
StateNo=6000
id = 6000
pos = ceil(80*const(size.xscale)),ceil(-76*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1
size.xscale = .3
pausemovetime = 99999
size.yscale = .3

[State HitSpark]
type = Helper
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(17) = 0
trigger3 = animelemtime(21) = 0
trigger4 = animelemtime(25) = 0
trigger5 = animelemtime(29) = 0 
PosType=P1
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
pausemovetime = 99999
pos = ceil(80*const(size.xscale)),ceil(-76*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1

[State 1000, Spark]
type = Helper
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(18) = 0
trigger3 = animelemtime(22) = 0
trigger4 = animelemtime(26) = 0
trigger5 = animelemtime(30) = 0 
StateNo=6000
id = 6000
pos = ceil(86*const(size.xscale)),ceil(-60*const(size.yscale))
random = 20,20
postype = P1
pausemovetime = 99999
ownpal = 1
ontop = 1
size.xscale = .3
size.yscale = .3

[State HitSpark]
type = Helper
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(18) = 0
trigger3 = animelemtime(22) = 0
trigger4 = animelemtime(26) = 0
trigger5 = animelemtime(30) = 0 
PosType=P1
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
pos = ceil(86*const(size.xscale)),ceil(-60*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
pausemovetime = 99999
ontop = 1

[State 1000, Spark]
type = Helper
trigger1 = animelemtime(15) = 0
trigger2 = animelemtime(19) = 0
trigger3 = animelemtime(23) = 0
trigger4 = animelemtime(27) = 0 
StateNo=6000
id = 6000
pos = ceil(86*const(size.xscale)),ceil(-48*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1
size.xscale = .3
size.yscale = .3
pausemovetime = 99999

[State HitSpark]
type = Helper
trigger1 = animelemtime(15) = 0
trigger2 = animelemtime(19) = 0
trigger3 = animelemtime(23) = 0
trigger4 = animelemtime(27) = 0 
PosType=P1
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
pos = ceil(86*const(size.xscale)),ceil(-48*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1
pausemovetime = 99999

[State 1000, Spark]
type = Helper
trigger1 = animelemtime(16) = 0
trigger2 = animelemtime(20) = 0
trigger3 = animelemtime(24) = 0
trigger4 = animelemtime(28) = 0 
StateNo=6000
id = 6000
pos = ceil(82*const(size.xscale)),ceil(-92*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1
size.xscale = .3
size.yscale = .3
pausemovetime = 99999

[State HitSpark]
type = Helper
trigger1 = animelemtime(16) = 0
trigger2 = animelemtime(20) = 0
trigger3 = animelemtime(24) = 0
trigger4 = animelemtime(28) = 0 
PosType=P1
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
pos = ceil(82*const(size.xscale)),ceil(-92*const(size.yscale))
random = 20,20
postype = P1
ownpal = 1
ontop = 1
pausemovetime = 99999

[State HitSpark]
Type=Helper
trigger1 = AnimElem = 31
HelperType=Normal
Name="HitSpark"
ID=6000
pos = ceil(82*const(size.xscale)),ceil(-92*const(size.yscale))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P1
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .5
size.yscale = .5

[State HitSpark]
Type=Helper
trigger1 = AnimElem = 31
HelperType=Normal
Name="HitSpark" 
pos = ceil(82*const(size.xscale)),ceil(-92*const(size.yscale))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P1
StateNo = 8620
size.xscale = .5
size.yscale = .5
ID = 8620
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State 2601, EnvShake]
type = EnvShake
trigger1 = AnimElem = 31
time = 30
ampl = 8

[state 0]
type = pause
trigger1 = AnimElem = 31
time = 20
movetime = 0

[State 0, Vacuum]
type = Explod
trigger1 = AnimElem = 31
anim = 1020
ID = 1020
postype = p1
pos = 130,-102
scale = .8,.8
sprpriority = 2
ontop = 0
ownpal = 1
pausemovetime = 99999

[State 801]
type = Targetstate
trigger1 = AnimElem = 31
value = 1005
 
[State 801 - Fail safe]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3200 - Power of Zeus]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3200
velset = 0,0
sprpriority = 0
 
[State -1,Effect]
Type = Explod
Trigger1 = time = 0
Anim = 2090
ID = 2090
PosType = P1
Pos = -20,-30
scale = 1,1
vel = -.5,-.2
OwnPal = 1
SprPriority = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999
facing = -1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 30
anim = -1
sound = S3000,0
pos = 0,-70
movetime = 0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[state helper]
type = Helper
trigger1 = time = 0
id = 6005
name = "bg"
pos = 0,0
postype = p1
stateno = 6005
helpertype = normal
supermovetime = 999999
ownpal = 1

[State explod]
type = explod
trigger1 = !time
anim = 7000
id = 3000
sprpriority = 1
postype = p1
pos =-10,-85
bindtime = 1
under = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999
scale = 0.5,0.5

[State 0, Rayazo]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "Rayazo"
ID = 1450
stateno = 1450
pos = 0,0
postype = p2
ownpal = 1
Size.Xscale = .5
Size.Yscale = .5
 
[State 106, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3100 - Atlas Tornado]
Type = U
Physics  = N
Ctrl = 0
Anim = 3100
velset = 0,0

[State 2000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = N

[state 0]
type = changeAnim
trigger1 = time = 0
trigger1 = statetype = A
value = 31000

[State 3000, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State -1,Effect]
Type = Explod
Trigger1 = time = 0
Anim = 2090
ID = 2090
PosType = P1
Pos = -20,-30
scale = 1,1
vel = -.5,-.2
OwnPal = 1
SprPriority = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999
facing = -1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 30
anim = -1
sound = S3000,0
pos = 0,-70
movetime = 0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[state helper]
type = Helper
trigger1 = time = 0
id = 6005
name = "bg"
pos = 0,0
postype = p1
stateno = 6005
helpertype = normal
supermovetime = 999999
ownpal = 1

[State explod]
type = explod
trigger1 = !time
anim = 7000
id = 3000
sprpriority = 1
postype = p1
pos =-10,-85
bindtime = 1
under = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999
scale = 0.5,0.5

[State 3000]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 3101

[StateDef 3101]
Type = A
Physics = N
Ctrl = 0
VelSet = -22,-3
Anim = 3101

[State 9999, 6]
type = PlaySnd
trigger1 = Time = 0
value = S15, 3

[State 9999, 7] ;Dust Spark
type = explod
trigger1 = Time = 0
anim = 30045 ; the anim of the dust
pos = 0,0 ; the position, maybe you need to adjust these
sprpriority = 4
postype = p1

[State 3001]
Type = NotHitBy
Trigger1 = 1
Value = SAC
Time = 1

[State 3001]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 3001]
Type = ScreenBound
Trigger1 = 1
Value = 0 

[State 3001]
Type = ChangeState
Trigger1 = BackEdgeDist <= -250
Value = 3102

[StateDef 3102]
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0,0
Anim = 3102

[State 3002]
Type = NotHitBy
Trigger1 = 1
Value = SAC 

[State 3002]
Type = PosSet
Trigger1 = Time = 0
Y = -120

[State 3002]
Type = PosSet
Trigger1 = Facing = 1
Trigger1 = Time <= 10
X = -220

[State 3002]
Type = PosSet
Trigger1 = Facing = -1
Trigger1 = Time <= 10
X = 220 

[State 3002]
Type = VelSet
Trigger1 = Time >= 11
X = 30

[State 3002]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 3002]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State Helper]
Type=Helper
Trigger1 = Time = 10
HelperType=Normal
Pos=0,0
OwnPal=1
PosType=P1
StateNo=7003
Persistent=0
IgnoreHitPause=1

[State 3002, HitDef]
Type = HitDef
Trigger1 = Time >= 11
Attr = A, HA
Damage = 225,50
id = 3100
AnimType = Hard
HitFlag = MAFD
GuardFlag = MA
Priority = 3, Hit
PauseTime = 20,20
SparkNo=-1+(0*(var(50):=-1))
SparkXY=(var(52):=-18),(var(53):=24)
Guard.SparkNo=-1+(0*(var(51):=1))
hitsound = s3,2
guardsound = S3,0 
Ground.Type = High
Air.Type = High
Ground.SlideTime = 15
Ground.HitTime = 20
Air.HitTime = 20
Ground.Velocity = -20,-2
Air.Velocity = -20,-2
AirGuard.Velocity = -7,-2
Fall = 1
Air.Fall = 1
Fall.Recover = 0
GetPower = 0
Persistent = 0
envshake.time = 20
envshake.freq = 90
envshake.ampl = 8
P2StateNo = 1904

[State -1]
Type = Helper
Trigger1 = movecontact = 1
StateNo = 6000
ID = 6000
PosType = P2
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
Ownpal = 1
SprPriority = 5
IgnoreHitPause = 1
Persistent = 0
size.xscale = .8
size.yscale = .8 

[State -1]
Type = Helper
Trigger1 = MoveHit
StateNo = 8610
ID = 8610
PosType = P2
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
Ownpal = 1
SprPriority = 6
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999
size.xscale = .5
size.yscale = .5
 
[State 3002]
Type = Explod
Trigger1 = Time >= 11
Anim = 3004
Postype = P1
Pos = 0,135
OwnPal = 1
Scale = 1,1
Trans = Add
SprPriority = 8
Persistent  = 2
IgnoreHitPause = 1

[State 3002]
Type = Explod
Trigger1 = Time >= 11
Anim = 3004
Postype = P1
Pos = 0,135
OwnPal = 1
Scale = 1,1
Trans = Sub
SprPriority = 7
Persistent  = 2
IgnoreHitPause = 1

[State 3002]
Type = PlaySnd
Trigger1 = Time = 11
Value = S100,13

[State 3002]
Type = AssertSpecial
Trigger1 = Time <= 10
Flag = Invisible
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9
ignorehitpause = 1
persistent = 0

[State 3002]
Type = ChangeState
trigger1 = frontedgedist <= -50
Trigger2 = Time >= 340
Value = 3103

[StateDef 3103]
Type = A
Physics = N
Ctrl = 0
VelSet = 0,0
Anim = 3006
facep2 = 1
 
[State 3003]
Type = PosSet
Trigger1 = Time <= 29
Y = -9999

[State 3003]
Type = PosSet
Trigger1 = Time = 30
Y = -300

[State 3003]
Type = PosAdd
Trigger1 = Time = 31
X = -20

[State 3003]
Type = VelAdd
Trigger1 = Time >= 30
Y = 0.5  

[State 3003]
Type = ScreenBound
Trigger1 = Time <= 30
Value = 0

[State 3003]
Type = ScreenBound
Trigger1 = Time >= 31
Value = 1
MoveCamera = 1,0

[State 3003]
Type = AssertSpecial
Trigger1 = Time <= 30
Flag = Invisible
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 3003]
Type = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value = 52
Ctrl = 0

[Statedef 3500 - The Power Of SHAZAM]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3500
sprpriority = 2
facep2 = 1 
poweradd = -3000

[state helper]
type = Helper
trigger1 = time = 0
id = 6005
name = "bg"
pos = 0,0
postype = p1
stateno = 6007
helpertype = normal
supermovetime = 999999
ownpal = 1

[State superpause]
type = superpause
trigger1 = time = 0
time = 30
movetime = 0
sound = s3002,1
anim = -1
darken = 0
p2defmul = 1

[State explod]
type = explod
trigger1 = time = 0
anim = 70001
sprpriority = -9999
postype = p1
pos = -10/2,-108/2
bindtime = 1
under = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999


[State explod]
type = explod
trigger1 = time = 0
anim = 70000
sprpriority = 9999
postype = p1
pos = -10/2,-108/2
bindtime = 1
under = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 9999, 6]
type = PlaySnd
trigger1 = AnimElem = 3
value = S15, 3

[State 9999, 7] ;Dust Spark
type = explod
trigger1 = AnimElem = 3
anim = 30045 ; the anim of the dust
pos = 0,0 ; the position, maybe you need to adjust these
sprpriority = 4
postype = p1

[State 1, 速度加算];
type = VelSet
trigger1 = AnimElem = 3
y = -18
IgnoreHitPause = 1


[State 1080, ステート変更]
type = ChangeState
trigger1 = Time >= 50
value = 3501
ctrl = 0
 
[Statedef 3501] 
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1081
sprpriority = 2
facep2 = 1 

[State 2601, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 3

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 3, 4
freqmul = 1
volume = -100

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time >= 20
trigger1 = time%10 = 0
value = 110, 3
freqmul = 0.7
volume = 0

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 3, 3
freqmul = 0.7
volume = -200

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 3, 8
freqmul = 1
volume = -200

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 200, 11
freqmul = 1
volume = -100

[State 1, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 100, 50
freqmul = 1
volume = -100



[State 1, 速度加算];
type = VelSet
trigger1 =1
y = 0.6
IgnoreHitPause = 1

[State 1, 速度加算];
type = VelSet
trigger1 = pos Y >= 0
y = 0
IgnoreHitPause = 1


[State 1, ];
type = posSet
trigger1 = time = 0
x = EnemyNear,pos X
y = -40
IgnoreHitPause = 1

[State -1];雷
Type = Explod
trigger1 = AnimElem = 1
Anim = 7210
Pos = 0,40
PosType = p1
Ownpal = 0
Scale = 1.5,1
SprPriority = 5
RemoveOnGetHit = 1
SuperMoveTime  = 9999
PauseMoveTime  = 9999
IgnoreHitPause = 1



[State -1];電気1
Type = Explod
trigger1 = time <= 60
trigger1 = time%3 = 0
Anim = 1250
Pos = 0,-40
PosType = p1
Ownpal = 0
removetime = 30
Scale = 0.4,1
SprPriority = 5
RemoveOnGetHit = 1
SuperMoveTime  = 9999
PauseMoveTime  = 9999
IgnoreHitPause = 1
random = 300,60
facing = 1
 
[State -1];電気3
Type = Explod
trigger1 = time <= 60
trigger1 = time%3 = 0
Anim = 1250
Pos = 0,-40
PosType = p1
Ownpal = 0
removetime = 30
Scale = 0.2,1
SprPriority = -5
RemoveOnGetHit = 1
SuperMoveTime  = 9999
PauseMoveTime  = 9999
IgnoreHitPause = 1
random = 100,200
facing = -1



[State -1];電気4
Type = Explod
trigger1 = time <= 60
trigger1 = time%3 = 0
Anim = 1250
Pos = 0,-40
PosType = p1
Ownpal = 0
removetime = 30
Scale = 0.1,0.5
SprPriority = -5
RemoveOnGetHit = 1
SuperMoveTime  = 9999
PauseMoveTime  = 9999
IgnoreHitPause = 1
random = 100,200
facing = 1

[State -1, エフェクト画像];石礫 連続1
type = Explod
trigger1 = time%9 = 0
anim = 14000
pos = 0, 0
postype = p1
scale = 1,1
bindtime = 1
sprpriority = 9
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,-6
random = 150,100
facing = 1
vfacing = 1

[State -1, エフェクト画像];石礫 連続2
type = Explod
trigger1 = time%3 = 0
anim = 14000
pos = 0, 0
postype = p1
scale = 0.3,0.3
bindtime = 1
sprpriority = -1
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,-9
random = 200,100
facing = -1
vfacing = 1


[State -1, エフェクト画像];石礫1
type = Explod
trigger1 = time = 0
anim = 14000
pos = 0, 50
postype = p1
scale = 1,1
bindtime = 1
sprpriority = -1
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = 1
vfacing = 1

 

[State -1, エフェクト画像];波動2
type = Explod
trigger1 = time%10 = 0
trigger1 = time <= 20
anim = 1001
pos = 0, 50
postype = p1
scale = 0.5,0.5
bindtime = 1
sprpriority = 9
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = 1
vfacing = 1

[State -1, エフェクト画像];波動3
type = Explod
trigger1 = time%10 = 0
trigger1 = time <= 20
anim = 1001
pos = 0, 50
postype = p1
scale = 0.5,0.5
bindtime = 1
sprpriority = 9
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
vfacing = 1

[State -1, エフェクト画像];2波動1
type = Explod
trigger1 = time = 0
anim = 7200
pos = 0, 50
postype = p1
scale = 1,1
bindtime = 1
sprpriority = 9
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
vfacing = 1
 

[State -1, エフェクト画像];衝撃波
type = Explod
trigger1 = time = 0
anim = 14520
pos = 0, 50
postype = p1
scale = 1,0.4
bindtime = 1
sprpriority = -2
ownpal = 0
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = 1
vfacing = 1


[State -1];攻撃 
type = Projectile
trigger1 = time = 0
projID = 805
attr = S, HA
projanim =805
projremovetime = 5
projpriority = 16
projsprpriority = 0
projedgebound = 400
ignorehitpause = 1
pasusemovetime = 0, 0
Projhits = 1
projremove = 0
hitflag = MAFD
postype = p1
offset = 0, 0
velocity = 25,0
damage = 300,100
animtype = hard
guardflag = MA
pausetime = 0, 4
sparkno = -1
sparkxy = 0,0
hitsound = s110,6
guardsound = s3,0
ground.type = High
ground.slidetime = 32
ground.hittime  = 32
ground.velocity = 2,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 2,-1
air.hittime = 14
getpower = 0,0
fall = 1
air.fall = 1
fall.recover = 0


[State -1];攻撃 
type = Projectile
trigger1 = time >= 10
trigger1 = time%8 = 0
projID = 805
attr = S, HA
projanim =805
projremovetime = 5
projpriority = 16
projsprpriority = 0
projedgebound = 400
ignorehitpause = 1
pasusemovetime = 0, 0
Projhits = 1
projremove = 0
hitflag = MAFD
postype = p1
offset = 0, 0
velocity = 25,0
damage = 10,5
animtype = hard
guardflag = MA
pausetime = 0, 4
sparkno = -1
sparkxy = 0,0
hitsound = s110,6
guardsound = s3,0
ground.type = High
ground.slidetime = 32
ground.hittime  = 32
ground.velocity = -1,-2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1,-2
air.hittime = 14
getpower = 0,0
fall = 1
air.fall = 1
fall.recover = 0
p2stateno = 6020

[State 1081, ステート変更]
type = ChangeState
trigger1 = Time >= 70
value = 3502
ctrl = 0

[Statedef 3502]
type = S
ctrl = 0
anim = 3502
velset = 0,0
movetype = I
physics = S
sprpriority = 2 

[state 0]
type = playerPush
trigger1 = 1
value = 0

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------
; Lightning
[Statedef 4205]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 7012
sprpriority = 4

[State 230, 1]
type = PlaySnd
trigger1 = Time = 1
value = 3040, 0

[State 4205, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 4205, strengthvar]
type = varset
trigger1 = !time && !prevstateno
var(10) = 6

[State 4205, movehitvar]
type = varset
triggerall = !var(3)
trigger1 = movecontact && numtarget
trigger1 = !(target,ishelper)
trigger2 = numhelper(4205)
trigger2 = helper(4205),var(3)
var(3) = 1
ignorehitpause = 1

[State 4205, Shadows]
type = Afterimage
trigger1 = !time && !prevstateno
time = 9999
length = 10
PalBright   =   1,  1,  1
palcontrast = 20,10,50
PalAdd = 0, 0, 0
PalMul = .60,.60,.60
Timegap = 1
FrameGap = 1
Trans = add

[State 4205, end]
type = destroyself
trigger1 = !animtime

;---------------------------------------------------------------------------
; Shockwaves
[Statedef 4206]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 5

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7 || AnimElem = 10|| AnimElem = 13 || AnimElem = 16
attr = S,SA
damage = floor(16 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 1,1
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = S6002
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
guard.velocity = -5
airguard.velocity = -5
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -20
guard.velocity = -5
air.velocity = -20,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0
fall = 1
fall.recover = 0
palfx.time = 20
Palfx.add = 243,192,7                               
palfx.mul = 220,152,0
palfx.sinadd = 80, 80, 80, 5  

[State 4206, hitoverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA,AA,AP,AT
stateno = 7121
ignorehitpause = 1

[State 4206,hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA,NP,SP,HP
ignorehitpause = 1

[State 4206, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 4206, strengthvar]
type = varset
trigger1 = !time && !prevstateno
var(10) = 6

[State 4206, anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 7121

[State 4206, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target,ishelper)
var(3) = 1
ignorehitpause = 1

[State 4206, movehitvar2]
type = varset
trigger1 = !time && prevstateno
var(4) = animelemno(0)
ignorehitpause = 1

[State 4206, Shadows]
type = Afterimage
trigger1 = !time && !prevstateno
time = 9999
length = 10
PalBright   =   1,  1,  1
palcontrast = 20,20,20
PalAdd = 0, 0, 0
PalMul = .60,.60,.60
Timegap = 1
FrameGap = 1
Trans = add

[State 4206, end]
type = destroyself
trigger1 = !animtime

;---------------------------------------------------------------------------
;
[Statedef 4210]
physics = N
anim = 9741

[State 4210, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4210, dust]
type = explod
trigger1 = !time
anim = 4210
ID = 4210
sprpriority = -2
postype = p1
removetime = 25

[State 4210, fade]
type = palfx
trigger1 = !time
mul = 384,384,384
sinadd = -255,-255,-255,100
time = 25

[State 4210, shrink]
type = modifyexplod
trigger1 = 1
ID = 4210
scale = .5+(.1*time),.1+(.02*time)

[State 4210, end]
type = destroyself
trigger1 = time>=26

;---------------------------------------------------------------------------
;
[Statedef 4211]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 841
sprpriority = 4


[State 4211, Rotate]
type = angleset
trigger1 = !time
value = 0

[State 4211, Scale]
type = angledraw
trigger1 = time<8
scale = (.0625*time), (.0625*time)

[State 4211, Scale]
type = angledraw
trigger1 = time>=8
scale = .5+(.03125*(time-8)), .5-(.03125*(time-8))

[State 4211, Trans]
type = trans
trigger1 = time<8
trans = addalpha
alpha = 256, 256

[State 4211, Trans]
type = trans
trigger1 = time>=8
trans = addalpha
alpha = 256-32*(time-8), 256

[State 4211, Sound]
type = playsnd
trigger1 = time = 2
value = 7,6

[State 4211, Lightning]
type = explod
trigger1= !time || time = 4
anim = 842
ID = 1
sprpriority = 2
postype = p1
facing = ifelse(random<500,-1,1)
scale = .5,.5

[State 4211, Safety]
type = removeexplod
trigger1 = time>=16

[State 4211, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 4211, strengthvar]
type = varset
trigger1 = !time && !prevstateno
var(10) = 6

[State 4211, movehitvar]
type = varset
triggerall = !var(3)
trigger1 = movecontact && numtarget
trigger1 = !(target,ishelper)
trigger2 = numhelper(4205)
trigger2 = helper(4205),var(3)
var(3) = 1
ignorehitpause = 1

[State 4211, Shadows]
type = Afterimage
trigger1 = !time && !prevstateno
time = 9999
length = 10
PalBright   =   1,  1,  1
palcontrast = 20,10,50
PalAdd = 0, 0, 0
PalMul = .60,.60,.60
Timegap = 1
FrameGap = 1
Trans = add

[State 4211, Hit]
type = hitdef
trigger1 = animelem = 1
attr = S,HA
damage = ceil(40*root,fvar(12)),5
animtype = Up
getpower = 0
givepower = 35
guardflag = M
hitflag = MAFD
priority = 4,Hit
pausetime = 0,12
sparkno = -1
guard.sparkno = S8100
guardsound = s2,0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(frontedgedist<backedgedist, 6, -6), -3
ground.cornerpush.veloff = 0
air.velocity = ifelse(frontedgedist<backedgedist, 6, -6), -3
down.velocity = ifelse(frontedgedist<backedgedist, 6, -6), -3
guard.velocity = -10.52
fall = 1
fall.recover = 0
palfx.time = 32
Palfx.add = 243,192,7                               
palfx.mul = 220,152,0
palfx.sinadd = 80, 80, 80, 5  
forcestand = 1

[State 4211, Shock Particles]
type = helper
trigger1 = !numhelper(7180)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target,hitshakeover)
trigger1 = var(40):=(target,ID)
helpertype = normal
stateno = 7180
ID = 7180
name = "Shock Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 4211, End]
type = destroyself
trigger1 = time>=16

;-----------------------------------------------------------------------
[Statedef 3120]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 7719
juggle = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
postype = p2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 1
x = 0
y = -30
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0
y = -28
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 0
y = -26
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
x = 0
y = -20
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
x = 0
y = -12
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = 0
y = -1
[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
x = -1
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
x = -2
y = 1
[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 36
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 44
y = 10

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
trigger2 = time = 3
trigger3 = time = 5
trigger4 = time = 7
trigger5 = time = 9
time = 4
freq = 100
ampl = 5

[State 0, Pause]
type = Pause
trigger1 = time = 1
trigger2 = time = 3
trigger3 = time = 5
trigger4 = time = 7
trigger5 = time = 9
time = 2
movetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 5
trigger3 = time = 9
value = 8000,2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
trigger2 = time = 7
value = 8000,2

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 1
trigger2 = time = 3
trigger3 = time = 5
trigger4 = time = 7
trigger5 = time = 9
value = 1

[State 0,explod]
type = Explod
trigger1 = time = 2
anim = 8223
sprpriority = 6
ownpal = 1
postype = p2
pos = 10,-40
removetime = -2
bindtime = 1
scale = 1,1

[State 0, ChangeState]
type = ChangeState
trigger1 = pos Y >= 0 && vel Y > 0
value = 52
ctrl =1
;anim =
;ignorehitpause =
;persistent =

;==============================================================================
[Statedef 3150]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
juggle = 0

[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time = 31
trigger2 = time = 39
trigger3 = time = 50
trigger4 = time = 61
trigger5 = time = 70
trigger6 = time = 82
trigger7 = time = 88
trigger8 = time = 100
trigger9 = time = 110
trigger10 = time = 119
trigger11 = time = 131
trigger12 = time = 138
value = -20
kill = 0
[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time = 147
trigger2 = time = 149
trigger3 = time = 151
trigger4 = time = 153
value = -20
kill = 0
[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time = 155
value = -20
kill = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5000

[State 0, VelSet]
type = velset
trigger1 = pos Y < -60
y = 1
[State 0, VelSet]
type = velset
trigger1 = pos Y > -60
y = -1
[State 0, VelSet]
type = velset
trigger1 = pos Y < -90
y = 4
[State 0, VelSet]
type = velset
trigger1 = pos Y > -30
y = -4

[State 0, VelSet]
type = velset
trigger1 = pos Y = -60
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 156
value = 5030
ctrl = 0
  

 

;-------------------------------------------------------------------------------
;Shazam Grab Bolt Finisher
[statedef 3312]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3312
velset = 0,0
sprpriority = -2

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -5
y = -5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
physics = A

;-------------------------------------------------------------------------------
;Shazam Grab Bolt Finisher hurt
[statedef 3313]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3313

[State 0, ChangeState]
type = SelfState
trigger1 = Time > 60
value = 5040
ctrl = 0

;------------------------------------------------------------------
;Shazam Grab Bolt Finisher hurt 2
[statedef 3314]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3314

[State 0, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5100

 

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1
 
