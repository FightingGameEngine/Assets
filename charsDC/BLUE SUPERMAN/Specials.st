;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;Air Impact a
[Statedef 1000]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 3
anim = 1000

[State 1000, PosSet]
type = PosSet
triggerall = PrevStateNo = 4005
trigger1 = Time = 0
y = 0
ignorehitpause = 1
persistent = 1


[State 1000, ScreenBound]
type = ScreenBound
trigger1 = PrevStateNo = 4005
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1


[State 1000, a]
type = Width
trigger1 = 1
value = 40, 2

[State 1000, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 5 + ((NumHelper(3302)||NumHelper(3304)) * 3.5)

[State 1000, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 7 + (2.5 * (NumHelper(3302)||NumHelper(3304)))

[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 26






[State 220]
type = HitDef
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 73,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -15,-5
fall = 0
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 220]
type = HitDef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time >= 0
trigger1 = numtarget(1000) = 0
attr = S, SA
animtype  = Hard
damage    = 73,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 1000, statetypeset]
type = statetypeset
trigger1 = NumTarget(1000) != 0
trigger2 = NumTarget(1001) != 0
trigger3 = NumTarget(1002) != 0
movetype = I
ignorehitpause = 1
persistent = 1

[state 1000, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = -1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0




[State 1000, 5]
type = VelAdd
trigger1 = time > 18;46
trigger1 = Vel X > 0
x = -.60

[State 1000, 6]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Pos Y <= -1, 50, 111)
ctrl = ifelse(Pos Y <= -1, 0, 0)

;Air Impact b
[Statedef 1001]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 3
anim = 1000

[State 1001, PosSet]
type = PosSet
triggerall = PrevStateNo = 4005
trigger1 = Time = 0
y = 0
ignorehitpause = 1
persistent = 1


[State 1001, ScreenBound]
type = ScreenBound
trigger1 = PrevStateNo = 4005
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1


[State 1001, a]
type = Width
trigger1 = 1
value = 40, 2

[State 1001, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 5.5 + ((NumHelper(3302)||NumHelper(3304)) * 3.5)

[State 1001, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 7.5 + (2.5 * (NumHelper(3302)||NumHelper(3304)))

[State 1001, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 26






[State 220]
type = HitDef
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 83,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 220]
type = HitDef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time >= 0
trigger1 = numtarget(1000) = 0
attr = S, SA
animtype  = Hard
damage    = 83,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 1001, statetypeset]
type = statetypeset
trigger1 = NumTarget(1000) != 0
trigger2 = NumTarget(1001) != 0
trigger3 = NumTarget(1002) != 0
movetype = I
ignorehitpause = 1
persistent = 1

[state 1001, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = -1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0




[State 1001, 5]
type = VelAdd
trigger1 = time > 20;46
trigger1 = Vel X > 0
x = -.60

[State 1001, 6]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1001, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Pos Y <= -1, 50, 111)
ctrl = ifelse(Pos Y <= -1, 0, 0)


;Air Impact c
[Statedef 1002]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 70
juggle = 3
anim = 1002

[State 1002, PosSet]
type = PosSet
triggerall = PrevStateNo = 4005
trigger1 = Time = 0
y = 0
ignorehitpause = 1
persistent = 1


[State 1002, ScreenBound]
type = ScreenBound
trigger1 = PrevStateNo = 4005
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1


[State 1002, a]
type = Width
trigger1 = 1
value = 40, 2

[State 1002, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 8.5 + ((NumHelper(3302)||NumHelper(3304)) * 3.5)

[State 1002, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 10.5 + (2.5 * (NumHelper(3302)||NumHelper(3304)))

[State 1002, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 26






[State 220]
type = HitDef
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 93,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-8
air.velocity = -15,-8
fall = 1
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 220]
type = HitDef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time >= 0
trigger1 = numtarget(1000) = 0
attr = S, SA
animtype  = Hard
damage    = 93,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-8
air.velocity = -15,-8
fall = 1
air.fall = 1
fall.recover = 0
id = 1000
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 1002, statetypeset]
type = statetypeset
trigger1 = NumTarget(1000) != 0
trigger2 = NumTarget(1001) != 0
trigger3 = NumTarget(1002) != 0
movetype = I
ignorehitpause = 1
persistent = 1

[state 1002, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = -1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0




[State 1002, 5]
type = VelAdd
trigger1 = time > 24;46
trigger1 = Vel X > 0
x = -.60

[State 1002, 6]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1002, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(Pos Y <= -1, 50, 111)
ctrl = ifelse(Pos Y <= -1, 0, 0)

;---------------------------------------------------------------------------
; Special 2
;---------------------------------------------------------------------------
[Statedef 100100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1002
ctrl = 0
sprpriority = -4

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 6
name = "Special Dust"
anim = 8170
pos = 0,3
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1002, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Freeze Breath"
ID = 192
stateno = 9001
pos = 80,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1001, End]
type = ChangeState
trigger1 = time = 85
value = 0
ctrl = 1

[Statedef 3770]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
poweradd = 0
juggle = 3
anim = 1000


[State 3770, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1


[State 3770, a]
type = Width
trigger1 = 1
value = 20, 0

[State 3770, 1]
type = VelSet
trigger1 = 1
x = 0.0
y = 0.0


[State 3770, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 26






[State 220]
type = HitDef
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 13,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -70,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -15,-5
fall = 0
air.fall = 1
fall.recover = 0
id = 3770
snap = 75,-20
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 220]
type = HitDef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time >= 0
trigger1 = numtarget(3770) = 0
attr = S, HA
animtype  = Hard
damage    = 13,5
guardflag = MA
pausetime = 7,7
sparkno = s8022;S(8220+random%7)
sparkxy = -70,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
id = 3770
snap = 75,-20
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
;chainID = -1
;nochainID = 1000, -1
;p2stateno = 9020

[State 3770, TargetState]
type = TargetState
triggerall = NumTarget(3770)
trigger1 = HitPauseTime = 0
value = 828

[State 3770, statetypeset]
type = statetypeset
trigger1 = NumTarget(3770) != 0
movetype = I
ignorehitpause = 1
persistent = 1

[state 3770, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = -1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0




[State 3770, 5]
type = VelAdd
trigger1 = time > 18;46
trigger1 = Vel X > 0
x = -.60

[State 3770, 6]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 3770, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PalNo != 6 && PalNo != 7 && PalNo != 8
value = 3000
ctrl = 0

[State 3770, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PalNo = 6
value = 3100
ctrl = 0

[State 3770, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = PalNo = 7 || PalNo = 8
value = 3200
ctrl = 0

;---------------------------------------------------------------------------
; Ice Breath
;---------------------------------------------------------------------------
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1100
ctrl = 0
sprpriority = -4

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 5
name = "Special Dust"
anim = 8170
pos = 0,3
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .4, .4
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1002, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "Freeze Breath"
ID = 192
stateno = 1101
pos = 22,-22
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State -2, globalnoshadow]
type = null;assertspecial
trigger1= 1
flag = globalnoshadow

[State 1001, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------
;Ice Breath Helper
[Statedef 1101]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1101
sprpriority = 10





[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 190,8

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
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
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = ifelse(p2stateno = 722, -4, 0),ifelse(p2stateno = 722, -6, 0)
air.velocity = ifelse(p2stateno = 722, -4, 0),ifelse(p2stateno = 722, -6, 0)
fall = ifelse(p2stateno = 722, 1, 0)
air.hittime = 0
air.fall = ifelse(p2stateno = 722, 1, 0)
numhits = 0
p2stateno = ifelse(p2stateno = 722, 5020, 722)
p2getp1state = ifelse(p2stateno = 722, 0, 1)
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

; P2 Freeze
[State 1001, 2]
type = HitDef
trigger1 = p2stateno = 1103
trigger1 = p2stateno != 1104
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
p2stateno = 1104

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1001, 4]
type = Destroyself
trigger1 = Animelem = 10

;--------------------------------------------------------------
;IcePatch
[Statedef 1102]
type = S
ctrl = 0
anim = 1102

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 190,6

[State 1102, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1102, end]
type = DestroySelf
trigger1 = time = 135
;--------------------------------------------------------------

; P2 congelado
[Statedef 722]
type = U;A
movetype= I;H
physics = U;N
velset = 0,0
ctrl = 0

[State 722, statetypeset]
type = statetypeset
trigger1 = pos y >= 0
statetype = S
physics = S
ignorehitpause = 1
persistent = 1

[State 722, statetypeset]
type = statetypeset
trigger1 = pos y < 0
statetype = A
physics = N
ignorehitpause = 1
persistent = 1

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
;trigger1 = Pos Y >= 0
ctrl = 0
value = 5040

[State 722, treme]
type = PosSet
trigger1 = time = 130
trigger1 = Pos Y < 0
y = 0

[State 722, 3]
type = null;SelfState
trigger1 = time = 130
trigger1 = Pos Y < 0
ctrl = 0
value = 5050

[State 722, 3]
type = null;SelfState
trigger1 = time = 130
trigger1 = Pos Y >= 0
ctrl = 0
value = 5100

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
;------------------------------------

;Heat Vision 2
[StateDef 1210]
type = S
movetype = A
physics = S
anim = 1211
ctrl = 0
velset = 0,0
poweradd = 80

[State 1210, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1211
trigger1 = PalNo = 6
value = 1220
;elem = 
ignorehitpause = 1
persistent = 0

[State 1210, Width]
type = Width
triggerall = PalNo = 6
trigger1 = Anim = 1220
player = 25, 0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 0, Helper]
type = Helper
triggerall = PalNo != 6 && Anim = 1211
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision2"
ID = 1011
stateno = 1011
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
triggerall = PalNo = 6 || Anim = 1220
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision2"
ID = 1013
stateno = 1013
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Heat Vision
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 80

[State 1200, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = PalNo = 6
value = 1210
;elem = 
ignorehitpause = 1
persistent = 0

[State 1200, Width]
type = Width
triggerall = PalNo = 6
trigger1 = Anim = 1210
player = 25, 0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 0, Helper]
type = Helper
triggerall = PalNo != 6 && Anim = 1200
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision"
ID = 1010
stateno = 1010
pos = 0,-0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
triggerall = PalNo = 6 || Anim = 1220
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision"
ID = 1012
stateno = 1012
pos = 0,-0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1010]
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


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0


[state 1010, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(-5 * EnemyNear, StateType = A)+(-15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1010, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1200

[Statedef 1012]
type = A
movetype = A
physics = N
anim = 1201
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 135*facing
y = parent, Pos Y - 68

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1





[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0


[state 1010, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(-5 * EnemyNear, StateType = A)+(-15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1010, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1210

[Statedef 1011]
type = A
movetype = A
physics = N
anim = 1202
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 72*facing
y = parent, Pos Y - 77

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1011, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1011, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -34
ignorehitpause = 1
persistent = 1


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-80
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[state 1011, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(25 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1011, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(30 * EnemyNear, StateType = A),EnemyNear, Const(size.head.pos.y)+40+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1211

[Statedef 1013]
type = A
movetype = A
physics = N
anim = 1203
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 132*facing
y = parent, Pos Y - 49

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1011, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1011, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20
ignorehitpause = 1
persistent = 1


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-80
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[state 1011, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(25 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1011, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(30 * EnemyNear, StateType = A),EnemyNear, Const(size.head.pos.y)+40+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1220

;------------------------------------
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1020
sprpriority = 0

[State 1020, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1020
trigger1 = PalNo = 6
value = 1230
;elem = 
ignorehitpause = 1
persistent = 0

[State 1020, Width]
type = Width
triggerall = PalNo = 6
trigger1 = Anim = 1230
player = 25, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3

[State 0, Helper]
type = Helper
triggerall = PalNo != 6 && Anim = 1020
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision 2"
ID = 1021
stateno = 1021
pos = -6,-90
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, Helper]
type = Helper
triggerall = PalNo = 6 || Anim = 1230
trigger1 = animelem = 4
helpertype = normal ;player
name = "Heat Vision 2"
ID = 1022
stateno = 1022
pos = -6,-90
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1021]
type = A
movetype = A
physics = N
anim = 1021
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[state 1021, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(10 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1021, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.head.pos.y)+40+(-20 * EnemyNear, StateType = S)+(-10 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1020
;ignorehitpause =
;persistent =

[Statedef 1022]
type = A
movetype = A
physics = N
anim = 1021
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 1022, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 42*facing
y = parent, Pos Y - 111

[State 1022, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1022, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1022, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -5
ignorehitpause = 1
persistent = 1


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1



[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[state 1021, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(10 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1021, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.head.pos.y)+40+(-20 * EnemyNear, StateType = S)+(-10 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1230
;ignorehitpause =
;persistent =




;-------------------------------------------------------------------------------
;Beam Air
[Statedef 1070]
type    = A
movetype= A
physics = A
juggle = 0;  = 4
poweradd= 45
ctrl = 0
anim = 1070
sprpriority = 0

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
x = (vel x)/2

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time = 0
x = (vel x)/4

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2
y = -0.3

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Heat Vision air"
ID = 1071
stateno = 1071
pos = 0,-0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 70


[Statedef 1071]
type = A
movetype = A
physics = N
anim = 1171;1071
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 1510, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) < 0
x = parent, Pos X - 5*facing
y = parent, Pos Y - 55

[State 1510, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) >= 0
x = parent, Pos X - 19*facing
y = parent, Pos Y - 55

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1071, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1071, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -25
ignorehitpause = 1
persistent = 1

[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((NumHelper(3302)||NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0



[state 1071, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(10 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1071, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(25 * EnemyNear, StateType = A)+(25 * EnemyNear, StateType = S),EnemyNear, Const(size.head.pos.y)+40+(-20 * EnemyNear, StateType = S)+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1070

;Beam Air
[Statedef 1072]
type    = A
movetype= A
physics = A
juggle = 0;  = 4
poweradd= 45
ctrl = 0
anim = 1070
sprpriority = 0

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
x = (vel x)/2

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time = 0
x = (vel x)/4

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2
y = -0.3

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Heat Vision air"
ID = 1271
stateno = 1271
pos = 0,-0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 70


[Statedef 1271]
type = A
movetype = A
physics = N
anim = 1071
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y - 100

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((NumHelper(3302)||NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0



[state 1071, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(10 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1071, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(25 * EnemyNear, StateType = A)+(25 * EnemyNear, StateType = S),EnemyNear, Const(size.head.pos.y)+40+(-20 * EnemyNear, StateType = S)+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1070


;Beam Air
[Statedef 1073]
type    = A
movetype= A
physics = A
juggle = 0;  = 4
poweradd= 45
ctrl = 0
anim = 1070
sprpriority = 0

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) = 0
triggerall = NumHelper(3304) = 0
trigger1 = time = 0
x = (vel x)/2

[State 0, VelSet]
type = VelSet
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = time = 0
x = (vel x)/4

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2
y = -0.3

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Heat Vision air"
ID = 1371
stateno = 1371
pos = 0,-0
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 70


[Statedef 1371]
type = A
movetype = A
physics = N
anim = 1271;1071
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 1510, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) < 0
x = parent, Pos X + 3*facing
y = parent, Pos Y - 127

[State 1510, PosSet]
type = PosSet
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
x = parent, Pos X + 7*facing
y = parent, Pos Y - 135

[State 1510, PosSet]
type = PosSet
trigger1 = AnimElemTime(6) >= 0
x = parent, Pos X + 7*facing
y = parent, Pos Y - 138

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1071, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1071, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 25
ignorehitpause = 1
persistent = 1

[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
;damage = 24+((NumHelper(3302)||NumHelper(3304)) * 24),2
damage = 24,2
guardflag = MA
pausetime = 2,3
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0



[state 1071, Explod]
type = Explod
triggerall = NumExplod(9995) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 9995
id = 9995
pos = 0+(10 * EnemyNear, StateType = C),EnemyNear, Const(size.head.pos.y)+40
postype = p2
sprpriority = 1
bindtime = 1
scale = 1,1
removetime = 15
ownpal = 1

[state 1071, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(30 * EnemyNear, StateType = C)+(25 * EnemyNear, StateType = A)+(25 * EnemyNear, StateType = S),EnemyNear, Const(size.head.pos.y)+40+(-20 * EnemyNear, StateType = S)+(10 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1070

;---------------------------------------------------------------------------
; Strong Breath
;---------------------------------------------------------------------------
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1300
ctrl = 0
sprpriority = -4

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 5
name = "Special Dust"
anim = 8170
pos = 0,3
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .4, .4
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1002, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "Strong Breath "
ID = 192
stateno = 1301
pos = 22,-22
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State -2, globalnoshadow]
type = null;assertspecial
trigger1= 1
flag = globalnoshadow

[State 1001, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






;---------------------------------------
;Strong Breath Helper
[Statedef 1301]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1301
sprpriority = 10


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 190,8


[State 2000, 1]
type = Explod
trigger1 = time = 3
anim = 1305
SprPriority = 1
postype = P1
pos = 60, -125
ownpal = 1
removetime = -2
scale = 0.5,0.5



[State 2000, 1]
type = Explod
trigger1 = time = 8
anim = 1306
SprPriority = 1
postype = P1
pos = 50, -30
ownpal = 1
removetime = -2
scale = 0.75,0.75



[State 2000, 1]
type = Explod
trigger1 = time = 8
anim = 1307
SprPriority = 1
postype = P1
pos = 110, -40
ownpal = 1
removetime = -2
scale = 0.90,0.90



[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SA
guardflag = MA
;damage = 50+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 50),2
damage = 50,2
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -12,-7
hitsound = S0,0
guardsound = S8500,0
sparkno = -1
sparkxy = -1
air.type = High
air.velocity =-12,-6
air.fall = 1
air.hittime = 25
fall=1
fall.recover = 0
yaccel=.3
ground.cornerpush.veloff= -10
envshake.ampl = Ifelse(random<500,-7,7)
envshake.time = 14
fall.envshake.ampl = Ifelse(random<500,-10,10)
fall.envshake.time = 32


[State 1301, 2]
type = HitDef
trigger1 = p2stateno = 1103
trigger1 = p2stateno != 1104
trigger1 = Time = 0
attr = S, SA
guardflag = MA
;damage = 24+((Parent, NumHelper(3302) || Parent, NumHelper(3304)) * 24),2
damage = 24,2
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -12,-7
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
sparkxy = -1
air.type = High
air.velocity =-12,-6
air.fall = 1
air.hittime = 25
fall=1
fall.recover = 0
yaccel=.3
ground.cornerpush.veloff= -10
envshake.ampl = Ifelse(random<500,-7,7)
envshake.time = 14
fall.envshake.ampl = Ifelse(random<500,-10,10)
fall.envshake.time = 32

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1301, 4]
type = Destroyself
trigger1 = Animelem = 10


;-------------------------------------------------------------------------------
; Ground Pound
[Statedef 1400]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1400
ctrl = 0
sprpriority = 5



[State 1400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 57

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "effect"
stateno = 1401
pos = 0,30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0



[State 1400, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 31


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 20
freq = 180
ampl = -4
phase = 90



[State 1100, next]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1



; Helper Effect far
[Statedef 1401]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 6007
ctrl = 0
sprpriority = 3


[State 1400, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 32







[State 2005, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
;damage = 60+((NumHelper(3302)||NumHelper(3304)) * 60),5
damage = 60,5
animtype = back
hitflag = MAF
guardflag = M
priority = 5, Hit
pausetime = 5,8
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = -1;s8001
hitsound = S33,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5, -7
air.type = Low
air.hittime = 25
air.velocity = -5, -7
fall=1

[state 1010, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),-35;EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0


[State 2110, b1] ;explod
type = Explod
trigger1 = Time = 7
anim = 6010
postype = p1
pos = -10, 0
sprpriority = -3
removetime = -2
persistent = 0





[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0



;---------------------------------------------------------------------------
;Erradicator Beam
[StateDef 1500]
type = S
movetype = A
physics = S
juggle = 0;  = 4
anim = 1500
ctrl = 0
velset = 0,0
poweradd = 80
sprpriority = 0

[State 200, swoosh]
type = Null;PlaySnd
trigger1 = AnimElem = 1
value = 0,2  ;;;; doesn't exist

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 36

[State 1500, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Erradicator Beam"
ID = 1501
stateno = 1501
pos = 44,-65
postype = p1    ;p2,front,back,left,right
bindtime = -1
facing = 1
ownpal = 1
size.shadowoffset =0

[State 1500, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1501]
type = A
movetype = A
physics = N
anim = 1501
velset = 0,0
sprpriority = 99
ctrl = 0

[state 1501, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 44,-65
ignorehitpause = 1

[State 1501, ParentVarSet]
type = ParentVarSet
trigger1 = NumEnemy
trigger1 = Enemynear, MoveType = H
trigger2 = P2MoveType = H
fv = 26
value = 1
ignorehitpause = 1

[State 1501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1501, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1501, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 1501
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = 24
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1501, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1501
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1501, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 1501
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1501, PlaySnd]
type = Null;PlaySnd
trigger1 = AnimElem = 2
value = 68  ;;; this one doesn't exist yo........

[State 1501, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 1501, HitDef]
type = HitDef
triggerall = !MoveReversed
trigger1 = TimeMod = 8,1
attr = A, SP
damage = 36,6
guardflag = MA
pausetime = 2,3
hitsound = S37,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
yaccel = 0.55
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
fall = 1
air.fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[state 1501, Explod]
type = Explod
triggerall = NumExplod(3202) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 3202
id = 3202
pos = 0+(15 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)-20+(10 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.65,0.65
removetime = 15
ownpal = 1

[state 1501, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(20 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)+10+(-20 * EnemyNear, StateType = S)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1501, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, Anim != 1500
trigger3 = Parent, StateNo != 1500

;Erradicator Beam 2
[StateDef 1510]
type = S
movetype = A
physics = S
juggle = 0;  = 4
anim = 1510
ctrl = 0
velset = 0,0
poweradd = 80
sprpriority = 0

[State 200, swoosh]
type = Null;PlaySnd
trigger1 = AnimElem = 1
value = 0,2  ;;;; doesn't exist

[State 1510, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 36

[State 1510, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Erradicator Beam"
ID = 1511
stateno = 1511
pos = 44,-65
postype = p1    ;p2,front,back,left,right
bindtime = -1
facing = 1
ownpal = 1
size.shadowoffset =0

[State 1510, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1511]
type = A
movetype = A
physics = N
anim = 1511
velset = 0,0
sprpriority = 99
ctrl = 0

[State 1511, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 15*facing
y = parent, Pos Y - 80

[State 1511, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1511, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 1511, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -34
ignorehitpause = 1
persistent = 1


[State 1511, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[state 1511, BindToRoot]
type = Null;BindToRoot
trigger1 = 1
time = 1
pos = 44,-65
ignorehitpause = 1

[State 1511, ParentVarSet]
type = ParentVarSet
trigger1 = NumEnemy
trigger1 = Enemynear, MoveType = H
trigger2 = P2MoveType = H
fv = 26
value = 1
ignorehitpause = 1

[State 1511, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1511, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1501, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 1511
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = 24
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1511, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1511
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1511, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 1511
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1511, PlaySnd]
type = Null;PlaySnd
trigger1 = AnimElem = 2
value = 68  ;;; this one doesn't exist yo........

[State 1511, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 1511, HitDef]
type = HitDef
triggerall = !MoveReversed
trigger1 = TimeMod = 8,1
attr = A, SP
damage = 36,6
guardflag = MA
pausetime = 2,3
hitsound = S37,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
fall = 1
air.fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[state 1511, Explod]
type = Explod
triggerall = NumExplod(3202) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 3202
id = 3202
pos = 0+(15 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)-20+(20 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.65,0.65
removetime = 15
ownpal = 1

[state 1511, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(20 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)+10+(-20 * EnemyNear, StateType = S)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1511, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, Anim != 1510
trigger3 = Parent, StateNo != 1510

;---------------------------------------------------------------------------
;Erradicator Special
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1600
sprpriority = 0

[State 1600, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 36

[State 1600, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Erradicator Special"
ID = 1601
stateno = 1601
pos = 27,-107
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1600, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1601]
type = A
movetype = A
physics = N
anim = 1601
velset = 0,0
sprpriority = 99
ctrl = 0

[state 1601, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(17) < 0
time = 1
pos = 27,-107
ignorehitpause = 1

[state 1601, BindToRoot]
type = BindToRoot
trigger1 = AnimElemTime(17) >= 0
time = 1
pos = 27,-113
ignorehitpause = 1

[State 1601, ParentVarSet]
type = ParentVarSet
trigger1 = NumEnemy
trigger1 = Enemynear, MoveType = H
trigger2 = P2MoveType = H
fv = 26
value = 1
ignorehitpause = 1

[State 1601, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1601, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1601, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 1601
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = 24
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1601, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1601
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1601, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 1601
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1601, PlaySnd]
type = Null;PlaySnd
trigger1 = AnimElem = 2
value = 68  ;;; this one doesn't exist yo........

[State 1601, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 1601, HitDef]
type = HitDef
triggerall = !MoveReversed
trigger1 = TimeMod = 8,1
attr = A, SP
damage = 36,6
guardflag = MA
pausetime = 2,3
hitsound = S37,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
yaccel = 0.55
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
fall = 1
air.fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[state 1601, Explod]
type = Explod
triggerall = NumExplod(3202) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 3202
id = 3202
pos = 0+(15 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)-20+(20 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.65,0.65
removetime = 15
ownpal = 1

[state 1601, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(20 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)+10+(-20 * EnemyNear, StateType = S)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1601, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, Anim != 1600
trigger3 = Parent, StateNo != 1600

[Statedef 1700]
type    = A
movetype= A
physics = A
juggle = 0;  = 4
poweradd= 50
ctrl = 0
;velset = 0,0
anim = ifelse(Vel X = 0, 1700, 1710)
sprpriority = 0

[State 1700, VelSet]
type = VelSet
trigger1 = Time = 0
x = (vel x)/2

[State 1700, VelSet]
type = VelSet
trigger1 = TimeMod = 4,2
y = -0.3

[State 1700, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 36

[State 1700, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Erradicator Special"
ID = 1701
stateno = 1701
pos = 27,-107
postype = p1    ;p2,front,back,left,right
bindtime = -1
facing = 1
ownpal = 1
size.shadowoffset =0

[State 1700, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 72
ctrl = 0

[Statedef 1701]
type = A
movetype = A
physics = N
anim = 1701
velset = 0,0
sprpriority = 99
ctrl = 0

[state 1701, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = -14,-90
ignorehitpause = 1

[State 1701, ParentVarSet]
type = ParentVarSet
trigger1 = NumEnemy
trigger1 = Enemynear, MoveType = H
trigger2 = P2MoveType = H
fv = 26
value = 1
ignorehitpause = 1

[State 1701, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1701, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1701, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 1701
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = 24
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1701, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1701
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1701, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 1701
ctrl = 0 
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 1701, PlaySnd]
type = Null;PlaySnd
trigger1 = AnimElem = 2
value = 68  ;;; this one doesn't exist yo........

[State 1701, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 1701, HitDef]
type = HitDef
triggerall = !MoveReversed
trigger1 = TimeMod = 8,1
attr = A, SP
damage = 36,6
guardflag = MA
pausetime = 2,3
hitsound = S37,0
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
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
fall = 1
air.fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[state 1701, Explod]
type = Explod
triggerall = NumExplod(3202) = 0
trigger1 = NumEnemy
trigger1 = MoveHit
anim = 3202
id = 3202
pos = 0+(15 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)-20+(20 * EnemyNear, StateType = A)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.65,0.65
removetime = 15
ownpal = 1

[state 1701, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(20 * EnemyNear, StateType = C)+(20 * EnemyNear, StateType = A),EnemyNear, Const(size.mid.pos.y)+10+(-20 * EnemyNear, StateType = S)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !NumTarget
v = 40
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = NumTarget
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, StateType = A
v = 40
value = 1
ignorehitpause = 1
persistent = 1

[State 1701, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, Anim != 1700 && Parent, Anim != 1710
trigger3 = Parent, StateNo != 1700


