;
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
; Helpers:
;   0: superjump opponent position indicator
;   12: ice slick
;   15: ice maiden
; Explods:
;   10: ice shards when leaving "frozen" state 
; 3510: Absolute Zero (blizzard) snow
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

; Lose by Time Over
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{

[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, 2]
type = explod
trigger1 = time = 1
anim = 4006
postype = p1
pos = 0,0
bindtime = 25
removetime = 25
sprpriority = 3

[State 170, 3]
type = Explod
trigger1 = Time = 0
anim = 3511
pos= 0,0
postype= p1
sprpriority = 3

[State 170, 4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 170,5]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 175, 2]
type = explod
trigger1 = time = 1
anim = 4006
postype = p1
pos = 0,0
bindtime = 25
removetime = 25
sprpriority = 3

[State 175, 3]
type = Explod
trigger1 = Time = 0
anim = 3511
pos= 0,0
postype= p1
sprpriority = 3

[State 175, 4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 175,5]
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
trigger1 = (Time = 0) && (NumHelper(10) = 0)
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;---------------------------------------------------------------------------

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 3]
type = ChangeState
trigger1 = AnimTime > 50
value = 0


;-----------------------------------------------------------------------------
;Win pose 2 time travel

[Statedef 182]
type = S
ctrl = 0
anim = 8000
velset = 0,0

[State 182, 3]
type = Explod
trigger1 = Time = 0
anim = 8001
pos= 0,0
postype= p1
sprpriority = 3


[State 182, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 68,0

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, 3]
type = ChangeState
trigger1 = AnimTime > 50
value = 0

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, intro decider]
type = ChangeState
trigger1 = Time = 0
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro 1 - Jason Blood
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 12,0

[state 191, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 191, 2]             
type = AssertSpecial
trigger1 = Time = [0,210]
flag = Intro

;-----------------------
; Intro 2 - fighting Lobo
[Statedef 192]
type = S
ctrl = 0
anim = 9950

[State 192, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 192, swoosh]
type = PlaySnd
trigger1 = Time = 4
value = 13,1

[State 192, 3]
type = Explod
trigger1 = Time = 200
anim = 9955
pos= 0,0
postype= p1
sprpriority = 3

[state 192, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 192, 5]
type = AssertSpecial
trigger1 = Time = [0,210]
flag = Intro
;
;-----------


;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195

[State 195, 1]
type = PlaySnd
trigger1 = Time = 0
value = 68,0

[State 195, 1]
type = Explod
trigger1 = Time = 0
anim = 4003
pos= 100,0
;postype= p1
;sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 0
anim = 1069
pos= 100,0
;postype= p1
sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 5
anim = 1070
pos= 50,30
;postype= p1
sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 15
anim = 1069
pos= 98,0
;postype= p1
;sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 30
anim = 1070
pos= 38,32
;postype= p1
sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 25
anim = 1069
pos= 105,0
;postype= p1
;sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time =40
anim = 1069
pos= 90,0
;postype= p1
sprpriority = 3

[State 195, 2]
type = Explod
trigger1 = Time = 35
anim = 1069
pos= 95,0
;postype= p1
;sprpriority = 3


[State 195, 3]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = NoAutoTurn

