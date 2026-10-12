;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = time = [53,107];animelem = 6 
value = ,AP

[State 3000, AvX No BG]
type = assertspecial
trigger1 = animelem = 3
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = animelem = 3
Time = 40
pos = 0,-80
sound = S1500,0
poweradd = -1000
movetime= 40

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1,8
channel = -1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S3010,0
channel = 0

[State 3000, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = animelem = 3
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = animelem = 3
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = animelem = 3
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 40001, Ox]
type = Explod
trigger1 = animelem = 3
anim = 3010
ID = 3010
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
alpha = 256,80

[State 3000, VelSet]
type = Velset
trigger1 = AnimElem=6
x = 9

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem=7
x = 0

[State 3000, HitDef]
type = HitDef
triggerall = p2statetype != A
trigger1 = time%4 = 0 ;&& (AnimElemTime(5) < 56)
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
Priority = 7,hit
damage    = 34,9;40,9;70,10
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,12
guardsound = s3,0
ground.type = Low
ground.slidetime = 20;12
ground.hittime  = 20;60
guard.hittime = 50
ground.velocity = -6,-2;0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
forcestand = 1
p2facing = 1
fall = 1
air.fall = 1
fall.recover = 0

[State 3000, Hitdef]
type = HitDef
triggerall = p2statetype = A
trigger1 = time%4 = 0 ;&& (AnimElemTime(5) < 56)
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
Priority = 7,hit
damage    = 34,9;40,9;70,10
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,12
guardsound = s3,0
ground.type = Low
ground.slidetime = 20;12
ground.hittime  = 20;60
guard.hittime = 50
ground.velocity = 0, 0
air.velocity = -4,-1
envshake.time=16
envshake.freq=60
envshake.ampl=4
forcestand = 1
p2facing = 1
fall = 1
air.fall = 1
fall.recover = 0


[State 3000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 11,0
anim = 3001
ctrl = 0
sprpriority = 2

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s2,2
persistent = 0

[State 3001, Explod]
type = Explod
trigger1 = time = 0
anim = 3050
ID = 3050
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .35,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3001, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 3001, Turn]
type = Turn
trigger1 = animelem = 3

[State 3001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3002
ctrl = 0

;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3002]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 18,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3000,0

[State 3002, Explod]
type = Explod
trigger1 = time = 10
anim = 3050
ID = 3050
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .35,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3002, Dust]
type = Explod
trigger1 = animelem = 2
scale = 1, 1
anim = 7106
pos = 0, 0
sprpriority = 3

[State 3002, VelMul]
type = VelMul
trigger1 = time = 0
x = .6

[State 3002, VelAdd]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3002, Turn]
type = Turn
trigger1 = animelem = 4

[State 3002, HitDef]
type = HitDef
triggerall = p2statetype != A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 70,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3010
forcestand = 1
p2facing = 1

[State 3002, Hitdef]
type = HitDef
triggerall = p2statetype = A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 70,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3011
forcestand = 1
p2facing = 1

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s2,2
persistent = 0

[State 3002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3003
ctrl = 0

;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3003]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 18,0
anim = 3003
ctrl = 0
sprpriority = 2

[State 3003, Explod]
type = Explod
trigger1 = time = 10
anim = 3050
ID = 3050
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .35,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3003, VelMul]
type = VelMul
trigger1 = time = 0
x = .6

[State 3003, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3003, Turn]
type = Turn
trigger1 = animelem = 5

[State 3003, HitDef]
type = HitDef
triggerall = p2statetype != A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 70,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3010
;p1stateno = 3061
forcestand = 1
p2facing = 1

[State 3003, HitDef]
type = HitDef
triggerall = p2statetype = A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 70,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3011
forcestand = 1
p2facing = 1

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s2,2
persistent = 0

[State 3003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3004
ctrl = 0

;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3004]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 18,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 3004, Explod]
type = Explod
trigger1 = time = 10
anim = 3050
ID = 3050
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .35,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3004, VelMul]
type = VelMul
trigger1 = time = 0
x = .6

[State 3004, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3004, Turn]
type = Turn
trigger1 = animelem = 4

[State 3004, HitDef]
type = HitDef
triggerall = p2statetype != A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 90,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3010
forcestand = 1
p2facing = 1

[State 3004, HitDef]
type = HitDef
triggerall = p2statetype = A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 90,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-8
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 0, 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
p2stateno = 3011
forcestand = 1
p2facing = 1

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s2,2
persistent = 0

[State 3004, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3005
ctrl = 0

;---------------------------------------------------------------------------
;Berzerker Slash
[Statedef 3005]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 18,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 3005, Explod]
type = Explod
trigger1 = time = 10
anim = 3050
ID = 3050
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .35,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3005, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3005, VelMul]
type = VelMul
trigger1 = time = 0
x = .6

