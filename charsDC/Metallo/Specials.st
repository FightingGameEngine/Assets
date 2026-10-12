;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Optic Beam
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 80

[State 1000, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1000, d]
type = removeexplod
trigger1 = !time
id = 104



[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Optic Beam"
ID = 1010
stateno = 1010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1010]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 70

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
trigger1 = p2name != "Superman" || p2name != "Superboy" || p2name !="Supergirl"
trigger1 = timemod= 8,1
attr = S, SP
damage = 23
guardflag = MA
pausetime = 2,6
hitsound = S16,0
guardsound = S14,0
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
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
envshake.time = 6
envshake.ampl = 3

[State 220, HitDef]
type = HitDef
trigger1 = p2name = "Superman" || p2name = "Superboy" || p2name = "Supergirl"
trigger1 = timemod= 8,1
attr = S, SP
damage = 40,10
guardflag = MA
pausetime = 2,6
hitsound = S16,0
guardsound = S14,0
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
guard.sparkno = -1
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
envshake.time = 6
envshake.ampl = 3



[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1000


;---------------------------------------------------------------------------
;Kryptonite Punch
[StateDef 1100]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 55
sprpriority = 2

[State 1100, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1100, d]
type = removeexplod
trigger1 = !time
id = 104


[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "Kryptonite Punch"
trigger2 = var(59)
v = 41
value = 10


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1100 + var(41)


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 28




[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7 + var(41)/3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 3 + var(41)/6

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0






[State 1100, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
damage = 70,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,8
sparkno = s1116
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s29,0
guardsound = S14,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 220, HitDef]
type = HitDef
trigger1 = p2name = "Superman" || p2name = "Superboy" || p2name = "Supergirl"
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 69,11
animtype = back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s1116
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s29,0
guardsound = S14,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flamethrower
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 80

[State 1200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1200, d]
type = removeexplod
trigger1 = !time
id = 104



[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 33,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Flames"
ID = 1020
stateno = 1020
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1020]
type = A
movetype = A
physics = N
anim = 1201
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 70

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
trigger1 = timemod= 8,1
attr = S, SP
damage = 19,2
guardflag = MA
pausetime = 2,6
hitsound = S34,0
guardsound = S14,0
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
guard.sparkno = -1
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
envshake.time = 6
envshake.ampl = 3
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15


[State 0, Explod]
type = Explod
triggerall = numexplod(333)=0
trigger1 = movehit
anim = 333
ID = 333
pos = 0,-20
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0




[State 210]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1200
;---------------------------------------------------------------------------
;Air Impact
[Statedef 1400]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 3
anim = 1400



[State 1400, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1400, d]
type = removeexplod
trigger1 = !time
id = 104




[State 1400, a]
type = Width
trigger1 = 1
value = 40, 2

[State 1400, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1400, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40






[State 220]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 83,5
guardflag = MA
pausetime = 7,7
sparkno = 2;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S41,0
guardsound = S21,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
;p2stateno = 9020



[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5




[State 1400, 5]
type = VelAdd
trigger1 = time > 46
trigger1 = Vel X > 0
x = -.60

[State 1400, 6]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1400, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Pos Y <= -1, 50, 11)
ctrl = ifelse(Pos Y <= -1, 0, 1)
;---------------------------------------------------------------------------
;Bomb
;---------------------------------------------------------------------------
[Statedef 1500]
type = S
movetype = A
physics = N
poweradd = 80
juggle = 1
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2


[State 1500, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1500, d]
type = removeexplod
trigger1 = !time
id = 104








[state 1500, 1]
type = Playsnd
trigger1 = animelem = 1
value =  47

[State 1500, projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1500
projanim = 1510
projhitanim = 1511
projcancelanim = 1511
projremovetime = 100
velocity = 11,0
offset = -10, -60
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1
hitsound = S48,0
guardsound = S14,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1512
ID = 3260
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1



[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 1500, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Energy Barrier
;---------------------------------------------------------------------------
[Statedef 1700]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 49
volume = 70





[State 720, projétil]
type = projectile
trigger1 = animelem = 2
projanim = 1701
projremove = 0
projremovetime = 48
projhits = 7
attr = S, SP
damage = 8
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S50,0
guardsound = S8000,6
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -7









[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

[State 720, 7]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Stretching Punch
;---------------------------------------------------------------------------
[Statedef 1800]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 80
ctrl = 0
velset = 0,0
anim = 1800
sprpriority = 0
facep2 = 1

[State 1800, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1800, d]
type = removeexplod
trigger1 = !time
id = 104


[State 1800, 1]
type = PlaySnd
trigger1 = Time = 6
value = 52, 0

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = -1
hitsound = s53,0
guardsound = S14,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

[State 1800]
type = VarAdd
trigger1 = MoveContact
var(21) = 1
ignorehitpause = 1
persistent = 0


[State 1800]
type = VarAdd
trigger1 = !MoveContact && AnimElem = 6, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0

[State 1800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Air Cannon
;---------------------------------------------------------------------------

[Statedef 1900]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1900



[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 4
v = 40
value = -1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 57

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1905
ID = 1905
scale = 1,1
pos = 7,-92
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1906
projanim = 1906
projhitanim = 1908
projremanim = 1908
projcancelanim = 1908
projedgebound = 40
projstagebound = 40
projheightbound = -540
velocity = 16,-16
offset = 7, -92
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 85,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S58,0
guardsound = S14,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1