[State 195, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20
juggle = 3

[State 210, swoosh]
type = PlaySnd
trigger1 = Animelem = 2
value = 500,1

[State 210, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 12
guardflag = MA
hitsound = 5,0;S2,0
guardsound = 6,0
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = S2928                  ;Spark anim no (Def: set above)
guard.sparkno = S2926
sparkxy = -10, -76
animtype = Light
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-1

[State 210, return to stance (regular)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25
juggle = 5

[State 220, swoosh]
type = PlaySnd
trigger1 = Animelem = 2
value = 9000,0

[State 220, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 18
guardflag = MAFD
pausetime = 6,6
hitsound = 5,0;S2,0
guardsound = 6,0
sparkxy = -15,-55
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45
juggle = 6

[State 230, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 1000,0

[State 230, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 25
guardflag = MA
pausetime = 4,4
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-1

[State 230, return to stance (regular)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65
juggle = 6

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 7,0

[State 240, swoosh]
type = PlaySnd
trigger1 = Animelem = 2
value = 67,0

[State 240, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 25
guardflag = MA
pausetime = 9,9
hitsound = 5,4
guardsound = 6,0
sparkxy = -15,-75
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 75
juggle = 7

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 2,0

[State 250, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 40
guardflag = MA
pausetime = 4,4
hitsound = 5,4
guardsound = 6,0
sparkxy = 0,-65
animtype = Heavy
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -5
guard.velocity = -3
air.velocity = -4,-2

[State 250, return to stance (regular)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch (close-range)
[StateDef 270]
anim = 270
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65
juggle = 7

[State 270, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 270, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 270, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 40
guardflag = MA
pausetime = 4,4
hitsound = 5,4
guardsound = 6,0
sparkxy = 0,-65
animtype = Heavy
ground.type = Low
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -5
guard.velocity = -3
air.velocity = -4,-2

[State 270, return to stance (regular)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick (close-range)
[StateDef 260]
anim = 260
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 95
juggle = 5

[State 260, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 260, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 2,0

[State 260, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 55
fall = 1
guardflag = MA
pausetime = 6,6
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -2,-7
guard.velocity = -4
air.velocity = -4,-8
canrecover = 1

[State 260, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick (long-range)
[StateDef 265]
anim = 265
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 90

[State 265, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 265, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 7,0

[State 265, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 50
guardflag = MA
pausetime = 6,6
hitsound = 5,2
guardsound = 6,0
sparkxy = -10,-75
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -4
guard.velocity = -3
air.velocity = -4

[State 265, 2]
type = EnvShake
trigger1 = Time = 20
ignorehitpause = 20
time = 5
freq = 70
ampl = -4


[State 265, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20
juggle = 5

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 100,1

[State 410, swoosh]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 410, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkxy = 0,-45
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5
juggle = 7

[State 420, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 420, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45
juggle = 8

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 1,2

[State 430, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 4,0

[State 430, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-45
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

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
juggle = 8

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 440, grunt]
type = PlaySnd
trigger1 = Animelem = 2
value = 2,0

[State 440, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-10
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65
juggle = 10

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 3,0

[State 450, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-45
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Crouch Hard Punch (close-range)
[StateDef 455]
anim = 455
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 85
juggle = 5

[State 455, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 2,0

[State 455, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 7,0

[State 455, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
damage = 55
fall = 1
guardflag = MA
pausetime = 6,6
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -2,-7
guard.velocity = -4
air.velocity = -4,-8
canrecover = 1

[State 455, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 460]
anim = 460
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25
juggle = 10

[State 460, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 460, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 460, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
;hitflag = MD
damage = 60
guardflag = L
pausetime = 11,11
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 460, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 610, hang time]
type = VelAdd
trigger1 = Time = 0
y = -1

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 8000,0

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
pausetime = 6,8
hitsound = 5,0
guardsound = 6,0
sparkno=1
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
air.hittime = 20

[State 610, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 620]
anim = 625
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 1000,0

[State 620, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 500,1

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 10
guardflag = HA
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno=0
sparkxy = 0,-65
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 45

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 2000,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 2,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 8,8
sparkno=0
hitsound = 5,3
guardsound = 6,0
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 300,3

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
pausetime = 8,8
hitsound = 5,3
guardsound = 6,0
sparkno=0
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 200,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 1
attr = A, NA
damage = 65
guardflag = HA
pausetime = 8,8
hitsound = 5,3
guardsound = 6,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48

;---------------------------------------------------------------------------
; Air Hard Kick

[StateDef 655]
anim = 4901
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 655, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 655, grunt]
type = PlaySnd
trigger1 = Time = 20
value = 1,2

[State 655, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Med
damage    = 57, 4
priority  = 5
guardflag = MA
pausetime = 4,8
sparkxy = 0,-48
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -3
guard.velocity = -6
air.velocity = -2,-2
airguard.velocity = -4,-4.5
p2facing = 1
forcestand = 1

[State 655, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Up
damage    = 60, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-110
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 50
yaccel = .4

[State 655, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48

;-----headbutt

[StateDef 660]
anim = 660
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 40

[State 660, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 660, HitDef]
type = HitDef
trigger1 = (Time = 0) || (Time = 60)
attr = A, NA
hitflag = M
damage = 50
guardflag = H
pausetime = 8,8
hitsound = 5,4
guardsound = 6,0
sparkxy = 20,-30
animtype = Heavy
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-3

[State 660, resume falling]
type = StateTypeSet
Trigger1 = AnimElem = 3 ;6
physics = A

[State 660, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 48



;---------------------------------------------------------------------------
; Head Stomp (alternate air kick: HK + down)
[StateDef 680]
anim = 680
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 40

[State 680, velset1]
type = VelSet
Trigger1 = Time = 0
;x = 0
y = 0

[State 680, pause falling]
type = StateTypeSet
Trigger1 = Time = 0
physics = N

[State 680, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 12,1

[State 680, HitDef]
type = HitDef
trigger1 = (Time = 0) || (Time = 60)
attr = A, NA
hitflag = M
damage = 50
guardflag = H
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-3

[State 680, resume falling]
type = StateTypeSet
Trigger1 = AnimElem = 3 ;6
physics = A

[State 680, velset]
type = VelSet
trigger1 = MoveContact = 1
y = -6

[State 680, velmul]
type = VelMul
trigger1 = MoveContact = 1
x = 1.25


;[State 680, ChangeState] ;Change to jumping descent anim
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 48


;---------------------------------------------------------------------------
; Recovery Roll
; Adapted from code by FlowaGirl (flowergirl@cutey.com / http://blargh.i-xcell.com)
[Statedef 800]
type = L
movetype = I
physics = N
anim = 800
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 800: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800: PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 800: PosSet]
type = PosSet
trigger1 = (!Time)
y = 0

[State 800: VelSet]
type = VelSet
trigger1 = (!Time)
x = 6.5 ;4.5
y = 0

[State 800: ChangeState]
type = ChangeState
trigger1 = ((Time > 25) && (Command != "holdfwd")) || ((Time > 35) && (Command = "holdfwd"))
value = 5120



;---------------------------------------------------------------------------
; Falling from air attack / superjump

; neutral
[StateDef 850]
anim = 850
ctrl = 1
type = A
MoveType = I
physics = A

[State 850, null]
type = Null
trigger1 = Time = 0

; forward
[StateDef 851]
anim = 851
ctrl = 1
type = A
MoveType = I
physics = A

[State 851, null]
type = Null
trigger1 = Time = 0

; back
[StateDef 852]
anim = 852
ctrl = 1
type = A
MoveType = I
physics = A

[State 852, null]
type = Null
trigger1 = Time = 0


; opponent dizzy (custom p2 gethit state)
[StateDef 1056]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1056, feet on the ground]
type = PosSet
trigger1 = Pos Y <= 0
y = 0

[State 1056, dizzy anim]
type = ChangeAnim
trigger1 = (Time = 0) && SelfAnimExist(5300)
value = 5300

[State 1056, custom dizzy anim]
type = ChangeAnim2
trigger1 = (Time = 0) && !(SelfAnimExist(5300))
value = 5310

[State 1056, back to normal]
type = SelfState
trigger1 = (Time > 75) && (Alive = 1)
value = 0
ctrl = 1



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

[Statedef -2]

[State -2, default]
type = VarSet
triggerall = Var(51) = 1         ; Partner TAG mode activated
trigger1 = Win || Lose
v = 51
value = 0

; Run into the screen (tagged in, or team won)
[State -2, enter the screen]
type = ChangeState
triggerall = roundstate >= 3		; the match is over
triggerall = stateno = 4504		; Player waiting outside the screen
triggerall = Life		                ; And you're alive
trigger1 = Win
trigger2 = LoseTime
trigger3 = WinTime
value = 4505


[Statedef -3]

; Partner TAG command detection

[State -3, 8]
type = ChangeState
triggerall = RoundState < 2
triggerall = Var(51)
triggerall = NumPartner
triggerall = ID > Partner,ID
triggerall = StateNo != [4502, 4504]
triggerall = StateNo != [1000, 3000]	; (For assist)
triggerall = StateNo != 4600		; (For assist)
trigger1 = StateNo = 0
trigger1 = Life		                ; And you're alive
trigger2 = AnimTime = 0
trigger2 = Life		                ; And you're alive
value = 4503
ctrl = 0

; TAG

; Run into the screen (tagged in)
[State -3, enter the screen]
type = ChangeState
triggerall = Var(51)        ; Partner TAG mode activated
triggerall = NumPartner
triggerall = stateno = 4504		; Player waiting outside the screen
trigger1 = partner, stateno = 4502	; Partner leaving the screen
trigger1 = Life		                ; And you're alive
value = 4501
;repvalue = 4505

; Jump into the screen (partner was KOed)
[State -3, enter the screen]
type = ChangeState
triggerall = Var(51)        ; Partner TAG mode activated
triggerall = NumPartner
trigger1 = StateNo = 4504             ; Player waiting outside the screen
trigger1 = !(Partner, Life)            ; Partner dead
trigger1 = Life		            ; And you're alive
value = 4505

[State -3, wait out of the stage]
type = ChangeState
triggerall = Var(51)        ; Partner TAG mode activated
triggerall = NumPartner
triggerall = ID > Partner,ID
triggerall = partner, stateno != [4502,4504]	; Partner not waiting outside the screen (thus on stage)
triggerall = prevstateno != 0
trigger1 = Time = [0, 1]
trigger1 = RoundState = 2
trigger1 = Partner, Life
trigger1 = Life					; And you're alive
trigger1 = stateno != [4502,4504]		; you're not waiting outside the screen (thus on stage)
value = 4504


