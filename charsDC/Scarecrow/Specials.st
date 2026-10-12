;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1 - x
;---------------------------------------------------------------------------
;Gas Grenade
[Statedef 1000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666, 16
volume = 0
channel = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1001
pos = 35,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 1 - y
;---------------------------------------------------------------------------
;Gas Grenade
[Statedef 1003]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666, 16
volume = 0
channel = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1005
pos = 35,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 1 - z
;---------------------------------------------------------------------------
;Gas Grenade
[Statedef 1004]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666, 16
volume = 0
channel = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1006
pos = 35,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
;Gas Grenade x
[Statedef 1001]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 2,-8

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S666666,31
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = anim = 1001
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
trigger1 = movecontact = 1
value = 1002

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1022
ID = 1022
pos = -20,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0 
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1023
ID = 1023
pos = 20,-40
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

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1002
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1002
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1002
movetype = I

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = anim = 1002 && animtime = 0

;-----------------------------------
;Gas Grenade y
[Statedef 1005]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 3.5,-6.5

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S666666,31
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = anim = 1001
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
trigger1 = movecontact = 1
value = 1002

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1022
ID = 1022
pos = -20,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0 
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1023
ID = 1023
pos = 20,-40
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

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1002
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1002
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1002
movetype = I

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -21
trigger2 = frontedgebodydist <= -15
trigger3 = anim = 1002 && animtime = 0

;-----------------------------------
;Gas Grenade z
[Statedef 1006]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 7,-5

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S666666,31
volume = 0
channel = 2
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = anim = 1001
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
trigger1 = movecontact = 1
value = 1002

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1022
ID = 1022
pos = -20,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0 
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1023
ID = 1023
pos = 20,-40
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

[State 0, ChangeAnim]
type = Sprpriority
trigger1 = anim = 1002
value = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1002
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1002
movetype = I

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1002 && animtime = 0
trigger3 = Vel Y > 0 && Pos Y >= -15

;-----------------------------------
;Goblin
[Statedef 1022]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1022
sprpriority = 4

[State 1800, Bind]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = -20, -60, Foot

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 16
attr = S,SA
damage = 3,0
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

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------
;Goblin 2
[Statedef 1023]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1022
sprpriority = 4

[State 1800, Bind]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 20, -40, Foot

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 16
attr = S,SA
damage = 3,0
animtype = Medium
guardflag = N
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = s8022
sparkxy = -8, -20
guard.sparkno = s6767
hitsound = S8000,1
guardsound = S8000,1
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

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------------------------------------------------
;Lantern Toss - a
[Statedef 1008]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "lava"
ID = 1011
stateno = 1011
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------
;Lantern Toss - b
[Statedef 1009]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "lava"
ID = 1012
stateno = 1012
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------
;Lantern Toss - c
[Statedef 1010]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "lava"
ID = 1013
stateno = 1013
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
; Lantern lava - a
[Statedef 1011]
type = S
movetype = A
physics = N
anim = 1011

[State 1050, 3]
type = velset
trigger1 = animelemtime(2) >=0
x = 6

[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 20, 3
pausetime = 2, 5
sparkno = 2
sparkxy = -5, 0
guard.sparkno = 40
hitsound = S8000,4
guardsound = S8000,4
animtype = Medium
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -3.5,0
air.velocity = -2.7,-2
guard.velocity = -3
getpower = 10
palfx.time = 17
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 10
envshake.freq = 180
envshake.ampl = 2

[State 1011, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 14
channel = 1

[State 1011, 5]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 13
channel = 2

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------
; Lantern lava - b
[Statedef 1012]
type = S
movetype = A
physics = N
anim = 1011

[State 1050, 3]
type = velset
trigger1 = animelemtime(2) >=0
x = 4

[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 27, 5
pausetime = 3, 6
sparkno = 2
sparkxy = -5, 0
guard.sparkno = 40
hitsound = S8000,4
guardsound = S8000,4
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -4,0
air.velocity = -3,-2.5
guard.velocity = -4
getpower = 11
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 12
envshake.freq = 180
envshake.ampl = 3

[State 1011, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 14
channel = 1

[State 1011, 5]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 13
channel = 2

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------
; Lantern lava - c
[Statedef 1013]
type = S
movetype = A
physics = N
anim = 1011

[State 1050, 3]
type = velset
trigger1 = animelemtime(2) >=0
x = 2

[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 35, 7
pausetime = 3, 8
sparkno = 2
sparkxy = -5, 0
guard.sparkno = 40
hitsound = S8000,4
guardsound = S8000,4
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.hittime  = 19
ground.velocity = -3.5,-3
air.velocity = -3.5,-3
guard.velocity = -5
fall = 1
air.fall = 1
getpower = 13
palfx.time = 24
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 14
envshake.freq = 180
envshake.ampl = 4

[State 1011, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 14
channel = 1

[State 1011, 5]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 13
channel = 2

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;----------------------------------------------------
;Special5 - vile acid
[Statedef 1020]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1020
juggle  = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 3
volume = 0
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 10
helpertype = normal ;player
name = "AcidSplash"
ID = 1111
stateno = 1111
pos = 60,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Acid Splash
[Statedef 1111]
type = A
movetype = A
physics = N

[State 1111, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = parent, var(24)

[State 1111, 2]
type = VelSet
trigger1 = time = 0
x = parent, fvar(0)

[State 1111, 3]
type = Projectile
trigger1 = 1
projanim = 1021
projremove = 0
projremovetime = 28
projsprpriority = 2
projID = 1021
velocity = 0, 0
postype = p1
pos = 0, 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 20, 2
pausetime = 0, 9
guard.pausetime = 0, 10
sparkno = 2
sparkxy = -5, 0
guard.sparkno = 40
hitsound = S666666, 18
guardsound = S1, 0
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1.5,0
guard.velocity = -5
air.velocity = 0,0
;yaccel = (enemynear, const(movement.yaccel) / 2) + 0.49
guard.velocity = -8
hitonce = 1
getpower = 10
givepower = 35
palfx.time = 40
palfx.add = 240,250,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 10
envshake.freq = 180
envshake.ampl = 2

[State 1111, 5]
type = PlaySnd
trigger1 = 1
value = 666666, 19
channel = 2

[State 1111, 5]
type = PlaySnd
trigger1 = 1
value = 666666, 20
channel = 1

[State 0, Explod]
type = Helper
trigger1 = 1
stateno = 1024
ID = 1024
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1111, 5]
type = DestroySelf
trigger1 = time >= var(0)

;------------------------------------------
; Acid Puddle
[Statedef 1024]
type = S
movetype = A
physics = N
anim = 1024

[State 1111, 5]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1050, 3]
type = HitDef
trigger1 = TimeMod = 22,0
attr = S, SP
hitflag = MAFD
guardflag = N
animtype = Light
damage = 4, 3
pausetime = 0, 4
sparkno = -1;2
sparkxy = -5, 0
guard.sparkno = 40
hitsound = S8000,4
guardsound = S8000,4
ground.type = Low
ground.slidetime = 15
ground.hittime  = 5
ground.velocity = 0,0
air.type =  Low
air.velocity = 0,0
guard.velocity = -.3
palfx.time = 15
palfx.add = 240,250,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 4
envshake.freq = 180
envshake.ampl = 2

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Staff Wound z
;---------------------------------------------------------------------------
[Statedef 1112]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1112
poweradd = 40
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 3
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = s666666, 40
channel = 4

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 6
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 11
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 14
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 20
attr = S, NA
animtype  = Hard
damage    = 77
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-7
guard.velocity = -10
air.velocity = -4,-4
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 12
envshake.freq = 127
envshake.ampl = -6
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
fall = 1
fall.recover = 1
fall.recovertime = 25
hitcountpersist = 1

[State 220, 1]
type = StopSnd
trigger1 = animelem = 20
channel = 4

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Staff Wound y
;---------------------------------------------------------------------------
[Statedef 1113]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 1113
poweradd = 40
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 2.5
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = s666666, 40
channel = 4

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 6
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 11
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 14
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 20
attr = S, NA
animtype  = Hard
damage    = 77
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-7
guard.velocity = -10
air.velocity = -4,-4
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 12
envshake.freq = 127
envshake.ampl = -6
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
down.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = -25
fall = 1
fall.recover = 1
fall.recovertime = 25
hitcountpersist = 1

[State 220, 1]
type = StopSnd
trigger1 = animelem = 17
channel = 4

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Staff Wound x
;---------------------------------------------------------------------------
[Statedef 1114]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1114
poweradd = 40
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 2
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = s666666, 40
channel = 4

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 6
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 11
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 14
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 20
attr = S, NA
animtype  = Hard
damage    = 77
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-7
guard.velocity = -10
air.velocity = -4,-4
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 12
envshake.freq = 127
envshake.ampl = -6
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
down.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = -25
fall = 1
fall.recover = 1
fall.recovertime = 25
hitcountpersist = 1

[State 220, 1]
type = StopSnd
trigger1 = animelem = 11
channel = 4

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1