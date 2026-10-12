 ;List of specials so far...
 ;Demon Uppercut
 ;Demon Beam
 ;Demon Magic
 ;Demonic Glare
 ;Hell fire
 ;air fire
 ;Sped Victory
 
 [StateDef 1200]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 1200

[State 1200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 400, 4; teleport

[State 1200, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 6
add = 32,16,0
sinadd = 64,32,5,3

[State 1200, 1sd]
type = nothitby
trigger1 = 1
value = CSA

[State 1200, 1sd]
type = explod
trigger1 = time = 15
anim = 1210
pos = 0,0
removeongethit = 1
postype=left

[State 1200, 2]
type = PosAdd
trigger1 = Time = 10
X = (P2Dist X) + 60

[State 1200, 1sd]
type = turn
trigger1 = time = 1

[State 1200, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; demon uppercut - Z
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

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 1106
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
anim = 1106
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 15;15
persistent = 0
anim = 1106
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, 1] ;Dust
type = Explod
trigger1 = Time = 25;15
persistent = 0
anim = 1106
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1102, elec] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 1212
postype = p2
pos = -80, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1


[State 1102, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = floor(100 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 1
guard.sparkno = S8200
sparkno = S8270
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
palfx.time = 30
palfx.add = 0,191,243
palfx.sinadd = 0,191,243,0

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

[State 1102, 21] ;level 1 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 1 && Time = [5, 44] ;AnimElem = 3
add = Floor((20 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((23 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((50 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 20,23,50 ;30,33,60
;sinadd = 40,42,60,7
time = 1;39

[State 1102, 22] ;level 2 & 3 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 2 && Time = [5, 44] ;AnimElem = 3
trigger2 = var(40) = 3 && Time = [5, 44] ;AnimElem = 3
add = Floor((0 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((14 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((95 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 0,14,95 ;136,144,255
;sinadd = 40,42,60,7
time = 1;39

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
x = 9.7
y = -16.1

[State 1102, 27]
type = VelSet
trigger1 = Time = 11;18
x = 9.1
y = -16.1

[State 1102, 28]
type = VelSet
trigger1 = Time = 14;21
x = 5.3
y = -19.1

[State 1102, 29]
type = VelSet
trigger1 = Time = 16;23
x = 2.95
y = -15.1

[State 1102, 30]
type = VelSet
trigger1 = Time = 19;26
x = 1.6
y = -7.1

[State 1102, 31]
type = VelSet
trigger1 = Time = 23;30
x = .7
y = -3.3

[State 1102, 32]
type = VelSet
trigger1 = Time = 26;33
x = .05
y = -1.3

[State 1102, 33]
type = VelSet
trigger1 = Time = 30;37
x = 0
y = -.9

[State 1102, 34]
type = PlaySnd
trigger1 = Time = 0;10
value = 10, 0
channel = 0

[State 1102, 35]
type = PlaySnd
trigger1 = Time = 28;10
value = 66, 0
channel = 0

[State 1102, 36]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52


 ;---------------------------------------------------------------------------
; demon uppercut - Y
[Statedef 1106]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1106
poweradd = 75
sprpriority = 2

[State 1106, elec] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 1212
postype = p2
pos = -70, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1106, 1] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 1106
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1106, 1] ;Dust
type = Explod
trigger1 = Time = 15;15
persistent = 0
anim = 1106
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1106, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = floor(80 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 1
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -71
hitsound = 5, 4
guardsound = 6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -8,-16
airguard.velocity = -1.9,5
air.type = High
air.velocity = -7,-15
air.hittime = 12
palfx.time = 10
palfx.add = 0,191,243
palfx.sinadd = 0,191,243,0

[State 1106, 1] ;Dust
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

[State 1106, 21] ;level 1 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 1 && Time = [5, 44] ;AnimElem = 3
add = Floor((20 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((23 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((50 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 20,23,50 ;30,33,60
;sinadd = 40,42,60,7
time = 1;39

[State 1106, 22] ;level 2 & 3 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 2 && Time = [5, 44] ;AnimElem = 3
trigger2 = var(40) = 3 && Time = [5, 44] ;AnimElem = 3
add = Floor((0 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((14 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((95 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 0,14,95 ;136,144,255
;sinadd = 40,42,60,7
time = 1;39

[State 1106, 23]
type = VarSet
trigger1 = var(40) != 0
trigger1 = MoveHit
v = 20
value = 1

[State 1106, 24]
type = StateTypeSet
trigger1 = Time = 4;16
statetype = A
movetype = A
physics = A

[State 1106, 25]
type = HitBy
trigger1 = 1
value = SCA, SA,HA,NP,SP,HP

[State 1106, 26]
type = VelSet
trigger1 = Time = 4;16
x = 9.7
y = -16.1

[State 1106, 27]
type = VelSet
trigger1 = Time = 8;18
x = 9.1
y = -16.1

[State 1106, 28]
type = VelSet
trigger1 = Time = 11;21
x = 5.3
y = -19.1

[State 1106, 29]
type = VelSet
trigger1 = Time = 16;23
x = 2.95
y = -15.1

[State 1106, 30]
type = VelSet
trigger1 = Time = 19;26
x = 1.6
y = -7.1

[State 1106, 31]
type = VelSet
trigger1 = Time = 22;30
x = .7
y = -3.3

[State 1106, 32]
type = VelSet
trigger1 = Time = 25;33
x = .05
y = -1.3

[State 1106, 33]
type = VelSet
trigger1 = Time = 26;37
x = 0
y = -.9

[State 1106, 34]
type = PlaySnd
trigger1 = Time = 0;10
value = 7, 0
channel = 0

[State 1106, 35]
type = PlaySnd
trigger1 = Time = 6;10
value = 66, 0
channel = 0

[State 1106, 36]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52

 ;---------------------------------------------------------------------------
; demon uppercut - X
[Statedef 1107]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1107
poweradd = 25
sprpriority = 2

[State 1107, elec] ;Dust
type = Explod
trigger1 = Time = 6;15
persistent = 0
anim = 1212
postype = p2
pos = -50, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 1107, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = floor(60 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3 + var(43), Hit
pausetime = 6, 1
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -71
hitsound = 5, 4
guardsound = 6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -8,-16
airguard.velocity = -1.9,5
air.type = High
air.velocity = -7,-15
air.hittime = 12
palfx.time = 15
palfx.add = 0,191,243
palfx.sinadd = 0,191,243,0

[State 1107, 1] ;Dust
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

[State 1107, 21] ;level 1 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 1 && Time = [5, 44] ;AnimElem = 3
add = Floor((20 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((23 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((50 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 20,23,50 ;30,33,60
;sinadd = 40,42,60,7
time = 1;39

[State 1107, 22] ;level 2 & 3 efect
type = PalFX
triggerall = var(40) != 0
trigger1 = var(40) = 2 && Time = [5, 44] ;AnimElem = 3
trigger2 = var(40) = 3 && Time = [5, 44] ;AnimElem = 3
add = Floor((0 + 40 * sin((2 * pi * (time-5))/7.0)) + 0.5),Floor((14 + 42 * sin((2 * pi * (time-5))/7.0))+0.5),Floor((95 + 60 *sin((2 * pi * (time-5))/7.0))+0.5)
;add = 0,14,95 ;136,144,255
;sinadd = 40,42,60,7
time = 1;39

[State 1107, 23]
type = VarSet
trigger1 = var(40) != 0
trigger1 = MoveHit
v = 20
value = 1

[State 1107, 24]
type = StateTypeSet
trigger1 = Time = 3;16
statetype = A
movetype = A
physics = A

[State 1107, 25]
type = HitBy
trigger1 = 1
value = SCA, SA,HA,NP,SP,HP

[State 1107, 26]
type = VelSet
trigger1 = Time = 3;16
x = 9.7
y = -16.1

[State 1107, 27]
type = VelSet
trigger1 = Time = 4;18
x = 9.1
y = -16.1

[State 1107, 28]
type = VelSet
trigger1 = Time = 5;21
x = 5.3
y = -19.1

[State 1107, 29]
type = VelSet
trigger1 = Time = 6;23
x = 2.95
y = -15.1

[State 1107, 30]
type = VelSet
trigger1 = Time = 9;26
x = 1.6
y = -7.1

[State 1107, 31]
type = VelSet
trigger1 = Time = 11;30
x = .7
y = -3.3

[State 1107, 32]
type = VelSet
trigger1 = Time = 13;33
x = .05
y = -1.3

[State 1107, 33]
type = VelSet
trigger1 = Time = 15;37
x = 0
y = -.9

[State 1107, 34]
type = PlaySnd
trigger1 = Time = 0;10
value = 7, 0
channel = 0

[State 1107, 35]
type = PlaySnd
trigger1 = Time = 20;10
value = 66, 0
channel = 0

[State 1107, 36]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52



 ;Super Jump ---------------------------------------------------
[Statedef 1045]
type    = A
movetype = I
physics = N
;anim = 70
sprpriority = 2
Velset = 0,0

[State 1045, 0]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 44
ctrl = 1

[State 1045, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 1045, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 1045, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 1045, 4]
type = explod
trigger1 = time = 1
anim = 70
postype = p1
pos = 0,-15
bindtime = 25
removetime = 25
sprpriority = 3

[State 1045, 5]
type = Explod
trigger1 = Time = 0
anim = 61
pos= 0,0
postype= p1
sprpriority = 3

[State 1045, 7]
type = ChangeState
trigger1 = time = 1
value = 1047

[Statedef 1047]
type    = A
movetype = I
physics = A
anim = 44
sprpriority = 2
Velset = 0,-14
ctrl = 1

[State 1047, 1]
type = turn
trigger1 = P2dist X < 0

[State 1047, 2]
type = VarSet
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
sysvar(1) = 0

[State 1047, 3]
type = VarSet
triggerall = sysvar(1) = 0
trigger1 = command = "holdfwd"
trigger2 = var(40) = 1
Trigger2 = P2Dist X = [10,150]
sysvar(1) = 1

[State 1047, 4]
type = VarSet
trigger1 = command = "holdback"
trigger1 = sysvar(1) = 0
sysvar(1) = -1

[State 1047, 5]
type = VelSet
trigger1 = Time = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))

[State 1047, 6]
Type = Velset
trigger1 = Time = 1
y = -14

[State 1047, 7]
type = PlaySnd
trigger1 = Time = 0
value = 9, 1

[State 1047, 8]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 1047, 9]
Type = Velset
trigger1 = Time = 3
y = -15

[State 1047, 10]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(sysvar(1)=0, 1045, ifelse(sysvar(1)=1, 1046, 1047))

[State 1047, 11]
type = ChangeState
trigger1 = time = 4
value = 1048

[Statedef 1048]
type = A
ctrl = 1
physics = A

[State 1048, 1]
type = velset
trigger1 = prevstateno = 1047
trigger1 = time <= 6
y = -11

[State 1048, 2]
type = VarSet
trigger1 = Time = 0
v = 3
value = 1

[State 1048, 3]
type = velset
trigger1 = time >= 0
trigger1 = vel y > 11
y = 11

[State 1048, 4]
type = turn
trigger1 = P2dist X < 0

[State 1048, 5]
type = MakeDust
trigger1 = Vel Y < -8
pos = 10-(random/50),-2
spacing = 3

[State 1048, 6]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(sysvar(1)=0, 41, ifelse(sysvar(1)=1, 42, 43))
trigger1 = prevstateno != 1047

[State 1048, 7]
type = Veladd
trigger1 = Time > 0
trigger1 = vel x = [-3,3.5]
x = ifelse(command="holdfwd", 0.14, ifelse(command="holdback", -0.1, 0))

;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, DestroySelf]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist y >= 0
trigger2 = P2Dist y <= 50
trigger3 = Pos y = 0



 ;Demon beam (weak)---------------------------------------------
[StateDef 1680]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8050
poweradd = 20

[State 1680, beam] ;flame
type = Explod
trigger1 = Time = 10
persistent = 0
anim = 8035
postype = p1
pos = 130, -77
velocity = 0, 0
accel = 5, 0
removetime = -2
;sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1


[State 1680, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1234
projhitanim = 845
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 125,-75
velocity = 0
attr = S, SP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,0
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 30
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0

[state 1680,2]
type = playsnd
trigger1 = Time = 0
value = 75, 0

[State 1680, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

  ;Demon beam (medium)---------------------------------------------
[StateDef 1690]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8050
poweradd = 20

[State 1690, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8030
projhitanim = 845
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 125,-75
velocity = 0
attr = S, SP
damage   = 45
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,0
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 70
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0

[state 1690,2]
type = playsnd
trigger1 = Time = 10
value = 75, 0

[State 1690, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;Demon beam (strong)---------------------------------------------
[StateDef 1700]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8050
poweradd = 20

[State 1700, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8040
projhitanim = 845
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 125,-75
velocity = 0
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 50
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0


[state 1700,2]
type = playsnd
trigger1 = Time = 15
value = 75, 0

[State 1700, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demonic Flame (strong)--------------------------------

[StateDef 1900]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2012
poweradd = 20

[State 1900, dust]
type = Explod
trigger1 = Time = 0
anim = 1905
supermove = 1
ontop = 1
removeongethit = 1

[State 1900, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 10012
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 90,-120
velocity = 0
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,4
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
p2stateno=7697


[state 1900,3]
type = playsnd
trigger1 = Time = 0
value = 9, 0

[State 1900, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demonic Flame (medium)--------------------------------

[StateDef 1905]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2012
poweradd = 20

[State 1905, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1905, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 10011
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 90,-120
velocity = 0
attr = S, SP
damage   = 45
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,3
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
p2stateno=7697

[state 1905,3]
type = playsnd
trigger1 = Time = 5
value = 9, 0

[State 1905, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demonic Flame (weak)--------------------------------

[StateDef 1906]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2012
poweradd = 20

[State 1906, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1


[State 1906, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 10010
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 90,-120
velocity = 0
attr = S, SP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,4
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 10
palfx.add = 40,-60,-150
palfx.sinadd = 60,25,0,10


[state 1906,3]
type = playsnd
trigger1 = Time = 10
value = 9, 0

[State 1906, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demon Magic (weak)--------------------------------

[StateDef 2010]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8025
poweradd = 20

[State 2010, 1] ;fire
type = Explod
trigger1 = Time = 12
persistent = 0
anim = 8026
postype = p1
pos = -25, -10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1


[State 2010, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 828
projhitanim =99999
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 30
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 120,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 30
palfx.add = 102,45,145
palfx.sinadd =102,45,145

[state 2010,3]
type = playsnd
trigger1 = Time = 10
value = 77, 0

[State 2010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demon Magic (Medium)------------------------------------------------------------------------------

[StateDef 2020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8025
poweradd = 20

[State 2020, 1] ;fire
type = Explod
trigger1 = Time = 12
persistent = 0
anim = 8026
postype = p1
pos = 65, -10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 2020, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8290
projhitanim = 999999
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 53
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 200,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 50
palfx.add = 102,45,145
palfx.sinadd = 102,45,145

[state 2020,3]
type = playsnd
trigger1 = Time = 10
value = 77, 0

[State 2020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Demon Magic (strong)-------------------------------------------------------------------------------------

[StateDef 2030]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8025
poweradd = 20

[State 2030, 1] ;fire
type = Explod
trigger1 = Time = 12
persistent = 0
anim = 8026
postype = p1
pos = 125, -10
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 2030, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 829
projhitanim = 999999
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 75
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,3
sparkxy = 250,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 70
palfx.add = 102,45,145
palfx.sinadd = 102,45,145

[state 2030,3]
type = playsnd
trigger1 = Time = 10
value = 77, 0

[State 2030, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; airbeam (weak)
[StateDef 8080]
type = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8080
poweradd = 20

[State 8080, 1]
type = Projectile
trigger1 = Time = 1
projanim = 8090
projhitanim = 80900
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 800,0
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 20
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0


[State 8080, 2]
type = PlaySnd
trigger1 = Time = 2
value = 75, 0

[State 8080, end]
type = ChangeState
trigger1 = AnimTime = 20
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; airbeam (medium)
[StateDef 8070]
type = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8070
poweradd = 20


[State 8070, 1]
type = Projectile
trigger1 = Time = 1
projanim = 8035
projhitanim = 80900
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 125,-75
velocity = 0
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 800,0
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 50
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0


[State 8070, 2]
type = PlaySnd
trigger1 = Time = 2
value = 75, 0

[State 8070, end]
type = ChangeState
trigger1 = AnimTime = 20
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; airbeam (strong)
[StateDef 8060]
type = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
ctrl = 0
anim = 8060
poweradd = 20


[State 8060, 1]
type = Projectile
trigger1 = Time = 1
projanim = 8085
projhitanim = 80900
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 80
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 800,0
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 70
palfx.add = 0,255,0
palfx.sinadd = 255,0,0,0


[State 8060, 2]
type = PlaySnd
trigger1 = Time = 2
value = 75, 0

[State 8060, end]
type = ChangeState
trigger1 = AnimTime = 20
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; fire (air)
[StateDef 1100]
type = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 20


[State 1100, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1010
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,0
velocity = 0
attr = S, SP
damage   = 65
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 4
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
p2stateno=7697


[State 1100, 2]
type = PlaySnd
trigger1 = Time = 2
value = 400, 4

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 20
value = 0
ctrl = 1


;Supers

;===================================================================
; Demon Glare

;------------------------------------------
; Startup
[StateDef 3000, 1]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 20

[State 3000, hyperBG2]
type = Explod
trigger1 = AnimElem = 2
anim = 8900
ID = 8900
supermovetime = 10
pausemovetime = 10
removeongethit = 1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999995
bindtime = -1
ownpal = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 10
sound = S10,1
pos = 75,-65
darken = 1
poweradd = -1000

[State 3000, a]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, b]
type = Width
trigger1 = 1
value = -30, 20

[State 3000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 76, 0
channel = 1

[State 3000, 3] ;Super Portrait
type = Explod
trigger1 = Time = 0
persistent = 0
anim = 10005
postype = left
pos = 0, 0
velocity = 0, 0
accel = 5, 0
removetime = -2
;sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3000, 5]
type = SuperPause
trigger1 = AnimElem = 2
time = 70
anim = S6070
sound = S4, 2
pos = 7, -93
poweradd = -1000

[State 3000, 5] ;flame
type = Explod
trigger1 = Time = 10
persistent = 0
anim = 3010
postype = p1
pos = 125, -65
velocity = 0, 0
accel = 5, 0
removetime = -2
;sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3000, 6]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
projanim = 2000
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 100,-60
velocity = 0
attr = S, SP
damage   = 199
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,4
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
p2stateno=7697

[state 3000, 7]
type = playsnd
trigger1 = Time = 15
value = 10, 0

[state 3000, 8]
type = playsnd
trigger1 = Time = 15
value = 400, 4

[State 3000, 9]
type = EnvShake
trigger1 = Time = 5
ignorehitpause = 20
time = 5
freq = 500
ampl = -4

[State 3000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================
; Demon Air Glare

;------------------------------------------
; Startup
[Statedef 738]
type    = A
movetype= A
physics = A
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 739

[State 738, a]
type = NotHitBy
trigger1 = 1
value = SCA

[State 738, b]
type = Width
trigger1 = 1
value = -30, 20

[State 738, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 76, 0
channel = 1

[State 738, 3] ;Super Portrait
type = Explod
trigger1 = Time = 12
persistent = 0
anim = 10005
postype = left
pos = 0, 0
velocity = 0, 0
accel = 5, 0
removetime = -2
;sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1


[State 738, 5]
type = SuperPause
trigger1 = AnimElem = 2
time = 70
anim = S6070
sound = S4, 2
pos = 7, -93
poweradd = -1000


[State 738, 6]
type = Projectile
trigger1 = AnimElem = 4
projanim = 3010
projhitanim = 4001
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 100,-95
velocity = 0
attr = S, SP
damage   = 100,90
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 800,0
sparkxy = -1
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 10
palfx.add = 40,-60,-150
palfx.sinadd = 60,25,0,10

[State 738, hit]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
damage    = 126,32
animtype = Heavy
getpower = 63
givepower = 21
guardflag = HA
hitflag = MAF
hitsound = s100,1
guardsound = s100,20
pausetime = 16,16
sparkno = s8050
guard.sparkno = s8040
sparkxy = 0,-35
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1
air.fall = 1


;------------------------
[State 738, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 55,-85
darken = 1
poweradd = -1000

[state 738, 7]
type = playsnd
trigger1 = Time = 15
value = 10, 0

[state 738, 8]
type = playsnd
trigger1 = Time = 15
value = 400, 4

[State 738, 9]
type = EnvShake
trigger1 = Time = 5
ignorehitpause = 20
time = 5
freq = 500
ampl = -4

[State 738, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 4001
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[State 738, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 4001
random = 125, 10
pos = -10,0
postype = p2
sprpriority = 5
bindtime = 1

[State 738, FallEnvShake]
type = FallEnvShake
trigger1 = AnimTime=20
;ignorehitpause =
;persistent =

[State 738, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===================================================================
; Demon fire
;------------------------------------------
; Startup
[StateDef 3500, 1]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2010
poweradd = 20

[State 3500, a]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3500, b]
type = Width
trigger1 = 1
value = -30, 20

[State 3500, 2] ;Super Portrait
type = Explod
trigger1 = Time = 12
persistent = 0
anim = 10000
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3500, 4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 76, 0
channel = 1

[State 3500, 5]
type = SuperPause
trigger1 = AnimElem = 2
time = 70
anim = S6070
sound = S4, 2
pos = 7, -93
poweradd = -1000

[State 3500, 6]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
projanim = 10015
projhitanim = 1080
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 0,-25
velocity = 0
attr = S, SP
damage   = 95
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 500,500
guardsound = 6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
palfx.time = 40
palfx.add = 255,0,0
palfx.sinadd = 255,0,0,0

[State 3500, hit]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
attr = A, SA
damage    = 126,32
animtype = Heavy
getpower = 63
givepower = 21
guardflag = HA
hitflag = MAF
hitsound = s100,1
guardsound = s100,20
pausetime = 16,16
sparkno = s8050
guard.sparkno = s8040
sparkxy = 0,-35
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1
air.fall = 1


[state 3500, 7]
type = playsnd
trigger1 = Time = 10
value = 6, 0

[State 3500, 2]
type = EnvShake
trigger1 = Time = 10
ignorehitpause = 5
time = 30
freq = 100
ampl = -4

[State 3500, end]
type = ChangeState
trigger1 = AnimTime = 50
value = 0
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

;----------------------------------------------------------------------
; Sped Victory - Amalgam Special
;----------------------------------------------------------------------

;Amalgam intro
[StateDef 9920]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 9930
velset = 2,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 15 ;animelem = 2
time = 100
sound = S10,2
pos = -5,-45
darken = 1

[State 4000, shreak!]
type = PlaySnd
trigger1 = Time = 15
value = 76,0
volume = 0
;channel = -1
;lowpriority =
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0

[State 9920, envshake]
type = EnvShake
trigger1 = Time = 15
time = 40
;freq = 60
;ampl = -4
;phase =

[State 9920]
type = PlaySnd
trigger1 = Time = 20
value = 13,0
volume = 0
Time=40

[State 9940, Char Portrait]
type = Explod
trigger1 = Time = 0
anim = 9940
postype = left
pos = 0,0
ownpal = 0
ignorehitpause = 1
sprpriority = -9
supermovetime = 40
removeongethit = 1

[State 9940, Char bg]
type = Explod
trigger1 = Time = 0
anim = 9945
postype = left
pos = 0,0
ownpal = 0
ignorehitpause = 1
sprpriority = -9
supermovetime = 40
removeongethit = 1

[State 9940, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 9910

; Speed Demon (dash to P2)
[StateDef 9910]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 9910
velset = 90,0

[state 9910, speed]
type = afterimage
trigger1 = time = 1
time = 150
palbright = 0, 0, 0
palcontrast = 205, 24, 0
paladd = 0, 0, 0
framegap = 3
;trans = add

[State 9910, 0]
type = ChangeState
trigger1 = P2BodyDist X < 300
value = 9945

; Ghost Rider
[StateDef 9945]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 9910
velset = 30,0

[state 9910, speed]
type = afterimage
trigger1 = time = 1
time = 150
palbright = 0, 0, 0
palcontrast = 205, 24, 0
paladd = 0, 0, 0
framegap = 3
;trans = add

[State 9945, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = D
;animtype = Light
;priority = 4,Hit
damage = 120,0
pausetime = 0,30    ;30,30
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno =
;sparkxy = 0,-50
hitsound = 5,2
guardsound = 6,0
;ground.type = High
;air.type = High
;snap = 0,0
p1stateno = 4003
p2stateno = 4004
;p2getp1state =
kill = 0
guard.kill = 0
;palfx.time =
;palfx.mul = 256,256,256
;palfx.add = 0,0,0

; (if move is blocked, have a "recovery" state here)
[State 9945, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 4005


;(P1 successful)
[StateDef 4003]
type    = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2

[State 4003, explod]
type = Explod
trigger1 = Time = 0
anim = 1080
pos = 0,0
postype = p2
bindtime = 100
sprpriority = 1


;[State 4003, playsnd]
;type = PlaySnd
;trigger1 = Time = 20
;value = 9,2

[State 4003, 0]
type = ChangeState
trigger1 = Time = 50
value = 4006


; hit by the attack (custom gethit state)
[StateDef 4004]
type    = U
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4004, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 60
add = 255,0,0
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 4004, custom anim]
type = ChangeAnim2
trigger1 = Time = 0
ctrl = 0
value = 4004


; (P1 recovery state if attack is blocked)
[StateDef 4005]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 9910

[State 4005, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 4006
ctrl = 1


; Hit Player two
[StateDef 4006]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 9910

[State 4006, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAFD
guardflag = D
animtype = Up
;priority = 4,Hit
damage = 140,0
;pausetime = 0,0
;guard.pausetime = 0,0
;sparkno =
;guard.sparkno =
sparkxy = 0,-50
hitsound = S2,2
guardsound = S3,0
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
ground.velocity = 0,-2
air.velocity = 0,-2
;snap = 0,0
;sprpriority = 1
;p1stateno =
;p2stateno =
;p2getp1state =
fall = 1
;fall.xvelocity =
;fall.yvelocity = -4.5
fall.recover = 0
fall.damage = 300
;air.fall =
;down.velocity = ,
;down.hittime =
;down.bounce = 0
;envshake.time = 10
;envshake.freq = 60
;envshake.ampl = -4
;envshake.phase =
fall.envshake.time = 20
;fall.envshake.freq = 60
;fall.envshake.ampl = -4
;fall.envshake.phase =

[State 4006, playsnd]
type = PlaySnd
trigger1 = MoveHit = 1
value = 9,1

[State 4006, 0]
type = ChangeState
trigger1 = AnimTime = 0
value =0
ctrl = 1

; Hit by Fire
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 35
add = 40,-60,-150
sinadd = 60,25,0,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100









