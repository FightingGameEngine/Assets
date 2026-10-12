;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S2000,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,0
channel = -1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,0
channel = -1

[State 1011, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1016
ID = 8002
pos = 5,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 12,0
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
pos = -12,-85
postype = p1
stateno = 1010
ownpal = 1
Size.XScale = 1.25
trans = none
;trans = addalpha
;alpha = 256,0

[State 1000, changestate]
type = ChangeState
trigger1 = p2stateno = 1012
value = 1011

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 -- beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1010
ctrl = 0

[State 1010, ontop]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,150

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (12 * parent, facing)
y = parent, Pos Y - 85

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1010, hitdef]
type = HitDef
triggerall = parent,var(24) = 0
trigger1 = time%2 = 0
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Up
fall.animtype = Medium
damage = 15,5;40,5
guardflag = MA
pausetime = 0,12
hitsound = S9,1
guardsound = S3,0
sparkno = 2;S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
;p2stateno = 1012
fall.recover = 0
fall = 1
air.fall = 1

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 1000

;------------------------------
; Special 1 - P1
[StateDef 1011]
type = S
movetype = A
physics = S
anim = 1011

[State 1011, ChangeState]
type = ChangeState
trigger1 = var(59) != 0
value = 1050
ctrl = 0

[State 1011, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 1011, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 8002

[State 1011, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = -5,-0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1011, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = -5,-73
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1011, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = 50,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "x"
value = 200
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "y"
value = 210
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "z"
value = 220
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "a"
value = 230
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "b"
value = 240
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "c"
value = 250
ctrl = 0

[State 1011, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1011, changestate]
type = ChangeState
trigger1 = p2stateno != 1012
value = 1020
ctrl = 0

;------------------------------
; Special 1 - P2
[StateDef 1012]
type = S
movetype = H
physics = S

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1012

[State 1012, PosSet]
type = PosSet
trigger1 = time = 0
y = -80

[State 1012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdfwd"
x = -5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdback"
x = 5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdup"
y = -5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holddown"
y = 5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command != "holdback"
trigger1 = enemynear, command != "holdfwd"
trigger2 = backedgedist <=0
trigger2 = enemynear, command != "holdback"
trigger3 = frontedgedist <=0
trigger3 = enemynear, command != "holdfwd"
x = 0

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command != "holddown"
trigger1 = enemynear, command != "holdup"
trigger2 = pos Y < -200
trigger2 = enemynear, command != "holddown"
trigger3 = pos y >= 0
trigger3 = enemynear, command != "holdup"
y = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) = 0
trigger1 = time = 150
trigger2 = enemynear, command = "x"
trigger3 = enemynear, command = "y"
trigger4 = enemynear, command = "z"
trigger5 = enemynear, command = "a"
trigger6 = enemynear, command = "b"
trigger7 = enemynear, command = "c"
value = 1013
ctrl = 0

[State 1012, PosAdd]
type = PosAdd
triggerall = enemynear, var(59) != 0
trigger1 = p2dist x > 80
x = 3

[State 1012, VelSet]
type = VelSet
trigger1 = enemynear, var(59) != 0
y = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) != 0
trigger1 = time = 150
value = 1013
ctrl = 0

;------------------------------
; Special 1 - P2 released
[StateDef 1013]
type = S
movetype = H
physics = N

[State 1013, Gravity]
type = Gravity
trigger1 = 1

[State 1013, HitFallSet]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 1013, ChangeAnim2]
type = ChangeAnim2
trigger1 = anim!= 1012
value = 1012

[State 1013, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 5

[State 1013, Selfstate]
type = SelfState
trigger1 = pos y >= -20
value = 5100
ctrl = 1

;------------------------------
; Special 1 - end
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 - P1 (AI STATE ONLY)
[StateDef 1050]
type = S
movetype = A
physics = S
anim = 1011

[State 1050, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 1050, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 8002

[State 1050, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = -5,-0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = -5,-73
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = 50,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1050, changestate]
type = ChangeState
trigger1 = p2stateno != 1012
value = 1020
ctrl = 0

;------------------------------
; Rock Throw
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2000,12

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,0
channel = -1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,0
channel = -1

[State 1100, Rock Ground]
type = Explod
trigger1 = time = 0
anim = 1150
ID = 1150
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1100, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Rock"
ID = 1150
stateno = 1150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;P2 state - Dizzy

[Statedef 1121]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
;anim = 5300
ctrl = 0
sprpriority = 2

[State 1121, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1121, Turn]
type = Turn
triggerall = facing = enemynear,facing
trigger1 = time = 1

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5300)
trigger1 = Anim !=5300
value = 5300

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5300)
trigger1 = Anim !=5010
value = 5010

[State 1121, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 1121, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 1121, SelfState]
type = SelfState
trigger1 = time = 120
value = 0
ctrl = 1

;------------------------------
; Rocks to be Thrown
[StateDef 1150]
type = S
movetype = A
physics = N
anim = 1151
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1150, posset]
type = PosSet
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
y = -140

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
value = 1152

[State 1150, VelSet]
type = VelSet
trigger1 = anim = 1152
x = 12
y = 3

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) = 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S2000,8
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
p2stateno = 1121

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) != 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S2,0
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
fall = 1
air.fall = 1

[State 1150, ParentVarSet]
type = ParentVarSet
trigger1 =  movehit
v = 25
value = 1

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1155
trigger1 = movecontact
trigger2 = anim = 1151
trigger2 = parent, movetype = H
value = 1155

