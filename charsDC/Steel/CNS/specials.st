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
;                           Special Attacks
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

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


;---------------------------------------------------------------------------
; UHL Special 1
;-------------------------------------------------------------------------

[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
velset = 0,0
ctrl = 0
poweradd = 50
juggle = 6

[State 0, Explod]
type = Explod
trigger1 = AnimTime = 0
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 3
ownpal = 1

[State 0, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time >= 0

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,5

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,7

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
sparkno =S9996
guard.sparkno = s9997
pausetime = 10,10
sparkxy = -10,-45
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
sparkno =S9996
guard.sparkno = s9997
pausetime = 10,10
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001

;-----------------------------------------------------------------------------

[Statedef 1001]
type = A
movetype = A
physics = N
anim = 1001
velset = 2,-8

[State 0, 1]
type = VelAdd
trigger1 = Time >= 0
Y = 0.5

[State 0, 2]
type = VelSet
trigger1 = Vel Y >= 0
X = 0

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
pausetime = 10,10
hitsound = s2,2
guardsound = s3,0
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1002

;-----------------------------------------------------------------------------

[Statedef 1002]
type = S
movetype = I
physics = S
anim = 1004
velset = 0,0

[State 0, Landing Dust]
type = Explod
trigger1 = Time = 1
persistent = 0
anim = 60
ID = 60
pos = -5,-3
postype = p1
sprpriority = -1
bindtime = 1

[State 0,1]
type = NotHitBy
trigger1 = IsHelper
trigger1 = Time > 0
value = SCA

[State 0, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 0, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; UHM Special 2
;-------------------------------------------------------------------------

[Statedef 1004]
type = S
movetype = A
physics = S
anim = 1000
velset = 0,0
ctrl = 0
poweradd = 50
juggle = 10

[State 0, Explod]
type = Explod
trigger1 = AnimTime = 0
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 3
ownpal = 1

[State 0,1]
type = NotHitBy
trigger1 = IsHelper
trigger1 = Time > 0
value = SCA

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,7

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,5

[State 0, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time >= 0

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-45
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1005

;-----------------------------------------------------------------------------

[Statedef 1005]
type = A
movetype = A
physics = N
anim = 1002
velset = 4,-9

[State 0,1]
type = NotHitBy
trigger1 = IsHelper
trigger1 = Time > 0
value = SCA

[State 0, 1]
type = VelAdd
trigger1 = Time >= 0
Y = 0.5

[State 0, 2]
type = VelSet
trigger1 = Vel Y >= 0
X = 0

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2
attr = A, SA
damage    = 12,7
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-9
air.velocity = -3,-9
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1002

;---------------------------------------------------------------------------
; UHH Special 3
;-------------------------------------------------------------------------

[Statedef 1007]
type = S
movetype = A
physics = S
anim = 1000
velset = 0,0
ctrl = 0
poweradd = 50
juggle = 12

[State 0, Explod]
type = Explod
trigger1 = AnimTime = 0
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 3
ownpal = 1

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,7

[State 0, 1]
type = PlaySnd
trigger1 = Animelem =2
value = 40,5

[State 0, 1]
type = VelAdd
trigger1 = Time >= 0
x = 1.5

[State 0, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time >= 0

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-45
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage    = 40,25
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1008

;-----------------------------------------------------------------------------

[Statedef 1008]
type = A
movetype = A
physics = N
anim = 1003
velset = 2,-11

[State 0, 1]
type = VelAdd
trigger1 = Time >= 0
Y = 0.5

[State 0, 2]
type = VelSet
trigger1 = Vel Y >= 0
X = 0

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 | AnimElem = 4 || AnimElem = 5
attr = A, SA
damage    = 10,6
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = ChangeState
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1002

;---------------------------------------------------------------------------
; CS Special 4
;-------------------------------------------------------------------------

[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 1005
poweradd = 110
velset = 0,0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = Animelem = 2
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, 6]
type = PlaySnd
trigger1 = Animelem = 2
value = 40, 1

[State 0, VelSet 1]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 8

[State 0, VelSet End]
type = VelSet
trigger1 = AnimElemTime(15) = 0
x = 1.84

[State 0, Width]
type = Width
trigger1 = (AnimElemTime(5) >= 0) && (AnimElemTime(15) < 0)
value = 15,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 40,5
volume = 50

[State 0 , HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = SCA, HP
damage    = 30,17
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 10,10
hitsound   = S2,2
guardsound = s3,0
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-70
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -5
air.velocity = -10,-10
sparkno = 3
fall = 1
envshake.time = 4
envshake.freq = 40
envshake.ampl = -5

[State 0, Explod]
type = Explod
trigger1 = Animelem = 2
anim = 1006
ID = 1006
sprpriority = 4
bindtime = 40
removetime = 40
removeongethit = 1
postype = p1
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Animelem = 13
id = 1006

[State 0, Explod]
type = Explod
trigger1 = Animelem = 13
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; FAL Special 5
;-------------------------------------------------------------------------

[Statedef 1012]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1125

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1126
id = 1126
postype = P1
pos = 0, 0
sprpriority = 2
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 28

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1019
id = 1019
pos = -3,46
postype = p1
sprpriority = 4
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-58
velocity = 11
attr = S,SP
damage = 32,16
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 20,20
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 4
envshake.freq = 40
envshake.ampl = -5

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-58
velocity = 11
attr = S,SP
damage = 32,16
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 20,20
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 4
envshake.freq = 40
envshake.ampl = -5

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 9
name = "Dust"
stateno = 1013

[State 0, Explod]
type = Explod
trigger1 = projhit(1021) = 1
anim = 9993
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 0, Explod]
type = Explod
trigger1 = projhit(1021) = 1
anim = 1020
random = 0, 0
pos = 0,0
postype = p2
sprpriority = 5
removetime = 20
bindtime = 100

[State 0, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1013]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 10,0
anim = 62
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = parent, NumProjID(1021) = 0
trigger1 = Anim != 63
x = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent, NumProjID(1021) = 0
trigger1 = Anim !=63
value = 63

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Anim = 63
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; FAM Special 6
;-------------------------------------------------------------------------

[Statedef 1015]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1008

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1009
id = 1009
postype = P1
pos = 0, 0
sprpriority = 2
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 28

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1019
id = 1019
pos = 0,0
postype = p1
sprpriority = 4
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-105
velocity = 11
attr = S,SP
damage = 42,21
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 20,20
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 4
envshake.freq = 40
envshake.ampl = -5

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-105
velocity = 11
attr = S,SP
damage = 42,21
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 30,30
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,8
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 4
envshake.freq = 40
envshake.ampl = -5

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 9
name = "Dust"
stateno = 1013

[State 0, Explod]
type = Explod
trigger1 = projhit(1021) = 1
anim = 9993
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 0, Explod]
type = Explod
trigger1 = projhit(1021) = 1
anim = 1020
random = 0, 0
pos = 0,0
postype = p2
sprpriority = 5
removetime = 20
bindtime = 100

[State 0, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; FAH Special 7
;-------------------------------------------------------------------------

[Statedef 1018]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1127
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 7
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1128
id = 1128
postype = P1
pos = 0, 0
sprpriority = 6
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 28

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1129
id = 1129
pos = 0,0
postype = p1
sprpriority = 5
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "Bladestoup"
ID = 1019
pos = 64,-120
postype = p1
stateno = 1019
ownpal = 1
supermovetime = 100
pausemovetime = 100

[State 0, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1019]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1130
velset = 0,-20
sprpriority = 2

[State 0, Nothitby]
type = Nothitby
trigger1 = stateno = 1019
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, HitBy]
type = HitBy
trigger1 = stateno = 1019
value = SCA,NP,SP,HP
time = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 1019
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 1019
x = 9
y = -6

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 1019
y = -6

[State 0, HitDef]
type = HitDef
trigger1 = stateno = 1019
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = heavy
damage = 110,55
pausetime = 0,10
guard.pausetime = 4,3
sparkno = s9996
guard.sparkno= s9997
sparkxy = 3,20
hitsound   = S2,1
guardsound = S3,0
ground.type = High
air.type = Trip
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -3
air.velocity = -3,-8
air.juggle = 3
air.fall = 1
air.anim = Back
fall = 1
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 9993
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 1020
random = 0, 0
pos = 0,0
postype = p2
sprpriority = 5
removetime = 20
bindtime = 100

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -5
trigger1 = pos y >= 0
trigger2 = movehit = 1
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
; CG Special 8
;-------------------------------------------------------------------------

[Statedef 1021]
type = S
physics = S
ctrl = 0
sprpriority = 5
anim = 1022
poweradd = 1

[State 0, CHARGE]
type = PowerAdd
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 1000
trigger1 = power > 0
value = 6

[State 0, CHARGE]
type = PowerAdd
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 2000
trigger1 = power > 1000
value = 4

[State 0, CHARGE]
type = PowerAdd
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 3000
trigger1 = power > 2000
value = 2

[State 0, CHARGE]
type = PowerAdd
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 4000
trigger1 = power > 3000
value = 1

[State 0,1]
type = PalFX
trigger1 = TimeMod = 2,0
trigger1 = Time > 0
time = 1
add = 80,80,80

[State 0, 2]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 1000
trigger1 = power > 0
trigger1 = TimeMod = 6,0
anim = 1024
sprpriority = 6
postype = p1
ownpal = 1

[State 0, Electricity]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 1000
trigger1 = power > 0
trigger1 = TimeMod = 40,0
anim = 1023
sprpriority = 6
postype = p1
pos = 20,-40
ownpal = 1

[State 0, 2]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 2000
trigger1 = power > 1000
trigger1 = TimeMod = 6,0
anim = 1024
sprpriority = 6
postype = p1
ownpal = 1

[State 0, Electricity]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 2000
trigger1 = power > 1000
trigger1 = TimeMod = 40,0
anim = 1023
sprpriority = 6
postype = p1
pos = 20,-40
ownpal = 1

[State 0, 2]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 3000
trigger1 = power > 2000
trigger1 = TimeMod = 6,0
anim = 1024
sprpriority = 6
postype = p1
ownpal = 1

[State 0, Electricity]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 3000
trigger1 = power > 2000
trigger1 = TimeMod = 40,0
anim = 1023
sprpriority = 6
postype = p1
pos = 20,-40
ownpal = 1

[State 0, 2]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 4000
trigger1 = power > 3000
trigger1 = TimeMod = 6,0
anim = 1024
sprpriority = 6
postype = p1
ownpal = 1

[State 0, Electricity]
type = Explod
triggerall = stateno = 1021
trigger1 = power != 4000
trigger1 = power <= 4000
trigger1 = power > 3000
trigger1 = TimeMod = 40,0
anim = 1023
sprpriority = 6
postype = p1
pos = 20,-40
ownpal = 1

[State 0, 4]
type = PlaySnd
trigger1 = TimeMod = 40,0
value = 50, 6

[State 0, 5]
type = ChangeState
trigger1 = command != "holdc"
trigger2 = command != "holdz"
trigger3 = power = 4000
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; CHC Special 9
;-------------------------------------------------------------------------

[Statedef 1022]
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 7
sprpriority = 2
anim = 1025
ctrl = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 0, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 11
anim = 50000
id = 50000
postype = P1
pos = 0,0
ontop = 1
ownpal = 1

[State 0, 1]
type = HitDef
triggerall = Var(2) <= 0
trigger1 = Time <= 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
fall.recover = 0
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
p1stateno = 1023
numhits = 0
fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 1]
type = HitDef
triggerall = Var(2) > 0
trigger1 = Time <= 0
attr = S, HT
hitflag = M-
priority = 1, Miss
sparkno = -1
fall.recover = 0
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
p1stateno = 1023
numhits = 0
fall = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40, 9
channel = 1

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1023]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = -2
anim = 1026
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, Push]
type = PlayerPush
trigger1 = 1
ignorehitpause = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
ignorehitpause = 1
edge = 50,0

[State 0, VarSet]
type = VarSet
trigger1 = Time <= 0
trigger2 = Anim = 1026
trigger2 = AnimElem = 6, < 0
trigger3 = AnimTime = 0
trigger4 = Anim = 1027
v = 0
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1026
trigger1 = MoveContact
ignorehitpause = 1
v = 0
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = Time <= 0
trigger2 = Var(1) >= 10
trigger3 = Anim = 1027
v = 1
value = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1026
ignorehitpause = 1
value = -2

[State 0, Bind]
type = TargetBind
trigger1 = Anim = 1026
trigger2 = Anim = 1027
trigger2 = AnimElem = 4, < 0
pos = 50, -15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time <= 0
value = 3, 1
volume = 40

[State 0, 1]
type = HitDef
triggerall = Var(2) <= 0
trigger1 = Anim = 1026
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 7, < 0
trigger1 = Var(0) <= 0
attr = S, NT
damage = 28, 0
getpower = 0, 0
givepower = 0, 0
animtype = Heavy
hitflag = MAF+
priority = 3, Hit
sprpriority = -2
p1sprpriority = -2
p2sprpriority = 2
pausetime = 0, 0
sparkno = s9996
sparkxy = -20, -75
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
fall.animtype = Heavy
fall.recover = 0
air.type = Low
air.velocity = 0,0
air.hittime = 15
p2stateno = 1024
kill = 0
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 791, 1]
type = HitDef
triggerall = Var(2) <= 0
trigger1 = Anim = 1027
trigger1 = AnimElem = 5
attr = S, NT
damage = 28, 0
getpower = 0, 0
givepower = 0, 0
animtype = Heavy
hitflag = MAF+
priority = 3, Hit
sprpriority = -2
p1sprpriority = -2
pausetime = 0, 0
sparkno = s9996
sparkxy = -20, -75
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4,-4
air.type = Low
air.velocity = -4,-4
air.hittime = 15
fall.recover = 0
air.fall = 1
fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 791, 1]
type = HitDef
triggerall = Var(2) > 0
trigger1 = Anim = 1026
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 7, < 0
trigger1 = Var(0) <= 0
attr = S, HT
damage = 28, 0
getpower = 0, 0
givepower = 0, 0
animtype = Heavy
hitflag = MAF+
priority = 3, Hit
sprpriority = -2
p1sprpriority = -2
p2sprpriority = 2
pausetime = 0, 0
sparkno = s9996
sparkxy = -20, -75
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
fall.recover = 0
air.type = Low
air.velocity = 0,0
air.hittime = 15
p2stateno = 1024
kill = 0
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, 1]
type = HitDef
triggerall = Var(2) > 0
trigger1 = Anim = 1027
trigger1 = AnimElem = 5
attr = S, HT
damage = 28, 0
getpower = 0, 0
givepower = 0, 0
animtype = Heavy
hitflag = MAF+
priority = 3, Hit
sprpriority = -2
p1sprpriority = -2
pausetime = 0, 0
sparkno = s9996
sparkxy = -20, -75
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4,-4
air.type = Heavy
air.velocity = -4,-4
air.hittime = 15
fall.recover = 0
air.fall = 1
fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, Hit]
type = PlaySnd
trigger1 = MoveHit
ignorehitpause = 1
value = 2, 2
channel = 2

