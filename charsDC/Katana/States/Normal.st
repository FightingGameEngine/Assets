;---------------------------------------------------------------------------
; Standing Light Slash
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
anim = 200

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 && random < 500
value = 200,0+(random%4)
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 5
attr = S, NA
damage = 30, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = S8100
guard.sparkno =	S8400
sparkxy = -16, -70
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4.9
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 85,40

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Slash
[Statedef 220]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
anim = 220

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 && random < 500
value = 200,0+(random%4)
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 5
attr = S, NA
damage = 30, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = S8100
guard.sparkno =	S8400
sparkxy = -16, -70
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4.9
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 85,40

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Slash
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 6
ctrl = 0
poweradd = 0
velset = 0,0
anim = 210

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 && random < 700
value = 210,0+(random%4)
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 5
attr = S, NA
damage = 90, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -10, -55
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 9
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.2,-3.3
air.hittime = 16
getpower = 50,25

[State 210, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(9)>= 0
movetype = I

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type = S
movetype = A
physics = S
juggle  = 3
poweradd = 0
ctrl = 0
velset = 0,0
anim = 230

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 && random < 500
value = 200,0+(random%4)
channel = 1

[State 230, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = S, NA
damage = 25, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -10, -26
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -5.7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-2.8
getpower = 90,45

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type = S
movetype = A
physics = S
juggle  = 3
poweradd = 0
ctrl = 0
velset = 0,0
anim = 240

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 && random < 500
value = 200,0+(random%4)
channel = 1

[State 240, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = S, NA
damage = 25, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -10, -26
hitsound = S10, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -5.7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-2.8
getpower = 90,45

[State 240, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 240, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 0
ctrl = 0
velset = 0,0
anim = 250

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 700
value = 240,0+(random%4)
channel = 1

[State 250, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = S, NA
damage = 85, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -10, -62
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 11
ground.hittime  = 16
ground.velocity = -7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
getpower = 85,40

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Slash
[Statedef 400]
type = C
movetype = A
physics = C
juggle = 4
poweradd = 0
ctrl = 0
velset = 0,0
anim = 400

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random < 500
value = 200,0+(random%4)
channel = 1

[State 400, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 25, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S8100
guard.sparkno =	S8400
sparkxy = -10, -25
hitsound = S10, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4.2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-2.7
getpower = 85,40

[State 400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Slash
[Statedef 410]
type = C
movetype = A
physics = C
juggle = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 410

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
channel = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 700
value = 240,0+(random%5)
channel = 1

[State 410, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 90, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -14, -40
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 11
ground.hittime  = 14
ground.velocity = -7.2
air.type = High
air.velocity = -3,-3.3
getpower = 90,45

[State 410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Slash 2
[Statedef 420]
type = C
movetype = A
physics = C
juggle = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 410

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
channel = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 700
value = 240,0+(random%5)
channel = 1

[State 410, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 90, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -14, -40
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 11
ground.hittime  = 14
ground.velocity = 0, -17
air.type = High
air.velocity = 0,-17
getpower = 90,45
yaccel = 0.42+(enemynear,const(movement.yaccel)/2)
;yaccel = 0.39+(enemynear,const(movement.yaccel)/2)
fall.recover = 0

[State 410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 3
poweradd = 0
ctrl = 0
velset = 0,0
anim = 430

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 500
value = 200,0+(random%4)
channel = 1

[State 430, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = C, NA
damage = 20, 0
animtype = Light
guardflag = L
hitflag = MA
priority = 4, Hit
pausetime = 9, 9
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -10, -3
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.type = High
air.velocity = -1.9,-2.4
getpower = 80,40

[State 430, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>= 0
movetype = I

[State 430, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 440

[State 440, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9

[State 440, VelMul]
type = VelMul
trigger1 = AnimElem = 4, > 0
x = 1

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 500
value = 240,0+(random%5)
channel = 1

[State 440, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 80, 0
animtype = Hard
guardflag = L
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -10, -3
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -4.2
air.type = High
air.velocity = -1.4,-2.9
getpower = 95,45

[State 440, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 440, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 440, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick 2
[Statedef 445]
type = C
movetype = A
physics = C
juggle = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 440

[State 440, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9

[State 440, VelMul]
type = VelMul
trigger1 = AnimElem = 4, > 0
x = 1

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 500
value = 240,0+(random%5)
channel = 1

[State 440, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 4
attr = C, NA
damage = 80, 0
animtype = Hard
guardflag = L
hitflag = MA
priority = 4, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -10, -3
hitsound = S5, 1
guardsound = S6, 1
ground.type = Low
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -4.2
air.type = High
air.velocity = -1.4,-2.9
getpower = 95,45

[State 440, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

[State 440, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 440, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Sweep
[Statedef 450]
type = C
movetype = A
physics = C
juggle = 8
poweradd = 0
ctrl = 0
velset = 0,0
anim = 450

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1
channel = 0

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 500
value = 240,0+(random%5)
channel = 1

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 14

[State 450, Hit]
type = HitDef
trigger1 = (enemy,stateno != [5020, 5050])
trigger1 = AnimElem = 3
attr = C, NA
damage = 90, 0
animtype = Light
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -12, -10
hitsound = S10, 1
guardsound = S6, 1
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 19
ground.velocity = -1.3,-4.2
getpower = 100,50

[State 450, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7)>= 0
movetype = I

[State 450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Slash
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 4
poweradd = 0
ctrl = 0
anim = 600

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random < 500
value = 200,0+(random%4)
channel = 1

[State 600, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 30, 0
animtype = Light
guardflag = HA
hitflag = MAF
ID = 600
priority = 3, Hit
pausetime = 8, 8
sparkno = S8100
guard.sparkno =	S8400
sparkxy = -16, -62
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 9
ground.velocity = -3.3
air.type = High
air.velocity = -1.8,-3.5
air.hittime = 120
getpower = 85,40

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Slash
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 6
poweradd = 0
ctrl = 0
anim = 610

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 700
value = 240,0+(random%5)
channel = 1

[State 610, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 90, 0
animtype = Hard
guardflag = HA
hitflag = MAF
ID = 600
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -20, -42
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.7
air.type = High
air.velocity = -2.9,-3.5
air.hittime = 120
getpower = 90,45

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Slash 2
[Statedef 620]
type = A
movetype = A
physics = A
juggle = 6
poweradd = 0
ctrl = 0
anim = 610

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 700
value = 240,0+(random%5)
channel = 1

[State 610, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 90, 0
animtype = Hard
guardflag = HA
hitflag = MAF
ID = 600
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
guard.sparkno =	S8400
sparkxy = -20, -42
hitsound = S10, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.7
air.type = High
air.velocity = -2.9,-3.5
air.hittime = 120
getpower = 90,45

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 3
poweradd = 0
ctrl = 0
anim = 630

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 0

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && random < 500
value = 200,0+(random%4)
channel = 1

[State 630, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 3
attr = A, NA
damage = 20, 0
animtype = Light
guardflag = HA
hitflag = MAF
ID = 600
priority = 4, Hit
pausetime = 8, 8
sparkno = S8000
guard.sparkno =	S8400
sparkxy = -18, -34
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 9
ground.velocity = -2.8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.6,-3.5
air.hittime = 120
getpower = 90,45

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 0
ctrl = 0
anim = 640

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 700
value = 240,0+(random%5)
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 80, 0
animtype = Hard
guardflag = HA
hitflag = MAF
ID = 600
priority = 4, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -18, -48
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.7
air.type = High
air.velocity = -3.1,-3.5
air.hittime = 120
getpower = 95,45

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Kick 2
[Statedef 650]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 0
ctrl = 0
anim = 640

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1
channel = 0

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random < 700
value = 240,0+(random%5)
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = enemy,stateno != 5040
trigger1 = AnimElem = 4
attr = A, NA
damage = 80, 0
animtype = Hard
guardflag = HA
hitflag = MAF
ID = 600
priority = 4, Hit
pausetime = 11, 11
sparkno = S8010
guard.sparkno =	S8400
sparkxy = -18, -48
hitsound = S5, 1
guardsound = S6, 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4.7
air.type = High
air.velocity = -3.1,-3.5
air.hittime = 120
getpower = 95,45

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

;---------------------------------------------------------------------------
; Throw - Attempt
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 0
anim = 800

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0
channel = 1

[State 800, HitDef]
type = HitDef
triggerall = p2bodydist X < 11
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = var(10) = 0
triggerall = p2movetype != H
trigger1 = time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1
numhits = 0

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throwing the opponent
[Statedef 810]
type = S
movetype = A
physics = N
anim = 810
poweradd = 0

[State 810, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Width]
type = Width
trigger1 = 1
edge = 65,0

[State 810, TargetBind]
type = TargetBind
Trigger1 = AnimElemtime(1) > 0 && AnimElemtime(15) < 0
pos = 54,0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 800,2
channel = 1

[State 810, HitAdd]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = 40

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,0
channel = 0

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8000
ID = 810
postype = p2
pos = -10, -26
bindtime = 1
sprpriority = 9
ownpal = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -20

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 800,2
channel = 1

[State 810, HitAdd]
type = HitAdd
trigger1 = AnimElem = 10
value = 1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 10
value = 50

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 10,0
channel = 0

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 10
anim = 8100
ID = 810
postype = p2
pos = -16, -70
bindtime = 1
sprpriority = 9
ownpal = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = -40

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 800,3
channel = 1

[State 810, HitAdd]
type = HitAdd
trigger1 = AnimElem = 14
value = 1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 14
value = 60

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 10,1
channel = 0

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 8110
ID = 810
postype = p2
pos = -16, -70
bindtime = 1
sprpriority = 9
ownpal = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 14
value = -60

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 15
value = 821

[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Opponent Thrown
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
; Opponent thrown into the air
[Statedef 821]
type = A
movetype = H
physics = N
velset = -2.3,-6
poweradd = 40

[State 821, VelAdd]
type = VelAdd
Trigger1 = 1
y = .4

[State 821, ChangeState]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 821, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Leap Attack
[Statedef 900]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
poweradd = 0
anim = 900
sprpriority = 2

[State 900, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 900,0
channel = 1

[State 900, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 900, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
physics = N

[State 900, VelSet]
type = VelSet
trigger1 = Time = 4
X = 2
Y = -4.5

[State 900, VelAdd]
type = VelAdd
trigger1 = Time > 4
Y = 0.4375

[State 900, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 45, 0
animtype = Light
guardflag = HA
hitflag = MA
priority = 3, Hit
pausetime = 8,8
sparkno = S8100
guard.sparkno =	S8400
sparkxy = -20, -42
hitsound = S10, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -8.5
air.velocity = -3.5,-3
air.hittime = 12
fall.recovertime = 15400
getpower = 80,40

[State 900, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = (Pos Y + Vel Y) >= 7;0
value = 905

;---------------------------------------------------------------------------
; Leap Attack End
[Statedef 905]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 905

[State 905, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 905, End]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Break Attack
[Statedef 950]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 950
velset = 0,0
poweradd = 0

[State 950, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = -50,-50,-50
mul = 130,130,130
sinadd = 50,50,50,30
ignorehitpause = 1

[State 950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1
channel = 0

[State 950, Hit]
type = HitDef
triggerall = P2StateType!= A
trigger1 = AnimElem = 5
attr = S, NA
damage = IfElse((P2StateNo = 130) || (P2StateNo = 131),0,60)
hitflag = MA
guardflag =
priority = 3, Hit
pausetime = 11, 11
sparkno = SIfElse((P2StateNo = 130) || (P2StateNo = 131),8400,8110)
sparkxy = -10, -55
hitsound = S10, 1
guardsound = S6, 1
p2facing = 1
p2stateno = 955
fall = 0
getpower = 0

[State 950, Hit]
type = HitDef
triggerall = P2StateType = A
trigger1 = AnimElem = 5
attr = S, NA
damage = 60, 0
animtype = Hard
guardflag =
hitflag = MA
priority = 3, Hit
pausetime = 11, 11
sparkno = S8110
sparkxy = -10, -55
hitsound = S10, 0
guardsound = S6, 1
ground.type = High
ground.slidetime = 9
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.9,-3
air.hittime = 18
getpower = 0

[State 950, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6)>= 0
movetype = I

[State 950, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Opponent Guard Break
[Statedef 955]
type = S
movetype = H
physics = S
velset = 0,0

[State 955, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 11
x = -6.4

[State 955, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 955

[State 955, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) >= 35
x = 0

[State 955, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1