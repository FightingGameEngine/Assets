; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;   3: timer on bgpalfx that continue through state transitions
;   4: timer for super armor
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0
velset = 0,0
time = 40

;[State 1000, Velset 1]
;type = Velset
;trigger1 = time = 0
;x = -20

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 30
;value = 1000
;elem = 1
;ignorehitpause =
;persistent =


;[State 1000, Posset]
;type = Posset
;trigger1 = abs(pos x) > 160
;x = -180 * facing

[State 1000, var initialize]
type = VarSet
var(4) = 1
trigger1 = time = 0

[State 1000, VelSet]
type = VelSet
trigger1 = time = 0
x = 11

[State 1000, Changestate]
type = ChangeState
trigger1 = 1
value = 1002



[Statedef 1002]
type = U
movetype = A

[State 1002, hitoverride]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = stateno
trigger1 = 1

[State 1002, gethit colorize]
type = PalFX
add = 255,128,0
trigger1 = time = 0
trigger1 = var(4) > 1
time = 5

; [State 1002, Explod]
; type = Explod
; trigger1 =  animelem = 2
; anim =  10030
; ID = 10030
; pos = 0,-80
; postype = p1  ;p2,front,back,left,right
; facing = 1
; vfacing = 1
; bindtime = 999
; vel = 0,0
; accel = 0,0
; random = 0,0
; removetime = 999
; supermove
; pausemove
; scale = 1.5,1.5
; sprpriority = 3
; ontop = 0
; shadow = 0,0,0
; ownpal = 1
; removeongethit = 1
;ignorehitpause =
;persistent =


[State 1002, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6,8
volume = 255

[State 1002, HitDef]
type = HitDef
trigger1 = animelem = 2 || animelem = 5 || animelem = 7 
attr = S, SA
damage = 40,10
guardflag = MAFD
pausetime = 9,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = hard
ground.slidetime = 5
ground.hittime  = 6
ground.velocity = -15
guard.velocity = 2
air.velocity = 14
fall = 0
priority = 1,hit

[State 1002, HitDef]
type = HitDef
trigger1 = animelem = 10
attr = S, SA
damage = 40,10
guardflag = MAFD
pausetime = 9,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = hard
ground.slidetime = 5
ground.hittime  = 6
ground.velocity = -15
guard.velocity = 2
air.velocity = 14
fall = 1
priority = 1,hit


[State 1002, ScreenBound]
type = ScreenBound
trigger1 = 1 ;time = 15
value = var(4) >= 45
movecamera = 0,0
;ignorehitpause =
;persistent =





[State 1002, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1002, Explod]
type = Explod
trigger1 = var(4) = 1
anim =  918
ID = 918
pos = 8,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

; [State 1000, Explod]
; type = Explod
; trigger1 = time = 2 || time = 6 || time = 8 || time = 10
; anim =  21000
; ID = 21000
; pos = 2,0
; postype = p1  ;p2,front,back,left,right
; facing = 1
; bindtime = 1
; removetime = 51
; scale = 1,1
; sprpriority = 0
; ownpal = 1
; removeongethit = 0
; ;ignorehitpause =
; ;persistent =

[State 1002, EnvShake]
type = EnvShake
trigger1 = var(4) = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1002, EnvShake]
type = EnvShake
trigger1 = var(4) = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =





[State 1002, Explod]
type = Explod
trigger1 = var(4) = 1 || var(4) = 2 || var(4) = 4 || var(4) = 6  || var(4) = 8 || var(4) = 9
anim =  23392
ID = 223392
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 24
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1002, take damage]
type = LifeAdd
trigger1 = time = 0
var(4) > 1
value = -gethitvar(damage)
kill = 0



