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
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 1
value = 100,12

[State 181, 1]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;-----------------------
; Winpose #2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 10
value = 100,2

[State 182, 1]
type = AssertSpecial
trigger1 = Time < 230
flag = RoundNotOver

;-----------------------
; Winpose #3
[Statedef 183]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 183,0]
type = PlaySnd
trigger1 = Time = 10
value = 50,2

[State 183,0]
type = PlaySnd
trigger1 = animelem = 1
value = 100,11

[State 183, 1]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;-----------------------
; Winpose #4
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = animelem = 15
value = 100,13

[State 184, 1]
type = AssertSpecial
trigger1 = Time < 300
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, vs superman]
type = ChangeState
trigger1 = p2name = "Superman" || p4name = "Superman"
trigger1 = Time = 0
value = 187

[State 190, vs superman]
type = ChangeState
trigger1 = p2name = "Superboy" || p4name = "Superboy"
trigger1 = Time = 0
value = 186

[State 190, vs Green Arrow]
type = ChangeState
trigger1 = p2name = "Green Arrow" || p4name = "Green Arrow"
trigger1 = Time = 0
value = 185

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 188 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

;----------------------------------------------
; Intro #1

[Statedef 191]
type = A
movetype = I
physics = N
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 0

[State 191, PosAdd]
type = PosAdd
trigger1 = Time = 0
y = -300

[State 191, VelSet]
type = VelSet
trigger1 = Time = 1
y = 2

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = 100,5

