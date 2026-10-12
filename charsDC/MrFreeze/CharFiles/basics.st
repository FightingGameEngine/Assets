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
trigger1 = Time = 60
value = 10000,170

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,180]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 60
value = 10000,170

[State 170,1]
type = AssertSpecial
trigger1 = Time = [0,180]
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
value = 181 + (random%2)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 10000,181
channel = 0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,320]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 18201
velset = 0,0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "NoraEnding"
ID = 18200
stateno = 18200
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time > 10 && !NumHelper(18200)
value = 18202

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = RoundNotOver

[Statedef 18200]
type    = S
physics = N
anim = 3120
sprpriority = 3
velset = 4,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 8,4
value = S1050,1
volume = -50
[State 0, Explod]
type = Explod
trigger1 = timemod = 4,2
anim = 3121
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = -.1,0
random = 5,5
removetime = -2
pausemovetime = 0
scale = 1.3,0.8
sprpriority = 2
ontop = 1

[State 0, PosSet]
type = PosAdd
trigger1 = time = 0
x = -30

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim  = 3120
trigger1 = rootdist X < 5
value = 18203
[State 0, VelSet]
type = VelSet
trigger1 = rootdist X < 5
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim = 18203 && animtime = 0

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 192, 2]
type = AssertSpecial
;triggerall = !numhelper(19100)
trigger1 = 1
flag = Intro

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "MrFreezeEntrance"
stateno = 19100
ID = 19100
postype = back    ;p2,front,back,left,right
pos = -80,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1; && PalNo =1
value = 191 ;191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;[State 190,intro decider]
;type = ChangeState
;trigger1 = Time = 1 && PalNo !=1
;value = 192 ;191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numhelper(19100)
flag = invisible
flag2 = intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 45
value = S10000,191
channel = 0

[State 0, ChangeState]
type = ChangeAnim
triggerall = time > 10 && anim != 0
trigger1 = !numhelper(19100)
value = 0
;---------------
[Statedef 19100]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 19000
pos = 40,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
vel = 1,0
accel = .1,0
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S3000,0

[State 0, VelSet]
type = VelSet
trigger1 = time > 45
x = 2.4
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Pos X > (Parent, Pos X -2) &&  Pos X < (Parent, Pos X + 2)

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
sparkno = 0
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

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
sparkno = 1
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90
EnvShake.ampl = -8
EnvShake.phase = 100

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

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 4
x = 10

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
pausetime = 11+Var(40),11
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 0,3,2)
sparkxy = 0,-96
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -14
guard.velocity = -5
air.velocity = -10,-3
air.fall = 1
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100

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
sparkno = 0
sparkxy = 0,-80
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

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