[State 1002, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
id =  10030
;ignorehitpause =
;persistent =


[State 1002, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1002, var increment]
type = VarAdd
var(4) = 1
trigger1 = 1

;------------------------------
; Special 1 - Hard
[StateDef 1001]
type = S
movetype = A
physics = N
anim = 1114
ctrl = 0
velset = 0,0
time = 40

[State 1001, var initialize]
type = VarSet
var(4) = 1
trigger1 = time = 0

[State 1001, Velset 1]
type = Velset
trigger1 = time = 0
x = -20

[State 1001, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 1000
;elem = 1
;ignorehitpause =
;persistent =

[State 1001, Posset]
type = Posset
trigger1 = abs(pos x) > 160
x = -180 * facing

[State 1001, VelSet]
type = VelSet
trigger1 = time = 30
x = 40

[State 1001, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1001, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6,8
volume = 255

[State 1001, Changestate]
type = ChangeState
value = 1003
trigger1 = time = 30

[State 1003, ScreenBound]
type = ScreenBound
trigger1 = 1 ;time = 15
value = var(4) >= 45
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 1001, Varset]
type = VarSet
var(4) = 0
trigger1 = time = 0

[State 1001, Varadd]
type = VarAdd
var(4) = 1
trigger1 = 1



[Statedef 1003]
type = U
movetype = A

[State 1003, hitoverride]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = stateno
trigger1 = 1

[State 1003, gethit colorize]
type = PalFX
add = 255,128,0
trigger1 = time = 0
trigger1 = var(4) > 31
time = 5

[State 1003, HitDef]
type = null;hitdef
trigger1 = var(4) = 0 || var(4) = 2 || var(4) = 3 || var(4) = 4
attr = S, SA
damage = 40,10
guardflag = MAFD
pausetime = 9,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-30
animtype = Heavy
ground.type = hard
ground.slidetime = 5
ground.hittime  = 6
ground.velocity = -25
guard.velocity = 2
air.velocity = 14
fall = 0
envshake.time = 12
envshake.freq = 127
envshake.ampl = -6

[State 1003, HitDef]
type = HitDef
trigger1 = 1
ID = 1003
nochainID = 1003
attr = S, SA
damage = 40,10
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-30
animtype = back
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -40
guard.velocity = 2
air.velocity = 14
fall = 1
envshake.time = 12
envshake.freq = 127
envshake.ampl = -6

[State 1003, ScreenBound]
type = ScreenBound
trigger1 = 1 ;time = 15
value = var(4) >= 45
movecamera = 0,0
;ignorehitpause =
;persistent =





[State 1003, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1003, Explod]
type = Explod
trigger1 = var(4) = 1
anim =  918
ID = 918
pos = 8,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1003, Explod]
type = Explod
trigger1 = var(4) = 32 || var(4) = 36 || var(4) = 38 || var(4) = 40
anim =  21000
ID = 21000
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 51
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1003, EnvShake]
type = EnvShake
trigger1 = var(4) = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =





[State 1003, Explod]
type = Explod
trigger1 = var(4) = 31 || var(4) = 32 || var(4) = 34 || var(4) = 36  || var(4) = 38 || var(4) = 39
anim =  23392
ID = 223392
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 24
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1003, changestate]
type = Changeanim
trigger1 = var(4) = 51
trigger2 = p2dist x < 0
value = 1021

[State 1003, decelerate]
type = veladd
trigger1 = anim = 1021
x = -2

[State 1003, Explod]
type = Explod
trigger1 =  var(4) = 30
anim =  10030
ID = 10030
pos = 0,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1003, RemoveExplod]
type = RemoveExplod
trigger1 = vel x <= 0
trigger1 = anim = 1021
id = 10030
;ignorehitpause =
;persistent =


[State 1003, changestate]
type = changestate
trigger1 = vel x <= 0
trigger1 = anim = 1021
value = 0
ctrl = 1

[State 1003, take damage]
type = LifeAdd
trigger1 = time = 0
var(4) > 1
value = -gethitvar(damage)
kill = 0

[State 1003, increment timer]
type = varadd
var(4) = 1
trigger1 = 1

;----------------------------------------
; Special 2
[StateDef 1011]
type = S
movetype = A
physics = N
anim = 1011
ctrl = 0
velset = 0,0
time = 40

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6,8
volume = 255

