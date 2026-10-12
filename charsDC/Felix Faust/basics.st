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
value = 100,5

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

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 110,4

[State 1260]
type = Explod
trigger1 = AnimElem = 6
pos = 54,-72
anim = 176 + ((Random * 2) / 1000)
scale = 0.8,0.8
ontop = 1
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = [0,120]
id =  181
flag = RoundNotOver
;persistent =


[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

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
value = 110,4

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
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 40,2

[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 193
ID = 193
pos = 67,-96
removetime=60
scale = 0.4,0.4
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 60
id = 193

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro
;------------------------------------------
; TAUNT
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S40,0
volume = 255
channel = 0

[State 195,1]
type = ChangeState
trigger1 = animTime = 0
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
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-98
animtype = Light
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
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
value = 2000,5

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 15,15
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-85
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 6,-71
anim = 211
scale = 0.8,0.8
ontop = 1
ownpal = 1
sprpriority=1

[State 220, construct]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "construct"
ID = 211
pos = 6,-71
postype = p1
stateno = 211
size.xscale = 0.85
size.yscale = 0.85

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------
[StateDef 211]
anim = 212
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 231, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 231, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 231, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 231, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 210

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

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 220,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = s1201,3
priority = 4, Hit
hitflag = MAF
guardsound = 6,0
sparkno = 2
sparkxy = 0,-82
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State Lighning]
Type=Targetstate
Triggerall=numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=movehit=1
Trigger1=target,selfanimexist(7696)
value=209


[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 67,-7
anim = 221
scale = 1.2,1.2
ontop = 1
ownpal = 1
sprpriority=5
id =  221


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Anim != 220
id =  221



[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------
[StateDef 221]
anim = 221
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 231, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 231, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 231, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 231, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 220
 ;-----------------------------------------
 [Statedef 209]
Type=U
Movetype=H
Physics=N
velset=-5,-5


[State 0, VelAdd]
type = VelAdd
trigger1 = pos y < -20
y = 1.5

[State 1200,0]
type = PlaySnd
trigger1 = Time = 0
value = 1201,3

[State 208]
Type=Changeanim
Trigger1=time=0
value=7696


[State 208]
Type=Changeanim
Trigger1=time=9
value=5007

[State 209]
Type=Selfstate
Trigger1=time>=10
value=50*(Statetype=A)
ctrl=1
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
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = -10,-70
animtype = Light
ground.type = Low
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
air.cornerpush.veloff = -20
damage = 45
guardflag = MA
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-65
animtype = Medium
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

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
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 8,8
priority = 4, Hit
hitflag = MAF
hitsound = s2000,0
guardsound = 6,0
sparkno = s252
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -4,-4
guard.velocity = -4
air.velocity = -4,-8
;fall= 1
;air.fall= 1

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 6,-41
anim = 211
scale = 0.85,0.85
ontop = 1
ownpal = 1
sprpriority=1



[State 250, construct]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "construct"
ID = 251
pos = 6,-41
postype = p1
stateno = 251
size.xscale = 0.7
size.yscale = 0.7

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------
;-------------------------------------------------------------------
[StateDef 251]
anim = 251
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 231, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 231, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 231, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 231, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 250

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
damage = 10
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-45
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
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
damage = 40
guardflag = MA
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -10
air.velocity = -3,-6


[State 1260]
type = Explod
trigger1 = AnimElem = 2
pos = 50,-35
anim = 411
scale = 0.8,0.8
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

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
damage = 50
guardflag = L
pausetime = 12,12;L8,8
hitsound = 5,2
priority = 3, Hit
guardsound = 6,0
sparkno = 2
sparkxy = 0,-110
animtype = Up
ground.type = Low
ground.slidetime = 45
ground.hittime  = 45
ground.velocity = 0,-12.5
guard.velocity = -5
air.velocity = 0,-11.25
[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 454
ID = 454
pos = 55,8
postype = p1
scale = 0.5,0.6
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
damage = 15
guardflag = L
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-15
animtype = Light
ground.type = Low
ground.slidetime = 8
ground.hittime  = 17
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
value = s230,1

[State 430, sceleton1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "sceleton1"
ID = 440
pos  = 50,0
postype = p1
stateno = 441
size.xscale = 1.1
size.yscale = 1.1

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------
[StateDef 441]
anim = 453
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2


[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,0
guard.velocity = -2
air.velocity = -6,-6


[State 431, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 441, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 440
;-------------------------------------
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


[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s230,1

[State 450, sceleton3]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "sceleton3"
ID = 450
pos  = 80,7
postype = p1
stateno = 451
size.xscale = 1.1
size.yscale = 1.1

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------
[StateDef 451]
anim = 451
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2


[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 50
guardflag = L
pausetime = 10,10
priority = 4, Hit
hitflag = M
hitsound = s2000,0
guardsound = 6,0
sparkno = s252
sparkxy = 0,-10
animtype = Heavy
ground.type = Trip
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1,-5
guard.velocity = -4
air.velocity = -1,-5



[State 431, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 451, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 450

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
damage = 15
guardflag = MA
pausetime = 4,4
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

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
damage = 40
guardflag = MA
pausetime = 6,6
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 45,-70
anim = 612
scale = 0.4,0.4
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 5
removeongethit = 1

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
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-55
animtype = Heavy
ground.type = High
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -24
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = 0
airguard.ctrltime = 2
airguard.velocity = -10,1
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
air.hittime  = 30
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10

[State 1260]
type = Explod
trigger1 = AnimElem = 3
pos = 30,-30
anim = 621
scale = 0.7,0.7
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

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
damage = 12
guardflag = MA
pausetime = 4,4
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 0
sparkxy = 0,-45
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

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
damage = 35
guardflag = MA
pausetime = 6,6
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-55
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

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
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-55
animtype = Heavy
ground.type = High
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -24
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = 0
airguard.ctrltime = 2
airguard.velocity = -10,1
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
air.hittime  = 30
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10


[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1
;--------------------------------------------------------------------------
[StateDef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 1
poweradd = 80


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
p1stateno = 801
p2stateno = 802
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

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0



[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,-80

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 60,-80

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -10

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 3
value = 803

;[State 0, Turn]
;type = Turn
;trigger1 =  Animelem = 7


[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------
[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802
;---------------------------
[Statedef 803]
type    = A
movetype= H
physics = N
velset = 0,-20


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 803

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 2

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = vel y > 0 && anim != 804; && SelfAnimExist(5050)
value = 804

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

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
;-----------------------------------------------


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
