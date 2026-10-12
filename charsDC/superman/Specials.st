[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 75, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 75, 0
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 75, 0
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 75, 0
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 75, 0
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 75, 0
[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 75, 0
[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 75, 0
[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = 75, 0
[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 75, 0
[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 75, 0
[State 810, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 75, 0
[State 810, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 75, 0
[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 13
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 13
value = 821

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;----------------------------------------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 75, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 75, 0
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 75, 0
[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 75, 0
[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 75, 0
[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 75, 0
[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 75, 0
[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 75, 0
[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = 75, 0
[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 75, 0
[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 75, 0
[State 810, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 75, 0
[State 810, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 75, 0
[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 13
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 13
value = 821

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;----------------------------------------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Heat Vision
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2000,1
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
;persistent =

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 3
name = "Special Dust"
anim = 8170
pos = -8,3
sprpriority = -4
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper 
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
helpertype = normal ;player
name = "Heat Vision"
ID = 9000
stateno = 9000
pos = 140,-115
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 9000]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9000
ctrl = 0
sprpriority = 10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 25,5
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S6004
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 10

;-FREEZE BREATH---------------
; Freeze Breath
[StateDef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
poweradd = 120
velset = 0,0,0
anim = 9010

[State 720, 1]
type = Helper
trigger1 = AnimElem = 3
ID = 555
pos = 80,-50
postype = p1
facing = 1
stateno = 721
helpertype = normal
name = "Soplo"
keyctrl = 0
ownpal = 1

[State 720, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 3004,0

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


; Soplo
[Statedef 721]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 9020
sprpriority = 5

[State 1001, 2]
type = VelSet
trigger1 = 1
x = 1.5
y = 0

[State 1001, 2]
type = Destroyself
trigger1 = time = 50

[State 1001, 2]
type = HitDef
trigger1 = p2stateno != 722
trigger1 = p2stateno != 723
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 0,0
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 722

; P2 Freeze
[State 1001, 2]
type = HitDef
trigger1 = p2stateno = 722
trigger1 = p2stateno != 723
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 0,0
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 723

[State 2000, 1]
type = Explod
trigger1 = Movehit = 1
anim = 31025
SprPriority = 3
postype = P2
pos = -20, -77
ownpal = 1

[State 1001, 4]
type = Destroyself
trigger1 = Animelem = 15

; P2 congelado
[Statedef 722]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 722, treme]
type = PosAdd
trigger1 = time <= 17
x = 1-2*(time%2)

[State 722, 3]
type = PosFreeze
trigger1 = 1
trigger1 = time > 17
value = 1

[State 722, 2]
type = changeanim
trigger1 = 1
value = (anim)
elem = (animelemno(0))

[State 722, 3]
type = PalFX
trigger1 = time != 0
add = 49,173,231
mul = 13,179,199
time = 1

[State 722, 1]
type = HitOverride
trigger1 = Pos Y < 0
time = 130
attr = SCA;, AA, AT, NP
slot = 0
stateno = 223
forceair = 1

[State 722, 3]
type = SelfState
trigger1 = time = 130
trigger1 = Pos Y >= 0
ctrl = 1
value = 0

[State 722, 3]
type = SelfState
trigger1 = time = 130
trigger1 = Pos Y < 0
ctrl = 1
value = 5050

[State 722, 2]
type = Gravity
trigger1 = time = 130
trigger1 = statetype = A
trigger1 = Pos Y < 0

; P2 congelado (2ª vez)
[Statedef 723]
movetype= H
velset = 0,0
ctrl = 0

[State 723, 2]
type = changeanim
trigger1 = time = 0
value = (anim)
elem = (animelemno(0))

[State 723, 3]
type = PalFX
trigger1 = time = 0
add = 49,173,231
mul = 13,179,199
time = 1

[State 723, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y >= 0
ctrl = 1
value = 0

[State 723, 3]
type = SelfState
trigger1 = time = 1
trigger1 = Pos Y < 0
ctrl = 1
value = 5050

;---------------------------------------------------------------------------
;Heatvision h
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 70
ctrl = 0
velset = 0,0
anim = 9030
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2000,1
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1200, Ground FX]
type = Explod
trigger1 = AnimElem = 3
name = "Special Dust"
anim = 8170
pos = -8,3
sprpriority = -4
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
helpertype = normal ;player
name = "Heat Vision"
ID = 9040
stateno = 9040
pos = -7,-108
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1200, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 9040]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9040
ctrl = 0
sprpriority = 10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 20,5
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S6004
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 7
envshake.ampl = 4
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 10
;---------------------------------------------------------------------------
;FinalPunch
[Statedef 1300,FinalPunch]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 9050
poweradd= 0
ctrl = 0

[State 2105, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 20

[State 3200, flash]
type = explod
trigger1 = animelem = 9
anim = 9060
postype = p1
pos = 70, -85
sprpriority = 2
ignorehitpause = 1
ownpal = 1
supermove = 0

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 9
value = 3006,5

[State 146, 3]
type = HitDef
trigger1 = Animelem = 4
trigger2 = Animelem = 5
trigger3 = Animelem = 6
trigger4 = Animelem = 7
attr = A, NA
animtype  = High
damage    = 22,2
getpower = 0
guardflag = MA
pausetime = 0, 0
sparkxy = -10,-85
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 10, -5
air.velocity = -10,-5
sparkno = 3
fall = 1

[State 146, 4]
type = HitDef
trigger1 = Animelem = 9
trigger2 = Animelem = 10
trigger3 = Animelem = 11
attr = S, HA
animtype  = High
damage    = 100,2
getpower = 0
guardflag = MA
pausetime = 0, 0
sparkno = 2
sparkxy = -10,-85
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 10, -25
air.velocity = -10,-5
sparkno = 3
fall = 1

[State 2105, 3]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 3200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Air beam
[Statedef 1400]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9080
ctrl = 0
sprpriority = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2000,1
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
helpertype = normal ;player
name = "Heat Vision"
ID = 9000
stateno = 9000
pos = 110,-160
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2000
ctrl = 0

[Statedef 9000]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9000
ctrl = 0
sprpriority = 10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 20,5
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S6004
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 7
envshake.ampl = 4

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 10

;---------------------------------------------------------------------------
; Air beam down
[Statedef 1500]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9070
ctrl = 0
sprpriority = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2000,1
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
helpertype = normal ;player
name = "Heat Vision"
ID = 9090
stateno = 9090
pos = -7,-157
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2000
ctrl = 0

[Statedef 9090]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 9090
ctrl = 0
sprpriority = 5

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 20,5
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S6004
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 7
envshake.ampl = 4
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9090
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 10

;Super Punch
[Statedef 1033]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 607
poweradd= 40
ctrl = 0


[State 2101, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 3006,6

[State 2101, 3]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 405, 6]
type = PlaySnd
triggerall = var(3)= 0
trigger1 = Time = 0
value = 3006,7

[State 405, 6]
type = PlaySnd
triggerall = var(3)!= 0
trigger1 = Time = 0
value = 3006,0

[state 142, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


;[State 142, 5] ;--original's Pre-hits
;type = HitDef
;trigger1 = AnimElem = 3
;trigger2 = AnimElem = 4
;trigger3 = AnimElem = 5
;attr = A,NA
;animtype = Heavy
;damage = 20,2
;guardflag = MA
;pausetime = 5,20
;sparkno = 2
;sparkxy = -10,-15
;hitsound   = 5,4
;guardsound = 6,0
;ground.type = High
;ground.slidetime = 12
;ground.hittime = 15
;ground.velocity = -2
;air.velocity = -2.2,-3.2
;fall = 1

[State 142, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 146
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 146,Punch]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 3205
poweradd= 40
ctrl = 0

[State 146, 3]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = High
damage    = 100,3
guardflag = MA
pausetime = 30, 30
sparkxy = -10,-70
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10, -5
air.velocity = -10,-5
sparkno = 3
fall = 1
envshake.time = 19
envshake.ampl = 16
p2stateno = 1111300



[State 142, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;========================< Super Punch P2 Custom State >=============================
;--- Hit Pause ---
[Statedef 1111300]
type = A
movetype = H
physics = N
velset = 0, 0
[State 1111300, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111300, End]
type = changestate
trigger1 = hitshakeover
value = 1111301


;--- Falling ---
[Statedef 1111301]
type = A
movetype = H
physics = N

[State 1111301, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 1111301, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111301, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111301, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1111302
[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;--- Hitting Wall ---
[Statedef 1111302]
type = A
movetype = H
physics = N

[State 1111302, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111302, Pos]
type = posset
trigger1 = 1
x = -160 * facing
[State 1111302, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111302, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111302, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1111302, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111302, snd]
type = playsnd
trigger1 = !time
value = f7, 0
[State 1111302, FX]
type = explod
trigger1 = !time
anim = f72
pos = 0, floor(screenpos y) -50
postype = back
sprpriority = 3

[State 1111302, End]
type = changestate
trigger1 = time >= 4
value = 1111303


;--- Falling ---
[Statedef 1111303]
type = A
movetype = H
physics = N

[State 1111303, turn]
type = turn
trigger1 = !time

[State 1111303, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1111303, Vel]
type = velset
trigger1 = !time
x = -2.5
y = -9

[State 1111303, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1111303, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111303, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1111303, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111303, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111303, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

; Tremulo
[StateDef 730]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
poweradd = 120
velset = 0,0,0
anim = 9010

[State 720, 1]
type = Helper
trigger1 = AnimElem = 3
ID = 555
pos = 75,-45 ;30,-90
postype = p1
facing = 1
stateno = 731
helpertype = normal
name = "Soplo2"
keyctrl = 0
ownpal = 1

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 3
value = 3006,8

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; Soplo2
[Statedef 731]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 9020
sprpriority = 5

[State 2000, 1]
type = Explod
trigger1 = time = 3
anim = 727
SprPriority = 3
postype = P1
pos = 60, 27
ownpal = 1
removetime = -2
scale = 0.5,0.5

[State 2000, 1]
type = Explod
trigger1 = time = 3
anim = 726
SprPriority = 1
postype = P1
pos = 60, -50
ownpal = 1
removetime = -2
scale = 0.5,0.5

[State 2000, 1]
type = Explod
trigger1 = time = 8
anim = 727
SprPriority = 3
postype = P1
pos = 100, 27
ownpal = 1
removetime = -2
scale = 0.75,0.75

[State 2000, 1]
type = Explod
trigger1 = time = 8
anim = 726
SprPriority = 1
postype = P1
pos = 100, -50
ownpal = 1
removetime = -2
scale = 0.75,0.75

[State 1001, 2]
type = VelSet
trigger1 = 1
x = 1.5
y = 0

[State 1001, 2]
type = Destroyself
trigger1 = time = 50

[State 1001, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 90,0
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = HAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0
air.fall = 0
numhits = 0
p2stateno = 732

[State 1001, 4]
type = Destroyself
trigger1 = Animelem = 15

[Statedef 732]
type    = S
movetype= H
physics = N
anim = 5050
ctrl = 0
velset = 0,0
sprpriority = 2

[State 213, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 5070

[State 214, 1]
type = Posset
Trigger1 = Time = 0
y = 0

[State 214, 2]
type = VelSet
trigger1 = animelem = 1
x = -5
Y = -18

[State 214, 2]
type = VelSet
trigger1 = animelem = 2
x = 0
Y = 0

[State 214, 2]
type = VelSet
trigger1 = animelem = 3
x = 7
Y = 0

[State 214, 2]
type = VelSet
trigger1 = animelem = 4
x = -5
Y = 8

[State 214, 2]
type = VelSet
trigger1 = animelem = 3
x = 0
Y = -10

[State 213, 4]
type = SelfState
trigger1 = animelem = 1
value = 5100

;---------------------------------------------------------------------------

; End