[State 0, Guard]
type = PlaySnd
trigger1 = MoveGuarded
ignorehitpause = 1
value = 3, 0
channel = 3

[State 0, Reset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
triggerall = Anim = 791
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
trigger7 = Command = "FF"
trigger8 = Command = "BB"
add = 50, 50, 50
time = 1
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
triggerall = Anim = 791
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
trigger7 = Command = "FF"
trigger8 = Command = "BB"
ignorehitpause = 1
v = 1
value = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = Var(1) > 0
trigger1 = Var(1) < 10
ignorehitpause = 1
v = 1
value = 1

[State 0, Anim]
type = ChangeAnim
triggerall = Anim = 1026
triggerall = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
trigger7 = Command = "FF"
trigger8 = Command = "BB"
value = Anim
elem = AnimElemNo(0) + 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1026
trigger1 = AnimElem = 3
trigger2 = Anim = 1027
trigger2 = AnimElem = 3
value = 40, 4
channel = 0

[State 0, Anim]
type = ChangeAnim
triggerall = Anim = 1026
triggerall = AnimTime = 0
trigger1 = Var(1) <= 0
trigger1 = Time > 50
trigger2 = Var(1) > 0
trigger2 = Time > 100
value = 1027

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1027
trigger1 = AnimElem = 7, >= 0
value = 2

[State 0, State]
type = ChangeState
trigger1 = Anim = 1027
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1024]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 0, Anim2]
type = ChangeAnim2
trigger1 = Anim != 1028
trigger1 = Anim != 1029
value = 1028