[State 1000, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 20

[State 1011, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 95,10
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,-3
fall = 1

[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 6 || time = 12 || time = 15
anim =  21000
ID = 21000
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 51
scale = .85,.85
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =



[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1000, Explod]
type = Explod
trigger1 = time = 1
anim =  918
ID = 918
pos = 8,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =


[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 2 || time = 4 || time = 6  || time = 8 || time =9
anim =  23392
ID = 223392
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 24
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =





[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1
;--------------------------------------------

; Special 3
[StateDef 1012]
type = A
movetype = A
physics = N
anim = 1117
ctrl = 0
velset = 0,0
time = 40

[State 191, 1]
type = PlaySnd
trigger1 = time = 0
value = 6,8
volume = 255

[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 15
y = 8

[State 1011, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 95,10
guardflag = MAFD
pausetime = 3,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,15
fall = 1



[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >= 0
value = 1118
ctrl = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 1
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4

;----------------------------
[StateDef 1118]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
velset = 0,0
time = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S6,7
volume = 255



[State 0, Explod]
type = Explod
trigger1 = time = 3
anim = 100010
ID =  100010
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 19
vel = 0,0
accel = 0,0
random = 0,0
removetime = 19
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 100011
ID =  100011
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 50
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =



[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1020, changestate]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1


;--------------------------\
;special 4
[StateDef 1013]
type = S
movetype = A
physics = S
anim = 1013
ctrl = 0
velset = 0,0
time = 40

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 100011
ID =  100011
pos = 0,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =



[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 6,6
volume = 255

[State 1011, HitDef]
type = HitDef
trigger1 = animelem = 4
hitflag = M
attr = S, SA
damage = 40,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = hard
ground.type = low
ground.slidetime = 10
ground.hittime  = 500
ground.velocity = 0, 0.1
air.velocity = -2,-3

[State 1011, HitDef]
type = HitDef
trigger1 = animelem = 5
hitflag = M
attr = S, SA
damage = 95,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = hard
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0, 0.1
air.velocity = -2,-3
fall = 1

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 61
ID = 61
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 40
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

;[State 0, Helper]
;type = Helper
;trigger1 = time = 17
;helpertype = normal ;player
;name =  "ground"
;ID = 23392
;stateno = 23392
;pos = 0,0
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 1

;[State 0, Helper]
;type = Helper
;trigger1 = time = 17
;helpertype = normal ;player
;name =  "ground"
;ID = 23392
;stateno = 23393
;pos = 0,0
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 1

[State 1011, EnvShake]
type = EnvShake
trigger1 = time = 21
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;---------------------------------
;special 4
[StateDef 1015]
type = S
movetype = A
physics = S
anim = 1013
ctrl = 0
velset = 0,0
time = 40

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 100011
ID =  100011
pos = 0,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =



[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 6,6
volume = 255

[State 1011, HitDef]
type = HitDef
trigger1 = animelem = 4
hitflag = M
attr = S, SA
damage = 65,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = hard
ground.type = low
ground.slidetime = 10
ground.hittime  = 500
ground.velocity = 0, 0.1
air.velocity = -2,-3

[State 1011, HitDef]
type = HitDef
trigger1 = animelem = 5
hitflag = M
attr = S, SA
damage = 65,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = hard
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0, 0.1
air.velocity = -2,-3
fall = 1

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 61
ID = 61
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 40
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

;[State 0, Helper]
type = helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "hardpound"
ID = 1124
stateno =  1124
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove


[State 1011, EnvShake]
type = EnvShake
trigger1 = time = 21
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 100010
ID = 100010
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 18
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;--------------------------
[Statedef 1124]
type = S
movetype = A
anim = 1124
time = 30
sprpriority = 3

[State 23392, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 65,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 1
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,0
fall = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  15
;ignorehitpause =
;persistent =




;------------------------------
;special 4 - Hard
[StateDef 1014]
type = S
movetype = A
physics = S
anim = 1013
ctrl = 0
velset = 0,0
time = 40


[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 6,6
volume = 255

[State 1011, HitDef]
type = HitDef
trigger1 = animelem = 5
trigger1 = p2bodydist x < 7
hitflag = M
attr = S, SA
damage = 15,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = hard
ground.type = low
ground.slidetime = 10
ground.hittime  = 500
ground.velocity = 0, 0.1
air.velocity = -2,-3

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 61
ID = 61
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 40
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 100010
ID = 100010
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 18
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = time = 17
helpertype = normal ;player
name =  "ground"
ID = 23392
stateno = 23392
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 17
helpertype = normal ;player
name =  "ground"
ID = 23392
stateno = 23393
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1011, EnvShake]
type = EnvShake
trigger1 = time = 21
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 100011
ID =  100011
pos = 0,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;--------------------------
[statedef 23392]
type = S
movetype = A
anim = 23392
time = 30
sprpriority = 3

[State 191, 1]
type = PlaySnd
trigger1 = time = 1
value = 6,7
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 4
y = 0
;ignorehitpause =
;persistent =

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 1

[State 0, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP
time = 1

[State 21240]
type = HitOverride
trigger1 = 1
stateno = 1126
attr = SCA,AP
slot = 0
time = -1



[State 23392, HitDef]
type = HitDef
trigger1 = p2movetype!=h
attr = S, SA
damage = 95,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 1
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,0
fall = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 23392, Commit Suicide]
type = DestroySelf
trigger1 = time = 80

;------------------------

[statedef 23393]
type = S
movetype = A
anim = 23392
time = 60
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = -4
y = 0
;ignorehitpause =
;persistent =

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 1

[State 0, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP
time = 1

[State 21240]
type = HitOverride
trigger1 = 1
stateno = 1126
attr = SCA,AP
slot = 0
time = -1

[State 23392, HitDef]
type = HitDef
trigger1 =  p2movetype!=h
attr = S, SA
damage = 95,10
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,0
fall = 1

[State 23392, Commit Suicide]
type = DestroySelf
trigger1 = time = 80
;-------------------------------------
[statedef 1114]
type = S
movetype = A
physics = S
anim = 1114
ctrl = 0
velset = 0,0
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 6,3
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -17
;ignorehitpause =
;persistent =

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 6
ProjID =  190
projanim =  190
projscale = 2,2
projremove = 0
damage = 40,10
projremovetime = 74
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 15,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S, SA
damage = 120,10
guardflag = MAFD
pausetime = 10,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,0
fall = 1
p2stateno = 7696

[State 1114, flash from lightning]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 30
time = 3

;[State 1114, darken background]
;type = bgpalfx
;add = -100, -100, -100
;trigger1 = time = 33
;time = 44

;Uses var(3)
[State 1114, set bgdarkness timer]
type = varset
var(3) = 33
trigger1 = time = 34

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 6,5
channel = -1


;ignorehitpause =
;persistent =


[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1
;-------------------------------------
[statedef 1400]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 0,0
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 6,3
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 25
;ignorehitpause =
;persistent =

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 8
ProjID =  190
projanim =  190
projscale = 2,2
projremove = 0
damage = 40,10
projremovetime = 74
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 120,0
postype = back         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S, SA
damage = 120,10
guardflag = MAFD
pausetime = 10,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,0
fall = 1
p2stateno = 7696

[State 1114, flash from lightning]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 30
time = 3

;[State 1114, darken background]
;type = bgpalfx
;add = -100, -100, -100
;trigger1 = time = 33
;time = 44

;Uses var(3)
[State 1114, set bgdarkness timer]
type = varset
var(3) = 33
trigger1 = time = 34

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 6,5
channel = -1


;ignorehitpause =
;persistent =


[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1
;----------------------------------------------------------
; Air Dash Forward
[Statedef 1340]
type    = A
physics = N
anim = 100
ctrl = !(PrevStateNo = [600,650])

[State 1340]
type = VelSet
Trigger1 = time >= 0
x = 12
y = 0


[State 117, 5]
type = VarSet
trigger1 = Time = 0
var(6) = 1

[State 1345]
type = ChangeState
trigger1 = Time = 17
value = 50

;-------------------------------------
 [Statedef 1509]
type = A
movetype = A
physics = N
ctrl = 0
velset=0,0
anim = 1120


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 20
value = 1500
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




;-----------------------
; Rising air throw
[Statedef 1500]
type = S
movetype = A
physics = A
ctrl = 0
anim = 1121


[State 1500, velset]
type = velset
trigger1 = time = 0
y = const(velocity.jump.y)
x = 1

[State 1500, hitdef]
type = hitdef
attr = A, NT
trigger1 = 1
p1stateno = 1501
p2stateno = 1502
fall =1
fall.recovertime = 10
fall.recover=1
fall.damage = 100
hitflag = MAF

[State 1500, changeanim (on miss)]
type = changeanim
value = 44
trigger1 = vel y > -2
;-----------------------
;p1 State on successful hit
[Statedef 1501]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1219
sprpriority = 0

[State 1501, targetbind]
type = targetbind
time = 1
trigger1 = time < 53
pos = 1,-82


[state 1501, gravity]
type = gravity
trigger1 = time > 88

[State 1501, end velset]
type = velset
x = 0
y = 0
trigger1 = pos y >= 0
trigger2 = time = 0

[State 1501, end posset]
type = posset
y = 0
trigger1 = pos y >= 0

[State 1501, end changestate]
type = changestate
value = 0
ctrl = 1
trigger1 = pos y >= 0

[State 1501, explod]
type = explod
trigger1 =numexplod(100011)=0
trigger1 = target,pos Y >=0
trigger1 = time > 53
id=100011
anim = 100011
postype = p2
pos = 0,0;ceil(- target,pos x), 0


[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =



;-----------------------
;p2 state on successful hit
[Statedef 1502]
type = A
movetype = H
physics = N
ctrl = 0

[State 1502, velset]
type = velset
x = 0
y = 0
trigger1 = time = 0

[state 1502, changeanim2]
type = changeanim2
value = 1220
trigger1 = time = 0

[State 1502, sprpriority positive]
type = sprpriority
value = 5
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 8

[State 1502, sprpriority negative]
type = sprpriority
value = -5
trigger1 = animelem = 3
trigger1 = animelem = 6
trigger1 = animelem = 9

[State 1502, turn]
type = turn
trigger1 = time = 0
trigger2 = animelem = 11

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =time = 55
statetype = A       ;S,A,C,L
movetype = H        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 1502, velset]
type = velset
trigger1 = time = 55
y = 0
x = -8



[State 0, SelfState]
type = SelfState
trigger1 = time = 56
value = 5050
;anim =
;ctrl =
;ignorehitpause = 0
;persistent = 1





[State 1502, hitground selfstate]
type = selfstate
value = 5100
trigger1 = pos y >= 0
trigger1 = time > 55

;-----------------------
; Shocked/electrocuted - custom P2 state
[Statedef 7696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-----------------------
; Burned - custom P2 state
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 5]
type = VelSet
trigger1 = Time = 0
x = -3
y = -4

[State 7697, changeAnim]
type = ChangeAnim
trigger1 = AnimExist(7697) && Anim != 7697
value = 7697

;Generated by Fighter Factory PalFX Editor
[State 7697, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 25
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 7697, gravity]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7697, 6]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;--------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 0
anim = 1127
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,8
volume = 255
channel = -1



[State 0, Explod]
type = Explod
trigger1 = TIME = 1
anim = 918
ID = 918
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
;supermove = 0
;pausemove = 0


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 13
y = 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 =  MoveContact
value = 801
;anim =
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 15
x = 2
y = 0
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 13
value = 1115
;elem = 1
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
;affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
damage = 0,0
pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.slidetime = 0
;guard.slidetime = 0
ground.hittime = 0
;guard.hittime = 0
air.hittime = 20
;guard.ctrltime = 0
;guard.dist = 320
;yaccel = 0.5
ground.velocity = 0,0
;guard.velocity = 0
air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
sprpriority = 1
;p1facing =
p1getp2facing = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 0
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
;air.fall = 0



[State 0, ChangeState]
type = ChangeState
trigger1 = time = 20
value = 0
ctrl = 1






;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTT        THROWS    TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

; CNS difficulty: medium-advanced
; Description: Throws are not difficult to make, although then can be
;     tedious at times. Throw attempt states have a HitDef of a
;     special format. The key parameters in a throw are p1stateno
;     and p2stateno. If the HitDef successfully connects, then
;     the attacker will change to the state number specified by
;     p1stateno, and the opponent will be change to the state
;     number assigned to p2stateno. The special thing about p2stateno
;     is that the opponent will be temporarily brought into the
;     attacker's state file. In this case, no matter who the
;     opponent is, he will be taken to state 820 of this file (kfm.cns)
;     and remain here until the end of the throw (look at his debug
;     information when he is being thrown; the text changes to yellow
;     to mean that he is in another player's state file).
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 4002
ctrl = 1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 7     ;Draw p1's sprite in front of p2
hitsound = S1, 1                    ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 4001       ;On success, KFM changes to state 810
p2stateno = 4002       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.damage = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 4001]
type    = S
movetype= A
physics = N
anim = 4001
poweradd = 50
p1sprpriority = 1

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.

 [State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,0
volume = 255



[State 820, a3]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 810, a4 ]
type = PlaySnd
trigger1 = time = 35
value = 0, 2

[State 810, a5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6, 5

[State 4001, flash from lightning]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 35
trigger2 = time = 83
time = 3

[State 4001, darken background]
type = bgpalfx
add = -100, -100, -100
trigger1 = time = 38
time = 44

[State 4001, lighten bg back]
type = bgpalfx
add = -100 + 3*(time - 86), -100 + 3*(time - 86), -100 + 3*(time - 86)
trigger1 = time > 85
trigger1 = time < 117
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, -30

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40, -35

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 41, -40

[State 810, b1x] ;explod
type = Explod
trigger1= time = 20 ;time = 45
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 0
anim = 190
postype = p1
pos = 32,0
sprpriority = -3
removetime = 70
persistent = 0
scale = 1.5,1.5


[State 810, a9]
type = TargetState
trigger1 = AnimElem = 8
value = 7696

[State 810, b3 ]
type = PlaySnd
trigger1 = p2movetype = H
trigger1 = time = 61
value = 6, 5

[State 810, b4]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
; hit by KFM's throw HitDef. The important thing here is to use a
; ChangeAnim2 controller. The difference between ChangeAnim2 and
; ChangeAnim is that ChangeAnim2 changes the player's animation to
; an action in the AIR file of the attacker (in this case, kfm.air),
; whereas ChangeAnim always changes the player to an action in his
; own AIR file. Look at Action 820 in kfm.air for some extra
; comments.
[Statedef 4002]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 4
anim = 5051


[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = Time = 30
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 820, a1]
type = null;ChangeAnim2
Trigger1 = Time = 30
value = 7696`

[state 5010, hit]
type = lifeadd
value = -15 - 1200/time
trigger1 = time = 30
trigger2 = time = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 6,5
channel = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 80
time = 100
freq = 100
ampl = 10
;phase = 90
;ignorehitpause =
;persistent =




;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, a3]
type = SelfState
trigger1 = time = 150 ;!gethitvar(isbound)
value = 5050

[State 820, saf]
type = SelfState
trigger1 = p2movetype = H
value = 5050




;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;  falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 9,4 ;2.8,-7

[State 821, Turn]
type = Turn
trigger1 = Anim = 820
trigger1 = AnimElem = 8

[State 821, a3]
type = LifeAdd
trigger1 = Time = 8
value = -100
persistent = 0

[State 821, a1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .6

[State 801, b2]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20
ampl = -7

[State 821, a2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, a3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER


[State 821, a4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

; 
; ;--------------------------------
;Supercombo
[StateDef 1119]
type = S
movetype = A
physics = N
anim = 1119
ctrl = 0
velset = 0,0
time = 119
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 7
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
;ignorehitpause =
;persistent =


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2 || animelem =  6 || animelem = 9 || animelem = 13 || animelem = 17 || animelem = 20 || animelem = 24 || animelem = 27 || animelem = 31
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA         ;B,E,F
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
damage = 10,0
pause = 15,8
;guard.pause,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.type = hard
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0
guard.velocity = -2
air.velocity = -14,10
fall = 0
kill = 0

[State 1020, HitDef]
type = HitDef
trigger1 = animelem = 34
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 8,-90
animtype = back
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -10, -4
guard.velocity = -2
air.velocity = -14,10
fall = 1
p2stateno = 1120

[State 1119, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = animelem = 34
trigger1 = movehit
time = 3

[State 1119, bang]
type = playsnd
value = 30, 0
trigger1 = animelem = 34
trigger1 = movehit

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 119
length = 10
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 2
framegap = 1
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =

;--------------------------------
;P2 bounce off walls
[statedef 1120]
type = A
movetype = H
physics = N
ctrl = 0
velset = -15, -5

[state 1120, screenbound]
type = screenbound
movecamera = 0,0
trigger1 = 1

[state 1120, reverse vel x]
type = velset
x = 5
trigger1 = facing * pos x < -150

[state 1120, bounce]
type = turn
trigger1 = facing * pos x < -150

[state 1120, gravity]
type = veladd
y = const(movement.yaccel)
trigger1 = 1

[state 1120, stop moving]
type = velset
value = 0,0
trigger1 = pos y >= 0
trigger1 = vel y > 0

[state 1120, end]
type = selfstate
value = 5101
trigger1 = pos y >= 0
trigger1 = vel y > 0

;-----------------------------------------------------------
[StateDef 1122]
type = A
movetype = A
physics = A
anim = 1118
ctrl = 0
velset = 0,0
time = 40

[State 1122, counter var initialize]
type = VarSet
trigger1 = 1
var(4) = 0

[State 1122, ChangeState]
type = ChangeState
trigger1 = 1
value = 1125



[Statedef 1125]
type = U
movetype = A
physics = U

[State 1125, HitOverride]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = stateno
trigger1 = 1

[State 1125, gethit colorize]
type = PalFX
add = 255,128,0
trigger1 = time = 0
trigger1 = var(4) > 1
time = 5

[State 1125, take damage]
type = lifeadd
trigger1 = time = 0
trigger1 = var(4) > 1
value = -gethitvar(damage)
kill = 0

[State 0, VelSet]
type = VelSet
trigger1 = var(4) < 35;animelem = 1  || animelem = 2 || animelem = 3 || animelem = 4
y = 0;.1
;ignorehitpause =
;persistent =




;ignorehitpause =
;persistent =

[State 1020, HitDef]
type = HitDef
trigger1 = animelem = 10
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 0,-30
animtype = Heavy
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -20
guard.velocity = -2
air.velocity = -14,10
fall = 1

[State 0, Helper]
type = Helper
trigger1 =  animelem = 10
helpertype = normal ;player
name = "shockdamage"
ID = 10010
stateno = 1123
pos = 70,-73
postype = p1    ;p2,front,back,left,right
facing = 1
scale = 20,20
bindtime = 5
keyctrl = 0
ownpal = 1
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = animelem = 10
time = 3

[State 10001, bang]
type = playsnd
value = 30, 0
trigger1 = animelem = 10

[State 1122, lightning]
type = varset
var(3) = 30
trigger1 = animelem = 10

[State 1020, changestate]
type = ChangeState
trigger1 = pos y = 0
value = 0
ctrl = 1

[State 1122, increment counter]
type = VarAdd
var(4) = 1
trigger1 = 1

;-----------------------------------------------------------
[statedef 1123]
type = S
movetype = A
anim = 1122
time = 28
sprpriority = 3

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 1

[State 0, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP
time = 1

[State 21240]
type = HitOverride
trigger1 = 1
stateno = 1126
attr = SCA,AP
slot = 0
time = -1

[State 1020, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-30
animtype = Heavy
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -20
guard.velocity = -2
air.velocity = -14,10
fall = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28
;ignorehitpause =
;persistent =

;-------------------------------------------
[StateDef 1200]
type = S
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
time = 40

[State 1200, initialize counter]
type = VarSet
trigger1 = 1
var(4) = 0

[State 1200, changestate]
type = ChangeState
trigger1 = 1
value = 1201

[Statedef 1201]
type = U
movetype = A

[State 1201, hitoverride]
type = HitOverride
attr = SCA, AA, AT, AP
trigger1 = 1
stateno = stateno

[State 1201, gethit colorize]
type = PalFX
add = 255,128,0
trigger1 = time = 0
trigger1 = var(4) > 1
time = 5

[State 1201, take damage]
type = lifeadd
trigger1 = time = 0
trigger1 = var(4) > 1
value = -gethitvar(damage)
kill = 0

[State 1020, HitDef]
type = HitDef
trigger1 = animelem = 10
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 0,-30
animtype = Heavy
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -20
guard.velocity = -2
air.velocity = -14,10
fall = 1

[State 0, Helper]
type = Helper
trigger1 =  animelem = 10
helpertype = normal ;player
name = "shockdamage"
ID = 10010
stateno = 1123
pos = 70,-73
postype = p1    ;p2,front,back,left,right
facing = 1
scale = 20,20
bindtime = 5
keyctrl = 0
ownpal = 1
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = animelem = 10
time = 3

[State 10001, bang]
type = playsnd
value = 30, 0
trigger1 = animelem = 10

[State 1122, lightning]
type = varset
var(3) = 30
trigger1 = animelem = 10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(4) = 65
value = 120
;elem = 1
;ignorehitpause =
;persistent =


[State 1020, changestate]
type = ChangeState
trigger1 = var(4) = 70
value = 0
ctrl = 1

[State 1201, increment counter]
type = VarAdd
var(4) = 1
trigger1 = 1

;------------------------------------------------------------------------------------------------------------
;Thunder Clap Hit override
[Statedef 1126]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0


[State 1126]
type = DestroySelf
trigger1 = Time = 0
;----------------------------------------------
[statedef 10020]
type = S
movetype = A
physics = A
time = 28
sprpriority = 3
ctrl = 0



[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 10020
ID = 10020
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -3,6
accel = 0,0
random = 0,0
removetime = 24
scale = 1,1
sprpriority = -3
removeongethit = 0
;ignorehitpause =
;persistent =

[State 10006, end]
type = changestate
value = 0
trigger1 = time = 4
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
trigger1 = RoundState = 4

;-----------------------
;Hover
[Statedef 10000]
type = U
movetype = I
physics = N
ctrl = 0
anim = 20

[State 1000, stop moving]
type = velset
x = 0
y = 0
trigger1 = time = 0

[State 10000, Velset if statetype != A]
type = velset
y = -10
trigger1 = Statetype != A

[State 10000, Statetypeset to statetype A]
type = statetypeset
statetype = A
trigger1 = statetype != A

[State 10000, stop rising]
type = velset
y = 0
trigger1 = pos y <= -80

;--------------------------------
;Power Charge
[Statedef 10001]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 10001

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = power = 3000
time = 3

[State 10001, bang]
type = playsnd
value = 30, 0
trigger1 = power = 3000

[State 10001, cancel]
type = changestate
value = 0
ctrl = 1
trigger1 = command != "holdy"
trigger2 = command != "holdb"
trigger3 = power = 3000

[State 10001, glow]
type = palfx
add = 60,60,60
trigger1 = time > 8
trigger1 = gametime%2 = 0
time = 1



