;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

[Statedef 170]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0



[State 170]
type = NotHitBy
trigger1 = 1
value = SCA


;---------------------------------------------------------------------------
; Lose

[Statedef 172]
type = S
ctrl = 0
velset = 0,0
anim = 172


[State 172]
type = PosSet
trigger1 = Time = 0
y = 0


[State 172]
type = NotHitBy
trigger1 = 1
value = SCA

[State 172]
type = CtrlSet
trigger1 = Time = 120
value = 1

;--------------------------------------------------------------------------------------------------------

[Statedef 173]
type = S
ctrl = 0
velset = 0,0
anim = 9800



[State 173]
type = PosSet
trigger1 = Time = 0
y = 0


[State 173]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 173]
type = NotHitBy
trigger1 = 1
value = SCA

[State 173]
type = CtrlSet
trigger1 = Time = 120
value = 1


;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Win state decider

[Statedef 180]
type = S
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180, 0]
type = PosSet
trigger1 = Time = 0
y = 0


[State 180]
type = Width
trigger1 = Time = 0
value = 50,50


[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinTime
value = 181


[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinKO
value = 181

;---------------------------------------------------------------------------
; Win pose 1 - Time Over

[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 189]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 189]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 1 - Win KO

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 181]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 181]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover


;---------------------------------------------------------------------------
; Win pose 2- Win KO

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = Helper
trigger1 = Time%10 = 0
trigger1 = FrontEdgeDist > 100
stateno = 2182
id = 2182
;stateno = 23005+5*(random%3)
;id = 23000
pos = random%(130)*2,0
;pos = random%(FrontEdgeDist+1),0
;(FrontEdgeDist+2)

[State 182]
type = Helper
trigger1 = Time%10 = 0
trigger1 = BackEdgeDist > 100
stateno = 2182
id = 2182
;stateno = 23005+5*(random%3)
;id = 23000
pos = (random%(130))*-2,0
;pos = random%(BackEdgeDist+1),0
;(BackEdgeDist+2)

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1540, 1

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover


;------------------------------------------------------------------------------------------------------------
;Win Helper (win 2)
[Statedef 2182]
type = S
ctrl = 0
physics = N
anim = 192
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 2182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 2182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 2182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1540, 1

[State 2182]
type = AssertSpecial
trigger1 = Time < 300
flag = roundnotover

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fall
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191]
type = PlaySnd
trigger1 = Time = 23
value = 3,12

[State 191]
type = ChangeState
trigger1 = AnimTime = 0
value = 192
ctrl = 0

;Fall Land
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192]
type = EnvShake
trigger1 = Time = 0
time = 15
ampl = -4
freq = 150
phase = 1

[State 192]
type=Explod
trigger1 = Time = 0
persistent = 0
anim = 7021
pos= 0,10
postype = p1
sprpriority = 5
bindtime = 1
ownpal = 1

[State 192]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 4
value = 200, 0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 40
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 210, 0

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 60
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 220, 0

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
fall=1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 20
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 210, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 200, 0

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 60
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 220, 0

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 72,1
priority = 2, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
hitflag = MA
guardflag = MA
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 40
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
hitflag = MA
guardflag = MA
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,1
animtype = High
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=60
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 40
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd=60
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70


;---------------------------------------------------------------------------
;Throw
;---------------------------------------------------------------------------

; power touch
[Statedef 800]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 800
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
ground.type = low
sparkno = -1
hitsound = -1
pausetime = 0,20
p2facing = 1
p1stateno = 801
p2stateno = 802
snap = 50,0
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 5
anim = 801

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S3,0
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4 && p2stateno = [802,804]
value = S1,2
persistent = 0


