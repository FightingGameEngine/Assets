; States file for {character} -- Hypers
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
; Hyper Attacks
;---------------------------------------------------------------------------

;==============================================================
; Hyper 1
;==============================================================

[Statedef 1050]
type = S
movetype = A
physics = N
anim = 1050
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG

[State 0, SpecialDust]
type = Explod
trigger1 = time = 1
scale = const(size.xscale)
id = 61
anim = 61
pos = 0,5
sprpriority = 3
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State 0, portraitBG]
type = Explod
trigger1 = AnimElem = 2
ID = 10005
anim = 10005
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
sprpriority = 5
ownpal = 1
supermovetime = 9999

[State 0, superportrait]
type = Explod
trigger1 = AnimElem = 2
ID = 10006
anim = 10006
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
ontop = 1
ownpal = 1
supermovetime = 9999

[State 0, superBG]
type = Explod
trigger1 = time = 0
anim = 115
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
supermovetime = -1
sprpriority = -5
removetime = 65
scale = 1,1
removeongethit = 1

[State 0, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 65
anim = S8002
sound = S10,2
pos = 0,-80
darken = 1
poweradd = -1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,8
volume = 0
channel = 0

; end DCvM stuff
;-------------------

[State 0, NHB]
type = Nothitby
trigger1 = animelem = 2, >= 3
value = SCA

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051
ctrl = 0

;-------------------------------------------------------------------------
; Hyper 1 (Parte # 1)

[Statedef 1051]
type = S
movetype = A
physics = N
anim = 1051
velset = 0,0
juggle = 12
ctrl = 0

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 16

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,1
channel = 0
volume = 50

[State 0, 2]
type = Varadd
trigger1 = AnimElem = 1, = 0
var(22) = -1000
ignorehitpause = 1

[State 0, 3]
Type = VelSet
trigger1 = MoveHit
y = 0
x = 0

[State 0, 4]
Type = StateTypeSet
trigger1 = Time = 1
StateType = A

[State 0, 5]
Type = VelSet
trigger1 = Time = 0
y = 0
x = 10

[State 0, 6]
Type = VelSet
trigger1 = time = 7
y = .1

[State 0, 7]
Type = VelSet
trigger1 = time = 13
y = .2

[State 0, 8]
Type = VelSet
trigger1 = time = 16
y = 1

[State 0, HyperBg]
type = Explod
trigger1 = time = 0
id = 9999
anim = 9999
pos = 0,0
sprpriority = -4
postype = front
bindtime = -1
removetime = -1
removeongethit = 1
facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State 0, 10]
type = Explod
trigger1 = timemod = 3,0
scale = const(size.xscale)
id = 50000
anim = 50000
pos = 0,0
sprpriority = 3
bindtime = 1
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State 0, 10]
type = HitDef
trigger1 = enemynear, statetype != L
trigger1 = animelem = 2
attr = S, HA
animtype = light
damage = 14,0
guardflag = MA
hitflag = MAFD
pausetime = 9,11
sparkno = S9996
guard.sparkno = s9997
sparkxy = -0,-46
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -2
air.velocity = -2,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 9,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
p2facing = 1
kill = 0
yaccel = .5
p2stateno = 8009
p2getp1stateno = 1
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 11]
type = Nothitby
trigger1 = 1
value = , AP

[State 0, hit]
type = ChangeState
trigger1 = enemynear, statetype != L
trigger1 = movehit
value = 1053
ctrl = 0

[State 0, hit]
type = ChangeState
trigger1 = enemynear, statetype = L
trigger1 = movehit
value = 6120
ctrl = 0

[State 0, miss]
type = ChangeState
trigger1 = moveguarded
value = 1052
ctrl = 0

[State 0, miss]
type = ChangeState
trigger1 = AnimTime = 0
value = 1052
ctrl = 0

