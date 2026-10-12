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
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1 x
; Special 1 x
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S631,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
player = 35, 25


[State 1000, Beam]
type = Explod
trigger1 = AnimElem = 5
anim = 1012
pos = 50, -90
scale =  .45,.15
bindtime = -1
ownpal = 1
sprpriority = 4
removeongethit = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5, = 0
stateno = 1050
postype = p1
pos = 50, -90
bindtime = -1
sprpriority = 3
ownpal = 1
id = 1050
name = "Beam l"

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 y
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

; voice
[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S631,0

[State 1001, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
player = 40, 25

[State 1002, fireball]
type=explod
trigger1 = AnimElem = 4
id=1013
anim=1013
removetime=16
scale=.25,.5
pos=90,-95
ownpal=1
removeongethit = 1
sprpriority=7
supermovetime=99999
pausemovetime=99999

[State 1001, fireball]
type = null ;Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
;projhitanim = 1010
velocity = 0,0
offset = 80,-95
scale = 1,.25
projremove = 0
projremovetime = 12
projscale = 1, 0.6
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 70,8
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,0
air.velocity = -5,-2
envshake.time = 10
envshake.freq = 70
envshake.ampl = -4

[State 1001, Beam]
type = Explod
trigger1 = AnimElem = 4
anim = 1010
pos = 80, -95
scale =  .45,.25
bindtime = -1
ownpal = 1
sprpriority = 4
removeongethit = 1

[State 1001, Helper]
type = Helper
trigger1 = AnimElem = 4, = 0
stateno = 1051
postype = p1
pos = 80, -95
bindtime = -1
sprpriority = 3
ownpal = 1
id = 1051
name = "Beam m"

[State 1001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 z
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

; sfx
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S631,0

[State 1002, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
player = 45, 25

[State 1002, fireball]
type = null ;Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
;projhitanim = 1010
velocity = 0,0
offset = 90,-87
scale = 1,.25
projremove = 0
projremovetime = 12
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 100,10
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -10,0
air.velocity = -7,-2
envshake.time = 12
envshake.freq = 80
envshake.ampl = -4

[State 1002, fireball]
type=explod
trigger1 = AnimElem = 4
id=1013
anim=1013
removetime=18
scale=.26,.6
vel=0,0
pos=95,-85
ownpal=1
sprpriority=7
removeongethit = 1
supermovetime=99999
pausemovetime=99999

[State 1002, Beam]
type = Explod
trigger1 = AnimElem = 4
anim = 1010
pos = 90, -87
scale =  .45,.25
bindtime = -1
ownpal = 1
sprpriority = 4
removeongethit = 1

[State 1002, Helper]
type = Helper
trigger1 = AnimElem = 4, = 0
stateno = 1052
postype = p1
pos = 90, -87
bindtime = -1
sprpriority = 3
ownpal = 1
id = 1052
name = "Beam h"


[State 1002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Beam l
[Statedef 1050]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
poweradd= 15
ctrl = 0
velset = 0,0
anim = 1012
sprpriority = 5

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1012
value = 1012
ignorehitpause = 1


[State 1050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = invisible
ignorehitpause = 1

[State 1050, PosSet]
type = PosSet
trigger1 = parent, facing = 1
x = parent, Pos X + 90
y = parent, Pos Y - 87
ignorehitpause = 1

[State 1050, PosSet]
type = PosSet
trigger1 = parent, facing = -1
x = parent, Pos X - 90
y = parent, Pos Y - 87
ignorehitpause = 1

[State 1050, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Hard
damage    = 75, 6
;getpower  = 0
guardflag = MA
pausetime = 5,10
sparkno = s3260
sparkxy = 21,0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4
hitonce = 1
numhits = 1
guard.dist = 350
;fall.recover = 0

[State 21002, Explod]
;type = Explod
type = null
trigger1 = MoveHit = 1
anim = 999
sprpriority = 2
facing = -1
postype = p2
pos = 25,-60
bindtime = 1
ownpal = 1
id = 997
name = "Optic Blast Hit"
pausemovetime = 999999
persistent = 0
ignorehitpause = 1



[State 1050, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, StateNo != 1000


;---------------------------------------------------------------------------
;Beam m
[Statedef 1051]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
poweradd= 15
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = 5

[State 1051, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1010
value = 1010
ignorehitpause = 1



[State 1051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = invisible
ignorehitpause = 1

[State 1051, PosSet]
type = PosSet
trigger1 = parent, facing = 1
x = parent, Pos X + 80
y = parent, Pos Y - 95
ignorehitpause = 1

[State 1051, PosSet]
type = PosSet
trigger1 = parent, facing = -1
x = parent, Pos X - 80
y = parent, Pos Y - 95
ignorehitpause = 1

[State 1051, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Hard
damage    = 80, 8
;getpower  = 0
guardflag = MA
pausetime = 5,11
sparkno = s3260
sparkxy = 21,-5
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,0
air.velocity = -5,-2
envshake.time = 10
envshake.freq = 70
envshake.ampl = -4
hitonce = 1
numhits = 1
guard.dist = 350
;fall.recover = 0

[State 1051, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, StateNo != 1001


;---------------------------------------------------------------------------
;Beam h
[Statedef 1052]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
poweradd= 15
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = 5

[State 1052, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1010
value = 1010
ignorehitpause = 1

[State 1052, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = invisible
ignorehitpause = 1

[State 1052, PosSet]
type = PosSet
trigger1 = parent, facing = 1
x = parent, Pos X + 90
y = parent, Pos Y - 87
ignorehitpause = 1

[State 1052, PosSet]
type = PosSet
trigger1 = parent, facing = -1
x = parent, Pos X - 90
y = parent, Pos Y - 87
ignorehitpause = 1

[State 1052, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Hard
damage    = 90, 10
;getpower  = 0
guardflag = MA
pausetime = 5,14
sparkno = s3260
sparkxy = 21,-5
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -10,0
air.velocity = -7,-2
envshake.time = 12
envshake.freq = 80
envshake.ampl = -4
hitonce = 1
numhits = 1
guard.dist = 350
;fall.recover = 0

[State 1052, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, StateNo != 1002


;---------------------------------------------------------------------------
; energy punch A
; CNS difficulty: easy
;----------------------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 0
facep2 = 1

; voice
[State 1300, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 3) / 1000)

[State 1300, vox]
type = PlaySnd
trigger1 = var(3) != 3
trigger1 = AnimElem = 2
value = 1301, Var(10)
channel = 0


[State 0, PlaySnd]
type = PlaySnd
;trigger1 = time =  0
trigger1 = animelem = 2
value = 0,2

[State 1260]
type = Explod
trigger1 = Time = 0 && StateType = S
anim = 61
;scale = .5,.5
ontop = 1
ownpal = 1



[State 205,2]
type = playsnd
trigger1 = animelem = 1
value = 1100,0

[State 205,2]
type = playsnd
trigger1 =  movehit
value = 1200,10
persistent = 0
[State 205,2]
type = playsnd
trigger1 = movehit
value = 1300,0
persistent = 0


[State 1280]
type = VelSet
triggerall = !Vel X
trigger1 = AnimElem = 1, >= 0
x = 9

[State 220]
type = VelMul
triggerall = Vel X
trigger1 = p2bodydist x < 30
trigger2 = AnimElem = 5, >= 0
x = 0.8

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 4
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			; = medium		;2p ANIM
ground.type = high
damage = 100,10
pausetime = 10,12
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -12
air.velocity = -2,-10
yaccel = 0.55
guard.velocity = -14
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
hitsound = S2,2
guardsound = S3,0
sparkno = S9995
sparkxy = -30,-50
guard.sparkno = -1
;
fall = 0
air.fall = 1
fall.recover = 1
;
envshake.time = 10
envshake.freq = 110
envshake.ampl = 7
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
;
;palfx.time = 30                     ;##21# gill fire
;palfx.mul = 255,111,0;240,220,128
;palfx.sinadd = 32,128,190,16
;palfx.add = 255,207,80;190,180,84

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 5
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			; = medium		;2p ANIM
ground.type = high
damage = 100,10
pausetime = 10,12
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -12
air.velocity = -2,-10
yaccel = 0.55
guard.velocity = -14
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -30,-50
guard.sparkno = -1   ;
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.freq = 110
envshake.ampl = 7
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
;

;palfx.time = 30                     ;##21# gill ice
;palfx.mul = 189,240,255;240,220,128
;palfx.sinadd = 22,22,22,40;32,128,190,16
;palfx.add = 37,200,255;190,180,84



[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------
;Upperforce
;Moonsault Knee Drop
[Statedef 1400]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 14011
sprpriority = 0
facep2 = 1

[State 1310]
type = Explod
trigger1 = Time = 0 && StateType = S
anim = 61
;scale = .5,.5
ontop = 1
ownpal = 1

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S8,0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1400,1
channel = 0



[State 1310]
type = VelSet
trigger1 = AnimElem = 3
x = (P2BodyDist X)*0.02
y = -10


[State 1310]
type = VelMul
trigger1 = AnimElem = 15, >= 0
x = 1.1
y = 1.1


[State 1310]
type = ChangeState
trigger1 = MoveContact
value = 1411
ctrl = 0


[State 1310]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.35


[State 1310]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A


[State 1310]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 95,5
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 7,7
sparkno = S9995
sparkxy = 0,-76
guard.sparkno = -1
yaccel = .7
damage = 102,5
hitsound = S1400,2
guardsound = S3,0
ground.type = High
ground.hittime  = 12
ground.velocity = -9 ,-2
airguard.velocity = -2.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5



[State 1310]
type = null;VarAdd
trigger1 = !MoveContact
trigger1 = AnimElem = 17, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1310]
type = VarSet
trigger1 = MoveContact
var(19) = 1
ignorehitpause = 1
persistent = 0


[State 1310]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1



[State 1310]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 635
ctrl = 0


[State 1310]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;Moonsault Knee Drop
[Statedef 1411]
type    = U
movetype= I
physics = A
juggle  = 3
poweradd= 60
ctrl = 0
velset = -4,-5
anim = 41
sprpriority = 0
;facep2 = 1

[State 1311]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 50
persistent = 0


[State 1311]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;------------------------------------------------------------------------------------------------------------
; Air Land
[Statedef 635]
type = A
movetype = I
physics = A
anim = 50
;ctrl = 0
sprpriority = 0
;poweradd= 65
velset = 0,0
facep2 = 1


[State 635]
type = null;StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 635]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;--------------------------------------------------------
;Upperforce
[Statedef 1401]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1400,0
channel = 0



[State 1310]
type = Explod
trigger1 = Time = 0 && StateType = S
anim = 61
;scale = .5,.5
ontop = 1
ownpal = 1

[State 1401, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1401
ID = 1401
pos = 17,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -2
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =
;supermove = 0
;pausemove = 0

[State 1401, velset]
type = velset
trigger1 = animelem = 4
x = 9
y = -9

[State 1401, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = Vel x >= 1.5
x = -0.2

[State 1401, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
physics = A

[State 1401, air hitdef 1]
type = hitdef
attr = A, SA
guardflag = MA
trigger1 = animelem = 3
;trigger2 = animelem = 4
;trigger3 = animelem = 5
;ID = 1301
;noChainID = 1301
sparkno = S9995
sparkxy = 0,-76
guard.sparkno = -1
animtype = up
ground.type = hard
ground.velocity = -3,-17
air.velocity = -3,-17
yaccel = .7
damage = 98,4
hitsound = S1400,2
guardsound = S3,0
ground.hittime = 15
air.hittime = 25
pausetime = 14,14
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5



[State 1401, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;--------------------------------------------------------
;Upperforce c
[Statedef 1402]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1400,0
channel = 0

[State 1310]
type = Explod
trigger1 = Time = 0 && StateType = S
anim = 61
;scale = .5,.5
ontop = 1
ownpal = 1

[State 1402, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1401
ID = 1401
pos = 17,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -2
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =
;supermove = 0
;pausemove = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 1402, velset]
type = velset
trigger1 = animelem = 4
x = 1.2
y = -9; -10

[State 1402, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = Vel x >= 0.5
x = -0.2

[State 1402, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
physics = A

[State 1402, air hitdef 1]
type = hitdef
attr = A, SA
guardflag = MA
trigger1 = animelem = 3
;trigger2 = animelem = 4
;trigger3 = animelem = 5
;ID = 1301
;noChainID = 1301
sparkno = S9995
sparkxy = 0,-76
guard.sparkno = -1
animtype = up
ground.type = hard
ground.velocity = -1,-20
air.velocity = -1,-20
yaccel = .7
damage = 102,5
hitsound = S1400,2
guardsound = S3,0
ground.hittime = 15
air.hittime = 25
pausetime = 14,14
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 1402, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;-----------------------------------------------------
;powerforce x
[Statedef 1500]
type = S
movetype = A
physics = S
poweradd = 50
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = AnimElem = 5
anim = 918
ID = 918
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S181,1

[State 1500, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 2

[State 1500, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1500, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 1500, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3


[State 1500, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
guard.sparkno = -1
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 60,6
hitsound = S2,1
ground.hittime = 15
pausetime = 10, 10
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 1500, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 95,6
hitsound = S2,2
ground.hittime = 15
pausetime = 14,14
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 1500, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1100
elem = 8

[State 1500, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1500, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
;powerforce y
[Statedef 1501]
type = S
movetype = A
physics = S
poweradd = 55
velset = 0,0
anim = 1101
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = AnimElem = 5
anim = 918
ID = 918
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S181,1


[State 1501, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 4

[State 1501, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1501, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 1501, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3



[State 1501, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 4

[State 1501, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1501, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 1501, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3

[State 1501, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 60,6
hitsound = S2,1
ground.hittime = 15
pausetime = 10, 10
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 1501, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
guard.sparkno = -1
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 95,6
hitsound = S2,2
ground.hittime = 15
pausetime = 15,15
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 1501, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1101
elem = 8

[State 1501, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1501, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
;powerforce z
[Statedef 1502]
type = S
movetype = A
physics = S
poweradd = 50
velset = 0,0
anim = 1102
ctrl = 0
sprpriority = 2

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S181,1


[State 0, Dust]
type = Explod
trigger1 = AnimElem = 5
anim = 918
ID = 918
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1502, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 6

[State 1502, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1502, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1502, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3

[State 1502, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 60,6
hitsound = S2,1
ground.hittime = 15
pausetime = 11, 11
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 1502, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 95,6
hitsound = S2,2
ground.hittime = 15
pausetime = 16,16
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 1502, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1102
elem = 8

[State 1502, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1502, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------
[Statedef 1600]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 9
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 1.5
y = 0
;ignorehitpause =
;persistent =

[State 1600, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,0

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 1600, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 3) / 1000)

[State 1600, vox]
type = PlaySnd
trigger1 = var(3) != 3
trigger1 = AnimElem = 2
value = 1301, Var(10)
channel = 0


[State 1300, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 3
ID = 1302
noChainID = 1302
sparkno = s9992
guard.sparkno = -1
sparkxy = -10, -60
animtype = diagup
ground.type = hard
ground.velocity = -20,-3
air.velocity = -6,-5
damage = 120,5
hitsound = S2,2
ground.hittime = 15
pausetime = 14,14
fall = 1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 1300, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
[Statedef 1700]
type = A
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = Velmul
trigger1 = animelem = 1
x = 0
y = -3
;ignorehitpause =
;persistent =

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500,1


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500,1



[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500,1



[State 0, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 1021
projanim = 1021
projscale = .5,.5
projremove = 1
projremovetime = -1
velocity = 7,5
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-80
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 5,5
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 1510,0
hitsound =s4000,1
guardsound = 3,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slide = -2,0
guard.slide = -1
ground.slidetime = 0
guard.slidetime = 0
ground.hit = 0
guard.hit = 0
ground.hittime = 0
guard.hittime = 0
air.hittime = 20
ground.velocity = -1,3
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 5
ProjID = 1022
projanim = 1021
projscale = .5,.5
projremove = 1
projremovetime = -1
velocity = 7,7
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-80
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 5,5
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 1510,0
hitsound = -1
guardsound = 3,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slide = -2,0
guard.slide = -1
ground.slidetime = 0
guard.slidetime = 0
ground.hit = 0
guard.hit = 0
ground.hittime = 0
guard.hittime = 0
air.hittime = 20
ground.velocity = -1,3
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall = 0



[State 600,***]
type = explod
trigger1 = ProjHit1021 = 1
anim = 1022
pos = 0,-75
scale = .5,.5
facing = -1
postype = P2
sprpriority = 2
bindtime = -1
removetime = 12

[State 600,***]
type = explod
trigger1 = ProjHit1022 = 1
anim = 1022
pos = 0,-75
scale = .5,.5
facing = -1
postype = P2
sprpriority = 2
bindtime = -1
removetime = 12


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 0


[Statedef 1800]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 50
juggle = 3
anim = 1600

[State 1800, 1]
type = PlaySnd
trigger1 = time = 0
value = 1600, 0

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 2
value = 1601, Var(10)
channel = 0



[State 1800, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 6
y = 10

[State 1800, 4]
type = Hitdef
trigger1 = AnimElem = 4
attr = A, SA
hitflag = MAF
guardflag = HA
animtype = Hard
priority = 5, Hit
damage = 80, 3
pausetime = 8, 8
sparkno = s9995
guard.sparkno = -1
sparkxy = -10, -25
hitsound = S2, 2
guardsound = S1, 0
ground.type = High
ground.hittime = 24
ground.slidetime = 13
ground.velocity = -6
air.hittime = 25
air.velocity = -4, 10
guard.slidetime = 11
guard.hittime = 18
guard.velocity = -6
getpower = 50
givepower = 30

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 1800, AfterImage]
type = AfterImage
trigger1 = animelem = 2
time = 10
timegap  = 1
framegap = 2
length = 5
palcolor = 256
palcontrast = 255,255,0
paladd = 100,100,0
palmul = .65,.65,.65
trans = add





[State 1030, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 50
ctrl = 1


;----------------------------------------------------------------------------------
;---------------------------------------------------------------------------;
;                           [ Special Moves ]                               ;
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 1200:      Light dark barrier]
type                = S
movetype            = A
physics             = S
juggle              = 7
velset              = 0,0
ctrl                = 0
anim                = 1200
sprpriority         = 2
poweradd            = 10

[State 701:         explod escudo]
type                = removeExplod
trigger1            = 1
id                  = 8400

[State 701:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 1601,0
channel             = 11

[State 701:         helper escudo]
type                = helper
triggerall          = !numhelper(8400)
trigger1            = time = 0
ID                  = 8400
stateno             = 703
postype             = p1
pos                 = -20,-20
sprpriority         = 5
ownpal              = 1
helpertype          = normal
keyctrl             = 0


[State 701:         Changestate]
type                = ChangeState
trigger1            = Time = 30
trigger2            = !numhelper(8400)
value               = 1202
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 1202:      Light dark barrier]
type                = S
movetype            = A
physics             = S
juggle              = 7
velset              = 0,0
ctrl                = 0
anim                = 1201
sprpriority         = 2
poweradd            = 10

[State 702:         Changestate]
type                = ChangeState
trigger1            = !AnimTime
value               = 0
ctrl                = 1
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 703:     Helper Dark Barrier A]
type                = S
movetype            = A
physics             = N
ctrl                = 0
anim                = 1211
sprpriority         = 3
velset              = 0,0
juggle              = 7
[State 703:         helper escudo]
type                = helper
trigger1            = !numhelper(706) && movehit
stateno             = 706
id                  = 706
postype             = p1
ownpal              = 1
ignorehitpause      = 1


[State 703:         Bindtoparent]
type                = Bindtoparent
trigger1            = 1
pos                 = 50,-75
postype             = p1


[State 0, ]
type                = AssertSpecial
trigger1            = 1
flag                = noshadow

[State 703:	        NotHitBy]
type 			    = NotHitBy
trigger1 		    = Time >= 0
time 			    = 1
value 		        = SCA, AA, AT
ignorehitpause 	    = 1

[State 703:	        HitBy]
type 			    = HitBy
trigger1 		    = Time >= 0
value 		        = SCA,AP
time 			    = 1
ignorehitpause 	    = 1

[State 703:         hitoverride]
type                = HitOverride
trigger1            = 1
stateno             = 705
attr                = SCA,AP
slot                = 0
time                = -1




[State 705:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 0,16
channel             = 10

[State 703:         Bindtoparent]
type                = Bindtoparent
trigger1            = 1
pos                 = 50,-75
postype             = p1

[State 703:         hitdef]
type                = HitDef
trigger1            = time >= 0
animtype            = hard
attr                = A, SP
damage              = 90,10
hitflag             = MAF
guardflag           = M
pausetime           = 0,10
sparkno             = -1
guard.sparkno       = -1
sparkxy             = -20,0
hitsound            = s1,7
guardsound          = s1,8
ground.type         = high
ground.slidetime    = 18
ground.hittime      = 18
ground.velocity     = -4,-5.5
guard.velocity      = -6
air.velocity        = -4,-3.5
guard.velocity      = -9.2
air.cornerpush.veloff = 0
fall                = 1
fall.recover        = 0
yaccel              = .55
envshake.time       = 16
envshake.freq       = 60
envshake.ampl       = 4
[State 703:         destroyself]
type                = changestate
trigger1            = movecontact
trigger2            = parent, stateno != 1200
value               = 704

[State 703:         destroyself]
type                = destroyself
trigger1            = parent, stateno != 1200
value               = 0
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 704:     Spark Impact]
type                = S
movetype            = A
physics             = N
ctrl                = 0
anim                = 12111
sprpriority         = 5
velset              = 0,0

[State 703:         Bindtoparent]
type                = Bindtoparent
trigger1            = 1
pos                 = 50,-75
postype             = p1


[State 703:	        NotHitBy]
type 			    = NotHitBy
trigger1 		    = Time >= 0
time 			    = 1
value 		        = SCA
ignorehitpause 	    = 1


[State 704:         destroyself]
type                = destroyself
trigger1            = !animtime
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 705:     Spark Impact]
type                = S
movetype            = A
physics             = N
ctrl                = 0
anim                = 1214
sprpriority         = 5
velset              = 0,0
juggle              = 7

[State 703:	        NotHitBy]
type 			    = NotHitBy
trigger1 		    = Time >= 0
time 			    = 1
value 		        = SCA
ignorehitpause 	    = 1

[State 703:         Bindtoparent]
type                = Bindtoparent
trigger1            = 1
pos                 = 50,-75
postype             = p1


[State 705:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 5,8
channel             = 1

[State 705:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 7,1
channel             = 2

[State 705:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 1201,1
channel             = 2


[State 704:         PalFX]
type                = Projectile
trigger1            = Animelem = 1
ProjID              = 950
projanim            = 1212
projhitanim         = 1213
projremanim         = 1213
projcancelanim      = 1213
projremove          = 1
velocity            = 20,0
accel               = 0,0
velmul              = 1
projhits            = 1
projpriority        = 10
projsprpriority     = 50
projedgebound       = 50
projstagebound      = 50
projheightbound     = -240,1
offset              = -50,-25
postype             = p1
attr                = A, SP
damage              = 95
animtype            = hard
guardflag           = M
hitflag             = MAF
priority            = 10, Hit
pausetime           = 0,0
sparkno             = -1
guard.sparkno       = -1
sparkxy             = 0,0
hitsound            = s1,38
guardsound          = s5,17
ground.type         = low
ground.slidetime    = 25
ground.hittime      = 25
ground.velocity     = -1.5,-9
airguard.velocity   = -1.9,-.8
air.type            = low
air.velocity        = -1.4, -9
air.hittime         = 12
fall                = 1
fall.recover        = 0
getpower            = 0,0
envshake.time       = 16
envshake.freq       = 60
envshake.ampl       = 4


[State 705:         destroyself]
type                = destroyself
trigger1            = animtime = 0
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[Statedef 706:     Spark Impact]
ctrl                = 0
anim                = 8500

[State 706:         pause]
type                = Pause
triggerall          = (gametime%3) = 0
trigger1            = 16
time                = 1
movetime            = 0

[State 706:         destroyself]
type                = destroyself
trigger1            = time = 8
;---------------------------------------------------------------------------;

;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(18) - StateDef -2
; Var(19) - StateDef 1400

;--------------------- Float Variable List ----------------------

; fVar(5) - StateDef -3
