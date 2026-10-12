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
; Intros
[Statedef 750]  ; intro selector
type = S
ctrl = 0
velset = 0,0
anim = 750

[State 190, 3]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 190, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 200


[State 190, 3]
type = ChangeState
trigger1 = Time = 1
trigger1 = var(0) = [0, 100]
value = 181

[State 190, 3]
type = ChangeState
trigger1 = Time = 1
trigger1 = var(0) = [101, 200]
value = 182

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0


[State 270, Explod]
type = Explod
trigger1 = time = 10
anim = 185
ID = 185
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State 181,0]
type = velset
trigger1 = animelem = 8
y= -10

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver
;-----------------------
; Intro #1
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = -1

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0


[State 193, 1]
type = Helper
trigger1 = Time = 30
trigger1 = numhelper(197) = 0
id = 197
stateno = 197
helpertype = normal
name = "explosion"
postype = p1
ownpal = 1
facing = 1
pos = 0,0
keyctrl = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------
; Intro #1
[Statedef 197]
type = S
ctrl = 0
anim = 185
velset = 0,0
sprpriority = 2

[State 1000,1]
type = PalFX
trigger1 = animelem = 1
time = 45
add = 130,50,130
palfx.mul = 1,1,1
palfx.time = 45

[State 191, 3] ;Change to stand state when done
type = destroyself
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 200


[State 190, 3]
type = ChangeState
trigger1 = Time = 1
trigger1 = var(0) = [0, 100]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Time = 1
trigger1 = var(0) = [101, 150]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Time = 1
trigger1 = var(0) = [151, 200]
value = 195
;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0
;
[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 191, Explod]
type = Explod
trigger1 = Time = 0
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

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------
; Intro #1
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
;
[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 193, 1]
type = Helper
trigger1 = Time = 0
;trigger1 = facing = 1
trigger1 = numhelper(194) = 0
helpertype = normal
name = "Lavia"
id = 194
postype = p1
facing = 1
pos = 20,
stateno = 194
keyctrl = 0

[State 193, 1]
type = Helper
trigger1 = Time = 0
;trigger1 = facing = 1
trigger1 = numhelper(193) = 0
helpertype = normal
name = "Guy"
id = 193
postype = p1
facing = 1
pos = 20,0
stateno = 193
keyctrl = 0


[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0
 ;-----------------
[Statedef 193]
type    = A
movetype= A
physics = N
velset = 0,0
facing = -1
ctrl = 0
anim = 193

[State 194, 2]
type = Velset
trigger1 = Time = 105
y = -30

[State 194, 2]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 194, 3]
type = destroyself
trigger1 = time = 126

;-----------------
[Statedef 194]
type    = A
movetype= A
physics = N
velset = 0,0
facing = -1
ctrl = 0
anim = 194

[State 194, 2]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 194, 2]
type = Velset
trigger1 = Time = 105
y = -30

[State 194, 3]
type = destroyself
trigger1 = time = 126
;-----------------------
; Intro #1
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
;
[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,135]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 270, Explod]
type = Explod
trigger1 = time = 90
anim = 185
ID = 185
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ownpal = 1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 210]
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


[State 270, Explod]
type = Explod
trigger1 = animelem = 3
anim = 211
ID = 211
pos = 10,-65
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = anim !=200
id = 211

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 40
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 200]
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
trigger1 = AnimElem = 3
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3

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
value = 0,2