;-------------------------------------------------------------------------
; Hyper 1 (Parte # 2)

[Statedef 1052]
type = S
movetype = A
physics = S
anim = 1052
velset = 0,0
ctrl = 0

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 11

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Hyper 1 (Parte # 2)

[Statedef 1053]
type = S
movetype = A
physics = N
anim = 1053
velset = 0,0
ctrl = 0

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = AnimElem = 1
trigger2 = animelem = 3
trigger3 = animelem = 6
trigger4 = animelem = 11
trigger5 = animelem = 15
trigger6 = animelem = 21
trigger7 = animelem = 27
trigger8 = animelem = 34
trigger9 = animelem = 40
trigger10 = animelem = 48
trigger11 = animelem = 54
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 30

[State 0, 0]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 11
trigger4 = animelem = 15
value = 0,1
channel = 0
volume = 35

[State 0, 0]
type = PlaySnd
trigger1 = animelem = 21
trigger2 = animelem = 27
trigger3 = animelem = 34
trigger4 = animelem = 40
trigger5 = animelem = 48
trigger6 = animelem = 54
value = 0,2
channel = 0
volume =35

[State 0, 0]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 15
trigger3 = animelem = 27
trigger4 = animelem = 34
trigger5 = animelem = 48
value = 40,4
channel = 0
volume = 35

[State 0, 0]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 21
trigger4 = animelem = 40
trigger5 = animelem = 54
value = 40,5
channel = 0
volume = 35

[State 0, 1]
type = attackmulset
trigger1 = 1
ignorehitpause
value = 1

[State 0, 2]
type = targetbind
trigger1 = Time = 0
pos = 65,0
time = 1

[State 0, 3]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-73
hitsound = S2,0
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 4]
type = HitDef
trigger1 = animelem = 6
attr = S, HA
animtype = Hard
damage = 19,10
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-58
hitsound = S2,0
guardsound = S3,0
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 5]
type = HitDef
trigger1 = animelem = 11
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-68
hitsound = S2,1
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 6]
type = HitDef
trigger1 = animelem = 15
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-34
hitsound = S2,1
guardsound = S3,0
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 7]
type = HitDef
trigger1 = animelem = 21
attr = S, HA
animtype = Hard
damage = 19,10
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-65
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = HitDef
trigger1 = animelem = 27
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-42
hitsound = S2,2
guardsound = S3,0
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 9]
type = HitDef
trigger1 = animelem = 34
attr = S, HA
animtype = Hard
damage = 19,10
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-61
hitsound = S2,1
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 10]
type = HitDef
trigger1 = animelem = 40
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-68
hitsound = S2,1
guardsound = S3,0
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 11]
type = HitDef
trigger1 = animelem = 48
attr = S, HA
animtype = Hard
damage = 15,7
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-83
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 12]
type = HitDef
trigger1 = AnimElem = 54
attr = S, HA
damage = 15,7
animtype = Heavy
getpower = 0
givepower = 30
guardflag = M
hitflag = MAF
hitsound = S2,1
guardsound = S3,0
pausetime =14, 14
sparkno = S9996
guard.sparkno = s9997
sparkxy = 0,-80
ground.type = Low
ground.slidetime = 18
ground.hittime  = 22
ground.velocity = -3,-9
air.velocity = -3,-9
yaccel = 0.45
fall = 1
air.fall = 1
air.hittime = 36
fall.recover = 0
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 3]
type = PlaySnd
trigger1 = Animelem = 53
value = 40,5

