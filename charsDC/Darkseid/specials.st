; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
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
; Special 1 - Beam1
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
trigger1 = AnimElem = 1
value = S9,1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
pos = 30,-150
postype = p1
stateno = 1010
ownpal = 1

;[State 1000, changestate]
;type = ChangeState
;trigger1 = AnimTime = 0 & NumHelper(1010) = 0
;value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------

;------------------------------
; Special 1 - Beam2
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
pos = 30,-150
postype = p1
stateno = 1010
ownpal = 1

;[State 1000, changestate]
;type = ChangeState
;trigger1 = AnimTime = 0 & NumHelper(1010) = 0
;value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------

;------------------------------
; Special 1 - Beam3
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
pos = 30,-150
postype = p1
stateno = 1010
ownpal = 1

;[State 1000, changestate]
;type = ChangeState
;trigger1 = AnimTime = 0 & NumHelper(1010) = 0
;value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------

; Special 1 -- beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
anim = parent, stateno+10
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = facing = 1
x = parent, Pos X + 50
y = parent, Pos Y - 106

[State 1010, PosSet]
type = PosSet
trigger1 = facing = -1
x = parent, Pos X - 50
y = parent, Pos Y - 106

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1010, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = heavy
damage = 40,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = S9992
sparkxy = 0, 0
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
palfx.add = 75,0,0

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 1000


; Special 2 - From Ground
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 0
y = -7

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 0
y = 14

[State 0, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 65
guardflag = MA
pausetime = 4,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = -5
air.velocity = 0,-6

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
value = 1110
ctrl = 0

; Special 2 - From Air
[StateDef 1101]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 14

[State 0, HitDef]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger4 = AnimElem = 4
attr = S, NA
damage = 65
guardflag = MA
pausetime = 4,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = -5
air.velocity = 0,-6

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
value = 1110
ctrl = 0


; Special 2 - Land
[StateDef 1110]
type = S
movetype = A
physics = S
anim = 1110
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,3

[State 0, Landing Dust]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 0, Landing Dust]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 61
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 0, Landing Dust]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 8400
postype = p1
pos = 7, -15
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-50
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = 12

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


; Teleport 1
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = 1
x = -320
y = -100

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = -1
x = 320
y = -100

[State 0,]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

; Teleport 2
[Statedef 1201]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, TeleportFacing-1]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

; Teleport 3
[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 0, TeleportFacing1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = -100

[State 0, TeleportFacing-1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = -100

[State 2000, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = Turn
trigger1 = time = 25

[State 0, crtlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

; Teleport 4
[Statedef 1203]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 2000, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320
y = 0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320
y = 0

[State 2000, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 1]
type = Changestate
trigger1 = time = 45
value = 0


; Teleport 5
[Statedef 1204]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 2000, 3]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 4]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = 0

[State 2000, 5]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = 0

[State 2000, 6]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 7]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 8]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 2000, 9]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 10]
type = Changestate
trigger1 = time = 45
value = 0


; Teleport 6
[Statedef 1205]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,3

[State 2000, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = 0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = 0

[State 2000, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 1]
type = turn
trigger1 = time = 25

[State 2000, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 1]
type = Changestate
trigger1 = time = 45
value = 0


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