[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 221
ID = 221
pos = 0,-80
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=220
id = 221

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 17
ground.hittime  = 21
ground.velocity = -3
air.velocity = -4

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
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
guardflag = MAFD
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -3

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


[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 245
ID = 245
pos = 22,-93
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=240
id = 245

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3

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


[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 255
ID = 255
pos = 15,-70
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1
scale= .5,.5


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=250
id = 255

[State 250, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 17
ground.hittime  = 21
ground.velocity = -3
air.velocity = -4

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
trigger1 = AnimElem = 3
attr = C, NA
damage = 40
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -3

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
trigger1 = AnimElem = 3
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3

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
trigger1 = AnimElem = 3
attr = C, NA
damage = 50
guardflag = L
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-12
air.velocity = -2

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
trigger1 = AnimElem = 3
attr = C, NA
damage = 40
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
air.velocity = -2

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

[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 445
ID = 445
pos = 18,-20
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=440
id = 445

[State 440, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -6

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

[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 451
ID = 451
pos = 30,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=450
id = 451

[State 440, 1]
type = velset
trigger1 = Animelem = 3
x =3

[State 440, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = M
damage = 50
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-4

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
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

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
damage = 45
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

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

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

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
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

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
damage = 45
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

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
damage = 50
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity =  0,((vel y)-.2)

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Drill & Slash - Attempt
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
sparkxy = -10, -80		;X-offset for the "hit spark" rel. to p2,
sprpriority = 1       ;Draw in front of p2
p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face player
p1stateno = 805       ;On success, player changes to state 810
p2stateno = 810       ;If hit, p2 changes to state 820 in player's cns
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Drill & Slash - Activate
[Statedef 805]
type    = S
movetype= A
physics = N
anim = 805
poweradd = 100
sprpriority = 3


[State 270, Explod]
type = Explod
trigger1 = animelem =3
anim = 806
ID = 806
pos = 0,-55
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = backedgebodydist <= -10
trigger1 = time = 0
x = -15

[State 0, PosAdd]
type = PosAdd
trigger1 = enemynear, backedgebodydist <= -10
trigger1 = time = 0
x = -10


[State 805, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0


[State 805, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 260,25

[State 805, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 55, 0

[State 805, Bind 2]
type = TargetBind
trigger1 = time = 50
pos = 35, -15


[State 805, 1]
type = HitDef
trigger1 = AnimElem = 3
damage = 50
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = MFL          ;Affect only ground people who are not being hit
priority = 7, Hit    ;Throw has low priority, must be miss or dodge type.
sparkno = s955
sparkxy = -25, -55		;X-offset for the "hit spark" rel. to p2,
hitsound = s500, 7			;Sound to play on hit
sprpriority = 3       ;Draw in front of p2
p2facing = 1          ;Force p2 to face player
p2stateno = 811       ;If hit, p2 changes to state 820 in player's cns
kill = 0
ID = 1

[State 805, 1]
type = HitDef
trigger1 = animelem = 5
attr = S, NT			;Attribute: Standing, Normal Attack
damage = 60, 0			;Damage that move inflicts, guard damage
animtype = back			;Animation type: Light, Medium, Heavy, Back (def: Light)
hitflag = MAF			;Flags of conditions that move can hit
priority = 7, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 8, 11			;Time attacker pauses, time opponent shakes
guard.pause = 17
sparkno = s990				;Spark anim no (Def: set above)
sparkxy = -10, -65		;X-offset for the "hit spark" rel. to p2,
hitsound = s500, 3			;Sound to play on hit
ground.type = high		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 30		;Time opponent is in hit state
ground.velocity = -12, -8.5		;Velocity at which opponent is pushed
air.type = high			;Type: High, Low, Trip (def: same as ground.type)
air.velocity =  -12, -8.5		;X-velocity at which opponent is pushed,
air.hittime = 30
air.fall = 1
fall = 1
fall.recover = 1
fall.recovertime = 30
ground.cornerpush = -15
envshake.time = 5
envshake.ampl = 5
p2facing = 1
ID = 2

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Drill & Slash  - Opponent Caught
[Statedef 810]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, 1]
type = Changeanim2
Trigger1 = time = 0
value = 810




;---------------------------------------------------------------------------
; Drill & Slash  - Opponent Hit
[Statedef 811]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, 1]
type = Changeanim2
Trigger1 = time = 0
value = 811


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

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