[State 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 1054

;-------------------------------------------------------------------------------
; Hyper 1 (Parte # 3)

[Statedef 1054]
type = A
movetype = A
physics = N
anim = 1054
velset = 4, -12

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 1]
type = Explod
trigger1 = Animelem =1
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 3
ownpal = 1

[State 0, 4]
type = VelAdd
trigger1 = AnimElem = 2 , < 0
X = Ifelse(Vel X > 0, -0.14, 0)
Y =  0.40

[State 0, 5]
type = VelAdd
trigger1 = AnimElem = 2 , >= 0
X = Ifelse(Vel X > 0, -0.2, 0)
Y =  0.50

[State 0, 6]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 | AnimElem = 4 || AnimElem = 5
attr = A, SA
damage = 15,7
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

[State 0 7]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 1055

;------------------------------------------------------------------------
; Hyper 1 (Parte # 4)

[Statedef 1055]
type = S
movetype = I
physics = S
anim = 1055
velset = 0, 0

[State 0, 0]
type = Explod
trigger1 = Time = 1
persistent = 0
anim = 60
ID = 60
pos = -5,-3
postype = p1
sprpriority = -1
bindtime = 1

[State 0, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 0, 4]
type = AfterImage
trigger1 = AnimTime = 0
Time = 0

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================================
; Hyper 2
;==============================================================

[Statedef 1056]
type = S
movetype = A
physics = N
anim = 1050
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG

[State 0, SpecialDust]
type = Explod
trigger1 = time = 1
scale = const(size.xscale)
id = 61
anim = 61
pos = 0,5
sprpriority = 3
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State 0, portraitBG]
type = Explod
trigger1 = AnimElem = 2
ID = 10005
anim = 10005
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
sprpriority = 5
ownpal = 1
supermovetime = 9999

[State 0, superportrait]
type = Explod
trigger1 = AnimElem = 2
ID = 10006
anim = 10006
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
ontop = 1
ownpal = 1
supermovetime = 9999

[State 0, superBG]
type = Explod
trigger1 = time = 0
anim = 115
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
supermovetime = -1
sprpriority = -5
removetime = 65
scale = 1,1
removeongethit = 1

[State 0, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 65
anim = S8002
sound = S10,2
pos = 0,-80
darken = 1
poweradd = -1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,17
volume = 0
channel = 0

; end DCvM stuff
;-------------------

[State 0, NHB]
type = Nothitby
trigger1 = animelem = 2, >= 3
value = SCA

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1057
ctrl = 0

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 1)

[Statedef 1057]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1057
juggle = 4
sprpriority = 2

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 60

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 40,1

[State 0, 1]
type = VarSet
trigger1 = !time
v =  0
value = 0

[State 0, 1]
type = VarSet
trigger1 = NumHelper(1059)
trigger1 = helper(1059), movehit
v =  0
value = 1

[State 0, 1]
type = ScreenBound
trigger1 = var(0)
value = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 21
anim = 9994
id = 9994
postype = P1
pos = 8,-8
sprpriority = 3
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 21
anim = 9995
id = 9995
postype = P1
pos = 8,-5
sprpriority = 6
ownpal = 1

[State 0, Explosion]
type = Explod
trigger1 = AnimElem = 21
anim = 1063
postype = P1
pos = -30, 13
sprpriority = 5

[State 0, Explosion]
type = Explod
trigger1 = AnimElem = 21
anim = 1064
postype = P1
pos = 70, 13
sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = Animelem = 21
anim = 1065
id = 1065
postype = P1
pos = 20, 0
sprpriority = 7
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 21
anim = 1062
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
supermovetime = -1
sprpriority = -5
removetime = 15
scale = 1,1
removeongethit = 1

[State 0, roca]
type = Explod
trigger1 = animelem = 25
anim = 70
postype = p1
pos = 25,5

[State 0, 1]
type = Helper
trigger1 = AnimElem = 21
helpertype = normal
name = "Ministone"
ID = 1058
pos = 0,0
postype = p1
ownpal = 1
stateno = 1058
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 21
value = 40,10

[State 0, 1]
type = Helper
trigger1 = AnimElem = 21
helpertype = normal
name = "Stone"
ID = 1059
pos = 80,0
postype = p1
ownpal = 1
stateno = 1059
persistent = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 21
attr = S, HA
animtype  = Up
damage    = 70,35
guardflag = MA
hitflag = MAFD
pausetime = 0,3
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-70
hitsound   = s2,2
guardsound = s3,0
ground.type = High
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -5,-11.5
down.velocity = -5, -11.5
air.velocity = -2,-5.5
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 8]
type = EnvShake
trigger1 = AnimElem = 21
time = 40
freq = 80
ampl = -7

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = time >=62 && backedgebodydist > -122
trigger1 = !Numhelper(1058)
value = 1062

[State 0, 1]
type = ChangeState
trigger1 = time >=62 && backedgebodydist <= -122
trigger1 = !Numhelper(1059)
value = 1060

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 2)

[Statedef 1058]
type    = A
movetype= I
physics = N
velset = 7,0
anim = 1058
sprpriority = -2

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 1059
ID = 1059
pos = 0,0
postype = p1
bindtime = ifelse(facing =-1,-1,1)
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -2
under = 1

[State 0, 1]
type = ModifyExplod
trigger1 = 1
ID = 1059
scale = (ParentDist X), 1
sprpriority = -1

[State 0, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = RemoveExplod
trigger1 = parent, stateno !=[1057,1060]
ID = 1059

[State 0, 1]
type = DestroySelf
trigger1 = parent, stateno !=[1057,1060]

[State 0, 1]
type = ChangeState
trigger1 = time >= 30 && parent, Numhelper(1059) = 0
value = 1061

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 3)

[Statedef 1059]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 4

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 1]
type = ChangeAnim
trigger1 = !time && Anim !=1060
value = 1060

[State 0]
type = Helper
trigger1 = Time = 16 && FrontEdgeDist > -16
stateno = 1059
id = 1059
ownpal = 1
pos = 65,floor(-Pos Y)-12

