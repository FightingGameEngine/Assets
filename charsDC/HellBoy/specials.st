;Helper
;-------------------------------------------------------------------------------
; Deadshot-Floyds attack

[Statedef 1150]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1051
ctrl = 0
sprpriority = 0

[State 240, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s60,12





[State 1150, CallHelper]
type = helper
trigger1 = animelem = 1
ID = 12200
pos = 0,-60
postype = back
stateno = 12200
helpertype = normal
name = "deadshot"
ownpal = 0
keyctrl = 0



[State 1150, TheEnd]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
 ;Anti Spam Helper
;-------------------------------------------------------------------------
[Statedef 1055]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1055
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time <= 30
flag = invisible
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 200;p2stateno != [3050,3054];time = 200
;---------------
; Deadshot helper
;---------------
[Statedef 12200]
type = S
anim = 1150
velset = 4, 4
movetype = A
physics = N
sprpriority = 3

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S77,0


[State 12200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S8,0

[State 12200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3,1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 2
value = 1

[State 0, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 12203
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = root, movetype = H
value = 12203
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[State 1200, 2]
type = ChangeState
trigger1 = Pos Y = 0
value = 12201

;------------------
; Deadshot shooting
;------------------
[Statedef 12201]
type = S
anim = 1160
velset = 0,0
movetype = A
physics = N
sprpriority = 3



[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 8768
ProjID = 1152
projanim = 1152
projhitanim = 1152
projremanim = -1
projcancelanim = -1
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 19,(1- random/500)
offset = 20, -84
; HitDef
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = low
priority = 4,Hit
damage = 75,10
pausetime = 0,30
sparkxy = 25,5
sparkno = -1
guard.sparkno = s679
hitsound   = s600,1
guardsound = 6,0

[State 1200, bulletsound]
type = PlaySnd
trigger1 = animelem = 4;time = 1
value = 75,6





[State 0, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 12203
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = root, movetype = H
value = 12203
ctrl = 0

[State 1202, TheEnd]
type = ChangeState
trigger1 = time = 60;AnimTime = 0
value = 12203

;------------------
; Deadshot jumps out
;------------------
[Statedef 12203]
type = S
anim = 1151
velset = -4,-4
movetype = A
physics = N
sprpriority = 3



[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S8,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0



[State 1203, TheEnd]
type = destroyself
trigger1 = Time = 45

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 80
juggle = 1

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S75,2

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S77,4


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-95
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,-3
air.velocity = -8,-3
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0
poweradd = 80
juggle = 1

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S77,4


[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S75,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-83
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,-3
air.velocity = -8,-3
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1c
[StateDef 1017]
type = S
movetype = A
physics = S
anim = 1017
ctrl = 0
velset = 0,0
poweradd = 80
juggle = 1

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S77,4


[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S75,2


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1018
projanim = 1018
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 12,-9
offset = 70,-110
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,-3
air.velocity = -8,-3
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1020]
type = A
movetype = A
physics = A
anim = 1020
ctrl = 0
velset = 0,0
poweradd = 80
juggle = 1

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S77,4


[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S75,2


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-105
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,-3
air.velocity = -8,-3
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 70



;------------------------------------------------------------
;shoryuuken debil
[StateDef 1100]
type = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1100
poweradd=30
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S8,0

[State 0, explod]
type = Explod
trigger1 = animelem = 3
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2100,10
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 5
value = S0,2
volume = 0
channel = -1

[State 1100, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(4) = 0
x = 5*const(size.xscale)

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
StateType = A

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 2.5*const(size.xscale)
y = -7.5*const(size.yscale)

[State 1100, Velocity]
type = VelSet
trigger1 = vel X = [0,0.1]
x = 0

[State 1110, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 0
y = .50*const(size.yscale)

[State 1110, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
x = .85

[State 1105, 1]
type = HitDef
trigger1 != time
attr = A, SA
animtype  = up
air.animtype  = up
damage = 70,5
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
guard.pausetime = 10,9
sparkno = s8222
guard.sparkno = s8001
sparkxy = var(42):=-15, var(43):=-80
hitsound = s8000,1
guardsound = s8000,6
air.type = High
ground.type = Low
ground.slidetime = 13
ground.hittime  = 17
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale),-11.0*const(size.yscale)
guard.velocity = -5.0*const(size.yscale)
air.velocity = -3.5*ifelse(p2dist x>=5,1,-1)*const(size.xscale),-9.6*const(size.yscale)
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 3
;envshake.phase =
P2facing = ifelse(p2dist x>=5,1,-1)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) > 0
value = 1110
;---------------------------------------------------------------------------
;Shouryuu Ken2
[Statedef 1101]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1101
poweradd=30
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S8,0

[State 0, explod]
type = Explod
trigger1 = animelem = 3
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2100,10
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 5
value = S0,2
volume = 0
channel = -1

[State 1110, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(4) = 0
x = 5*const(size.xscale)

[State 1110, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
StateType = A

[State 1110, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 5.8*const(size.xscale)
y = -9.5*const(size.yscale)

[State 1100, Velocity]
type = VelSet
trigger1 = vel X = [0,0.1]
x = 0

[State 1110, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 0
y = .50*const(size.yscale)

[State 1110, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
x = .85

[State 1105, 1]
type = HitDef
trigger1 = (AnimElemtime(2) >= 0) && (AnimElemtime(4) < 0)
attr = S, SA
animtype  = hard
air.animtype  = back
damage = 50,2
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
guard.pausetime = 10,11
sparkno = s8222
guard.sparkno = s8001
sparkxy = var(42):=-15, var(43):=-50
hitsound = s8000,1
guardsound = s8000,6
ground.type = high
ground.slidetime = 13
ground.hittime  = ifelse(p2statetype=C,19,17)
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -1*const(size.xscale),ifelse(var(22)=1,-11.8,0)*const(size.yscale)
guard.velocity = -5.0*const(size.yscale)
air.type = low
air.velocity = -3.5*const(size.xscale),-10.4*const(size.yscale)
fall = 0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 2
P2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 1105, 1]
type = HitDef
trigger1  = (AnimElemtime(4) >= 0) && (AnimElemtime(5) < 3)
attr = A, SA
animtype = up
air.animtype = up
damage = 50,2
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s8222
guard.sparkno = s8001
sparkxy = var(42):=-10, var(43):=-110
hitsound = s8000,1
guardsound = s8000,6
ground.type = Low
ground.slidetime = 13
ground.hittime  = 17
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale),-12.0*const(size.yscale)
guard.velocity = -5.0*const(size.xscale)
air.velocity = -3.5*ifelse(p2dist x>=5,1,-1),-10.4*const(size.yscale)
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 2
P2facing = ifelse(p2dist x>=5,1,-1)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 920]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 1110, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) > 0
value = 1110
;---------------------------------------------------------------------------
;Shouryuu Ken3
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1102
poweradd=30
sprpriority = 2

[State 0, explod]
type = Explod
trigger1 = animelem = 5
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 5
value = S0,2
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S9600,0
volume =255
channel = 1
freqmul=2.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2100,10
volume = 0
channel = -1

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, Position]
type = Posadd
trigger1 = animelemtime(6) = 0
x = 5*const(size.xscale)

[State 1120, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
StateType = A

[State 1120, Velocity]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 9.1*const(size.xscale)
y = -11.5*const(size.yscale)

[State 1100, Velocity]
type = VelSet
trigger1 = vel X = [0,0.1]
x = 0

[State 1110, Gravity]
type = Veladd
trigger1 = AnimElemTime(6) >= 0
y = .50*const(size.yscale)

[State 1110, Velocity]
type = VelMul
trigger1 = AnimElemTime(6) >= 0
x = .85



[State 1105, 1]
type = HitDef
trigger1 = (AnimElemtime(2) >= 0) && (AnimElemtime(4) < 0)
attr = S, SA
animtype  = hard
air.animtype  = back
damage = 40,2
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = s8222
guard.sparkno = s8001
sparkxy = var(42):=-15, var(43):=-50
hitsound = s8000,1
guardsound = s8000,6
ground.type = Low
ground.slidetime = 13
ground.hittime  = ifelse(p2statetype=C,19,17)
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -1*const(size.xscale),ifelse(var(22)=1,-13.0,0)*const(size.yscale)
guard.velocity = -5.0*const(size.xscale)
air.velocity = -3.5*const(size.xscale),-11.0*const(size.yscale)
fall =0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 2
P2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 1105, 1]
type = HitDef
trigger1 = (AnimElemtime(4) >= 0) && (AnimElemtime(6) < 0)
attr = S, NA
damage = 55,2
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = s8222
guard.sparkno = s8001
sparkxy = var(42):=-15, var(43):=-78
hitsound = s8000,1
guardsound = s8000,6
ground.type = high
ground.slidetime = 13
ground.hittime  = ifelse(p2statetype=C,19,17)
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -1*const(size.xscale),ifelse(var(22)=1,-13.0,0)*const(size.yscale)
guard.velocity = -5.0*const(size.xscale)
air.type = low
air.velocity = -3.5*const(size.xscale),-11.0*const(size.yscale)
fall = 0
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 2
P2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 1105, 1]
type = HitDef
trigger1 = (AnimElemtime(6) >= 0) && (AnimElemtime(9) < 0)
attr = S, NA
damage = 60,2
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = s8223
guard.sparkno = s8001
sparkxy = var(42):=-15, var(43):=-100
hitsound = s8000,1
guardsound = s8000,6
ground.type = Low
ground.slidetime = 13
ground.hittime  = 17
guard.hittime = 15
guard.slidetime = 13
guard.ctrltime = 15
ground.velocity = -3.5*const(size.xscale),-13.0*const(size.yscale)
guard.velocity = -5.0*const(size.xscale)
air.velocity = -3.5*ifelse(p2dist x>=5,1,-1),-11.0*const(size.yscale)
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 80
fall.envshake.ampl = -4
down.bounce = 1
air.fall = 1
air.recover = 0
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 2
P2facing = ifelse(p2dist x>=5,1,-1)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
persistent = 0

[State 920]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 1120, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(6) > 0
value = 1110
;--------------------------------------------------------------------
;shoryuuken aterrizaje
[StateDef 1110]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 0; = 0
sprpriority = 2

[state 1051, land explod]
type = helper
trigger1 = animelem = 2 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 0,0
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,1


[State 1150, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1150, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1150, 2]
type = PosAdd
trigger1 = Time = 0
x = 10*const(size.xscale)

[State -2, ChangeState]
type = ChangeState
trigger1 = P2dist X < 0
trigger1 = AnimElemTime(4) = 2
value = 0
ctrl = 1

[State 200, Ctrlset]
type = Ctrlset
trigger1 = AnimElemTime(4) >= 2
value = 1

[State 1150, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1







;shoryuken
[Statedef 1103]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1133
poweradd = 80
sprpriority = 0

[State 0, explod]
type = Explod
trigger1 = animelem = 4
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S8,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 4
y = -8


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 5
x = 0
y = -2

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 6
x = 0
y = 0


[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 120,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4,4
sparkno = s8223
sparkxy = -60, -90
guard.sparkno = s8001
hitsound = S8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -13,-11
air.velocity = -13,-11
fall = 1
fall.recover = 0
;p2stateno = 9020

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1130



[Statedef 1130]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1103
sprpriority = 0

[State 220, ChangeState]
type = ChangeState
trigger1 = time > 200
value = 70

[Statedef 1140]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1104
sprpriority = 0

[State 220, ChangeState]
type = ChangeState
trigger1 = time > 200
value = 70

;corridas
[StateDef 1200]
anim = 1200
ctrl = 0
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 80
juggle = 1

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 76,4

[State 210,2]
type = HitDef
trigger1 = AnimElem = 6
priority = 5, Hit
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
damage = 5,0
getpower = 35,35
GivePower = 35,35
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -6
air.velocity = -3,-10
yaccel = 0.55
guard.velocity = -6
hitsound = S8000,1
guardsound = S8000,6
sparkno = S8022
sparkxy = 0,-69
guard.sparkno = S8001
fall = 0
fall.recover = 0
air.fall = 1
numhits = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem=3
x = 9
[State 0, VelSet]
type = VelSet
trigger1 = animelem=11
x = 3
[State 0, VelSet]
type = VelSet
trigger1 = animelem=13
x = 0

[State 100, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0



[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 12
attr = S, NA
damage = 90,1
guardflag = MA
sparkno = S8222
sparkxy = 0,-99
guard.sparkno = S8001
hitsound = S8000,2
guardsound = S8000,6
animtype = hard
air.animtype = hard
ground.type = high
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -6
air.velocity = -3,-10
yaccel = 0.55
guard.velocity = -6


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




[StateDef 1201]
anim = 1201
ctrl = 0
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 80
juggle = 1


[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 76,4







[State 210,2]
type = HitDef
trigger1 = AnimElem = 6
priority = 5, Hit
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
damage = 5,0
getpower = 35,35
GivePower = 35,35
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -6
air.velocity = -3,-10
yaccel = 0.55
guard.velocity = -6
hitsound = S8000,1
guardsound = S8000,6
sparkno = S8022
sparkxy = 0,-69
guard.sparkno = S8001
fall = 0
fall.recover = 0
air.fall = 1
numhits = 1



[State 0, VelSet]
type = VelSet
trigger1 = animelem=3
x = 9
[State 0, VelSet]
type = VelSet
trigger1 = animelem=11
x = 3
[State 0, VelSet]
type = VelSet
trigger1 = animelem=14
x = 0


[State 100, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0



[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1




[State 210,2]
type = HitDef
trigger1 = animelem = 12
priority = 5, Hit
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
damage = 100,5
pausetime = 12,12
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -12,-4
air.velocity = -12,-3
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
yaccel=.3
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
hitsound = S8000,2
guardsound = S8000,6
sparkno = S8222
sparkxy = 0,-99
guard.sparkno = S8001
envshake.time = 14
envshake.ampl = 7
fall.envshake.time = 26
fall.envshake.ampl = 8
id=1400

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[StateDef 1202]
anim = 1202
ctrl = 0
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 80
juggle = 1


[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 76,4


[State 210,2]
type = HitDef
trigger1 = AnimElem = 6
priority = 5, Hit
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
damage = 5,0
getpower = 35,35
GivePower = 35,35
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -6
air.velocity = -3,-10
yaccel = 0.55
guard.velocity = -6
hitsound = S8000,1
guardsound = S8000,6
sparkno = S8022
sparkxy = 0,-69
guard.sparkno = S8001
fall = 0
fall.recover = 0
air.fall = 1
numhits = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem=3
x = 9
[State 0, VelSet]
type = VelSet
trigger1 = animelem=11
x = 3
[State 0, VelSet]
type = VelSet
trigger1 = animelem=13
x = 0


[State 100, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0



[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1


[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 12
attr = S, NA
damage = 110,1
guardflag = MA
sparkno = S8222
sparkxy = 0,-99
guard.sparkno = S8001
hitsound = S8000,2
guardsound = S8000,6
pausetime = 12,12
animtype = hard
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -12,-4
air.velocity = -12,-3
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
envshake.time = 10
envshake.ampl = 6
fall.envshake.time = 22
fall.envshake.ampl = 8


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

; terremoto
[StateDef 1300]
anim = 1300
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 80
juggle = 1
sprpriority = 4

[State 830, Shake]
type = EnvShake
trigger1 = AnimElem = 5
time = 20
ampl = -10

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1301
ID = 1301
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 5
removeongethit = 0




[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "Quake"
ID = 1105
stateno = 1105
pos = 60,20
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
movetime = 9999


[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;----------------------------------------------------
;Quake Helper
[Statedef 1105]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 3310
id = 1105
juggle  = 4
SprPriority = -3

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S840,0


[State 0,]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 1

[State 0, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP
time = 1



[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S,NA
damage = 90,10
animtype = hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = -1
sparkxy = -15, -55
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,-7
air.type = Low
air.hittime = 3
air.velocity = -3,-7
fall = 1
yaccel = 1
envshake.time = 10
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall.envshake.time = 10
fall.envshake.freq = 80
fall.envshake.ampl = -5
fall.envshake.phase = 90
persistent = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[StateDef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 802
hitsound = s3,1
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall.recover = 0
fall.damage = 80

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
sprpriority = 2

[State 182,0]
type = PlaySnd
trigger1 = animelem = 1
value = 76,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = s2100,10

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,-20


[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 60,-20

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 60,-20

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 60,-20


[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -40,-30

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -55,-30





[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 803

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -100

[State 0, Turn]
type = Turn
trigger1 =  AnimTime = 0


[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[Statedef 803]
type    = A
movetype= H
physics = N
velset = 15,-5
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 803

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5



[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0


;========================================================================
[Statedef 825]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 825
poweradd = 40
juggle=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2100,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 800, 1]
type = HitDef
Triggerall = p2statetype != A
Triggerall = p2stateno != [150,152]
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
guardflag = -1
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
hitsound = s3,1
p1stateno = 850
p2stateno = 851
fall = 0              ;Force p2 into falling down	;1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl = 1


;---------------------------------------------------------------------------
; Throwing the opponent
[Statedef 850]
type    = S
movetype= A
physics = N
anim = 850
poweradd = 60

[State 182,0]
type = PlaySnd
trigger1 = animelem = 1
value = 76,1

[State 0, HitAdd]
type = HitAdd
type = EnvShake
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
value = 1
;ignorehitpause =
;persistent =


[State 0, SprPriority]
type = SprPriority
trigger1 = time=0
value = 2
[State 0, SprPriority]
type = SprPriority
trigger1 = time=12
value = -1
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 0,Explod]
type = Explod
trigger1 = time = 12
anim = 851
sprpriority = 2
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
time = 6
freq = 60
ampl = -6
phase = 60
;ignorehitpause =
;persistent =



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
value = 75,3

[State 806,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;P2 throw_throw
[Statedef 851]
type    = S
movetype= H
physics = N
velset = 0,0

[State 0, VarAdd]
type = VarAdd
trigger1 = time > 0 && var(44) > 0
v = 44
value = -2

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
value = -8
kill = 0
absolute = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 24
value = -25
kill = 1
absolute = 0
[State 0, VelSet]
type = VelSet
trigger1 = life=0
x = -4
[State 0, SelfState]
type = SelfState
trigger1 = life=0
value = 5050
ctrl = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 852

[State 0, SelfState]
type = posadd
trigger1 = animtime = 0
x = -25



[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 1


;========================================================================
[Statedef 853]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 825
poweradd = 40
juggle=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2100,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 800, 1]
type = HitDef
Triggerall = p2statetype != A
Triggerall = p2stateno != [150,152]
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
guardflag = -1
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
hitsound = s3,1
p1stateno = 854
p2stateno = 855
fall = 0              ;Force p2 into falling down	;1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 854]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 5
anim = 854

[State 182,0]
type = PlaySnd
trigger1 = animelem = 1
value = 76,1


[State 1021,1]
type=AfterImage
trigger1= animelem = 1
time=70
length=30
palcolor = 256
palinvertall =0
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 10,10,10
trans=add1
framegap = 3



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1

[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist < 20
trigger1 = animelem = 1
x = 20
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist = [21,40]
trigger1 = animelem = 1
x = 40


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 7
time = 24
ampl = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2000,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 840,0


[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 3
time = 5
pos = 12,0

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0, 0  ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 0, 0   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 0, 0  ;X Y
[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -90, 0   ;X Y




[State 0, explod]
type = Explod
trigger1 = animelem = 6
anim = 8170
sprpriority = 2
postype = p2
pos = 50,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0






[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -30
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -20
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = -10
persistent = 0





[State ex, TargtBind]
type = TargetState
trigger1 = AnimElem = 9
value = 856


[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = animelem = 6
value = -95
kill=0
[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 6
value = 1

[State 811, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------
[Statedef 855]
type    = A
movetype= H
physics = N
velset = 0,0

[State -2, FX]
type = Afterimage
trigger1 = time  = 1
trans = add
PalContrast =  100, 100, 250
PalBright = -80,-80,-50
time    =  55
length  = 15
TimeGap = 2
FrameGap = 1


[State ex, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 855

[State ex, screen]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 1

;--------------------------------------------------

[Statedef 856]
type    = A
movetype= H
physics = N
velset = 5,0

[State 33003, Pose]
type = PosSet
trigger1 = TIme = 0
Y = 0

[State 33003, vel]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 33003, Self]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;========================================================================
[Statedef 826]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 826
poweradd = 40
juggle=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2100,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 800, 1]
type = HitDef
Triggerall = p2statetype != A
Triggerall = p2stateno != [150,152]
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
guardflag = -1
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
hitsound = s3,1
p1stateno = 827
p2stateno = 828
fall = 0              ;Force p2 into falling down	;1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl = 1

; Throwing the opponent
[Statedef 827]
type    = S
movetype= A
physics = N
anim = 827
poweradd = 60

[State 182,0]
type = PlaySnd
trigger1 = animelem = 1
value = 76,1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, NA
damage = 72,1
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 12,12
priority = 4, hit
sparkno = S8223
sparkxy = 0,-96
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -13,-2
guard.velocity = -5
air.velocity = -4,8
fall = 1
air.fall = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 828]
type = S
physics = N
movetype = H
ctrl = 0
sprpriority = 5
velset = 0,0
juggle = 0



[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 828

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 1




