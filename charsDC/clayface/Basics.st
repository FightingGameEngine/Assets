;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Win state decider
;---------------------------------------------------------------------------
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,75



[State 180, 2]
type = ChangeState
trigger1 = Var(2) = [0,25]
value = 181

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [26,50]
value = 182

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [51,75]
value = 183




;---------------------------------------------------------------------------
; Win pose 1 - Bow
;---------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 20


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 12
channel = 3
value = 25, 8

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 14
channel = 5
value = 25, 1

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 17
time = 10

[State 3099, jump to center screen]
type = posset
x = 75
trigger1 = facing = 1
trigger1 = time = 27

[State 3099, jump to center screen]
type = posset
x = -75
trigger1 = facing = -1
trigger1 = time = 27


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 182]
type = S
ctrl = 0
anim = 10
velset = 0,0

[State 200, 1]
type = PlaySnd
trigger1 = time = 8
channel = 5
value = 25, 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = time = 15
value = 111


[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 200, 1]
type = PlaySnd
trigger1 = time = 10
channel = 5
value = 3000,30

[State 200, 1]
type = PlaySnd
trigger1 = time = 125
channel = 5
value = 3000,30

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1





;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,75



[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,25]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [26,50]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [50,75]
value = 193


[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 3
value = 25, 8


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 3
value = 3000, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 6
channel = 5
value = 25, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 15
channel = 7
value = 25, 0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 3
value = 3000, 7

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
channel = 5
value = 25, 1

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1991
ID = 1991
pos = 0,0
postype = p1
removetime = 16
sprpriority = 7



 [State 191, 3]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro
flag2 = nobardisplay



[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3000,4
channel = 7


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 8
channel = 5
value = 25, 6

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 11
channel = 7
value = 25, 1

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 193

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 12

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
trigger1 = Time = 6
value = 8400, 0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,7
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.type = Low
air.hittime = 13
air.velocity = -2.5,-2
airguard.velocity = -2,-2
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27


[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,11
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,9
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -3,-2.5
airguard.velocity = -2.5,-2.5
envshake.time = 5
envshake.ampl = 2
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37


[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,15
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,11
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -8
air.type = Low
air.hittime = 18
air.velocity = -4,-3
airguard.velocity = -3,-3
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17


[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,7
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4.5
air.type = Low
air.hittime = 13
air.velocity = -2.5,-2
airguard.velocity = -2,-2
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27


[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,11
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,9
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -5.5
air.type = Low
air.hittime = 15
air.velocity = -3,-2.5
airguard.velocity = -2.5,-2.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37


[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,15
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
animtype = DiagUp
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -3,-5
guard.velocity = -4
air.velocity = -4,-8
fall = 1
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17


[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,7
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -2,-2
air.type = Low
air.hittime = 12
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27


[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,11
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,9
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -4,0
air.velocity = -2.5,-2
airguard.velocity = -6,0
air.hittime = 14
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37


[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
animtype = Hard
damage = 72,15
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -2,-7
air.hittime = 17
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0




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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17


[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,7
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 5,7
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 12
air.velocity = -2.5,-2
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27


[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,11
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 7,9
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 14
air.velocity = -3,-2
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37


[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,15
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,11
sparkno = s8222
sparkxy = -10, -79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
animtype = DiagUp
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -3,-5
guard.velocity = -4
air.velocity = -4,-8
fall = 1
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0




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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 4

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17



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
guard.sparkno = s8001
sparkxy = -15,-49
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 9

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27



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
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-49
hitsound = s8000,1
guardsound = S8500,0
guard.sparkno = s8001
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 6

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37


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
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-59
hitsound = s8000,2
guardsound = S8500,0
guard.sparkno = s8001
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 17



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
hitsound = s8000,0
guardsound = S8500,0
guard.sparkno = s8001
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 9

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 27


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
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-49
hitsound = s8000,1
guardsound = S8500,0
guard.sparkno = s8001
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 6

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 37



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
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = S8500,0
guard.sparkno = s8001
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70


;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60


[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 55,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 25,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 10,-10

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 0,-10


[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 8
value = 816


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 8600,0

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 8
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -50

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[Statedef 816]
type    = A
movetype= H
physics = N
velset = 12,-9
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 816

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;Thrown
;OD Chokeslam ------------------------------------------------------------------
[Statedef 812]
type    = S
movetype= A
ctrl = 0
sprpriority=0
velset=0,0
anim = 812




; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 8999]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 837       ;On success, changes to state 810
p2stateno = 829       ;If hit, p2 changes to state 820
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S8600,0
id = 812


[State 800]
type = null;VarSet
trigger1 = AnimElem = 5
var(9) = 1
persistent = 0

[State 810]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10,11

[State 8999]
type = ChangeAnim
triggerall = PrevStateNo != 3002
trigger1 = time = 110
value = 4001

[State 8999, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 4001
ctrl = 1

;---------------------------------------------------------------------------
; Throw

[Statedef 837]
type    = S
movetype= A
physics = N
anim = 813
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1050, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
damage = 80
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8222
sparkxy = -93, -76
hitsound = S8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
p2stateno=1051


[State 810]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 1051]
type = L
movetype= H
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 2



;ignorehitpause =
;persistent =


[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 815
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = facing = 1
x = -100
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = facing = -1
x = 100
;ignorehitpause =
;persistent =


[State 1050, end]
type = selfState
trigger1 = !alive
value = 5150
ctrl = 1

[State 1050, end]
type = selfState
trigger1 = AnimTime = 0
value = 5120
ctrl = 0


[Statedef 829]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1



[State 829]
type = ChangeAnim2
trigger1 = Time = 0
value = 814

[State 829]
type = null;Turn
trigger1 = facing = enemynear,facing


[State 829]
type = SelfState
trigger1 = time= 104
value = 5050


[State 829]
type = DestroySelf
trigger1 = ishelper

;END
