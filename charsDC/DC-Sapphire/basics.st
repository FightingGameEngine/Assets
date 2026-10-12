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
value = 181 + ((Random * 1) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 181, fx]
type =explod
trigger1 = AnimElem = 1
anim = 912
postype = p1
pos = 85,-150
bindtime = 2
sprpriority = 2
removetime = 200
ownpal = 1
removeongethit = 1

[State 181, fx]
type =explod
trigger1 = AnimElem = 1
anim = 914
postype = p1
pos = 11,-150
bindtime = 2
sprpriority = 2
removetime = 200
ownpal = 1
removeongethit = 1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

;---------------------------------------------------------------------------
;185
[Statedef 181]
type = S
ctrl = 0
anim = 185
facing = 1
pos = 0,0
postype = p1
velset = 0,0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 195,2


[State 181, fx]
type =explod
trigger1 = AnimElem = 1
anim = 912
postype = p1
pos = 85,-150
bindtime = 2
sprpriority = 2
removetime = 200
ownpal = 1
removeongethit = 1

[State 181, fx]
type =explod
trigger1 = AnimElem = 1
anim = 914
postype = p1
pos = 11,-150
bindtime = 2
sprpriority = 2
removetime = 200
ownpal = 1
removeongethit = 1


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = RoundNotOver
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

;[State 190, fx]
;type =explod
;trigger1 = time = 10
;anim = 191
;postype = p1
;pos = 130,0
;bindtime = 2
;sprpriority = 2
;removetime = 30
;ownpal = 1
;removeongethit = 1

[State 190, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 1472,0
volume = 0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
; 192
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 358,5
volume = 0



[State 192, 1] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 2]
type = ChangeState
trigger1 = AnimTime =0
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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
sprpriority = 2		;Set layering priority to 2 (in front)


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2 
anim = 211
ID = 211
pos = 95,-95
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1 ;Time = 0
attr = S, NA
damage = 30
guardflag = MA
hitflag = MAF
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6002
sparkxy = 40,-140  ;0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10		;Time opponent is in hit state
ground.velocity = -3
guard.velocity = -2
air.type = High	
air.velocity = -2,-3
air.hittime = 10		;Time before opponent regains control in air


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
velset = 0,0
poweradd = 65
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 211
ID = 211
pos = 107,-106
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 4 ;1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = 5,0
guardsound =  6,0
sparkno = s6003  
sparkxy = 40,-160  ;0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.type = High
air.velocity = -3,-6
air.hittime = 15

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
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 0, Explod]
type = Explod
trigger1 =animelem = 4
anim =  221
ID =    221
pos = 71,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 4 
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = 5,0
guardsound = 6,0
sparkno = s6004
sparkxy = 45, -138
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.type = High
air.velocity = -4,8
air.hittime = 20

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
sprpriority = 2

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
trigger1 = AnimElem = 2 
attr = S, NA 
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = 5, 0
guardsound = 6, 0
sparkno = s231 
sparkxy = 70, -180
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -4
guard.velocity = -2
air.type = High
air.velocity = -2,-3
air.hittime = 12

[State 230, back to stance]
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
trigger1 = AnimElem = 4  
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = 5,0
guardsound = 6,0
sparkno = s6005
sparkxy = 25,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3,-6
air.hittime = 12

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
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
trigger1 = AnimElem = 3
attr = S, NA
damage = 96
guardflag = MA
pausetime = 6,6
hitsound = 5,0
guardsound = 6,0
sparkno = s6002
sparkxy = 45,-131
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.type = High
air.velocity = -4,-8
air.hittime = 12

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
sprpriority = 2

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 211
ID = 211
pos = 57,-50
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 400, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 45
guardflag = L
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6002
sparkxy = 32,-92
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3,-6
air.hittime = 15

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
sprpriority = 2

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, fx]
type =explod
trigger1 = AnimElem = 4
anim = 411
postype = p1
pos = 83,-62
bindtime = 2
sprpriority = 3
removetime = 8
ownpal = 1
removeongethit = 1

[State 410, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 65
guardflag = L
pausetime = 9,9
hitsound = 5,0
guardsound = 6,0
sparkno = s412
sparkxy = -10,-76
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3,-6
air.hittime = 15

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
sprpriority = 2

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 421
ID = 421
pos = 116,8
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 3
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = s422
sparkxy = 3,-152  ;0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-11
air.hittime = 15
fall = 1

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
sprpriority = 2

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
trigger1 = AnimElem = 2  
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = -10, -76
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -2,-3
air.hittime = 10

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
poweradd = 20
sprpriority = 2

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 441
ID = 441
pos = 119,-30
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 440, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = -10, -76
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -6,-6
air.hittime = 15

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
sprpriority = 2

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
trigger1 = AnimElem = 3
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = -10,-76
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

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
sprpriority = 2

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = 5,0
guardsound = 6,0
sparkno = 3
sparkxy = -10, -76
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
air.hittime = 10

;[State 600, ChangeState]
;type = CtrlSet
;trigger1 = Time = 20
;value = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6003
sparkxy = 30, -127
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
air.hittime = 10

;[State 620, ChangeState]
;type = CtrlSet
;trigger1 = Time = 20
;value = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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

[State 620, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, NA
damage = 96
guardflag = HA
pausetime = 0,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6003
sparkxy = 40, -131
animtype = Light 
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -2,-3
air.hittime = 12

[State 620, ChangeState]
type = CtrlSet
trigger1 = Time = 20
value = 1

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

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6002
sparkxy = 33, -131
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

;[State 630, ChangeState]
;type = CtrlSet
;trigger1 = Time = 20
;value = 1

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = 5,0
guardsound = 6,0
sparkno = s6004
sparkxy = 22, -140
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

;[State 640, ChangeState]
;type = CtrlSet
;trigger1 = Time = 20
;value = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 92
guardflag = HA
pausetime = 0,8
hitsound = 5,0
guardsound = 6,0
sparkno = s422
sparkxy = -10, -105
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

;[State 650, ChangeState]
;type = CtrlSet
;trigger1 = Time = 20
;value = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 925]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 925, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 925

[State 925, destroyself]
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
value = 48

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 48


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
