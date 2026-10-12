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
;---------------------------------------------------------------------------
; Teleport
;---------------------------------------------------------------------------

[Statedef 1800]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1800
ctrl = 0

[State 1800, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S2000,4
volume = 255
channel = -1

[State 1800,1]
type=ChangeState
trigger1 = AnimTime = 0
value = 1801
;-----------------------------------
[StateDef 1801]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1501
poweradd = 20
sprpriority = 2


[State 1801, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1811, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = time = 0
x = ifelse((enemy(0),facing = -1),(enemy(0),Pos x)-325,(enemy(0),Pos x)+325)
y = 0

[State 1801, CtrlSet]
type = CtrlSet
triggerall = ctrl = 0
trigger1 = animelem >= 10
value = 1

[State 1501, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1
;--------------------------------------------
[Statedef 1810]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1800
ctrl = 0

[State 1810, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S2000,4
volume = 255
channel = -1

[State 1810,1]
type=ChangeState
trigger1 = AnimTime = 0
value = 1811

[StateDef 1811]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1801
poweradd = 20
sprpriority = 2


[State 1811, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1801, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = time = 0
x = ifelse((enemy(0),facing = -1),(enemy(0),Pos x)-30,(enemy(0),Pos x)+30)
y = 0

[State 1811, CtrlSet]
type = CtrlSet
triggerall = ctrl = 0
trigger1 = animelem >= 10
value = 1

[State 1811, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1
;-----------------------------------
[Statedef 1820]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1800
ctrl = 0

[State 1820, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S2000,4
volume = 255
channel = -1

[State 1820,1]
type=ChangeState
trigger1 = AnimTime = 0
value = 1821

[StateDef 1821]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1801
poweradd = 20
sprpriority = 2


[State 1821, No scroll]
type = ScreenBound
trigger1 = 1
value = 1

[State 1821, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = time = 0
x = ifelse((enemy(0),facing = -1),(enemy(0),Pos x)+250,(enemy(0),Pos x)-250)
y = 0

[State 1821, CtrlSet]
type = CtrlSet
triggerall = ctrl = 0
trigger1 = animelem >= 10
value = 1

[State 1821, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1
;------------------------------
; Beam 1
[StateDef 1000 ]
anim = 1000
ctrl = 0
type    = S
MoveType= A
physics = S
velset = 0,0

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,0
anim = 918
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 6
value = S1000,1
volume = 10
channel = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = S20,9
volume = 400
channel = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "beam"
ID = 1010
pos = 0,0
postype = p1
stateno = 1010
ownpal = 1
size.xscale = 1
size.yscale =1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1010
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, hitdef]
type = HitDef
triggerall = ifelse(movecontact,(timemod >= 4,2),1)
trigger1 = hitcount < 6
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
priority = 4,Hit
damage = 16,0
pausetime = 0,4
hitsound = S3,7
guardsound = S3,6
sparkno = S9992
sparkxy = 0,-80
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -8,0
ground.cornerpush.veloff = 0
air.velocity = -9,0
sprpriority = 2



[State 1110, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 1000
;--------------------------------------------------------------
;------------------------------
; Beam 2
[StateDef 1001 ]
anim = 1001
ctrl = 0
type    = S
MoveType= A
physics = S
velset = 0,0

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,0
anim = 918
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 6
value = S1000,1
volume = 10
channel = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 14
value = S1000,1
volume = 10
channel = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = S20,9
volume = 400
channel = 1

[State 1002, 2]
type = Projectile
trigger1 = AnimElem = 14
ProjID = 1013
projanim = 1013
projhitanim = 9992
velocity = 18,0
offset = 37,-69
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,13
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,4
air.velocity = -4,4
fall = 1
air.fall = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "beam"
ID = 1012
pos = 5,3
postype = p1
stateno = 1011
ownpal = 1
size.xscale = 1
size.yscale =1

[State 1001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
[StateDef 1011]
type = A
movetype = A
physics = C
anim = 1012
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1011, hitdef]
type = HitDef
triggerall = ifelse(movecontact,(timemod >= 4,2),1)
trigger1 = hitcount < 6
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
priority = 4,Hit
damage = 16,0
pausetime = 0,4
hitsound = S3,7
guardsound = S3,6
sparkno = S9992
sparkxy = 0,-80
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -8,0
ground.cornerpush.veloff = 0
air.velocity = -9,0
sprpriority = 2

[State 1011, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 1001
;-----------------------------------------------------
; Beam 3
[StateDef 1002 ]
anim = 1002
ctrl = 0
type    = S
MoveType= A
physics = S
velset = 0,0

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,0
anim = 918
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 6
value = S1000,1
volume = 10
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 14
value = S1000,1
volume = 10
channel = 0


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem= 22
value = S1000,1
volume = 10
channel = 0


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = S20,9
volume = 400
channel = 1


[State 1002, beam]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "beam"
ID = 1012
pos = 0,0
postype = p1
stateno = 1012
ownpal = 1
size.xscale = 1
size.yscale =1

[State 1002, beam]
type = Helper
trigger1 = AnimElem = 11
helpertype = normal
name = "beam"
ID = 1012
pos = 5,5
postype = p1
stateno = 1012
ownpal = 1
size.xscale = 1
size.yscale =1

[State 1002, 2]
type = Projectile
trigger1 = AnimElem = 22
ProjID = 1013
projanim = 1013
projhitanim = 9992
velocity = 18,0
offset = 37,-69
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,13
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,4
air.velocity = -4,4
fall = 1
air.fall = 1
;p2stateno = 7990


[State 1002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
[StateDef 1012]
type = A
movetype = A
physics = C
anim = 1012
ctrl = 0

[State 1012, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1012, hitdef]
type = HitDef
triggerall = ifelse(movecontact,(timemod >= 4,2),1)
trigger1 = hitcount < 6
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
priority = 4,Hit
damage = 16,0
pausetime = 0,4
hitsound = S3,7
guardsound = S3,6
sparkno = S9992
sparkxy = 0,-80
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -8,0
ground.cornerpush.veloff = 0
air.velocity = -9,0
sprpriority = 2

[State 1012, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 1002
;-----------------------------------------------------------
;minion 1
;-----------------------------------------------------------
[Statedef 1100 minion 1]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 96

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 15,15
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 193
pos = 0,-40
removetime=20
scale = 0.6,0.6
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 6
id = 193

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1228
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority=1


[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 100,2

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  39,6
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 810, 0]
type = Pause
trigger1 = AnimElem = 1
time = 3
movetime = 3

[State 1090, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1101
pos = 39,6
postype = p1
stateno = 1101
ownpal = 0
size.xscale = 1
size.yscale = 1



[State 1090, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------
[Statedef 1101,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15190
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = s302,0


[State 1091, ]
type = changestate
trigger1 = animelem = 4
value = 1102
;----------------------------

[Statedef 1102,]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15021
ontop = 1

[State 1093, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 5
stateno = 1103
time = -1

[State 1093, 1]
type = Velset
trigger1 = time = 0
x = 3
y = 0

[State 1093, 1]
type = Velset
trigger1 = p2bodydist X = 0
trigger2 = frontedgedist = 10
x = 0
y = 0

[State 1199,]
type = PlaySnd
trigger1 = time= 0
value = s300,0
[State 1199,]
type = PlaySnd
trigger1 = time= 40
value = s300,0
[State 1199,]
type = PlaySnd
trigger1 = time=80
value = s300,0
[State 1199,]
type = PlaySnd
trigger1 = time=120
value = s300,0


[State 1093, 2]
type = changestate
trigger1 = time = 150
value = 1103

[State 1083, 2]
type = changestate
trigger1 = p2bodydist X <= 10
value = 1106
;---------------------------------------
[Statedef 1106]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15200
sprpriority = -2

[State 1082, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1103
time = 1

[State 1085, 1]
type = HitDef
trigger1 = animelem =2
attr = S, SA
animtype  = Hard
damage    = 30,5
guardflag = MA
pausetime = 6,12
sparkno = S20002
sparkxy = -10,-30
hitsound   = s1201,1
guardsound = 9,9
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -3,0
air.velocity = -5,-7


[State 1200, 2]
type = changestate
trigger1 = animelem=4
value = 1104
;------------------------------------
[Statedef 1103,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15170

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = s301,0

[State 1103, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1103, 2]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1104,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15001
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = s301,0

[State 1104, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1103
time = 1

[State 1104, ]
type = changestate
trigger1 = animelem = 1
value = 1105
;---------------------------------------------------------------------------
[Statedef 1105,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15180

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = s301,0

[State 1105, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1105, 2]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
[Statedef 1110 minion 2]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 96

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 15,15
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 193
pos = 0,-40
removetime=20
scale = 0.6,0.6
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 6
id = 193

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1228
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority=1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 100,2

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  39,6
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 810, 0]
type = Pause
trigger1 = AnimElem = 1
time = 3
movetime = 3

[State 1100, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1112
pos = 39,6
postype = p1
stateno = 1111
ownpal = 0
size.xscale = 1.05
size.yscale = 1.05



[State 1110, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------
[Statedef 1111,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15191
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = s303,0

[State 1091, ]
type = changestate
trigger1 = animelem = 4
value = 1112
;----------------------------

[Statedef 1112,]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15022
ontop = 1

[State 1093, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 5
stateno = 1113
time = -1

[State 1093, 1]
type = Velset
trigger1 = time = 0
x = 4
y = 0

[State 1093, 1]
type = Velset
trigger1 = p2bodydist X = 0
trigger2 = frontedgedist = 10
x = 0
y = 0

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = s304,0
[State 1199,]
type = PlaySnd
trigger1 = time = 40
value = s304,0
[State 1199,]
type = PlaySnd
trigger1 = time = 80
value = s304,0
[State 1199,]
type = PlaySnd
trigger1 = time = 120
value = s304,0

[State 1093, 2]
type = changestate
trigger1 = time = 150
value = 1113

[State 1083, 2]
type = changestate
trigger1 = p2bodydist X <= 10
value = 1116
;---------------------------------------
[Statedef 1116]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15201
sprpriority = -2

[State 1082, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1113
time = 1

[State 1085, 1]
type = HitDef
trigger1 = animelem =3
attr = S, SA
animtype  = Hard
damage    = 30,5
guardflag = MA
pausetime = 6,12
hitsound = s2000,0
guardsound = 6,0
sparkno = s252
sparkxy = 0,-70
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -3,0
air.velocity = -5,-7

[State 1116, 2]
type = changestate
trigger1 = animelem=4
value = 1114
;------------------------------------
[Statedef 1113,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15171

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = s305,0

[State 1103, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1103, 2]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1114,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15002
ontop = 1

[State 1114, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1113
time = 1

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = s305,0

[State 1114, ]
type = changestate
trigger1 = animelem = 1
value = 1115
;---------------------------------------------------------------------------
[Statedef 1115,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15181

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = s305,0

[State 1105, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1105, 2]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
 [Statedef 1120 minion 3]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 96

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 15,15
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 193
pos = 0,-40
removetime=20
scale = 0.6,0.6
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 6
id = 193

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1228
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority=1


[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 100,2

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  39,6
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 810, 0]
type = Pause
trigger1 = AnimElem = 1
time = 3
movetime = 3

[State 1100, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1113
pos = 39,6
postype = p1
stateno = 1121
ownpal = 0
size.xscale = 1.1
size.yscale = 1.1



[State 1120, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------
[Statedef 1121,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15192
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 230,1

[State 1121, ]
type = changestate
trigger1 = animelem = 4
value = 1122
;----------------------------

[Statedef 1122,]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15023
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = time = 0
value = 230,1

[State 1199,]
type = PlaySnd
trigger1 = time = 50
value = 230,1


[State 1199,]
type = PlaySnd
trigger1 = time = 10
value = 230,1


[State 1093, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 5
stateno = 1123
time = -1

[State 1093, 1]
type = Velset
trigger1 = time = 0
x = 2
y = 0

[State 1093, 1]
type = Velset
trigger1 = p2bodydist X = 0
trigger2 = frontedgedist = 10
x = 0
y = 0

[State 1093, 2]
type = changestate
trigger1 = time = 150
value = 1123

[State 1083, 2]
type = changestate
trigger1 = p2bodydist X <= 10
value = 1126
;---------------------------------------
[Statedef 1126]
type    = S
movetype= A
velset = 0,0
ctrl = 0
anim = 15202
sprpriority = -2

[State 1082, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1123
time = 1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 230,1

[State 1085, 1]
type = HitDef
trigger1 = animelem =4
attr = S, SA
animtype  = Hard
damage    = 30,5
guardflag = MA
pausetime = 6,12
sparkno = S20002
sparkxy = -10,-30
hitsound   = s1201,1
guardsound = 9,9
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -3,0
air.velocity = -5,-7



[State 1126, 2]
type = changestate
trigger1 = animelem=9
value = 1124
;------------------------------------
[Statedef 1123,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15172

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 230,1

[State 1123, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1123, 2]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1124,]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 15003
ontop = 1

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 230,1

[State 1124, Hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 1
stateno = 1123
time = 1

[State 1124, ]
type = changestate
trigger1 = animelem = 1
value = 1125
;---------------------------------------------------------------------------
[Statedef 1125,]
type    = A
movetype= H
velset = 0,0
ctrl = 0
anim = 15182

[State 1199,]
type = PlaySnd
trigger1 = animelem = 1
value = 230,1

[State 1105, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1125, 2]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 1200 fire demon]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200
juggle  = 2
velset = 0,0

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1225
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-88
animtype = Light
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3


[State 191, Explod]
type = Explod
trigger1 = animelem = 2
anim = 193
ID = 193
pos = 37,-116
removetime=60
scale = 0.3,0.3
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 5
id = 193

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 110,7

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 55,-75
anim = 211
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1201
stateno = 1201
pos = 55,-75
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.8
size.yscale =  0.8


[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1201]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1201
velset = 5,-3

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = s6767
hitsound = S666666,17
guardsound = S666666,17
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  Movecontact = 1
value = 1203

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1203
ID = 1203
pos = ceil((0)*const(size.xscale)), ceil((-70)*const(size.yscale))
postype = p2  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0
size.xscale = 0.9
size.yscale =  0.9

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1203
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1203
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1203
movetype = I

[State 0, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1202

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1203 && animtime = 0
trigger3 = Vel Y > 0 && Pos Y >= -10
;-----------------------------------------
[Statedef 1202]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1202
sprpriority = 4
velset = 0,0

 [State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1203]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1204
sprpriority = 4

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S,SA
damage = 70,0
animtype = Medium
guardflag = N
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = s8022
sparkxy = -8, -20
guard.sparkno = s6767
hitsound = S8000,1
guardsound = S7,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
fall = 0
air.fall = 0

[State burn]
Type=Targetstate
Triggerall=numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=movehit=1
Trigger1=target,selfanimexist(7697)
value=208


[State 0, SelfState]
type = SelfState
trigger1 =animtime = 0
value = 1202

;---------------------------------
[Statedef 208]
Type=U
Movetype=H
Physics=N
velset=-1,0

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y < -20
y = 1.5

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 1201,2

[State 208]
Type=Changeanim
Trigger1=time=0
value=7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 0
time = 35
add = 40,-60,-150
sinadd = 60,25,0,10
color = 0
invertall = 1

[State 208]
Type=Changeanim
Trigger1=time=9
value=5007

[State 208]
Type=Selfstate
Trigger1=time>=10
value=50*(Statetype=A)
ctrl=1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 1210 ice demon]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200
juggle  = 2
velset = 0,0

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1225
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-88
animtype = Light
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3


[State 191, Explod]
type = Explod
trigger1 = animelem = 2
anim = 193
ID = 193
pos = 37,-116
removetime=60
scale = 0.3,0.3
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 5
id = 193

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 110,7

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 55,-75
anim = 211
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1211
stateno = 1211
pos = 55,-75
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.8
size.yscale =  0.8


[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1211]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1211
velset = 5,-3

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = s6767
hitsound = S1201,1
guardsound = S666666,17
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  Movecontact = 1
value = 1203

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1213
ID = 1213
pos = ceil((0)*const(size.xscale)), ceil((-70)*const(size.yscale))
postype = p2  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0
size.xscale = 0.9
size.yscale =  0.9

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1203
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1203
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1203
movetype = I

[State 0, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1212

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1203 && animtime = 0
trigger3 = Vel Y > 0 && Pos Y >= -10
;-----------------------------------------
[Statedef 1212]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1212
sprpriority = 4
velset = 0,0

 [State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1213]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1214
sprpriority = 4

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = p2stateno != 001
trigger1 = p2stateno != 002
trigger1 = animelem = 5
attr = S,SA
damage = 70,0
animtype = Medium
guardflag = N
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = s8022
sparkxy = -8, -20
guard.sparkno = s6767
hitsound = S1201,1
guardsound = S7,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
fall = 0
air.fall = 0
p2stateno = 201

[State 200, HitDef]
type = HitDef
trigger1 = p2stateno = 001
trigger1 = p2stateno != 002
trigger1 = animelem = 5
attr = S,SA
damage = 70,0
animtype = Medium
guardflag = N
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = s8022
sparkxy = -8, -20
guard.sparkno = s6767
hitsound = S1201,1
guardsound = S7,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
fall = 0
air.fall = 0
p2stateno = 202


[State 0, SelfState]
type = SelfState
trigger1 =animtime = 0
value = 1212
;-----------------------------------------
[Statedef 207]
Type=U
Movetype=H
Physics=N
velset=-0,0



[State 0, VelAdd]
type = VelAdd
trigger1 = pos y < -20
y = 1.5

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 1201,3

[State 208]
Type=Changeanim
Trigger1=time=0
value=7696


[State 208]
Type=Changeanim
Trigger1=time=9
value=5007

[State 208]
Type=Selfstate
Trigger1=time>=10
value=50*(Statetype=A)
ctrl=1
;-------------------------------------
[Statedef 201]
movetype= H
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1201,0


[State 001, treme]
type = PosAdd
trigger1 = time >= 90
x = 1-2*(time%2)

[State 001, 3]
type = PosFreeze
trigger1 = 1
trigger1 = time > 1
value = 1

[State 001, 2]
type = changeanim
trigger1 = 1
value = 7991


[State 001, 3]
type = PalFX
trigger1 = time != 0
add = 0,156,198
mul = 13,179,199
time = 1

[State 001, Cair no Ar]
type = HitOverride
trigger1 = p2stateno = 201
forceair = 1
time = -1
attr = SCA

[State 001, 1]
type = HitOverride
trigger1 = Pos Y < 0
time = 130
attr = SCA,AA, AT, NP
forceair = 1

[State 001, CS]
type = SelfState
trigger1 = time = 41
ctrl = 1
value = 0

[State 001, 3]
type = SelfState
trigger1 = time = 40
trigger1 = Pos Y != 0
ctrl = 1
value = 5050


;( congelado 2ª vez )

[Statedef 202]
movetype= H
velset = 0,0
ctrl = 0

[State 002, 3]
type = PalFX
trigger1 = time = 0
add = 74,198,222
mul = 140,222,239
time = 1

[State 002, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y >= 0
ctrl = 1
value = 5000

[State 002, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y < 0
ctrl = 1
value = 5050
;---------------------------------------------------------------------------
[Statedef 1220 lightning demon]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200
juggle  = 2
velset = 0,0

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 110,7
freqmul = 1.1
loop = 0
pan = 0
;abspan =

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-88
animtype = Light
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3

[State 191, Explod]
type = Explod
trigger1 = animelem = 2
anim = 193
ID = 193
pos = 37,-116
removetime=60
scale = 0.3,0.3
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 5
id = 193

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1225
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=1



[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 55,-75
anim = 211
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1221
stateno = 1221
pos = 55,-75
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.8
size.yscale =  0.8


[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[Statedef 1221]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1221
velset = 5,-3

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = s6767
hitsound = S1201,1
guardsound = S666666,17
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  Movecontact = 1
value = 1203

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1223
ID = 1223
pos = ceil((0)*const(size.xscale)), ceil((-70)*const(size.yscale))
postype = p2  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0
size.xscale = 0.9
size.yscale =  0.9

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1203
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1203
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1203
movetype = I

[State 0, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1222

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1203 && animtime = 0
trigger3 = Vel Y > 0 && Pos Y >= -10
;-----------------------------------------
[Statedef 1222]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1222
sprpriority = 4
velset = 0,0

 [State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------
[Statedef 1223]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1224
sprpriority = 4

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S,SA
damage = 70,0
animtype = Medium
guardflag = N
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = s8022
sparkxy = -8, -20
guard.sparkno = s6767
hitsound = S1201,1
guardsound = S7,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
fall = 0
air.fall = 0

[State Lighning]
Type=Targetstate
Triggerall=numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=movehit=1
Trigger1=target,selfanimexist(7696)
value=207

[State 0, SelfState]
type = SelfState
trigger1 =animtime = 0
value = 1222
;----------------------------------------------------------------------
[Statedef 1300 dead smog]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1300
juggle  = 2
velset = 0,0

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = s120,0



[State 1300, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "death"
ID = 1310
stateno = 1310
pos = 6,0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5




[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;r------------------------
[Statedef 1310]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1311
juggle  = 2
velset = 0,0
sprpriority = 2

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = s240,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 100
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S12,8
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7800


 [State 1310, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;--------------------------

[Statedef 7800]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -8
y = -7

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 35
add = 100,100,100
sinadd = 80,80,80,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7800, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

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
;------------------------------------------------
[Statedef 1600]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1600
ctrl = 0
sprpriority = -1



[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1225
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=1

[State 191, Explod]
type = Explod
trigger1 = animelem = 6
anim = 193
ID = 193
pos = 37,-106
removetime=60
scale = 0.3,0.3
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
id = 193


[State 200, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 20,5

[State 1600,helper]
type = Helper
;trigger1 = StateNo = 4100
trigger1 = animelem = 6
ID = 1602
pos = 0,0
postype = p1
stateno = 1602
helpertype = normal
keyctrl = 1
ownpal = 1
;sprpriority = -3

[State 1600,helper]
type = Helper
;trigger1 = StateNo = 4100
trigger1 = animelem = 6
ID = 1601
pos = 0,0
postype = p1
stateno = 1601
helpertype = normal
keyctrl = 1
ownpal = 1
;sprpriority = 2


[State 1500, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1601]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1601
velset = 0,0
sprpriority = 2

[state 1501,1]
type = bindtoparent
trigger1 = 1
pos = 0,0
facing = 1

[State 1601, HitDef]
type = HitDef
trigger1 = timemod = 10,3
attr = S, HP
animtype = Hard
damage = 10, 3
getpower = 0
sprpriority = 1
hitflag = MADFP
guardflag = MA
pausetime = 0,0
sparkno = s7770
sparkxy = -10, -60
guard.sparkno = s6767
;hitsound = S7,1
guardsound = S202,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -8
guard.slidetime = 11
guard.hittime = 11
guard.velocity = 0
air.type = Low
air.velocity = -5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[state 1601, destroy]
type = Destroyself
trigger1 = time = 300


[Statedef 1602]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1602
velset = 0,0
sprpriority = -2


[State 200, PlaySnd]
type = PlaySnd
trigger1 =  timemod = 55,3
value = 171,22



[state 1602,1]
type = bindtoparent
trigger1 = 1
pos = 0,0
facing = 1

[State 1602, HitDef]
type = HitDef
trigger1 = timemod = 10,3
attr = S, HP
animtype = Hard
damage = 10,3
getpower = 0
sprpriority = 1
hitflag = MADFP
guardflag = MA
pausetime = 0,0
sparkno = s7770
sparkxy = -10, -60
guard.sparkno = s6767
;hitsound = S7,1
guardsound = S202,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -8
guard.slidetime = 11
guard.hittime = 11
guard.velocity = 0
air.type = Low
air.velocity = -5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[state 1602, destroy]
type = Destroyself
trigger1 = time = 300
;----------------------------------------
;------------------------------
; Special 1
[StateDef 1700]
type = S
movetype = A
physics = S
anim = 1650
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,80)

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,0
anim = 918
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S60,6

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "hex animal"
ID = 1710
stateno = 1710
pos = 35,-75
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1




[State 1260]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 1651
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  221

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Anim != 1650
id =  221

[State 0, VarRandom]
type = VarRandom
trigger1 = time= 0
v = 48
range = 0,5

[State 1700, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------
 [Statedef 1710]
type = A
movetype = A
physics = N
juggle = 0; = 9
anim = 1653
velset = 7,0
sprpriority = 99
poweradd = 0
scale= 0.5,0.5


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 90,5
guardflag = MA
pausetime = 6,6
hitsound = S2000,3
guardsound = S171,4
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
p1stateno = 1749
p2stateno = 1740
envshake.time = 6
envshake.ampl = 3
getpower = 0

[State 1710, DestroySelf]
type = DestroySelf
trigger1 = time > 50
;---------------------------------
[StateDef 1740]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim != 1745
movetype = I

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1745
movetype = A

[State 0, Turn]
type = Turn
trigger1 = p2bodydist x < 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1740

[State 0, VelAdd]
type = posset
trigger1 = time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdback" && command != "holdfwd"
trigger2 = anim = 1745
x = 0

;var(48)
;0 - urso
;1 - lagartixa
;2 - tartaruga
;3 - pato
;4 - coelho
;5 - cobra
[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 1.2*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 1
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 3*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 2
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 0.5*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 3
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 2*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 4
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 3.5*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 1745
triggerall = enemynear,var(48) = 5
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 1.7*(ifelse(command="holdback",-1,1))

[State 0, ChangeAnim]
type = ChangeAnim2
triggerall = anim != 1745
triggerall = enemynear,var(48) = 5
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
value = 1745

[State 0, ChangeAnim]
type = ChangeAnim2
triggerall = anim = 1745
triggerall = enemynear,var(48) = 5
trigger1 = animtime = 0
value = 1746

[State 0, Explod]
type = Explod
triggerall = numexplod(1534) = 0
trigger1 =   movecontact=1
anim = 1534
ID =  1534
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 190
ownpal = 1
removeongethit = 0


[State 0, Explod]
type = Explod
triggerall = numexplod(1534) = 0
trigger1 =  time = 140
anim = 1534
ID =  1534
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 190
ownpal = 1
removeongethit = 0


[State 1740, changestate]
type = selfState
trigger1 = time = 150
value = 11
ctrl = 1
;-------------------------------------
[StateDef 1749]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
anim = 1749

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,20

[State 3000, VarSet]
type = ParentVarSet
trigger1 = 1
fv = 27
value = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1534) = 0
trigger1 = time = 0
anim = 1534
ID =  1534
pos = 0,-40
postype = p2
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 190
ownpal = 1
removeongethit = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = enemynear, Pos X ;+ 55*facing
y = enemynear, Pos Y ;- 25



[State 1000, changestate]
type = changeState
trigger1 = time = 23
value = 1750; + var(48)
ctrl = 0
;---------------------------------
[StateDef 1750]
type = A
movetype = I
physics = N
anim = 1750
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, Turn]
type = Turn
trigger1 =facing = enemynear,facing
;ignorehitpause =
;persistent =


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1750
trigger1 = enemynear, vel x = 0
value = 1750

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1760
trigger1 = enemynear, vel x > 0
value = 1760

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1770
trigger1 = enemynear, vel x < 0
value = 1770


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = enemynear, Pos X ;+ 55*facing
y = enemynear, Pos Y ;- 25



[State 0, ChangeState]
type = destroyself
trigger1 = enemynear,stateno != 1740