[State 0, Anim2]
type = ChangeAnim2
triggerall = PlayerID(EnemyNear, ID), Anim = 1026
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
value = 1028
elem = PlayerID(EnemyNear, ID), AnimElemNo(0)

[State 0, Anim2]
type = ChangeAnim2
triggerall = PlayerID(EnemyNear, ID), Anim = 1027
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
value = 1029
elem = PlayerID(EnemyNear, ID), AnimElemNo(0)

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = , AT
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AA, AP
time = 1

[State 0, Push]
type = PlayerPush
trigger1 = 1
ignorehitpause = 1
value = 0

[State 0, State]
type = SelfState
trigger1 = Anim = 1029
trigger1 = AnimTime = 0
trigger2 = Time > 150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; SGS Special 10
;-------------------------------------------------------------------------

[Statedef 1026]
type    = S
movetype= A
physics = S
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1031
sprpriority = -2

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1031
value = -2

[State 0, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 0, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 11
anim = 50000
id = 50000
postype = P1
pos = 0,0
ontop = 1
ownpal = 1

[State 0, 1]
type = HitDef
trigger1 = Time = 0
trigger1 = !isHelper(1000)
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = S4020       ;No spark
sparkxy = floor(P2Dist X)-33,-63
hitsound   = S1,1
sprpriority = -2       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1027      ;On success, KFM changes to state 810
p2stateno = 1035      ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.yvelocity = -.5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40, 9
channel = 1

;---------------------------------------------------------------------------

[Statedef 1027]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1032
sprpriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time <= 0
value = 3, 1
volume = 40

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1032
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 40,-125

[State 0, Bind 1 - Short]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
trigger1 = target, const(size.height) <= 60
pos = 40,-125

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 40,-125

[State 0, Bind 2 - Short]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = target, const(size.height) <= 60
pos = 40,-125

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
pos = 33,-125

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------------------------------------------

[Statedef 1028]
type    = A
movetype= A
physics = N
velset = 2,-8
anim = 1033
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 61
id = 61
postype = P1
pos = 8,0
sprpriority = 5
ownpal = 1

[State 0, PlaySnd 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = -3.0/90

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 13.0/90

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1033
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,-125

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40,-125

[State 0, Width]
type = Width
trigger1 = 1
value = 40,15

[State 0, TargetState]
type = TargetState
trigger1 = Vel Y >= 0
value = 1037

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1029

;---------------------------------------------------------------------------

[Statedef 1029]
type    = A
movetype= A
physics = N
anim = 1034
sprpriority = -2

[State 0, 1]
type = VelSet
trigger1 = AnimElemNo(0) = 1
x = 0
y = 0

[State 0, 2]
type = VelSet
trigger1 = AnimElemNo(0) = [2,5]
x = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = AnimElemNo(0) = 6
x = 0
y = 0

[State 0, 4]
type = VelSet
trigger1 = AnimElemNo(0) = 7
x = 0
y = 0

[State 0, 5]
type = VelSet
trigger1 = AnimElemNo(0) = 8
x = 0
y = 0

[State 0, 6]
type = VelSet
trigger1 = AnimElemNo(0) = 9
x = 0
y = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1034
value = -2

[State 0, Bind 1-2]
type = TargetBind
trigger1 = AnimElemTime(6) < 0
pos = 30,-105

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 30,-105

[State 0, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 30,-105

[State 0, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 30,-105

[State 0, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
pos = 30,-105

[State 0, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1030

;---------------------------------------------------------------------------

[Statedef 1030]
type    = A
movetype= A
physics = N
velset = -3,2
anim = 1035
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = AnimTime = 0
anim = 902
id = 902
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, Voice 1]
type = PlaySnd
trigger1 = Time = 1
value = 40,5

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1035
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 40,-70

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos =40,-70

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 40,-70

[State 0, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 40,-70

[State 0, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)+.15

[State 0, 3]
type = VelAdd
trigger1 = Vel X < 0
x = 1/1

[State 0, 4]
type = TargetState
trigger1 = Pos Y >= 0
value = 1039

[State 0, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1031

;---------------------------------------------------------------------------

[Statedef 1031]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1036
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 61
id = 61
postype = P2
pos = 8,0
sprpriority = 5
ownpal = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1036
value = -2

[State 0, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 0
time = 20
freq = 80
ampl = -6

[State 0, Ground Hit Sound]
type = PlaySnd
trigger1 = Time = 1
value = 40,10

[State 0, Ground Hit Front]
type = Explod
trigger1 = Time = 1
ID = 810
postype = p2
anim = 8401
sprpriority = 3

[State 0, Ground Hit Back]
type = Explod
trigger1 = Time = 1
ID = 823
postype = p2
anim = 8400
sprpriority = -1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = -150

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1032

;---------------------------------------------------------------------------

[Statedef 1032]
type    = A
movetype= I
physics = A
anim = 1037
sprpriority = 2

[State 0, 1]
type = VelSet
trigger1 = Time = 0
x = -3
y = -6

;---------------------------------------------------------------------------

[Statedef 1035]
type    = S
movetype= H
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1038

[State 0, 2] ;Short Opponenet
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = const(size.height) <= 60
value = 1038

[State 0, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1036

[State 0, 4]
type = ScreenBound
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1036]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1039

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 3]
type = ScreenBound
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1037]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1040

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1038

;---------------------------------------------------------------------------

[Statedef 1038]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1041

[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1039]
type    = S
movetype= H
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1042

[State 0, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1215, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, 4]
type = FallEnvShake
trigger1 = Time = 0

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1040

;---------------------------------------------------------------------------

[Statedef 1040]
type = A
movetype = H
physics = N
velset = -2, -9

[State 0, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1043

[State 0, 1a]
type = PosAdd
trigger1 = time = 0
y = -(const(size.height))

[State 0, 2]
type = Gravity
trigger1 = 1

[State 0, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; SQ Special 11
;-------------------------------------------------------------------------

[Statedef 1042]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1044
juggle  = 4

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-2
sprpriority = 6
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 40,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 40,4

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 0
y = 0

[State 0,1]
type = PalFX
trigger1 = TimeMod = 2,0
trigger1 = Time > 0
time = 1
add = 80,80,80

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "Shock"
ID = 1043
stateno = 1043
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1043]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 1045
id = 1045
juggle  = 4

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
stateno = 1044
attr = SCA,AP
slot = 0
time = -1

[State 0, 2]
type = SprPriority
trigger1 = time = 1
value = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 50,4

[State 0, 8]
type = EnvShake
trigger1 = time = 1
time = 40
freq = 80
ampl = -4

[State 0, HitDef]
type = HitDef
trigger1 = time = 1
attr = A, SA
damage    = 125,67
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
fall = 1
air.fall = 1
palfx.time = 40
palfx.color = 0
palfx.add = -100,-50,200
palfx.sinadd = 100,50,200,4

[State 0, Electricity]
type = Explod
trigger1 = Movehit = 1
anim = 1023
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 100

[State 0, Explod]
type = Explod
trigger1 = Animelem = 6
anim = 60
id = 60
postype = P1
pos = 20, 0
sprpriority = -2
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;------------------------------------------------------------------------------
; Hit override
;------------------------------------------------------------------------------
[Statedef 1044]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0

[State 21240]
type = DestroySelf
trigger1 = Time = 0

;---------------------------------------------------------------------------
; SHS Special 12
;-------------------------------------------------------------------------

[Statedef 1045]
type    = S
movetype= A
physics = S
poweradd= 100
juggle = 3
velset = 20,0
anim = 1046
ctrl = 0

[State 0, VelSet 1]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 5

[State 0, VelSet End]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 2

[State 0, Width]
type = Width
trigger1 = (AnimElemTime(1) >= 0) && (AnimElemTime(9) < 0)
value = 10,0

[state 0, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 10
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage    = 15,8
animtype = Heavy
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-70
ground.type = Low
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage    = 15,8
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-70
ground.type = Low
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage    = 15,8
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-70
ground.type = Low
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
animtype  = High
damage    = 100,60
guardflag = MA
pausetime = 10, 10
sparkno =S9996
guard.sparkno = s9997
sparkxy = -10,-70
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -5
air.velocity = -10,-5
fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, 2]
type = Explod
trigger1 = Time = 2
anim = 918
postype = p1
pos = 0,0
ownpal = 1
bindtime = 1
sprpriority = 4
persistent = 0

[State 0, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,1

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Alpha Counter

[Statedef 1080]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 2
juggle = 8
anim = 1090
ctrl = 0
poweradd = -1010

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 100,20

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = -30,-5
sprpriority = 6
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 4003
pos = -10,-80
postype = P1
sprpriority = 5

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 1
value = 50

[State 0, 0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 4

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 5

[State 0,1]
type = PalFX
trigger1 = TimeMod = 2,0
trigger1 = Time > 0
time = 1
add = 60,60,60

[State 0, EnvColor]
type = EnvColor
trigger1 = AnimElem = 1
time = 3
value = 240,240,240
under = 1

[State 0, Explod]
type = Explod
trigger1 = Time <= 0
anim = 9987
sprpriority = 10
pos = 10,-77
postype = p1
bindtime = -1
persistent = 0
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, 3]
type = Explod
trigger1 = Time <= 0
anim = 9988
sprpriority = 10
pos = 10, Floor(-ScreenPos Y)
postype = p1
persistent = 0
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, 4]
type = Pause
trigger1 = Time <= 0
movetime = 20
time = 20

[State 0, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 120,60
animtype = Heavy
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S9996
sparkxy = -20, -70
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -5
air.velocity = -10,-10
air.type = High
air.velocity = -6,-3
fall.recover = 0
air.hittime = 10
p2stateno = 1081
air.fall = 1
fall = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 15
freq = 80
ampl = -6

[State 0, 5]
type = Explod
trigger1 = MoveHit
anim = 9989
ignorehitpause = 1
pos = 0,-20
id = 9989
ontop = 1
postype = p2
bindtime = -1
persistent = 0
removetime = 50
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = MoveHit
ignorehitpause = 1
value = 2, 2
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = MoveGuarded
ignorehitpause = 1
value = 3, 0
channel = 3

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Spin by Counter
[Statedef 1081]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, 0]
type = ChangeAnim2
trigger1 = 1
value = 1091

[State 0, 1]
type = PosAdd
trigger1 = Time = 0
y = -30

[State 0, SelfState]
type = ChangeState
trigger1 = HitShakeOver
value = 1082

;---------------------------------------------------------------------------
; Spin Hit Fall
[Statedef 1082]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, 3]
type = VelAdd
trigger1 = 1
y = .4

[State 0, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; VP Special 13
;-------------------------------------------------------------------------

[Statedef 1084]
type    = A
movetype= A
physics = N
juggle = 2
poweradd = 40
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1093

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimTime = 0
value = 40,5
channel = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1085

;---------------------------------------------------------------------------
[Statedef 1085]
type    = A
movetype= A
physics = N
juggle = 2
ctrl = 0
velset = 10,10
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1094

[state 100, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 7
color = 0
PalBright   = 0,  0,  0
PalContrast = 128,128,128
PalAdd      = 0,  0,  0
PalMul      = 1,1,1
Trans = Add1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 40, 1

[State 0, velset]
type = velset
trigger1 = animelem = 1
x = 8
y = 7.5

[State 0, veladd]
type = veladd
trigger1 = animelem = 1
y = .45

[State 0, HitDef 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
damage    = 40,20
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = 10,-30
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1
air.fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1086

;---------------------------------------------------------------------------
[Statedef 1086]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1096

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 60
id = 60
postype = P1
pos = 0,0
sprpriority = -1
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; AFAL Special 14
;-------------------------------------------------------------------------

[Statedef 1088]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1098

[State 0, 1]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1099
id = 1099
postype = P1
pos = 0,0
sprpriority = 2
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 28

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1019
id = 1019
pos = 0,0
postype = p1
sprpriority = 4
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-105
velocity = 11
attr = S,SP
damage = 100,50
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 20,20
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, Explod]
type = Explod
trigger1 = projcontact(1021) = 1
anim = 1123
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 0, Explod]
type = Explod
trigger1 = projhit(1021) = 1
anim = 1020
random = 0, 0
pos = 0,0
postype = p2
sprpriority = 5
removetime = 20
bindtime = 100

[State 0, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AFAM  Special 15
;---------------------------------------------------------------------------

[Statedef 1105]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1100

[State 0, VelMul]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1112
id = 1099
pos = 0,0
postype = p1
sprpriority = 2
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 44

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1110
id = 1110
pos = 0,0
postype = p1
sprpriority = 6
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "AirbladesMedium"
ID = 1405
pos = 64,-63
postype = p1
stateno = 1106
ownpal = 1
supermovetime = 100
pausemovetime = 100
sprpriority = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1106]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1115
velset = 0,-20
sprpriority = 5

[State 0, Nothitby]
type = Nothitby
trigger1 = stateno = 1106
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, HitBy]
type = HitBy
trigger1 = stateno = 1106
value = SCA,NP,SP,HP
time = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 1106
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 1106
x = 9
y = 6

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 1106
y = 6

[State 0, HitDef]
type = HitDef
trigger1 = stateno = 1106
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 110,55
pausetime = 0,10
guard.pausetime = 4,3
sparkno = s9996
guard.sparkno= s9997
sparkxy = 3,20
hitsound   = S2,1
guardsound = S3,0
ground.type = High
air.type = Trip
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -3
air.velocity = -3,-8
air.juggle = 3
air.fall = 1
air.anim = Back
fall = 1
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -5

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = pos y >= 0
value = 1107

;---------------------------------------------------------------------------

[Statedef 1107]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1123
velset = 0,0
sprpriority = 5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; AFAH  Special 16
;---------------------------------------------------------------------------

[Statedef 1100]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1120

[State 0, VelMul]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1124
id = 1099
pos = 0,0
postype = p1
sprpriority = 2
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 44

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1121
id = 1121
pos = 0,0
postype = p1
sprpriority = 6
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 0, ]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "AirbladesHard"
ID = 1405
pos = 33,-13
postype = p1
stateno = 1101
ownpal = 1
supermovetime = 100
pausemovetime = 100
sprpriority = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1122
velset = 0,-20
sprpriority = 5

[State 0, Nothitby]
type = Nothitby
trigger1 = stateno = 1101
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, HitBy]
type = HitBy
trigger1 = stateno = 1101
value = SCA,NP,SP,HP
time = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 1101
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 1101
y = 8

[State 0, HitDef]
type = HitDef
trigger1 = stateno = 1101
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 120,60
pausetime = 0,10
guard.pausetime = 4,3
sparkno = s9996
guard.sparkno= s9997
sparkxy = 3,20
hitsound   = S2,1
guardsound = S3,0
ground.type = High
air.type = Trip
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -3
air.velocity = -3,-8
air.juggle = 3
air.fall = 1
air.anim = Back
fall = 1
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -5

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = pos y >= 0
value = 1102

;---------------------------------------------------------------------------

[Statedef 1102]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1123
velset = 0,0
sprpriority = 5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; FLY MODE
;---------------------------------------------------------------------------

[Statedef 3000]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,-3
anim = 41
juggle = 0
poweradd = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 40,1

[State 0, velset]
type = Velset
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
y = -3

[State 0, changestate]
trigger1 = Animtime = 0
type = ChangeState
value = 3001
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 3001]
type    = A
movetype= I
ctrl = 0
anim = 1105
velset = 0,0
poweradd = 1

[State 0, velset]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -20
x = 0
y = 0

[State 0, changeanim]
type = ChangeAnim
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
triggerall = anim != 1105
value = 1105

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 41
value = 41

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 41
value = 41

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
triggerall = anim != 1107
value = 1107

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
triggerall = anim != 1106
value = 1106

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdfwd" && command = "holdup"
triggerall = anim != 1106
value = 1106

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdup" && command = "holdback"
triggerall = anim != 1107
value = 1107

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holdfwd" && command = "holddown"
triggerall = anim != 1106
value = 1106

[State 0, changeanim]
type = ChangeAnim
trigger1 = command = "holddown" && command = "holdback"
triggerall = anim != 1107
value = 1107

[State 0,Turn]
type = Turn
trigger1 = P2bodydist X < -40

[State 0, Changestate]
type = ChangeState
trigger1 = Pos Y >= 0
value = 51
ctrl = 1

[State 0, velset]
type = VelSet
trigger1 = command = "holdup"
y = -4

[State 0, velset]
type = VelSet
trigger1 = command = "holddown"
y = 4

[State 0, velset]
type = VelSet
trigger1 = command = "holdfwd"
x = 5

[State 0, velset]
type = VelSet
trigger1 = command = "holdback"
x = -5

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y < -200
y = -200

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 0, Changestate]
trigger1 = command = "2_Kick"
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = time = 700
type = ChangeState
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Special#1
[State 0, ChangeState]
type = ChangeState
value = 3003
trigger1 = command = "qcf_x"
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Special#2
[State 0, ChangeState]
type = ChangeState
value = 3005
trigger1 = command = "qcf_y"
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Special#3
[State 0, ChangeState]
type = ChangeState
value = 3009
trigger1 = command = "qcf_z"
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Special#4
[State 0, ChangeState]
type = ChangeState
value = 3013
trigger1 = command = "qcf_a" || command = "qcf_b" || command = "qcf_c"
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Air Light Punch
[State 0, ChangeState]
type = ChangeState
value = 3050
trigger1 = command = "x"
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Fly Mode Air Medium Punch
[State 0, ChangeState]
type = ChangeState
value = 3051
trigger1 = command = "y"
trigger2 = ((stateno = 1092) || (stateno = 1095)) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Fly Mode Air Hard Punch
[State 0, ChangeState]
type = ChangeState
value = 3052
trigger1 = command = "z"
trigger2 = ((stateno = 1092) || (stateno = 1093) || (stateno = 1095) || (stateno = 1096)) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Fly Mode Air Light Kick
[State 0, ChangeState]
type = ChangeState
value = 3053
trigger1 = command = "a"
trigger2 = (stateno = 1092) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Fly Mode Air Medium Kick
[State 0, ChangeState]
type = ChangeState
value = 3054
trigger1 = command = "b"
trigger2 = ((stateno = 1092) || (stateno = 1093) || (stateno = 1095)) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Fly Mode Air Hard Kick
[State 0, ChangeState]
type = ChangeState
value = 3055
trigger1 = command = "c"
trigger2 = ((stateno = 1092) || (stateno = 1093) || (stateno = 1094) || (stateno = 1095) || (stateno = 1096)) && (movecontact >= 1)

;---------------------------------------------------------------------------
;Fly Mode Special#1
;-------------------------------------------------------------------------

[Statedef 3003]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1098

[State 0, 1]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1099
id = 1099
pos = 0,0
postype = p1
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1019
id = 1019
pos = 0,0
postype = p1
sprpriority = 4

[State 0,Projectile]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1021
projid = 1021
offset = 60,-105
velocity = 11
attr = S,SP
damage = 100,50
animtype = heavy
guardflag = MA
pausetime = 0,10
sparkxy = 20,20
sparkno = s9996
guard.sparkno= s9997
hitsound   = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
air.velocity = -3,-8
fall = 1
air.fall = 1
air.anim = Back
air.juggle = 3
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, Explod]
type = Explod
trigger1 = projcontact(1021) = 1
anim = 1123
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 0, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;-------------------------------------------------------------------------
;Fly Mode Special#2
;-------------------------------------------------------------------------

[Statedef 3005]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1100

[State 0, VelMul]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1112
id = 1112
pos = 0,0
postype = p1
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1110
id = 1110
pos = 0,0
postype = p1
sprpriority = 6

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "AirbladesMedium"
ID = 3006
pos = 64,-63
postype = p1
stateno = 3006
ownpal = 1
supermovetime = 100
pausemovetime = 100
sprpriority = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 3006]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1115
velset = 0,-20
sprpriority = 5