[State 3005, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3005, Turn]
type = Turn
trigger1 = animelem = 4

[State 3005, HitDef]
type = HitDef
triggerall = p2statetype != A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 100,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = 10, -5
air.velocity = 10, -5
envshake.time=16
envshake.freq=60
envshake.ampl=4
forcestand = 1
p2facing = 1
fall = 1
air.fall = 1

[State 3005, HitDef]
type = HitDef
triggerall = p2statetype = A
trigger1 = time = 0
attr = S, HA
animtype  = Hard
air.animtype = Hard
fall.animtype = Hard
damage    = 100,10
guard.dist = 0
getpower  = 0
hitflag = MAF
guardflag = MA
pausetime = 0,8
sparkno = 3
sparkxy = -10,-80
hitsound   = s2000,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 60
ground.velocity = -10, -5
air.velocity = -10, -5
envshake.time=16
envshake.freq=60
envshake.ampl=4
forcestand = 1
p2facing = 1
fall = 1
air.fall = 1

[State 3005, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s2,2
persistent = 0

[State 3005, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
;Berzerker Slash Opponent
[Statedef 3010]
type = S
movetype = H
physics = N
velset = 0,0

[State 3010, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3010, Width]
type = Width
trigger1 = 1
edge = 120,120

[State 3010, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3010

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,NP,SP,HP,NT,ST,HT

[State 3010, HitBy]
type = HitBy
trigger1 = 1
value = SCA,HA

[State 3010, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3010, SelfState]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1
;---------------------------------------------------------
;Berzerker Slash Opponent
[Statedef 3011]
type = A
movetype = H
physics = N
velset = 0,-1

[State 3011, PosSet]
type = PosSet
trigger1 = time = 0
y = -30

[State 3011, VelSet]
type = VelSet
triggerall = p2stateno = 3005
triggerall = p2stateno = 4005
triggerall = p2stateno = 4015
trigger1 = time = 0
y = -7

[State 3011, Width]
type = Width
trigger1 = 1
edge = 120,120

[State 3011, Gravity]
type = Gravity
trigger1 = 1

[State 3011, VelAdd]
type = VelAdd
trigger1 = time = 0
y = -7;.05

[State 3011, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3011

[State 3011, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[State 3011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,NP,SP,HP,NT,ST,HT

[State 3011, HitBy]
type = HitBy
trigger1 = 1
value = SCA,HA

[State 3011, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1

;------------------------------
; Muscle Bomber
[StateDef 3100]
type = A
movetype = A
physics = N
anim = 3100
ctrl = 0
velset = 0,0
poweradd = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,H
time = 1

[State 3100, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3100, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 5,-80
sound = S1500,0
poweradd = -1000
;movetime= 40

[State 3100, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3100, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3100, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3100, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,HT
hitflag = M-;AF
guardflag = 
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 40,5
guardflag = MA
pausetime = 0,6
hitsound = S9,1
guardsound = S2,9
sparkno = -1;3
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
guard.velocity = -5
air.velocity = 0,0
kill = 0
guard.kill = 0
fall.kill = 0
p1stateno = 3101
p2stateno = 3110
id = 3110

[State 3100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Muscle Bomber - P1
[StateDef 3101]
type = S
movetype = A
physics = N
anim = 3101
ctrl = 0
velset = 0,0
poweradd = 0

[State 3101, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
anim = F3
pos = 30,-60
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3101, Explod]
type = Explod
trigger1 = animelem = 43
anim = F3
pos = 0,-80
postype = p1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3101, Explod]
type = Explod
trigger1 = animelem = 60
anim = F3
pos = 0,-20
postype = p1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 3101, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 43
trigger6 = animelem = 60
value = -39;60
ID = 3110
kill = 1
absolute = 0

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
value = S2,2

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 8
trigger4 = animelem = 10
value = S1,7

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
trigger2 = animelem = 18
trigger3 = animelem = 22
trigger4 = animelem = 26
trigger4 = animelem = 31
value = S2000,7

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 33
trigger2 = animelem = 44
value = S8,0

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 59
value = S1,4

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = S3100,0;S2000,5

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 60
value = S3100,1;S2000,12

[State 3101, EnvShake]
type = EnvShake
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 43
trigger6 = animelem = 60
time = 16
freq = 60
ampl = 4

[State 3101, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
id = 3110
pos = 0,0

[State 3101, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Muscle Bomber - P2
[StateDef 3110]
type = S
movetype = H
physics = N
velset = 0,0
id = 3110

[State 3110, SprPriority]
type = SprPriority
trigger1 = AnimElem = 14
trigger2 = AnimElem = 18
trigger3 = AnimElem = 22
trigger4 = AnimElem = 26
trigger5 = AnimElem = 30
value = 2

[State 3110, SprPriority]
type = SprPriority
trigger1 = AnimElem = 15
trigger2 = AnimElem = 19
trigger3 = AnimElem = 23
trigger4 = AnimElem = 27
value = 0

[State 3110, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3110

[State 3110, VelSet]
type = VelSet
trigger1 = animtime = 0
x = -3
y = -10

[State 3110, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 0

;------------------------------
; Dive Punch
[StateDef 3200]
type = A
movetype = A
physics = N
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 0

[State 3200, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3200, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-120
sound = S1500,0
poweradd = -1000
;movetime= 40

[State 3200, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3200, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3200, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3200, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 9
y = 12

[State 3200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
hitflag = MAFD
damage = 200,30;270,35
guardflag = MA
pausetime = 12,12
hitsound = S2,0
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-10
guard.velocity = -2
air.velocity = -2,-10
fall = 1
air.fall = 1
getpower = 0

[State 3200, Rock Ground]
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

[State 3200, Explosion]
type = Explod
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

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = s8,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,5
channel = -1

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,5
channel = -1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = pos y >= 0
value = S2000,12

[State 3200, EnvShake]
type = EnvShake
trigger1 = pos y >= 0
time = 16
freq = 60
ampl = 4

[State 3200, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 3200, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = pos y >=0
value = 3201

;------------------------------
; Dive Punch End
[StateDef 3201]
type = A
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0

[State 3201, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Neutotoxin Mental Plague
[Statedef 3300]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 2

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3300, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 50
pos = 0,-80
sound = S1500,0
poweradd = -1000
movetime= 50

[State 3300, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3300, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3300, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3300, sense bar]
type = Explod
triggerall = time = 0
trigger1 = numexplod(3301)=0
anim = 3301
id = 3301
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 3300, sense bar]
type = Explod
triggerall = time = 0
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fear Factor
[Statedef 3400]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3400
ctrl = 0
sprpriority = 2

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3400, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 50
pos = 10,-80
sound = S1500,0
poweradd = -1000
movetime= 50

[State 3400, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3400, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3400, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = s2000,7

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3600,0
channel = -1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3600,0
channel = -1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3600,0
channel = -1

[State 3400, Projectile]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3450
projhitanim = -1
projremove = 0
projremovetime = 45
projID = 3450
velocity = 5,-.5
projpriority = 1
postype = p1
offset = 0,0
attr = S, HP
damage = 65,10;130,20
projhits = 3
projmisstime = 8
animtype = medium
hitflag = MAFP
guardflag = MA
sparkno = -1
sparkxy = 10,-10
hitsound = S2000,12
getpower = 0
guardsound = S3,0
pausetime = 0,7
ground.hittime = 15
ground.type = high
ground.slidetime = 15
ground.velocity = -8.5, -7.5
air.velocity = -8.5,-7.5
air.fall = 1
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
envshake.time = 12
envshake.ampl = 6
envshake.freq = 120

[State 3400, Projectile]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3450
projhitanim = -1
projremove = 0
projremovetime =45
projID = 1201
velocity = -5,-.5
projpriority = 1
postype = p1
offset = 0
attr = S, SP
damage = 65,10;130,20
projhits = 3
projmisstime = 8
animtype = medium
hitflag = MAFP
guardflag = MA
sparkno = -1
sparkxy = -10,-10
hitsound = S1,0
getpower = 0
guardsound = S3,0
pausetime = 0,7
ground.hittime = 15
ground.type = high
ground.slidetime = 15
ground.velocity = -8.5, -7.5
air.velocity = -8.5,-7.5
air.fall = 1
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
envshake.time = 12
envshake.ampl = 6
envshake.freq = 120
facing = -1

[State 40001, False Wave Right]
type = Explod
trigger1 = time = 50
trigger2 = time = 55
trigger3 = time = 60
anim = 3451
ID = 3451
pos = 0,0
Accel = 5,-.5
postype = p1  ;p2,front,back,left,right
removetime = 45
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = 1
trans = addalpha
alpha = 256,150

[State 40001, False Wave Right]
type = Explod
trigger1 = time = 50
trigger2 = time = 55
trigger3 = time = 60
facing = -1
anim = 3451
ID = 3451
pos = 0,0
Accel = -5,-.5
postype = p1  ;p2,front,back,left,right
removetime = 45
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = 1
trans = addalpha
alpha = 256,150

[State 341600, flash]
type = PalFX
trigger1 = time = [9,25];[1,25]
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100


[State 3400, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