[State 0, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50, 5

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype  = Up
damage    = 11,6
guardflag = MA
hitflag = MAFD
pausetime = 0,3
guard.sparkno = S9997
sparkno = S9996
sparkxy = -10,-70
hitsound   = s2,0
guardsound = S3,0
ground.type = High
guard.velocity = -7
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = 0,-11.5
air.velocity = -2,-5.5
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 2]
type = HitDef
trigger1 =  AnimElem = 3
attr = S, HA
animtype  = Hard
damage    = 11,6
guardflag = MA
pausetime = 0,12
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-70
hitsound   = s2,0
guardsound = S3,0
ground.type = High
guard.velocity = -7
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -2,-2
air.velocity = -2,-2
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
damage    = 11,6
guardflag = MA
pausetime = 0,2
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-70
hitsound   = s2,0
guardsound = S3,0
ground.type = High
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -10,-3.3
air.velocity = -10,-2
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1063
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = DestroySelf
trigger1 = root, stateno != 1057
trigger2 = animtime=0

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 4)

[Statedef 1060]
type = S
movetype = I
physics = N
anim = 0
ctrl = 0
velset = 0,0

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 16

[State 0,2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, 2]
type = PosAdd
trigger1 = BackEdgeDist < -100
x = -100 - BackEdgeDist

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 35
value = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = 40,1

[state 0, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 0, 4]
type = Velset
trigger1 = Time = 50
x = 8

[State 0, 5]
type = ChangeState
trigger1 = BackEdgeDist > 40
value = 101

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 5)

[Statedef 1061]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = -2

[State 0, 1]
type = ModifyExplod
trigger1 = 1
ID = 1059
scale = (ParentDist X), 1
sprpriority = -1

[State 0, 1]
type = VelSet
trigger1 = !time
x = (ParentDist X)/7

[State 0, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = RemoveExplod
trigger1 = time >= 7
ID = 1059

[State 0, 1]
type = DestroySelf
trigger1 = time >=7

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 6)

[Statedef 1062]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1061

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 10

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 2 (Parte # 7)

[Statedef 1063]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 4

[State 0, 1]
type = ChangeAnim
trigger1 = !time && Anim !=1060
value = 1060

[State 0, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 2]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 5
attr = S, HA
animtype  = Up
damage    = 30,16
guardflag = MA
pausetime = 0,10
sparkno = S9996
guard.sparkno = s9997
sparkxy = -10,-90
hitsound   = s2,2
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = 0,-13.5
air.velocity = 0,-13.5
yaccel = 0.55
sprpriority = 4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1063
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = DestroySelf
trigger1 = root, stateno != 1056
trigger2 = animtime=0

;==============================================================
; Hyper 3
;==============================================================

[Statedef 1070]
type = S
movetype = A
physics = N
anim = 1050
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG

[State 0, SpecialDust]
type = Explod
trigger1 = time = 1
scale = const(size.xscale)
id = 61
anim = 61
pos = 0,5
sprpriority = 3
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State 0, portraitBG]
type = Explod
trigger1 = AnimElem = 2
ID = 10005
anim = 10005
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
sprpriority = 5
ownpal = 1
supermovetime = 9999

[State 0, superportrait]
type = Explod
trigger1 = AnimElem = 2
ID = 10006
anim = 10006
postype = back
pos = 0, 30
bindtime = -1
removetime = 65
ontop = 1
ownpal = 1
supermovetime = 9999

[State 0, superBG]
type = Explod
trigger1 = time = 0
anim = 115
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
supermovetime = -1
sprpriority = -5
removetime = 65
scale = 1,1
removeongethit = 1