[State 0, Nothitby]
type = Nothitby
trigger1 = stateno = 3006
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, HitBy]
type = HitBy
trigger1 = stateno = 3006
value = SCA,NP,SP,HP
time = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3006
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 3006
x = 9
y = 6

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 3006
y = 6

[State 0, HitDef]
type = HitDef
trigger1 = stateno = 3006
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 110,55
pausetime = 0,10
guard.pausetime = 4,3
sparkno = s9996
guard.sparkno= s9997
sparkxy = 3,20
hitsound   = S2,1
guardsound = S3,0
ground.type = High
air.type = Trip
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -3
air.velocity = -3,-8
air.juggle = 3
air.fall = 1
air.anim = Back
fall = 1
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -5

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = pos y >= 0
value = 3007

;---------------------------------------------------------------------------

[Statedef 3007]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1123
velset = 0,0
sprpriority = 5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------
;Fly Mode Special#3
;-------------------------------------------------------------------------

[Statedef 3009]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1120

[State 0, VelMul]
type = VelMul
trigger1 = Time = 0
x = .02
y = .02

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,7
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1124
id = 1124
pos = 0,0
postype = p1
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1121
id = 1121
pos = 0,0
postype = p1
sprpriority = 6

[State 0, ]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "AirbladesHard"
ID = 3010
pos = 33,-13
postype = p1
stateno = 3010
ownpal = 1
supermovetime = 100
pausemovetime = 100
sprpriority = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 3010]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1122
velset = 0,-20
sprpriority = 5