[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 18
pos = 50,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = 100,0

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 804

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= 0 && animtime = 0 && target,vel X > -10
value = 105
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist > 0 && animtime = 0
value = 0
ctrl = 1

[Statedef 802]
type    = S
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 802

[State 0, ]
type = ChangeState
trigger1 = Command = "recovery"
value = 803
ctrl = 0

[Statedef 803]
type    = S
movetype= I
physics = N
velset = -4,0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
value = 47

[State 0, ]
type = SelfState
trigger1 = time = 0
value = 5210
ctrl = 0

[Statedef 804]
type    = S
movetype= H
physics = N
velset = -10,0

[State 0, ]
type = LifeAdd
trigger1 = time = 0
value = -150-ceil(random/10)

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 804

[State 0, ]
type = VelAdd
trigger1 = backedgedist <= 0
x = -5
y = -5

[State 0, ]
type = SelfState
trigger1 = backedgedist <= 0
value = 5050

;---------------------------------------------------------------------------
; power touch up
[Statedef 1026]
type    = S
movetype= A
physics = S
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1031
sprpriority = -2

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1031
value = -2

[State 0, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 0, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 918
id = 918
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 11
anim = 50000
id = 50000
postype = P1
pos = 0,0
ontop = 1
ownpal = 1

[State 0, 1]
type = HitDef
trigger1 = Time = 0
trigger1 = !isHelper(1000)
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = S4020       ;No spark
sparkxy = floor(P2Dist X)-33,-63
hitsound   = S1,1
sprpriority = -2       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1027      ;On success, KFM changes to state 810
p2stateno = 1035      ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.yvelocity = -.5
envshake.time = 3
envshake.freq = 40
envshake.ampl = -5

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40, 9
channel = 1

;---------------------------------------------------------------------------

[Statedef 1027]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1032
sprpriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time <= 0
value = 3, 1
volume = 40

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1032
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 40,-125

[State 0, Bind 1 - Short]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
trigger1 = target, const(size.height) <= 60
pos = 40,-125

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 40,-125

[State 0, Bind 2 - Short]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = target, const(size.height) <= 60
pos = 40,-125

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
pos = 33,-125

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------------------------------------------

[Statedef 1028]
type    = A
movetype= A
physics = N
velset = -5,-8
anim = 1033
sprpriority = -2


[State 0, PlaySnd 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = -3.0/90

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 13.0/90

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1033
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,-125

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40,-125

[State 0, Width]
type = Width
trigger1 = 1
value = 40,15

[State 0, TargetState]
type = TargetState
trigger1 = Vel Y >= 0
value = 1037

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1029

;---------------------------------------------------------------------------

[Statedef 1029]
type    = A
movetype= A
physics = N
anim = 1034
sprpriority = -2

[State 0, 1]
type = VelSet
trigger1 = AnimElemNo(0) = 1
x = 0
y = 0

[State 0, 2]
type = VelSet
trigger1 = AnimElemNo(0) = [2,5]
x = 0
y = 0

[State 0, 3]
type = VelSet
trigger1 = AnimElemNo(0) = 6
x = 0
y = 0

[State 0, 4]
type = VelSet
trigger1 = AnimElemNo(0) = 7
x = 0
y = 0

[State 0, 5]
type = VelSet
trigger1 = AnimElemNo(0) = 8
x = 0
y = 0

[State 0, 6]
type = VelSet
trigger1 = AnimElemNo(0) = 9
x = 0
y = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1034
value = -2

[State 0, Bind 1-2]
type = TargetBind
trigger1 = AnimElemTime(6) < 0
pos = 30,-105

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 30,-105

[State 0, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 30,-105

[State 0, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 30,-105

[State 0, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
pos = 30,-105

[State 0, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1030

;---------------------------------------------------------------------------

[Statedef 1030]
type    = A
movetype= A
physics = N
velset = -3,2
anim = 1035
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = AnimTime = 0
anim = 902
id = 902
postype = P1
pos = 8,-8
sprpriority = 5
ownpal = 1

[State 0, Voice 1]
type = PlaySnd
trigger1 = Time = 1
value = 40,5

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1035
value = -2

[State 0, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 40,-70

[State 0, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos =40,-70

[State 0, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 40,-70

[State 0, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 40,-70

[State 0, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)+.15

[State 0, 3]
type = VelAdd
trigger1 = Vel X < 0
x = 1/1

[State 0, 4]
type = TargetState
trigger1 = Pos Y >= 0
value = 1039

[State 0, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1031

;---------------------------------------------------------------------------

[Statedef 1031]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1036
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 61
id = 61
postype = P2
pos = 8,0
sprpriority = 5
ownpal = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = Anim = 1036
value = -2

[State 0, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 0
time = 20
freq = 80
ampl = -6

[State 0, Ground Hit Sound]
type = PlaySnd
trigger1 = Time = 1
value = 40,10

[State 0, Ground Hit Front]
type = Explod
trigger1 = Time = 1
ID = 810
postype = p2
anim = 8401
sprpriority = 3

[State 0, Ground Hit Back]
type = Explod
trigger1 = Time = 1
ID = 823
postype = p2
anim = 8400
sprpriority = -1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = -150

[State 0, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1032

;---------------------------------------------------------------------------

[Statedef 1032]
type    = A
movetype= I
physics = A
anim = 1037
sprpriority = 2

[State 0, 1]
type = VelSet
trigger1 = Time = 0
x = -3
y = -6

;---------------------------------------------------------------------------

[Statedef 1035]
type    = S
movetype= H
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1038

[State 0, 2] ;Short Opponenet
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = const(size.height) <= 60
value = 1038

[State 0, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1036

[State 0, 4]
type = ScreenBound
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1036]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1039

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 3]
type = ScreenBound
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1037]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1040

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1038

;---------------------------------------------------------------------------

[Statedef 1038]
type    = A
movetype= H
physics = N
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1041

[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0

;---------------------------------------------------------------------------

[Statedef 1039]
type    = S
movetype= H
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1042

[State 0, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1215, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, 4]
type = FallEnvShake
trigger1 = Time = 0

[State 0, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1040

;---------------------------------------------------------------------------

[Statedef 1040]
type = A
movetype = H
physics = N
velset = -2, -9

[State 0, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1043

[State 0, 1a]
type = PosAdd
trigger1 = time = 0
y = -(const(size.height))

[State 0, 2]
type = Gravity
trigger1 = 1

[State 0, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
