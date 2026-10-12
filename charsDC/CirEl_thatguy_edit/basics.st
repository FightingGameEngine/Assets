; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 900,1

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 900,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,6

[State 200, swoosh]
type = velset
trigger1 = AnimElem = 4
x  = 7
y = -5

[State 3075,AfterImage]
type = AfterImage
trigger1 = animelem = 4
time = 35
length = 16
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
timegap = 2
framegap = 4
trans = add1

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,60]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 900,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0


[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 123,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = Intro

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 123,1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = Intro

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 193]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 123,2

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
ground.cornerpush.veloff = 0

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 3,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -20,-75
animtype = Medium
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = 0

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = veladd
trigger1 = AnimElem = 2 || AnimElem = 3
x =5

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -16
guard.velocity = -5
air.velocity = -4,8
ground.cornerpush.veloff = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
ground.cornerpush.veloff = 0

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9992
sparkxy = -10,-100
animtype = Medium
ground.type = low
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -12
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = 0

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-75
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
ground.cornerpush.veloff = 0

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-40
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1
guard.velocity = -2
air.velocity = -3,-6
ground.cornerpush.veloff = 0

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-45
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -10
air.velocity = -3,-6
ground.cornerpush.veloff = 0

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -20,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
ground.cornerpush.veloff = 0

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
ground.cornerpush.veloff = 0

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -3
air.velocity = -6,-6
ground.cornerpush.veloff = 0

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -10,-10
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
ground.cornerpush.veloff = 0

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-45
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-45
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 96
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-45
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 600, swoosh]
type = velset
trigger1 = movecontact
y = -1

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 92
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
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
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

;---------------------------------------------------------------------------
[StateDef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 850
sprpriority = 2

[State 800, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 851
p2stateno = 852
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 851]
type    = S
movetype= A
physics = N
anim = 851
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,0

[State -3, Explod]
type = Explod
trigger1 = animelem = 1
anim = 854
ID = 854
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 5

[State -3, Explod]
type = Explod
trigger1 = animelem = 3
anim = 9991
ID = 9991
pos = 40,-50
postype = p1
bindtime = -1
sprpriority = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -10

[State 0, Turn]
type = Turn
trigger1 =  AnimTime = 0


[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 852]
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
value = 852

[State 815, ChangeAnim2]
type = Changestate
trigger1 = animTime = 0
value = 853

[Statedef 853]
type    = A
movetype= H
physics = N
velset = -3,-5
poweradd = 50

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 853

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

[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 850

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
hitsound = S810,0
p1facing = ifelse (command = "holdfwd", 1, -1)
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

[State -3, Explod]
type = Explod
trigger1 = animelem = 5
anim = 830
ID = 830
pos = 0,0
postype = p2
bindtime = -1
sprpriority = 5
scale = 0.75,0.75


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,4

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 28, 0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 28, 0

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 31, -33

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 50, 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5,2
volume = 255
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 48, 14

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -75

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 6
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

[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem = 4
time = 90
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;----------------------------------------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = -5,-7
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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
