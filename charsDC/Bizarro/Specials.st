; SPECIALS
; =========

;----------------
;Heat Vision
[Statedef 1000]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1000

[State 1000, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel  = 0

[State 1000, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel  = 1

[State 1000, 6]
type = PlaySnd
trigger1 = Time = 20
value = 9,3

;-------------------
;Heat ray
[State 1000, 0]
type = Helper
trigger1 = AnimElem = 9
helpertype = normal
name = "H_RAY"
id = 666
postype = p1
pos = 0,0
stateno = 1013
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3

[State 1000, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Heat ray state
[Statedef 1013]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1013

[State 1013, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1013 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
;persistent = 0
attr = SCA, HP
damage    = 30
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
hitsound   = S9,4
guardsound = S9,5
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -10
air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 1013, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1013, 8]
type = BindToParent
trigger1 = parent, stateno = 1000
pos = 0,0

[state 1013, 8]
type = destroyself
trigger1 = Animtime = 0
trigger2 = parent, stateno != 1000
;--------------------
; Wind Breath
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
poweradd = 120
velset = 0,0
anim = 1200

[State 1200, 1]
type = Helper
trigger1 = AnimElem = 7
ID = 555
pos = 30,-90
postype = p1
facing = 1
stateno = 1201
helpertype = normal
name = "Wind"
keyctrl = 0
ownpal = 1

[State 1200, 6]
type = PlaySnd
trigger1 = animelem = 6
value = 9,2
channel = 0

[State 1200, 6]
type = PlaySnd
trigger1 = animelem = 6
value = 9,2
channel = 1

[State 1200, 6]
type = PlaySnd
trigger1 = animelem = 6
value = 9,2
channel = 2

[State 1200, 6]
type = PlaySnd
trigger1 = animelem = 6
value = 9,2
channel = 3

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; Wind
[Statedef 1201]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1201
sprpriority = 5

[State 1201, 1]
type = Explod
trigger1 = time = 3
anim = 1204
SprPriority = 3
postype = P1
pos = 60, 27
ownpal = 1
removetime = -2
scale = 0.5,0.5

[State 1201, 1]
type = Explod
trigger1 = time = 3
anim = 1203
SprPriority = 1
postype = P1
pos = 60, -50
ownpal = 1
removetime = -2
scale = 0.5,0.5

[State 1201, 1]
type = Explod
trigger1 = time = 8
anim = 1204
SprPriority = 3
postype = P1
pos = 100, 27
ownpal = 1
removetime = -2
scale = 0.75,0.75

[State 1201, 1]
type = Explod
trigger1 = time = 8
anim = 1203
SprPriority = 1
postype = P1
pos = 100, -50
ownpal = 1
removetime = -2
scale = 0.75,0.75

[State 1201, 2]
type = VelSet
trigger1 = 1
x = 1.5
y = 0

[State 1201, 2]
type = Destroyself
trigger1 = time = 50

[State 1201, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 75,10
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = s3,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 1202

[State 1201, 4]
type = Destroyself
trigger1 = Animelem = 15

;-----------------------------------------------
;P2 Blown Away
[Statedef 1202]
type    = S
movetype= H
physics = N
anim = 5050
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1202, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1202

[State 1202, 1]
type = Posset
Trigger1 = Time = 0
y = 0

[State 1202, 2]
type = VelSet
trigger1 = animelem = 2
x = -5
Y = -18

[State 1202, 2]
type = VelSet
trigger1 = animelem = 3
x = 0
Y = 0

[State 1202, 2]
type = VelSet
trigger1 = animelem = 4
x = 7
Y = 0

[State 1202, 2]
type = VelSet
trigger1 = animelem = 5
x = -5
Y = 8

[State 1202, 2]
type = VelSet
trigger1 = animelem = 6
x = 0
Y = -10

[State 1202, 4]
type = SelfState
trigger1 = animelem = 7
value = 5050

;---------------------------------------------------------------------------
;Slide Reverse Kick
[Statedef 1300]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 1300
poweradd= 40
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 1300, 3]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1300, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 8,3
channel = 0

[State 1300, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 1

[State 1300, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 2

[state 1300, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1300, 5]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
attr = A,NA
animtype = Heavy
damage = 25,10
guardflag = MA
pausetime = 3,30
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-15
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -2.2,-3.2

[State 1300, 5]
type = HitDef
trigger1 = AnimElem = 8
attr = A,NA
animtype = Heavy
damage = 50,10
guardflag = MA
pausetime = 10,20
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-35
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1

[State 1300, 6]
type = ChangeState
trigger1 = Animtime = 0
Value = 50
Ctrl = 1

;--------------------------------------
; Up-Front Kick Start
[Statedef 1350]
type = A
movetype= A
physics = N
juggle = 1
anim = 1350
poweradd= 40
ctrl = 0

[State 1350, 2]
type = VelSet
trigger1 = AnimElem = 2
x = -10
y = -5.5

[state 1350, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1350, Hit wall]
type = ChangeState
triggerall = Pos y < -0
trigger1 = BackEdgeBodyDist <= 25
trigger2 = FrontEdgeBodyDist <= 25
value = 1351

;--------------------------------------
; Up-Front Kick
[Statedef 1351]
type = A
movetype= A
physics = N
juggle = 1
anim = 1351
poweradd= 40
ctrl = 0

[State 1351, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 15
y = 1

[State 1351, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,9

[state 1351, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1351, 5]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
attr = A,NA
animtype = Heavy
damage = 20,10
guardflag = MA
pausetime = 5,20
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-15
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1

[State 1351, 2]
type = VelSet
trigger1 = AnimElem = 7
x = 10
y = 2

[State 1351, 2]
type = VelSet
trigger1 = AnimElem = 14
x = 7
y = 5

[State 1351, 6]
type = ChangeState
trigger1 = time = 35
trigger2 = Pos Y >= 0
value = 50
anim = 47

[State 1351, 4.2]
type = ChangeState
trigger1 = (time = 35) && (Var(10) = 0) && (Var(14) = 1)
trigger2 = Pos Y >= 0
value = 730

;----------------
;FLY Heat Vision
[Statedef 1400]
type    = A
movetype= A
physics = N
poweradd= 40
ctrl = 0
velset = 0, 0
anim = 1400

[State 1400, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 0

[State 1400, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 1

[State 1400, 6]
type = PlaySnd
trigger1 = Time = 20
value = 9,3

;-------------------
;FLY Heat Ray
[State 1400, 0]
type = Helper
trigger1 = AnimElem = 9
helpertype = normal
name = "H_RAY"
id = 666
postype = p1
pos = 0,0
stateno = 1401
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3

[State 1400, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl = 1

[State 1400, 4.2]
type = ChangeState
trigger1 = (animelem = 23) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;Heat Ray state
[Statedef 1401]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1401

[State 1401, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1401 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
;persistent = 0
attr = SCA, HP
damage    = 40,10
animtype = Medium
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
hitsound   = S9,4
guardsound = S9,5
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 1401, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1401, 8]
type = AssertSpecial
trigger1 = time = [0,32]
flag = Noshadow

[state 1401, 8]
type = BindToParent
trigger1 = parent, stateno = 1400
pos = 0,0

[state 1401, 8]
type = destroyself
trigger1 = Animtime = 0
trigger2 = parent, stateno != 1400

;---------------------------------------------------------------------------
; Drill Punch Start
[Statedef 1500]
type = S,SA
movetype= A
physics = N
juggle = 1
anim = 1500
poweradd= 40
velset = 0,0
ctrl = 0

[State 1500, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 1,4
channel = 0

[State 1500, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 1,4
channel = 1

[State 1500, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S,NA
animtype = High
damage = 30,10
guardflag = MA
pausetime = 5,20
sparkxy = -10,-65
sparkno = 2
guard.sparkno = 40
hitsound   = S2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 30
ground.velocity = -2
air.velocity = -2.2,-3.2

[State 1500, NotHitBy]
type = NotHitBy
trigger1 = animelem = 8
time = 25
value = SCA
ignorehitpause = 1

[State 1500, 2]
type = Explod
trigger1 = Time = 33
anim = 9991
sprpriority = 3

[State 1500, 6]
type = PlaySnd
trigger1 = animelem = 12
value = 9,6
channel = 1

[State 1500,4]
type=ChangeState
trigger1 = animtime = 0
value=1501
ctrl = 0

;-----------------------------------------------------
;Drill Punch
[Statedef 1501]
type = A,SA
movetype= A
physics = N
juggle = 1
anim = 1501
poweradd= 40
ctrl = 0

[State 1501, 3]
type=PosSet
trigger1= animelem = 2
x=(enemy(0),Pos x)

[State 1501, 2]
type = Explod
trigger1 = Time = 1
anim = 9990
sprpriority = 3

[State 1501, 2]
type = VelSet
trigger1 = AnimElem = 5
x = 0
y = -8

[State 1501, 5]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = A,NA
animtype = Up
damage = 30,10
guardflag = MA
pausetime = 10, 20
sparkxy = -10,-65
sparkno = 2
guard.sparkno = 40
hitsound   = S2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -1.2,-5.2
fall = 1

[State 1501, 2]
type = VelSet
trigger1 = AnimElem = 6
y = 0.25

[State 1501, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl = 0

;-----------------------------------------------------------------
; Bizarre Legion
[Statedef 1600] 
type    = S
movetype= A
physics = S
velset = 0,0                     
ctrl = 0      
anim = 1600

[State 1600,]
type = PlaySnd
trigger1 = time = 4
value = 1000,5

[State 1600, Bizzarre 1]
type = helper
trigger1 = time = 5
helpertype = normal
name = "Bizzarre"
id = 1601
pos = 0,0
postype = p1
stateno = 1601
ownpal = 0

[State 1600, Bizzarre 2]
type = helper
trigger1 = time = 5
helpertype = normal
name = "Bizzarre"
id = 16011
pos = 0,0
postype = p1
stateno = 16011
ownpal = 0

[State 1600, Bizzarre 3]
type = helper
trigger1 = time = 5
helpertype = normal
name = "Bizzarre"
id = 16012
pos = 0,0
postype = p1
stateno = 16012
ownpal = 0

[State 1600, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Impact
[Statedef 1700]
type    = A
movetype= A
physics = N
poweradd = 40
juggle = 0
ctrl = 0
anim = 1700
velset = 0,0

[State 1700, 1]
type = PosAdd
trigger1 = Time = 0
X = 10
Y = -111

[State 1700, 1]
type = VelSet
trigger1 = Time = 12
X = 8
Y = 8

[State 1700, 2]
type = VelAdd
trigger1 = Time >= 13
X = 0.1
Y = 0.1

[State 1700, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
attr = A, SA
damage    = 126,32
animtype = Heavy
getpower = 63
givepower = 21
guardflag = HA
hitflag = MAF
hitsound = s2,2
guardsound = s3,0
pausetime = 16,16
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-20
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2.2,-3.2
air.fall = 1
fall = 1

[State 1700, 8]
type = ChangeState
trigger1 = MoveContact && HitOver = 1
value = 1702

[State 1700, 9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1701

;Hit!!
[Statedef 1701]
type = C
movetype = A
physics = N
anim = 1701

[State 1701, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 1701, 2]
type = VelSet
trigger1 = Time = 0
Y = 0

[State 1701, 3]
type = VelMul
trigger1 = Time >= 0
X = 0.9

[State 1701 , 5]
type = HitDef
trigger1 = AnimElem = 1
persistent = 0
attr = C, NA   
damage    = 80 
animtype = Heavy
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10,8
sparkno = 2
guard.sparkno = 40
sparkxy = 10, 5
hitsound   = S2,2
guardsound = s3,0
ground.type = trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4, -7 
air.velocity = -4,-7
air.type = trip
down.velocity = 0,0
fall = 1
air.fall = 1
fall.animtype = back
down.bounce = 1
bounce = 1

[State 1701, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;No Hit
[Statedef 1702]
type = A
movetype = I
physics = N
anim = 1702
velset = -2,-7.2

[State 1702, 1]
type = VelAdd
trigger1 = Time >= 5
Y = 0.4

[State 1702, 9]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 52

[State 1702, 7]
type = ChangeState
trigger1 = (AnimElem = 5) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;--------------------
;Fast Wind
[Statedef 1750]
type    = A
movetype= A
physics = N
poweradd = 80
juggle = 0
ctrl = 0
anim = 1750

[State 1750, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .02

[State 1750, 6]
type = PlaySnd
trigger1 = Time = 11
value = 0,0
channel = 1

[State 1750, 6]
type = PlaySnd
trigger1 = Time = 11
value = 0,13
channel = 2

[State 1750, 4]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1751
projpriority = 1
projshadow = -1
projremovetime = 30
projheightbound = -240,70
offset = 50,20
velocity = 4.8,3
attr = S, SP
damage   = 40,10
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,10
hitsound   = S2,1
guardsound = s3,0
sparkxy = 60,-70
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.animtype = Back
air.velocity = -4,4
air.juggle = 3
air.fall = 1
down.velocity = 0,0
down.hittime = 30
down.bounce = 0

[State 1750, 5]
type = Explod
triggerAll = projcontact(015) = 1
trigger1 = pos y >= -70
anim = 1752
sprpriority = 2
postype = p2
pos y = -10
pos x = -65
scale = 1.10, 1.10

[State 1750, 8]
type = ChangeState
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
;trigger1 = time >= 42
value = 52

[State 1750, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 1750, 4.2]
type = ChangeState
trigger1 = (animelem = 14) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;----------------------------------
;Heat Vision air (Horizontal)
[Statedef 1800]
type    = A
movetype= A
physics = N
poweradd= 80
ctrl = 0
anim = 1800

[State 1800, 1]
type = VelMul
trigger1 = Time = 0
x = .05
y = .02

[State 1800, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 0

[State 1800, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 1

[State 1800, 6]
type = PlaySnd
trigger1 = Time = 20
value = 9,3
channel = 2

;-------------------
;Heat ray Z
[State 1800, 0]
type = Helper
trigger1 = AnimElem = 9
helpertype = normal
name = "H_RAY"
id = 1800
postype = p1
pos = 0,0
stateno = 1801
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3

[State 1800, 8]
type = ChangeState
trigger1 = Pos Y >= 5
trigger1 = Vel Y > 0
trigger1 = AnimTime = 0
value = 52

[State 1800, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 1800, 4.2]
type = ChangeState
trigger1 = (animelem = 23) && (Var(10) = 0) && (Var(14) = 1)
value = 730

;Heat ray state
[Statedef 1801]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 1013

[State 1801, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1801 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
;persistent = 0
attr = SCA, HP
damage    = 30
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
hitsound   = S9,4
guardsound = S9,5
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -10
air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 1801, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1801, 8]
type = BindToParent
trigger1 = parent, stateno = 1800
pos = 0,0

[state 1801, 8]
type = destroyself
trigger1 = Animtime = 0
trigger2 = parent, stateno != 1800

;---------------------------------------------------------------------------------------------------
;Slide Punch
[Statedef 1900]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 1900
poweradd= 40
ctrl = 0

[State 1900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40

[State 1900, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 1900, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 9,8
channel = 0

[State 1900, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 9,8
channel = 1

[State 1900, 3]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1900, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 2

[State 1900, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,4
channel = 3

[state 1900, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1900, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = A,NA
animtype = Heavy
damage = 30
guardflag = MA
pausetime = 4,20
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-65
hitsound = S2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -2.2,-3.2
fall = 1

[State 1900, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 1901

;---------------------
; Punch
[Statedef 1901]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 1901
poweradd= 40
ctrl = 0

[State 1901, 3]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = High
damage    = 200
guardflag = MA
pausetime = 5, 30
sparkxy = -10,-20
sparkno = 3
guard.sparkno = 40
hitsound   = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -5
air.velocity = -10,-5
sparkno = 3
fall = 1

[State 1901, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
