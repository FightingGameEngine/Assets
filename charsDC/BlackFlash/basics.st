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
 ; Taunt
[Statedef 195]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 195

[State 195,0]
type = PlaySnd
trigger1 = animelem = 1
value = 170,0+random%6
volume = 655

[State 195, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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
anim = 181
velset = 0,0

[State 181 Roar]
type = Changestate
trigger1 = animtime = 0
value = 0

[State 181 Roar]
type = playsnd
trigger1 = animelem = 6
value = 281,0

[State 192, 2]             
type = AssertSpecial
trigger1 = time = [0,200]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Walk
[Statedef 182]
type = S
ctrl = 0
velset = 0,0
anim = 20

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = RoundNotOver

[State 183, 1]
type = veladd
triggerall = facing = 1
trigger1 = time = 1
x = const(velocity.walk.fwd.x)

[State 183, 1]
type = veladd
triggerall = facing = -1
trigger1 = time = 1
x = const(velocity.walk.fwd.x)

[State 190, 2]
type = ChangeState
triggerall = facing = 1
trigger1 = pos x >= 0 
value = 184

[State 190, 2]
type = ChangeState
triggerall = facing = -1
trigger1 = pos x <= 0 
value = 184

[State 181 Approaching]
type = Changestate
trigger1 = time >= 600
value = 185


;---------------------------------------------------------------------------
; Grab
[Statedef 184]
type     = U
movetype = A
physics  = N
juggle   = 0
anim     = 184
ctrl     = 0
velset   = 0,0
sprpriority = 2

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = RoundNotOver

[State 184 grab]
type = HitDef
triggerall = (StateType != A)
trigger1 = Time = 0
attr = S, NT
hitflag = MAFD  
priority = 1, Miss
sparkno = -1  
sprpriority = 1
p1facing = ifelse(command="holdfwd",-1,1)
p2facing = 1
p1stateno = 185
p2stateno = 189
guard.dist = 0 
fall = 1

[State 901,1]
type = TargetBind
trigger1 = 1
pos = 0, 0
time = -1

[State 181 grab]
type = Changestate
trigger1 = animtime = 0
value = 185

;---------------------------------------------------------------------------
; P2 Grabbed
[Statedef 189]
type    = L
physics = N
sprpriority = 0
movetype = H


[State 803, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 189

[State 181, ステート変更];勝利メッセージ画面へ
type = Changeanim
trigger1 = time = 600
value = 5150

;-----------------------
; Kidnap
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = RoundNotOver

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,13

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =   time = 20
id = 989
;ignorehitpause =
;persistent =



[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
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
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;--------------------------------------------------------------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 280,0
Channel = 0
volume = 200

[State 220, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 280,1
Channel = -1
volume = 255

[State 220, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 280,1
Channel = -1
volume = 255

[state Portal Prepare]
type = explod
trigger1 = time = 0
anim = 198
postype = back
pos = 0, 150
facing = 1
removetime = 196;76
removeongethit = 1
sprpriority = -9
ownpal = 1
ID = 190
scale = const(size.xscale),const(size.yscale)
trans = add1

[state Portal Behind]
type = explod
trigger1 = time = 197;77
anim = 196
postype = back
pos = 0, 150
facing = 1
removetime = 60
removeongethit = 1
sprpriority = -9
ownpal = 1
ID = 190
scale = const(size.xscale),const(size.yscale)


[state Portal Top]
type = explod
trigger1 = time = 197;77
anim = 199
postype = back
pos = 0, 150
facing = 1
removetime = 60
removeongethit = 1
sprpriority = 9
ontop = 1
ownpal = 1
ID = 190
scale = const(size.xscale),const(size.yscale)


[state Portal Close]
type = explod
trigger1 = time = 0;258;136;60
anim = 197
postype = back
pos = 0,150
facing = 1
removeongethit = 1
sprpriority = 9
ontop = 1
ownpal = 1
ID = 197
scale = const(size.xscale),const(size.yscale)



[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 191, Explod]
type = Explod
trigger1 = animelem = 2;Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,400];100]
flag = Intro

[State 192, 2]             
type = changestate
trigger1 = animtime = 0
ctrl = 0
value = 0

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
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
channel = 0

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 15
hitflag = MAF
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-60
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
envshake.time = 6
envshake.ampl = 3

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
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
channel = 0
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   989
pos = 37,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 15
pausemovetime = 0
scale = 1,.5
sprpriority = 3

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
hitflag = MAF
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-85
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
guard.velocity = -5
air.velocity = -3,-6
envshake.time = 9
envshake.ampl = 4

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
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2


[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1


[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   989
pos = 37,-67
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 15
pausemovetime = 0
scale = 1.2,.7
sprpriority = 3

[State 220, HitDef]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 45
hitflag = MAF
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-85
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10
guard.velocity = -5
air.velocity = -4,8
envshake.time = 12
envshake.ampl = 6

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
value = 50,6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
channel = 0

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
hitflag = MAF
guardflag = MAFD
pausetime = 6,6
hitsound = S2,3
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-60
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
envshake.time = 6
envshake.ampl = 3

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
value = 50,7

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
channel = 0
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   989
pos = 37,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 15
pausemovetime = 0
scale = 1,.5
sprpriority = 3

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 30
hitflag = MAF
guardflag = MA
pausetime = 9,9
hitsound = S2,4
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-55
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
envshake.time = 9
envshake.ampl = 5

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
value = 50,8
volume = 160

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2
channel = 0

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   989
pos = 37,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 15
pausemovetime = 0
scale = 1,.5
sprpriority = 3

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50
hitflag = MAF
guardflag = MA
pausetime = 12,12
hitsound = S2,5
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-50
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -10
guard.velocity = -4
air.velocity = -4,-8
envshake.time = 12
envshake.ampl = 6

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

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
LowPriority = 1
Channel = 71

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
hitflag = MAF
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-52
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -4
air.velocity = -3,-6
envshake.time = 6
envshake.ampl = 3

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

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
LowPriority = 1
Channel = 71
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAF
guardflag = L
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-55
animtype = Medium
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
guard.velocity = -10
air.velocity = -3,-6
envshake.time = 9
envshake.ampl = 4

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

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2
LowPriority = 1
Channel = 71
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
hitflag = MAF
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-80
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-11
Air.HitTime = 20
envshake.time = 16
envshake.ampl = 6

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

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
LowPriority = 1
Channel = 71

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
hitflag = MAF
guardflag = L
pausetime = 8,8
hitsound = S2,3
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-5
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -4
air.velocity = -2,-3
envshake.time = 6
envshake.ampl = 3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick AI
[StateDef 431]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
LowPriority = 1
Channel = 71

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
hitflag = MAF
guardflag = L
pausetime = 8,8
hitsound = S2,3
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-5
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -4
air.velocity = -2,-3
envshake.time = 6
envshake.ampl = 3

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
poweradd = 50

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,7

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
LowPriority = 1
Channel = 71
volume = 160

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAF
guardflag = L
pausetime = 10,10
hitsound = S2,4
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-20
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -6
air.velocity = -6,-2
envshake.time = 9
envshake.ampl = 4

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
poweradd = 80

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,8

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2
LowPriority = 1
Channel = 71
volume = 160

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = MAF
damage = 50
guardflag = L
pausetime = 12,12
hitsound = S2,5
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -20,-10
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-1
guard.velocity = -3
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 16
fall.envshake.ampl = 8

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

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
LowPriority = 1
Channel = 71

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 15
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage =15
guardflag = HA
pausetime = 12,12
hitsound = S2,0
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4

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

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
LowPriority = 1
Channel = 71
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 20
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 9
envshake.ampl = 5

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

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2
LowPriority = 1
Channel = 71
volume = 160

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 25
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -15,15
air.fall = 1
recover=0
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 18
fall.envshake.ampl = 8

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

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,0
LowPriority = 1
Channel = 71

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15
guardflag = HA
pausetime = 12,12
hitsound = S2,3
guardsound = S3,0
sparkno = S9970+random%4
sparkxy = -10,-35
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4

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

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,7

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,1
LowPriority = 1
Channel = 71
volume = 160

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
pausetime = 12,12
hitsound = S2,4
guardsound = S3,0
sparkno = S9980+random%4
sparkxy = -10,-25
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 9
envshake.ampl = 5

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

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 50,8

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 271,2
LowPriority = 1
Channel = 71
volume = 160

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,12
hitsound = S2,5
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-35
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -15,15
air.fall = 1
recover=0
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 18
fall.envshake.ampl = 8

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
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
;Trow

[Statedef 800]
type     = U
movetype = A
physics  = N
juggle   = 0
anim     = 800
ctrl     = 0
velset   = 0,0
sprpriority = 2

[State 2000, 1]
type = PlaySnd
trigger1 = animelem = 5 
trigger1 = p2stateno = 2651
value = S800, 1

[State 2000, 1]
type = PlaySnd
trigger1 = animelem = 5 
trigger1 = p2stateno = 2651
value = S800, 1

[State 800, Grab]
type = HitDef
triggerall = (StateType != A)
trigger1 = Time = 0
trigger1 = p2stateno != 2651
attr = S, NT
hitflag = M-  
priority = 1, Miss
sparkno = -1 
sprpriority = 1
p2facing = 1
p2stateno = 2651
guard.dist = 0 
hitsound   = S800,0

[State 2000, Explod]
type = Explod
trigger1 = time = 12
anim = 13502
id = 8100
pos = 0,-10
postype = p2
sprpriority = 1
ownpal = 0
removetime = 60
scale = .4,.8
bindtime = -1

[State 2000, Explod]
type = Explod
trigger1 = time = 12
anim = 13502
id = 8100
pos = 0,-40
postype = p2
sprpriority = 1
ownpal = 0
removetime = 60
scale = .5,.8
bindtime = -1

[State 2000, Explod]
type = Explod
trigger1 = time = 12
anim = 13502
id = 8100
pos = 0,-70
postype = p2
sprpriority = 1
ownpal = 0
removetime = 60
scale = .7,.8
bindtime = -1

[State 2000, 1]
type = PlaySnd
trigger1 = animelem = 5 
trigger1 = p2stateno = 2651
value = S860, 2

[State 2000, 1]
type = PlaySnd
trigger1 = animelem = 5 
trigger1 = p2stateno = 2651
value = S860, 2

[State 2556, Hit Confirmation]
type = Helper
trigger1 = movehit
trigger1 = numhelper(2556) = 0
helpertype = Normal
name = "2556"
ID =  2556
postype = P1
pos = 0,0
stateno = 2556
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
sprpriority = 4

[State 2000, 8]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = animelem >= 5
trigger2 = p2stateno != 2651
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit Confirmation
[Statedef 2556]
type    = A;S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 2556
sprpriority = -4

[State 2555, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2555, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[State 2555, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
;Foward Recovery Roll
[Statedef 777]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 777
sprpriority = -1

[State 777, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 777, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 777, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 777, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 777, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 32

[State 777, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 777, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
;Backward Recovery Roll
[Statedef 778]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 778
sprpriority = -1

[State 777, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 777, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 777, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 777, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 777, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 32

[State 777, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 777, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------
;Front Helper
[Statedef 8600]
type = S
movetype = I;A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4
anim = 8600

[state 8600, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 100, 0

[State 8600, Turn]
type = Turn
trigger1 = Facing != root,Facing

[state 8600, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow


;---------------------------------------------
;Behind Helper
[Statedef 8610]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4
anim = 8610

[state 8610, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = -100, 0;20

[State 8610, Turn]
type = Turn
trigger1 = Facing != root,Facing


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(2) - StateDef -3
; Var(50) - StateDef -3

;--------------------- Float Variable List ----------------------

