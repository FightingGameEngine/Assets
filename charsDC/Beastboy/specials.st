;=========================================== Animal Changes =============================================
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
velset = 0,0
anim = 1000
ctrl = 0

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 13
value = S605,0
channel = -1

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S556,0
channel = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 4
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 46
 

[State 900, 1]
type = veladd
trigger1 = animelem = 7
x = 12


[state 900, 1a]
type = veladd
trigger1 = animelem = 9
x = 0




[State 1103, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 9,9
sparkno = S9992
sparkxy = 0,-60
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 7
envshake.ampl = 4
fall =1

[State 1103, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
velset = 0,0
anim = 1000
ctrl = 0

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 13
value = S605,0
channel = -1

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S556,0
channel = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 4
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 46

[State 900, 1]
type = veladd
trigger1 = animelem = 7
x = 16


[state 900, 1a]
type = veladd
trigger1 = animelem = 9
x = 0




[State 1103, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 9,9
sparkno = S9992
sparkxy = 0, -60
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
envshake.time = 7
envshake.ampl = 4
air.hittime = 12
fall =1

[State 1103, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
velset = 0,0
anim = 1000
ctrl = 0

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 13
value = S605,0
channel = -1

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S556,0
channel = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 4
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 46

[State 900, 1]
type = veladd
trigger1 = animelem = 7
x = 20


[state 900, 1a]
type = veladd
trigger1 = animelem = 9
x = 0




[State 1103, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 9,9
sparkno = S9992
sparkxy = 0, -60
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 7
envshake.ampl = 4
fall =1

[State 1103, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Effect Beams=================================
[Statedef 1920]
type = A
movetype = A
physics = N
ctrl = 0
anim = 901
sprpriority = 5
velset = 0,0

[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = parent, stateno != 9000
trigger1 = time = 0
value = 3,1

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9500
time = 6
pos = 60, -80

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9501
time = 6
pos = -12,-135

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9001
time = 6
pos = 0,-75

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = 0+(random%360)

[State 0]
type = trans
trigger1 = 1
trans = add
;alpha =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime  = 0

;Effect Halo=================================
[Statedef 1921]
type = A
movetype = A
physics = N
ctrl = 0
anim = 901
sprpriority = 5
velset = 0,0

[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9500
time = 6
pos = 60, -80

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9501
time = 6
pos = -5,-125

[State 0, BindToParent]
type = BindToRoot
trigger1 = root, stateno = 9000
time = -1
pos = 0,0

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 9001
time = 6
pos = 0,-75

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .1+(.1*time),.1+(.1*time)

[State 0, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0+(random%360)
;ignorehitpause = 0
;persistent = 1

[State 0]
type = trans
trigger1 = 1
trans = add
;alpha =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime  = 0

;Pteradon

; Hyper Combo Finish
[Statedef 9030]
type = A
movetype = I
physics = N
anim = 9741

[State 9030, 1a]
type = ParentVarSet
trigger1 = time = 0
v = 12
value = 1

[State 9030, 2]
type = AssertSpecial
trigger1 = NumExplod(894) > 0
flag = NoBG
flag2 = NoFG
flag3 = NoMusic

[State 9030, 3]
type = PlaySnd
trigger1 = time = 0
value = 3, 2
volume = 250

[State 9030, 4]
type = PlaySnd
trigger1 = time = 10
value = 313, 6

[State 9030, 5]
type = VarAdd
trigger1 = NumExplod(894) = 0
v = 0
value = 1

[State 9030, 6]
type = ParentVarSet
trigger1 = var(0) >= 1
v = 12
value = 2

;Super Jump opponent locator
[StateDef 910]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 910

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
trigger1 = TeamSide = 2
value = 910

[State 910, DestroySelf]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist y >= 0
trigger2 = P2Dist y <= 50
trigger3 = Pos y = 0

[State 910, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; superjump opponent locator
[State -2, P2 locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -150) && (P2Dist Y > 50)
ID = 910
pos = Floor(P2Dist X), 20
postype = p1
stateno = 910
facing = -1

;Runaway Horse
[StateDef 3700]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3111
sprpriority = 3


[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3701


[State 3600, transform]
type = PlaySnd
trigger1 = AnimElem = 4
value = 605,0
channel = 1

[State 3705, playsnd1]
type = PlaySnd
trigger1 = animelem = 9
value = 235,0
channel = -1

[State 3615, playsnd1]
type = PlaySnd
trigger1 = animelem = 13
value = 236,0
channel = 1



[State 3600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 13
x = 8

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 0

[State 3700, changestate]
type = ChangeState
trigger1 = animTime = 0
value = 3705

; custom gethit state
[StateDef 3701]
type = S
movetype = A
physics = N
anim = 3122
velset = -4,0
ctrl = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -20
kill = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 3600, transform]
type = PlaySnd
trigger1 = AnimElem = 4
value = 605,0
channel = 1

[State 3701, changestate]
type = ChangeState
trigger1 =  time = 35
value = 0
ctrl = 1

; first hit
[StateDef 3705]
type    = S
movetype= A
physics = N
anim = 3113
velset = 8,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 3705, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
anim = 918
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0



[State 3705, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0


[State 3705, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3615, hitdef]
type = HitDef
trigger1 = animelem=1
trigger2=animelem= 3
attr = S,SA,HA
hitflag = MAFD
guardflag = MA
priority = 3,Hit
damage = 30
pausetime = 3,17
sparkno = S9992
sparkxy = 20,-35
animtype = hard
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
hitsound = 5,1
guardsound = 6,0
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -5,-5


[State 3705, changestate]
type = ChangeState
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 3715


[StateDef 3715]
type    = S
movetype= A
physics = N
anim = 3113
velset = -8,0

[State 3615, Turn]
type = Turn
trigger1 = Time = 0

[State 3615, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 90

[State 3615, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3615, hitdef]
type = HitDef
trigger1 = animelem=1
trigger2=animelem= 3
attr = S,SA,HA
hitflag = MAFD
guardflag = MA
priority = 4,Hit
damage = 30,2
pausetime = 3,17
sparkno = S9992
sparkxy = 20,-35
animtype = Heavy
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
hitsound = 5,1
guardsound = 6,0
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -5,-5

[State 3715, changestate]
type = ChangeState
trigger1 = Time > 0 && IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 3720


; -- end
[StateDef 3720]
type    = A
physics = A
anim = 3122

[State 3720, Turn]
type = Turn
trigger1 = Time = 0

[State 3720, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9
y = -9
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 0;3610

[Statedef 1111]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1102
poweradd = 200
sprpriority = 2

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 61
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 918
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 2]
type = HitDef
trigger1=animelem=9
trigger2=animelem=10
trigger3=animelem=11
animtype=light
attr = S, SA
damage = 40
animtype = low
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 1
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -71
hitsound = 5, 0
guardsound = 6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -3,-11
airguard.velocity = -1.1,3
air.type = low
air.velocity = -3,-5
air.hittime = 12

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=12
time = 10
freq = 60

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 1122
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 23]
type = VarSet
trigger1 = var(40) != 0
trigger1 = MoveHit
v = 20
value = 1

[State 1102, 24]
type = StateTypeSet
trigger1 = Time = 4;16
statetype = A
movetype = A
physics = A

[State 1102, 25]
type = HitBy
trigger1 = 1
value = SCA, SA,HA,NP,SP,HP

[State 1102, 26]
type = VelSet
trigger1 = Time = 4;16
x = 2.7
y = -3.1

[State 1102, 27]
type = VelSet
trigger1 = Time = 11;18
x = 1.1
y = -4.1

[State 1102, 28]
type = VelSet
trigger1 = Time = 14;21
x = 0.3
y = -5.1

[State 1102, 29]
type = VelSet
trigger1 = Time = 16;23
x = 0.95
y = -3.1

[State 1102, 30]
type = VelSet
trigger1 = Time = 19;26
x = 0.3
y = -3.1

[State 1102, 31]
type = VelSet
trigger1 = Time = 23;30
x = .5
y = -1.3

[State 1102, 32]
type = VelSet
trigger1 = Time = 26;33
x = .02
y = -0.3

[State 1102, 33]
type = VelSet
trigger1 = Time = 30;37
x = 0
y = -.4

[State 1102, 34]
type = PlaySnd
trigger1 = animelem = 1;10
value = 557, 0

[State 1102, 35]
type = PlaySnd
trigger1 = animelem = 8;10
value = 556, 0
channel = 0

[State 1102, 35]
type = PlaySnd
trigger1 = animelem = 12;10
value = 1, 15
channel = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=14
time = 20
freq = 160
;ampl = -4
;phase = 90
;ignorehitpause =
;persistent =


[State 1111, 36]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52

;Ape uppercut X


[Statedef 1109]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1102
poweradd = 200
sprpriority = 2

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 61
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 918
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 2]
type = HitDef
trigger1 = animelem = 7
trigger2=animelem=8
trigger3=animelem=9
trigger4=animelem=10
trigger5=animelem=11
attr = S, SA
damage = 40
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 1
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -71
hitsound = 5, 4
guardsound = 6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -8,-16
airguard.velocity = -1.9,5
air.type = High
air.velocity = -7,-15
air.hittime = 12

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=12
time = 10
freq = 60

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 1122
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1


[State 1102, 25]
type = HitBy
trigger1 = 1
value = SCA, SA,HA,NP,SP,HP


[State 1102, 34]
type = PlaySnd
trigger1 = animelem = 1;10
value = 557, 0

[State 1102, 35]
type = PlaySnd
trigger1 = animelem = 8;10
value = 556, 0
channel = 0

[State 1102, 35]
type = PlaySnd
trigger1 = animelem = 13;10
value = 1, 15
channel = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=14
time = 20
freq = 160
;ampl = -4
;phase = 90
;ignorehitpause =
;persistent =


[State 1109, 36]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger2=time=90
value = 52


; Ape Uppercut- Z
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1102
poweradd = 200
sprpriority = 2

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 13
value = S605,0
channel = -1

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1103

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 61
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 918
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 100, 6
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 6
sparkno = S9992
sparkxy = -15, -71
hitsound = 5, 4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -8,-16
airguard.velocity = -1.9,5
air.type = High
air.velocity = -7,-15
air.hittime = 12
envshake.time = 12
envshake.ampl = 10
fall = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 9;15
persistent = 0
anim = 1122
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1


[State 1102, 34]
type = PlaySnd
trigger1 = animelem = 1;10
value = 557, 0

[State 1102, 35]
type = PlaySnd
trigger1 = animelem = 8;10
value = 556, 0
channel = 0

[State 1102, 36]
type = ChangeState
trigger1= animtime = 0
value = 0
ctrl = 1

[Statedef 1103]
type = S
movetype = A
physics = N
velset = -4,0
ctrl = 0
anim = 1103
sprpriority = 2


[State 1102, 36]
type = ChangeState
trigger1= animtime = 0
value = 0
ctrl = 1


;Dino counter
[StateDef 1198]
type = S
movetype = I
physics = S
anim = 1198
ctrl = 0
velset = 0,0

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 604,7

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 0,1


[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA;,NP,SP,HP;,NT,ST,HT
stateno = 1200

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 0,0


[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-96
p1stateno = 1210
p2stateno = 1220
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80

[State 1201, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;counter
[Statedef 1210]
type = S
movetype = A
physics = S
anim = 17229
sprpriority = 2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 90
guardflag = MA
pausetime = 11,11
hitsound = 5,4
guardsound = 6,0
sparkno = 3
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7,-3
guard.velocity = -5
air.velocity = -7,-3
fall = 1
air.fall = 1


[State 182, hypersnd]
type = PlaySnd
trigger1 = animelem = 12
value = 605, 0
channel = 1


[State 801, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1230
ctrl = 0

;p2 state
[Statedef 1220]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1






[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 500,0


[State 815, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 45
value = 605,0
channel = 1

[State 0, SelfState]
type = SelfState
trigger1 = time = 21
value = 0
ctrl = 1
;ignorehitpause = 0
;persistent = 1

[Statedef 1230]
type = S
movetype = A
physics = S
anim = 1230
sprpriority = 2


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;Falcon
[StateDef 9908]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 9808
poweradd = 20


[State 0, VelAdd]
type = VelAdd
trigger1 = animelem=17
x = .9
y = .4
;ignorehitpause =
;persistent =

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=2
value = 605,0
channel = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1,11
volume=-100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=50
value = 0,16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =12 
trigger2 = animelem =18 
trigger3 = animelem =24 
trigger4 = animelem =39
value = 0,0

[State 9808, 1]
type = HitDef
trigger1=time =0
attr = S, NA
damage = 45,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
;pausetime = 10, 10
sparkno = s9992
sparkxy = -10, -26
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
fall = 1

[State 0, Explod]
type = Explod
trigger1 = animelem=22
anim =  6701
ID =  6701
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
;pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =



[State 9908, end]
type = ChangeState
trigger1 = time = 140
value = 9988
ctrl = 1

[Statedef 9988]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 9809

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=4
value = 605,0
channel = 1

[State 1005,4]
type = VelSet
trigger1 = time = 1
trigger2 = Pos Y >= 0
x = 0


[State 9988, 4]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1


[StateDef 9998]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 9808
poweradd = 20

[State 0, VelAdd]
type = VelAdd
trigger1 =  animelem=1
x = 1
y = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1,11
volume=-100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=50
value = 0,16

[State 9808, 1]
type = HitDef
trigger1=time=0
attr = S, NA
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 3
sparkxy = -10, -26
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

[State 0, Explod]
type = Explod
trigger1 = animelem=22
anim =  6701
ID =  6701
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =



[State 9998, end]
type = ChangeState
trigger1 = time = 140
value = 99099
ctrl = 1

[Statedef 99099]
type    = A
physics = S
ctrl = 0
anim = 9809

[State 1005,4]
type = VelSet
trigger1 = time = 1
trigger2 = Pos Y >= 0
x = 0

[State 99099, 4]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1


[StateDef 9808]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 9808
poweradd = 20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1,11
volume=-100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=50
value = 0,16

[State 9808, 1]
type = HitDef
trigger1=animelem=12
trigger2=animelem=13
trigger3=animelem=14
trigger4=animelem=15
trigger5=animelem=16
trigger6=animelem=17
trigger7=animelem=18
trigger8=animelem=19
trigger9=animelem=20
trigger10=animelem=21
attr = S, NA
damage = 70
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -26
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

[State 0, Explod]
type = Explod
trigger1 = animelem=22
anim =  6701
ID =  6701
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =



[State 9808, end]
type = ChangeState
trigger1 = time = 140
value = 9888
ctrl = 1

[Statedef 9888]
type    = S
physics = S
ctrl = 0
anim = 9809

[State 9888, 4]
type = ChangeState
trigger1 = time = 30
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = AnimTime = 0