[State 1150, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0

[State 1150, PosSet]
type = PosSet
trigger1 = movecontact
x = enemynear, pos x

[State 1150, Explod]
type = Explod
triggerall = numexplod(1155) = 0
trigger1 = movecontact
anim = 1155
ID = 1155
pos = 0, -50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 1150, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1151
time = 1

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 200
trigger2 = anim = 1155
trigger2 = animtime = 0

;------------------------------
; Rocks to be Thrown
[StateDef 1151]
type = S
movetype = A
physics = N
anim = 1155
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1151, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 12

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 12

;------------------------------
; Dash Punch
[StateDef 1200]
type = S
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 10,0

[State 40001, Preparing Sword]
type = Explod
trigger1 = !time
trigger1 = anim = 1200
trigger2 = numexplod(1206) = 0
anim = 1205
ID = 1205
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = -1
trans = addalpha
alpha = 256,150

[State 1200, Remove 1205]
type = Removeexplod
trigger1 = anim != 1200
iD = 1205
IgnoreHitPause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s8,0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1300,0
channel = -1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = anim = 1200 && time = 0
value = s1300,0
channel = -1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = anim = 1200 && time = 0
value = s1300,0
channel = -1

[State 1200, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1201
trigger1 = p2dist x <= 175
trigger1 = time > 7
value = 1201

[State 40001, Sword Attack]
type = Explod
trigger1 = !time
trigger1 = anim = 1201
trigger2 = numexplod(1206) = 0
anim = 1206
ID = 1206
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = -1
trans = addalpha
alpha = 256,150

[State 1200, Remove 1206]
type = Removeexplod
trigger1 = anim != 1201
ID = 1206
IgnoreHitPause = 1

[State 1200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 55,0;80,5
guardflag = MA
pausetime = 0,6
hitsound = S2,3;2000,8
guardsound = S3,0
sparkno = 2
sparkxy = -65,-60
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-7
guard.velocity = -2
air.velocity = -10,-3
fall = 1
air.fall = 1

[State 1200, VelSet]
type = VelSet
trigger1 = movecontact
x = 0

[State 1200, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Dive Punch
[StateDef 1300]
type = A
movetype = A
physics = N
anim = 1300
ctrl = 0
velset = 0,0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = s8,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1310,0

[State 1300, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 9
y = 12

[State 1300, HitDef]
type = HitDef
triggerall = var(22) = 0 || prevstateno != [600,650]
trigger1 = time = 0
attr = S, SA
damage = 80,5
hitflag = MAFD
guardflag = MA
pausetime = 0,12
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,10;-6
fall = 1
air.fall = 1
fall.recover = 0

[State 1300, HitDef]
type = HitDef
triggerall = var(22) != 0 || prevstateno = [600,650]
trigger1 = time = 0
attr = S, SA
damage = 80,5
guardflag = MA
pausetime = 0,0;12
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,10;-6
fall = 1
air.fall = 1
fall.recover = 0

[State 1300, VarSet]
type = VarSet
trigger1 = movehit
v = 22
value = 1

[State 1300, Rock Ground]
type = Explod
trigger1 = pos y >= 0
anim = 1150
ID = 1200
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1300, Explosion]
type = null;Explod
trigger1 = pos y >= 0
anim = 1350
ID = 1350
pos = 10,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = pos y >= 0
value = S2000,5

[State 1300, EnvShake]
type = EnvShake
trigger1 = pos y >= 0
time = 16
freq = 60
ampl = 4

[State 1300, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 1300, ChangeState]
type = ChangeState
trigger1 = pos y >=0
value = 3205
ctrl = 0

;------------------------------
; Dive Punch End
[StateDef 3205]
type = A
movetype = A
physics = N
anim = 3205
ctrl = 0
velset = 0,0

[State 3201, ChangeA]
type = Changeanim
trigger1 = time = 0
trigger1 = enemynear,movetype != H
value = 3206

[State 3201, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;-----------------------------------------------------------------------

[StateDef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1505,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 16
value = 3000,0

[State 1011, hitdef]
type = projectile
trigger1 = time = 21
trigger1 = enemynear,alive
trigger1 = Pos X < enemynear,Pos X
projanim = 1410
projremovetime = 32
offset = enemynear,Pos X-Pos X,0
ProjRemove = 0
velocity = 0,0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = low
air.animtype = low
fall.animtype = hard
damage = 55,5
guardflag = MA
pausetime = 5,5
hitsound = S9,1
guardsound = S3,0
sparkno = -1
animtype = low
ground.type = low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -3,-12
guard.velocity = -10
air.velocity = -2,-10
kill = 1
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 30
guard.kill = 1
fall.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1011, hitdef]
type = projectile
trigger1 = time = 21
trigger1 = enemynear,alive
trigger1 = Pos X >= enemynear,Pos X
projanim = 1410
projremovetime = 32
offset = ((enemynear,Pos X)*-1)+pos X,0
ProjRemove = 0
velocity = 0,0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = low
air.animtype = low
fall.animtype = hard
damage = 55,5
guardflag = MA
pausetime = 5,5
hitsound = S9,1
guardsound = S3,0
sparkno = -1
animtype = low
ground.type = low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -3,-12
guard.velocity = -10
air.velocity = -2,-10
kill = 1
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 30
guard.kill = 1
fall.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0



[State 1000, changestate]
type = ChangeState
trigger1 = time = 35
value = 0
ctrl = 1