[State 0, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 65
anim = S8002
sound = S10,2
pos = 0,-80
darken = 1
poweradd = -1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,10
volume = 0
channel = 0

; end DCvM stuff
;-------------------

[State 0, NHB]
type = Nothitby
trigger1 = animelem = 2, >= 3
value = SCA

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1071
ctrl = 0

;----------------------------------------------------------------------
; Hyper 3 (Parte # 1)

[Statedef 1071]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1071
sprPriority = -3

[State 0, Explod]
type = Explod
trigger1 = animelem = 14
sprpriority = 7
id = 1079
anim = 1079
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1

[State 0, 0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 180

[State 0, 1]
type = helper
trigger1 = animelem = 14
helpertype = normal
name = "SteelMissile"
id = 1077
pos = 0,-72
stateno = 1077
ownpal = 0

[State 0, Black Superman]
type = helper
trigger1 = animelem = 1
helpertype = normal
name = "Superman"
id = 1072
pos = 0,-200
postype = p1
stateno = 1072
ownpal = 0

[State 0, 0]
type = removeexplod
trigger1 = time = 130
id = 1079

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 3 (Parte # 2)

[Statedef 1072]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 1072
sprPriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,18

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time = 0
palcolor = 0
framegap = 8
length = 32
time = 200
trans = add1

[State 0, 1]
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)+.10

[State 0, 2]
type = VelAdd
trigger1 = Vel X < 0
x = 1/1

[State 0, 3]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1073

;----------------------------------------------------------------------
; Hyper 3 (Parte # 3)

[Statedef 1073]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 1073
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = animelem = 9
sprpriority = 7
id = 1080
anim = 1080
postype = P1
pos = 0, 0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1

[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 110

[State 0, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 1075
time = -1

[State 0, 1]
type = helper
trigger1 = animelem = 9
helpertype = normal
name = "SupermanMissile"
id = 1076
pos = 0,-72
stateno = 1076
ownpal = 0

[State 0, 1]
type = removeexplod
trigger1 = time = 120
id = 1080

[State 0, 2]
type = changestate
trigger1 = animelem = 27
trigger1 = numhelper(1072) = 1
value = 1074

;----------------------------------------------------------------------
; Hyper 3 (Parte # 4)

[Statedef 1074]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 1074
sprpriority = 1

[state 0, 0]
type = AfterImage
trigger1 = Time <= 0
palbright = 0,50,100
palcolor = 0
framegap = 8
length = 32
time = 120

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 100,19

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 0, 2]
type = changestate
trigger1 = animelem = 15
value = 1075

;----------------------------------------------------------------------
; Hyper 3 (Parte # 5)

[Statedef 1075]
type    = S
physics = S
ctrl = 0
anim = 1075
sprpriority = 6

[State 0, vel]
type = velset
trigger1 = animelem = 1
y = -10

[State 0, 0]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -35,-35,-45
IgnoreHitPause = 1
time = 1

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[state 0, 0]
type = AfterImage
trigger1 = Time = 0
palcolor = 0
framegap = 8
length = 32
time = 50
trans = add1

[State 0, DestroySelf]
type = Destroyself
trigger1 = time = 60

;---------------------------------------------------------------------------
; Hyper 3 (Parte # 6)

[Statedef 1076]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1076

[State 0, SprPriority]
type = SprPriority
trigger1 = AnimElem = 43
value = 2

[State 0 , 1]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10
trigger3 = AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger4 = AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger5 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25
trigger6 = AnimElem = 26 || AnimElem = 27 || AnimElem = 28 || AnimElem = 29 || AnimElem = 30
trigger7 = AnimElem = 31 || AnimElem = 32 || AnimElem = 33 || AnimElem = 34 || AnimElem = 35
trigger8 = AnimElem = 36 || AnimElem = 37 || AnimElem = 38 || AnimElem = 39 || AnimElem = 40
attr = A, SA
damage  = 5,3
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,10
guard.sparkno = s9997
sparkxy = 0,0
hitsound   = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
palfx.add = 247,247,115
palfx.mul = 247,130,0
palfx.time = 45
removeongethit = 1
fall = 1
air.fall = 1

[State 0, Explod]
type = Explod
triggerall = stateno = 1076
trigger1 = TimeMod = 50,0
sprpriority = 7
id = 918
anim = 918
pos = -16, 73
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = -1

[State 0, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 1078
random = 2, 10
pos = -10,-75
postype = p2
sprpriority = 16
bindtime = 1

[State 0, 1]
type = removeexplod
trigger1 = animtime = 0
id = 918

[state 0, 8]
type = destroyself
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; Hyper 3 (Parte # 7)

[Statedef 1077]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1077

[State 0, 6]
type = PlaySnd
trigger1 = Time = 12
value = 40,6

[State 0, SprPriority]
type = SprPriority
trigger1 = AnimElem = 47
value = 3

[State 0 , 1]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 10
trigger3 = AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger4 = AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger5 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24 || AnimElem = 25
trigger6 = AnimElem = 26 || AnimElem = 27 || AnimElem = 28 || AnimElem = 29 || AnimElem = 30
attr = A, SA
damage  = 6,4
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,10
guard.sparkno = s9997
sparkxy = 0,0
hitsound   = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
palfx.add = 247,247,115
palfx.mul = 247,130,0
palfx.time = 45
removeongethit = 1
fall = 1
air.fall = 1
envshake.time = 3
envshake.freq = 15
envshake.ampl = -5

[State 0, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9993
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 0, 8]
type = destroyself
trigger1 = Animtime = 0