[State 0, VarAdd]
type = VarAdd
trigger1 = MoveHit = 1
v = 40
value = 2*Var(40)

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
sparkno = 1
sparkxy = 0,-60
animtype = Medium
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
EnvShake.time = IfElse(var(40) > 0,7,0)
EnvShake.freq = 60
EnvShake.ampl = -6
EnvShake.phase = 100 - (3*(Var(40)))

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
trigger1 = Time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 10+var(40),6
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-90
animtype = Heavy
ground.type = Low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Running Kick
[StateDef 260]
anim = 260
ctrl = 0
type = S
movetype = A
physics = N
poweradd = 96
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1 && vel x > 1
x = -.5

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
[State 100, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -1-ceil(random/10), 0
postype = p1
pos = 20, -60
random = 20,90
scale = .3,.3
sprpriority = 5
ontop = 1
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 70
guardflag = MA
pausetime = 16+var(40),10
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -9,-1
guard.velocity = -4
air.velocity = -4,-8
EnvShake.time = IfElse(var(40) > 0,10,5)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100

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
sparkno = 0
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

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
sparkno = 1
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6
EnvShake.time = IfElse(var(40) > 0,3,0)
EnvShake.freq = 90
EnvShake.ampl = -4
EnvShake.phase = 100

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
sparkno = 2
sparkxy = 0,-120
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90
EnvShake.ampl = -4
EnvShake.phase = 100

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
sparkno = 0
sparkxy = 0,-10
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

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
sparkno = 1
sparkxy = 0,-15
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,0
guard.velocity = -3
air.velocity = -6,-6
EnvShake.time = IfElse(var(40) > 0,3,0)
EnvShake.freq = 90
EnvShake.ampl = -4
EnvShake.phase = 100

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
velset = 3,0
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
sparkno = 2
sparkxy = 0,-100
animtype = Heavy
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,-1
guard.velocity = -3
EnvShake.time = IfElse(var(40) > 0,5,0)
EnvShake.freq = 90
EnvShake.ampl = -4
EnvShake.phase = 100

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

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-6

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
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = IfElse(var(40) > 3,3,1)
sparkxy = 0,-50
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-6
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90
EnvShake.ampl = -8
EnvShake.phase = 100

[State 610, ChangeState]
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

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 15,8
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 3,3,2)
sparkxy = -20,-45
animtype = Up
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
fall = 1
air.velocity = -1,8
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90
EnvShake.ampl = -8
EnvShake.phase = 100

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = -20,-48
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-6

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
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 8+Var(40),8
hitsound = S2,1
guardsound = S3,0
sparkno = IfElse(var(40) > 3,3,1)
sparkxy = -10,-54
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-6
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90/Var(40)
EnvShake.ampl = -8
EnvShake.phase = 100 - (3*(Var(40)))
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
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 13+Var(40),8
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 3,3,2)
sparkxy = -20,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
fall = 1
air.velocity = -5,-2
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 90
EnvShake.ampl = -8
EnvShake.phase = 100

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;(Not my code btw. Credit goes to InfinityMugenTeam)
;---------------------------------------------------------------------------
;Credit goes to InfinityMugenTeam
;Guard Push (Stand)
[Statedef 750]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 750
sprpriority = 2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 10
value = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 10
add = 100,100,180
mul = 256,256,256
sinadd = -80,-80,-80,3
invertall = 0
color = 100

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 760
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = 3333
postype = p1
pos = 53,-50
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 3333,0
volume = 255
channel = 1

[State 6300, a8]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Crouch)
[Statedef 752]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 752
sprpriority = 2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 10
value = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 10
add = 100,100,180
mul = 256,256,256
sinadd = -80,-80,-80,3
invertall = 0
color = 100

[State 6310, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6310, a2]
type = VelSet
trigger1 = Time = 10
x = 0
[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 3333,0
volume = 255
channel = 1

[State 6310, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6310, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6310, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 760
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6310, a6]
type = Explod
trigger1 = Time = 0
anim = 3333
postype = p1
pos = 33,-45
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7

[State 6310, a7]
type = PlaySnd
trigger1 = Time = 0
value = 54,3
volume = 255
channel = 1

[State 6310, a8]
type = PlaySnd
trigger1 = Time = 0
value = 50,0
channel = 0

[State 6310, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (air)
[Statedef 754]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 754
sprpriority = 2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 10
value = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 10
add = 100,100,180
mul = 256,256,256
sinadd = -80,-80,-80,3
invertall = 0
color = 100

[State 6320, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6320, a2]
type = VelSet
trigger1 = Time = 10
x = 0
[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 3333,0
volume = 255
channel = 1


[State 6320, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6320, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6320, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 760
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6320, a6]
type = Explod
trigger1 = Time = 0
anim = 3333
postype = p1
pos = 33,-55
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7

[State 6320, a7]
type = PlaySnd
trigger1 = Time = 0
value = 54,3
volume = 255
channel = 1

[State 6320, a8]
type = PlaySnd
trigger1 = Time = 0
value = 50,0
channel = 0

[State 6320, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Helper)
[Statedef 760]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 760
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = time >= 9



;-------------------------------------------------------------------------------
[statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (Frontedgedist < 100, 1, -1)
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
anim = 801
poweradd = 60

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42, -115

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 6, -125

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -99, -81

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -132, -91

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 4
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
value = 805

;----------------------------------------------------------------------
[Statedef 821]
type = A
movetype = H
physics = N
velset = 10,0
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


;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
value = 910

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemy, Pos X
y = enemy, Pos Y - 120

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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