[State 191, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 50,1

[State 191, Explod]
type = Explod
trigger1 = Time = 0
anim = 193
id = 193
postype = P1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = -1
ownpal = 1

[State 191, Explod]
type = Explod
trigger1 = time = 150
anim = 61
id = 61
pos = 0,0
sprpriority = 5
ownpal = 1

[State 191, Explod]
type = Explod
trigger1 = time = 150
anim = 60
id = 60
pos = 0,0
sprpriority = -2
ownpal = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
id = 193

[State 191, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 192

;-----------------------
; Intro #2

[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 189, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 189, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 100,9

[State 189, 2]
type = AssertSpecial
trigger1 = Time = [0,700]
flag = Intro

[State 189, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;-----------------------
; Intro #3
[Statedef 188]
type = S
ctrl = 0
anim = 188
velset = 0,0

[State 188, Explod]
type = Explod
trigger1 = animelem = 94
anim = 187
id = 187
sprpriority = 5

[State 188, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 188

[State 188, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 188, 3]
type = PlaySnd
trigger1 = time = 1
value = 100,3

[state 188, Playsnd]
type = Playsnd
trigger1 = animelem  = 3
trigger2 = animelem  = 6
trigger3 = animelem  = 9
trigger4 = animelem  = 12
trigger5 = animelem  = 15
trigger6 = animelem  = 18
trigger7 = animelem  = 21
trigger8 = animelem  = 24
trigger9 = animelem  = 27
trigger10 = animelem  = 30
trigger11 = animelem  = 33
trigger12 = animelem  = 36
trigger13 = animelem  = 39
trigger14 = animelem  = 42
trigger15 = animelem  = 45
trigger16 = animelem  = 48
trigger17 = animelem  = 51
trigger18 = animelem  = 54
trigger19 = animelem  = 57
trigger20 = animelem  = 60
trigger21 = animelem  = 63
trigger22 = animelem  = 66
trigger23 = animelem  = 69
trigger24 = animelem  = 70
trigger25 = animelem  = 72
value = 30,2

[State 188, 3]
type = PlaySnd
trigger1 = animelem = 94
value = 30,3

[State 188, 4]
type = PlaySnd
trigger1 = animelem = 78
value = 50,7
channel = 1

[State 188, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------
[Statedef 187]
type = S
ctrl = 0
anim = 186
velset = 0,0

[State 187, 1]
type = PlaySnd
trigger1 = animelem = 11
value = 100,1

[State 187, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 187, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;-----------------------
[Statedef 186]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 186, 1]
type = PlaySnd
trigger1 = animelem = 14
value = 100,15

[State 186, 2]
type = AssertSpecial
trigger1 = Time = [0,210]
flag = Intro

[State 186, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;-----------------------
[Statedef 185]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 185, 1]
type = PlaySnd
trigger1 = animelem = 11
value = 100,14

[State 185, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 185, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
;(landing)

[Statedef 192]
type = S
movetype = I
physics = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 0

[State 192, Explod];landing dust
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 194
id = 194
postype = P1
pos = 0,0
sprpriority = -1
ownpal = 1

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 192, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------
; Intro #2

[Statedef 193]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 193, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 193, Explod]
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

[State 193, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;-----------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 0, playsnd 1]
type = PlaySnd
trigger1 = Time = 10
value = 50,2

[State 0, 1]
type = PlaySnd
trigger1 = Time = animelem = 4
value = 100,6

[State 105, 2]
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

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,3

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,10
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
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
value = 0,2

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,4

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 35,16
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -5
air.velocity = -3,-6

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

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,5

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4
attr = S, NA
damage = 50,25
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

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
value = 40,3

[State 230, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 20,10
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
sparkxy = 0,-30
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
value = 40,4

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 35,16
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
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
value = 0,3

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 40,5

[State 250, HitDef]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 6
attr = S, NA
hitflag = MAF
guardflag = MA
pausetime = 6,6
priority = 2, Hit
animtype = hard
damage = 50,25
sparkno = S9992
guard.sparkno = s9997
sparkxy = -5, -33
hitsound = S2,2
guardsound = S3,0
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8.5
air.velocity = -4, -6
air.hittime = 14
guard.slidetime = 21
guard.hittime = 21
guard.velocity = -8.6
givepower = 40
getpower = 65

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
trigger1 = animelem = 2
attr = C, NA
damage = 20,10
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
sparkxy = 0,-40
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
trigger1 = animelem = 3
attr = C, NA
damage = 35,16
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

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
trigger1 = animelem = 4
attr = C, NA
damage = 50,25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-13
guard.velocity = -5
air.velocity = -2,-11

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
trigger1 = animelem = 2
attr = C, NA
damage = 20,10
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
sparkxy = 0,0
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
trigger1 = animelem = 3
attr = C, NA
damage = 35,16
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6

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
triggerall = Var(2) <= 0
trigger1 = AnimElem = 3
attr = C, NA
damage = 60,30
getpower = 28, 7
givepower = 7, 0
animtype = Heavy
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = -10, -25
ground.type = Trip
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -2, -5
airguard.velocity = -1,-3
air.type = Trip
air.velocity = -2,-5
air.hittime = 16
air.fall = 1
fall = 1

[State 450, 1]
type = HitDef
triggerall = Var(2) > 0
trigger1 = AnimElem = 3
attr = C, HA
damage = 60,30
getpower = 28, 7
givepower = 7, 0
animtype = Heavy
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = -10, -25
ground.type = Trip
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -2, -5
airguard.velocity = -1,-3
air.type = Trip
air.velocity = -2,-5
air.hittime = 16
air.fall = 1
fall = 1

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

[State 600, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 11, 11
animtype = light
priority = 5, Hit
damage = 20,10
sparkno = S9990
guard.sparkno = s9997
sparkxy = -5, -82
hitsound = S2,0
guardsound = S3,0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5
air.velocity = 0, -5
air.hittime = 14
airguard.velocity = -3, 0
givepower = 15
getpower = 25

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

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,4

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 11, 11
animtype = Medium
priority = 2, Hit
damage = 35,16
sparkno = S9991
guard.sparkno = s9997
sparkxy = -5, -85
hitsound = S2,1
guardsound = S3,0
ground.type = high
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -7.6
air.velocity = 0, -6
air.hittime = 22
guard.slidetime = 8
guard.hittime = 7
guard.velocity = -6.5
givepower = 20
getpower = 35
persistent = 0

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

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,5

[State 620, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAFD
guardflag = HA
pausetime = 11, 11
priority = 2, Hit
animtype = Hard
air.animtype = Back
damage = 90,45
sparkno = S9992
guard.sparkno = s9997
sparkxy = -5, -77
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8.8
air.velocity = -9, 10
down.velocity = -5, 0
down.hittime = 13
guard.slidetime = 7
guard.hittime = 7
guard.velocity = -7
air.fall = 1
fall.recover = 0
givepower = 30
getpower = 45
persistent = 0

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

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
hitflag = MAFD
guardflag = HA
pausetime = 11, 11
priority = 5, Hit
animtype = light
damage = 20,10
sparkno = S9990
guard.sparkno = s9997
sparkxy = -5, -22
hitsound = S2,0
guardsound = S3,0
ground.type = high
ground.slidetime = 11
ground.hittime = 11
ground.velocity = -6.5
air.velocity = 0, -5
air.hittime = 17
down.velocity = -3, 0
down.hittime = 10
guard.slidetime = 7
guard.hittime = 7
guard.velocity = -5
givepower = 15
getpower = 25

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

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,4

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAFD
guardflag = HA
pausetime = 11, 11
priority = 2, Hit
animtype = Medium
damage = 35,16
sparkno = S9991
guard.sparkno = s9997
sparkxy = -5, -37
hitsound = S2,1
guardsound = S3,0
ground.type = high
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8
air.velocity = 0, -6
air.hittime = 22
down.velocity = -5, 0
down.hittime = 13
guard.slidetime = 7
guard.hittime = 7
guard.velocity = -6.5
givepower = 20
getpower = 35
persistent = 0

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
trigger1 = animelem = 1
value = 40,5

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAFD
guardflag = HA
pausetime = 11, 11
priority = 2, Hit
animtype = hard
air.animtype = back
damage = 90,45
sparkno = S9992
guard.sparkno = s9997
sparkxy = -5, -9
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8
air.velocity = -9, 10
down.velocity = -8, 0
down.hittime = 15
guard.slidetime = 7
guard.hittime = 7
guard.velocity = -6.5
air.fall = 1
fall.recover = 0
givepower = 30
getpower = 45
persistent = 0

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
;Throw (attempt)

[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, ChangeAnim 1]
type = ChangeAnim
trigger1 = Time = 0
value = 800

[State 0, HitDef]
type = HitDef
trigger1 = Time <= 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 801
p2stateno = 802
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall.recover = 0

[State 0, HitDef]
type = HitDef
trigger1 = Time <= 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 801
p2stateno = 802
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw (throwing opponent)

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
poweradd = 60
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 100,7

[State 0, TargetBind 1]
type = TargetBind
trigger1 = Time = 0
pos = -43,0

[State 0, TargetBind 2]
type = TargetBind
trigger1 = (AnimElemTime(2) >= 0) && (AnimElemTime(3) < 0)
pos = -42,0

[State 0, TargetBind 3]
type = TargetBind
trigger1 = (AnimElemTime(3) >= 0) && (AnimElemTime(4) < 0)
pos = -3,0

[State 0, TargetBind 4]
type = TargetBind
trigger1 = (AnimElemTime(4) >= 0) && (AnimElemTime(5) < 0)
pos = 19,0

[State 0, TargetBind 6]
type = TargetBind
trigger1 = (AnimElemTime(5) >= 0) && (AnimElemTime(6) < 4)
pos = 92,-3

[State 0, Hurt]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = ifelse(PalNo > 6, -160, -80)

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(6) = 0
time = 20
freq = 80
ampl = -6

[State 0, Width 1]
type = Width
trigger1 = (AnimElemTime(1) >= 0) && (AnimElemTime(5) < 0)
edge = 40,0

[State 0, Width 2]
type = Width
trigger1 = (AnimElemTime(5) >= 0) && (AnimElemTime(6) < 4)
edge = 100,0

[State 0, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 3,1

[State 0, Yell 2]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 40,5
channel = 0

[State 0, Slam Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 40,10

[State 0, Slam Explod]
type = Explod
trigger1 = AnimElemTime(6) = 1
anim = 8400
ID = 8400
postype = P2
pos = -12,3
sprpriority = -1

[State 0, Slam Explod]
type = Explod
trigger1 = AnimElemTime(6) = 1
anim = 8401
ID = 8401
postype = P2
pos = -12,3
sprpriority = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw (thrown state for opponent)

[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[State 0, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = 0

[State 0, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(3) = 0
value = 0

[State 0, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(4) = 0
value = 0

[State 0, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(5) = 0
value = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = Animelem = 5
value = -70

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 803
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 803]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0
facep2 = 1
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = AnimElem = 5, < 0
value = 0

[State 0, Turn]
type = Turn
trigger1 = facing = enemyNear, facing

[State 0, VelSet]
type = VelSet
trigger1 = !AnimTime
x = -4.5
y = -5

[State 0, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5050

;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 3050]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 10600
velset= 0,0
poweradd = 20

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20,10
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 3051]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 610
velset= 0,0
poweradd = 65

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,4

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35,16
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 3052]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 620
velset= 0,0
poweradd = 96

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,5

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 90,45
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 3053]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 630
velset= 0,0
poweradd = 22

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20,10
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
guard.sparkno = s9997
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 3054]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 640
velset= 0,0
poweradd = 65

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,4

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35,16
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
guard.sparkno = s9997
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 3055]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 650
velset= 0,0
poweradd = 92

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 40,5

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 90,45
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9997
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1
