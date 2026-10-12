; States file for (Character) -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------
[StateDef 1000]
type    = S
movetype= A
physics = S
anim = 1000
physics = N
juggle  = 1
ctrl = 0
poweradd = 55
sprpriority = 2

[state 101, 2]
type = makedust
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
pos = 0,0
spacing = 1

[State 3605, 1] ;Dust
type = Explod
trigger1 = animelem = 5
anim = 918
postype = p1
pos = 13, 10
velocity = 0, 0
accel = 0, 0

[State -3, Landing Dust]
type = Explod
trigger1 = animelem = 5
ID = 101
anim = 101
postype = p1
pos = 20, -5
bindtime = -1
removetime = 20
sprpriority = -2
ownpal = 1

[State -3, Landing Dust]
type = Explod
trigger1 = animelem = 5
ID = 101
anim = 101
postype = p1
pos = -50, 5
bindtime = -1
removetime = 20
sprpriority = -2
ownpal = 1

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_z"
trigger2 = var(59)
v = 41
value = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S174,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S174,16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S174,22

[State 105, Flash]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
anim = 113
ID = 113
postype = P1
pos = -20,-51
bindtime = 1
vel = -5,0
ownpal = 1
random = 40,78
scale = 0.5,0.5
removetime = -2

[State 0, VelSet]
type = VelSet
trigger1 = time = [12,32]
x = 7 + var(41)/3

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.velocity = -10,-6
guard.slidetime = 13
guard.hittime = 13
guard.velocity = -16
air.velocity = -10,-6
airguard.velocity = -6
fall = 1
p2stateno = 221
ground.cornerpush.veloff = -24

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1100]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 1100
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S174,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S174,9

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,0
air.type = Low
air.hittime = 5
air.velocity = -2,-3
p2stateno = 7696


[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1101
ID = 1101
pos = 85,-74
bindtime = -1
removetime = 24
scale = .5,.5
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1300]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1300
poweradd = 55

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S174,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S174,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 1303
ID = 1303
pos = 105,-48
bindtime = -1
removetime = 24
scale = 1,0.5
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -5, -70
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 1000, 2]
type = Projectile
trigger1 = animelem = 8
projscale = 0.5,0.5
ProjID = 1301
projanim = 1301
projhitanim = 1302
projremanim = 1302
projcancelanim = 1302
projremovetime = -1
velocity = 5,0
accel = 0.03,0
offset = 85,-48
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 35,2
pausetime = 10,10
;postype = P2
sparkno = S8210+random%3
hitsound = S178,0
guardsound = S178,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7;,2
air.velocity = -4,2
afterimage.time = 90
afterimage.length = 30
afterimage.trans = add

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------

[StateDef 1350]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1350
poweradd = 55

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S174,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S174,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 1303
ID = 1303
pos = 95,-73
bindtime = -1
removetime = 24
scale = 1,0.5
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -5, -70
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 1000, 2]
type = Projectile
trigger1 = animelem = 9
projscale = 0.5,0.5
ProjID = 1301
projanim = 1301
projhitanim = 1302
projremanim = 1302
projcancelanim = 1302
projremovetime = -1
velocity = 5,0
accel = 0.03,0
offset = 75,-73
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 40,2
pausetime = 10,10
;postype = P2
sparkno = S8210+random%3
hitsound = S178,0
guardsound = S178,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7;,2
air.velocity = -4,2
afterimage.time = 90
afterimage.length = 30
afterimage.trans = add

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1375]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1375
poweradd = 55

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1304
ID = 1304
pos = 62,-97
bindtime = -1
removetime = 24
scale = 0.5,1
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S174,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S174,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -5, -70
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 1000, 2]
type = Projectile
trigger1 = animelem = 4
projscale = 0.5,0.5
ProjID = 1301
projanim = 1301
projhitanim = 1302
projremanim = 1302
projcancelanim = 1302
projremovetime = -1
velocity = 2,-5
accel = 0.03,0
offset = 62,-97
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 35,2
pausetime = 10,10
;postype = P2
sparkno = S8210+random%3
hitsound = S178,0
guardsound = S178,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7;,2
air.velocity = -4,2
afterimage.time = 90
afterimage.length = 30
afterimage.trans = add

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
pos x = 10
value = 0
ctrl = 1


[StateDef 1400]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1400
poweradd = 55
sprpriority = 2

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S174,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 || animelem = 7 || animelem = 11
value = S175,1

[State 1101, 1]
type = Explod
trigger1 = animelem = 3
anim = 1403
ID = 1403
pos = -15, 5
sprpriority = 1
removetime = 44
removeongethit = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S175,0

[State 1101, 1]
type = Explod
trigger1 = animelem = 3
anim = 1404
ID = 1403
pos = 0, -25
sprpriority = 1
removetime = 36
removeongethit = 1
scale = 1.2, 1.2
ownpal = 1
bindtime = -1
persistent = 0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = low
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -25
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = trip
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 2,-5
air.type = Low
air.hittime = 3
air.velocity = 2,-5

[State 0, Explod]
type = velset
trigger1 = time = [7,42]
x = 10

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 10
ctrl = 1

;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0

[Statedef 7696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 5]
type = VelAdd
trigger1 = Time > 30
y = 0.45

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696


[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------

;Charging Uppercut (Start)
[Statedef 2300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 2300
ctrl = 0
sprpriority = 2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S174,23

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim =  918
ID =918
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 33
supermove
pausemove
scale = 1,0.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[state 100, 4]
type = explod
trigger1 = time = 4
id = 100
anim = 6014
postype = p1
pos = -30,-25
ownpal = 1
bindtime = 1
scale = 1,0.5
sprpriority = 5
persistent = 0
removeongethit = 1

[state 100, 6]
type = playsnd
trigger1 = animelem = 1
value = S0,27

[State 2200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2301
ctrl = 0

;Charging Uppercut
[Statedef 2301]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 2301
ctrl = 0
sprpriority = 2

[State 245, 24] 
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 1020, a]
type = Width
trigger1 = time < 52
value = 40, -10

[State 1020, 1]
type = VelSet
trigger1 = AnimElem = 2
y = 0
x = 17

[State 2201, 3]
type = Width
trigger1 = 1
edge = 0,0
player = 50,0

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 171,1

[state 100, 6]
type = playsnd
trigger1 = animelem = 3
value = 0,1

[State 2201, 4]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = floor(70 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S(8210+random%2)
sparkxy = -15,-80
hitsound = s2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
fall = 1

[State 2201, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 2201, 6]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 6.2
y = -5.5

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Special Attacks
; 
; Special1 (F,D,DF + P)
;   (Move description goes here)
;
; (etc.)
;
;---------------------------------------------------------------------------
