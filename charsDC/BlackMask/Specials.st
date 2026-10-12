;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1000
ctrl = 0
sprpriority = 2


[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,0

[State 0, VarAdd]
type = VarAdd
trigger1 = animelem = 3
v = 45    ;fv =
value = -1
;ignorehitpause =
;persistent =


;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1002
ID = 1002
pos = 68,-33
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0




[State 1050, 1]
type = Helper
trigger1 = animelem = 3
pos = 50,-92
postype = p1
stateno = 1050
helpertype = normal
name = "Special 1"
id = 1050
keyctrl = 0
ownpal = 1





[State 0, ChangeState]
type = ChangeState
triggerall = var(45) <= 0
trigger1 = time = 0
value = 1007
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 1005, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;Gunputaway
[StateDef 1006]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1007
poweradd = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = time = [0,27]
edge = 0,0
player = 65,-25
;value = 0,0
;ignorehitpause =
;persistent =

[State 1006, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;GunEmpty
[StateDef 1007]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1007
poweradd = 0
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = time = [0,25]
edge = 0,0
player = 65,-25
;value = 0,0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S75,3
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.3
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 1006, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------
;Reload
[StateDef 1015]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1015
poweradd = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S75,4
volume = 255
channel = -1
;lowpriority = -1
freqmul = 0.9
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1020
pos = 13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1020
pos = 13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.5,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1021
pos = 12,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1021
pos = 12,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.2,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1022
pos = 11,-88
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1022
pos = 11,-88
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.1,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 45    ;fv = 10
value = 5
;ignorehitpause =
;persistent =

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 12    ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 1015, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
;Reload
[StateDef 1016]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1015
poweradd = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 4
v = 12    ;fv = 10
value = 1
;ignorehitpause =
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S75,4
volume = 255
channel = -1
;lowpriority = -1
freqmul = 0.9
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1020
pos = 13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1020
pos = 13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.5,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1021
pos = 12,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1021
pos = 12,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.2,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1020
ID = 1022
pos = 11,-88
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,4
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 1022
pos = 11,-88
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1.1,4
accel = 0,0
random = 0,0
removetime = 28
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

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 4
v = 45    ;fv = 10
value = 5
;ignorehitpause =
;persistent =

[State 1015, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;projectile

[Statedef 1050]
type = S
movetype = A
physics = N
anim = 1001
velset = 6,0
id = 1001
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1050, Afterimage]
type = Afterimage
trigger1 = time = 0
time    =  60
length  = 20
palbright = 130,130,130
framegap = 1
trans = addalpha
alpha = 100, 255

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1052
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 55,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 30,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1




[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded


;--------
;shells
;--------
[Statedef 1051]
type    = S
movetype= A
physics = N
anim = 1003
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 11,22
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100


;--------
;bullets blocked
;--------
[Statedef 1052]
type    = S
movetype= A
physics = N
anim = 1001
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 1,2
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100




;special 2a---------------------------------------------------------------------
[Statedef 1103]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= -60
ctrl = 0
velset = 5,0
anim =1103
sprpriority = 2




[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Up
damage    = 95,10
guardflag = MA
pausetime = 12,12
sparkno = s805
sparkxy = -10,-70
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5, -7
air.velocity = -5.5,-6
yaccel = .45
fall = 1

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 2
x = 0

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;special 2b----------------------------------------------------------------------

[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=1100
velset = 10,0
poweradd= 60
sprpriority = 2

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 3
x = 0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 0



[State 250, HitDef]
type = HitDef
trigger1 = TimeMod = 2,1
trigger1 = !moveguarded
attr = S,NA
damage =9,1
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0


[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;special 2c----------------------------------------------------------------------

[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=1101
velset = 10,0
poweradd= 60
sprpriority = 2

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 3
x = 0

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1101, 0



[State 250, HitDef]
type = HitDef
trigger1 = TimeMod = 2,1
trigger1 = !moveguarded
attr = S,NA
damage =9,1
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;special 2a---------------------------------------------------------------------
[Statedef 11033]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= -60
ctrl = 0
velset = 5,0
anim =11033
sprpriority = 2




[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Up
damage    = 95,10
guardflag = MA
pausetime = 12,12
sparkno = s805
sparkxy = -10,-70
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5, -7
air.velocity = -5.5,-6
yaccel = .45
fall = 1

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 2
x = 0

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;special 2b----------------------------------------------------------------------

[Statedef 11000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=11000
velset = 10,0
poweradd= 60
sprpriority = 2

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 3
x = 0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 0



[State 250, HitDef]
type = HitDef
trigger1 = TimeMod = 2,1
trigger1 = !moveguarded
attr = S,NA
damage =9,1
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0


[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;special 2c----------------------------------------------------------------------

[Statedef 11011]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=11011
velset = 10,0
poweradd= 60
sprpriority = 2

[State 1050, 4]
type = Velset
trigger1 = AnimElem = 3
x = 0

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1101, 0



[State 250, HitDef]
type = HitDef
trigger1 = TimeMod = 2,1
trigger1 = !moveguarded
attr = S,NA
damage =9,1
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 3a
;---------------------------------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1010
ctrl = 0
sprpriority = 2


[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 8400,2




[State 1050, 1]
type = Helper
trigger1 = animelem = 2
pos = 50,-87
postype = p1
stateno = 1111
helpertype = normal
name = "Special 3"
id = 1111
keyctrl = 0
ownpal = 1





[State 1000, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Special 3b
;---------------------------------------------------------------------------
[Statedef 10101]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1010
ctrl = 0
sprpriority = 2


[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 8400,2




[State 1050, 1]
type = Helper
trigger1 = animelem = 2
pos = 50,-87
postype = p1
stateno = 1112
helpertype = normal
name = "Special 3"
id = 1112
keyctrl = 0
ownpal = 1





[State 1000, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Special 3c
;---------------------------------------------------------------------------
[Statedef 10102]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1010
ctrl = 0
sprpriority = 2


[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 8400,2




[State 1050, 1]
type = Helper
trigger1 = animelem = 2
pos = 50,-87
postype = p1
stateno = 1113
helpertype = normal
name = "Special 3"
id = 1111
keyctrl = 0
ownpal = 1






[State 1000, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;projectile a

[Statedef 1111]
type = S
movetype = A
physics = N
anim = 1011
velset = 5,0
id = 1011
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1062
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 55,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 30,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded

[Statedef 1112]
type = S
movetype = A
physics = N
anim = 1011
velset = 7,0
id = 1011
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1062
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 55,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 30,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded


;projectile b

[Statedef 1113]
type = S
movetype = A
physics = N
anim = 11111
velset = 9,0
id = 1011
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1062
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 75,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 30,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded








[Statedef 1062]
type    = S
movetype= A
physics = N
anim = 1011
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 1,2
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100