[State 0, Nothitby]
type = Nothitby
trigger1 = stateno = 3010
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, HitBy]
type = HitBy
trigger1 = stateno = 3010
value = SCA,NP,SP,HP
time = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3010
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = stateno = 3010
y = 8

[State 0, HitDef]
type = HitDef
trigger1 = stateno = 3010
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 120,60
pausetime = 0,10
guard.pausetime = 4,3
sparkno = s9996
guard.sparkno= s9997
sparkxy = 3,20
hitsound   = S2,1
guardsound = S3,0
ground.type = High
air.type = Trip
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -3
air.velocity = -3,-8
air.juggle = 3
air.fall = 1
air.anim = Back
fall = 1
palfx.add = 100,100,100
palfx.mul = 247,130,0
palfx.time = 30
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -5

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = pos y >= 0
value = 3011

;---------------------------------------------------------------------------

[Statedef 3011]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1123
velset = 0,0
sprpriority = 5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------
;Fly Mode Special#4
;-------------------------------------------------------------------------

[Statedef 3013]
type    = A
movetype= A
physics = N
juggle = 2
poweradd = 40
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1093

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimTime = 0
value = 40,5
channel = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3014

;---------------------------------------------------------------------------

[Statedef 3014]
type    = A
movetype= A
physics = N
juggle = 2
ctrl = 0
velset = 10,10
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1094

[state 0, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 7
color = 0
PalBright   = 0,  0,  0
PalContrast = 128,128,128
PalAdd      = 0,  0,  0
PalMul      = 1,1,1
Trans = Add1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 40, 1

[State 0, velset]
type = velset
trigger1 = animelem = 1
x = 8
y = 7.5

[State 0, veladd]
type = veladd
trigger1 = animelem = 1
y = .45

[State 0, HitDef 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
damage    = 40,20
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
hitsound = s2,2
guardsound = s3,0
pausetime = 10,10
sparkno =S9996
guard.sparkno = s9997
sparkxy = 10,-30
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1
air.fall = 1
envshake.time = 5
envshake.freq = 40
envshake.ampl = -5

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3015

;---------------------------------------------------------------------------

[Statedef 3015]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1096

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 60
id = 60
postype = P1
pos = 0,0
sprpriority = -1
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

