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
value = 7100,2

[State 170,1]
type = AssertSpecial
trigger1 = Time = [0,200]
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
value = 175,0

[State 175, Spark]
type = Explod
trigger1 = AnimElem = 2
anim = 1750
pos = 1, -1
ID = 1750
postype = p1
sprpriority = 1
bindtime = -1
removetime = 300
removeongethit = 1
scale = 1,1

[State 175,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 4
range = 0,250

[State 180, 2]
type = ChangeState
trigger1 = Var(4) = [1,50]
value = 181

[State 180, 2]
type = ChangeState
trigger1 = Var(4) = [51,100]
value = 182

[State 180, 2]
type = ChangeState
trigger1 = Var(4) = [101,150]
value = 183

[State 180, 2]
type = ChangeState
trigger1 = Var(4) = [151,200]
value = 184

[State 180, 2]
type = ChangeState
trigger1 = Var(4) = [201,250]
value = 185


;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 181,0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,300]
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
trigger1 = AnimElem = 6
value = 182,0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;-----------------------
; Winpose #3
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 183,0


[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = RoundNotOver

;-----------------------
; Winpose #4
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = AnimElem = 3
value = 184,0

[State 184, Spark]
type = Explod
trigger1 = AnimElem = 2
anim = 1840
pos = 2, 2
ID = 1840
postype = p1
sprpriority = 1
bindtime = -1
removetime = 250
removeongethit = 1
scale = 1,1

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,325]
flag = RoundNotOver

;-----------------------
; Winpose #5
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 185,0]
type = PlaySnd
trigger1 = AnimElem = 4
value = 185,0

[State 185,1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 0]
type = ChangeState
trigger1 = Time = 1
trigger1 = p2name = "Green Lantern Kyle" || p4name = "Green Lantern Kyle" || p2name = "Kyle Rayner" || p4name = "Kyle Rayner"
value = 196

[State 190, 0]
type = ChangeState
trigger1 = Time = 1
trigger1 = p2name = "Green Lantern Guy" || p4name = "Green Lantern Guy" || p2name = "Guy Gardner" || p4name = "Guy Gardner"
value = 197

[State 190, 0]
type = ChangeState
trigger1 = Time = 1
trigger1 = p2name = "Captain Atom" || p4name = "Captain Atom"
value = 198

[State 190, 0]
type = ChangeState
trigger1 = Time = 1
trigger1 = p2name = "Green Lantern" || p4name = "Green Lantern" || p2name = "John Stewart" || p4name = "John Stewart" || p2name = "Green Lantern Hal Jordan" || p4name = "Green Lantern Hal Jordan"
value = 199

[State 190, 0]
type = ChangeState
trigger1 = Time = 1
trigger1 = p2name = "Superman" || p4name = "Superman"
value = 1999

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

; Intro vs Green Lantern Kyle Rayner
[Statedef 196]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 196, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 196,1
channel = 7

[State 196, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1960
ID = 1960
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 1300
;scale = 0.6,0.6
sprpriority = 0
ontop = 1


[State 196, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1961
ID = 1961
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 200
;scale = 0.6,0.6
sprpriority = 0
ontop = 1

[State 196, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1962
ID = 1962
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 30
;scale = 0.6,0.6
sprpriority = 0
ontop = 1

;[State 193, RemoveExplod]
;type = RemoveExplod
;trigger1 = Time= 176
;id = 1930

[State 192, back to stance]
type = ChangeState
trigger1 = Time= 1550
value = 0
ctrl = 0

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,1550]
flag = Intro



; Intro vs Green Lantern Guy
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 197, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196,3
channel = 6

[State 197, back to stance]
type = ChangeState
trigger1 = Time= 375
value = 0
ctrl = 0

[State 197, 2]
type = AssertSpecial
trigger1 = Time = [0,375]
flag = Intro

; Intro vs Captain Atom
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 198, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 196,4
channel = 6

[State 198, back to stance]
type = ChangeState
trigger1 = Time= 470
value = 0
ctrl = 0

[State 198, 2]
type = AssertSpecial
trigger1 = Time = [0,470]
flag = Intro

; Intro vs Green Lantern
[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0

[State 199, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196,2
channel = 6

[State 199, back to stance]
type = ChangeState
trigger1 = Time= 375
value = 0
ctrl = 0

[State 199, 2]
type = AssertSpecial
trigger1 = Time = [0,375]
flag = Intro


; Intro vs Superman
[Statedef 1999]
type = S
ctrl = 0
anim = 1999
velset = 0,0

[State 1999, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196,0
channel = 6

[State 1990, back to stance]
type = ChangeState
trigger1 = Time= 375
value = 0
ctrl = 0

[State 1999, 2]
type = AssertSpecial
trigger1 = Time = [0,330]
flag = Intro

; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 195, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 3
value = 191, Var(10)
channel = 5

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

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 192, back to stance]
type = ChangeState
trigger1 = Time= 350
value = 0
ctrl = 0
;------------------------------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 192,0
channel = 6

[State 192, back to stance]
type = ChangeState
trigger1 = Time= 375
value = 0
ctrl = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,375]
flag = Intro

;---------------------------------
; Intro #3
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 193,0
channel = 7

[State 193, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1930
ID = 1930
pos = 60,-97
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 232
scale = 0.6,0.6
sprpriority = 0
ontop = 1

;[State 193, RemoveExplod]
;type = RemoveExplod
;trigger1 = Time= 176
;id = 1930

[State 192, back to stance]
type = ChangeState
trigger1 = Time= 350
value = 0
ctrl = 0

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = Intro

;------------------------------------------------
;intro #4
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0
movetype = I
physics = S

[State 194, Position]
type = null ;PosSet
trigger1 = Time = 0
y = 0

[State 194, 2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 194, 0
channel = 8

[State 194, 2]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

[State 192, back to stance]
type = ChangeState
trigger1 = Time= 350
value = 0
ctrl = 0
;---------------------------------
;Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S

[State 195, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 4) / 1000)

[State 195, vox]
type = PlaySnd
trigger1 = var(4) != 4
trigger1 = AnimElem = 3
value = 195, Var(10)
channel = 0

;[State 195, 2]
;type = PlaySnd
;trigger1 = var(4) != 4
;trigger1 = AnimElem = 3
;value = 195, 3+var(4)
;channel = 0
;trigger1 = var(48) != 3
;trigger1 = AnimElemTime(4) = 0
;value = S196, 0+var(48)

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

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
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
trigger1 = AnimElem = 3
value = 0,1

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

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
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State Idle]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I

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

[State 220, vel]
type=velset
trigger1=animelem=4
x=3

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 86
guardflag = MA
pausetime = 13,13
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State Idle]
type=statetypeset
trigger1= animelemtime(7)>=2
movetype=I

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch (combo)
[StateDef 221]
anim = 221
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 221, vel]
type=velset
trigger1=animelem=4
x=3

[State 221, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 221, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 86
guardflag = MA
pausetime = 13,13
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 221, Idle]
type=statetypeset
trigger1= animelemtime(7)>=2
movetype=I

[State 221, back to stance]
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

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

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
sparkxy = -10,-85
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

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

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

[State 250, vel]
type=velset
trigger1=animelem=2
x=10

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,1

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 86
guardflag = MA
pausetime = 14,14
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -15,-85
animtype = Heavy
ground.type = High
ground.hittime  = 12
ground.velocity = -9 ,-2
airguard.velocity = -2.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I

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

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-50
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

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 60
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
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

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

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = L
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-60
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

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

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=2
movetype=I

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 420, follow]
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "holdup"
value = 9004
ctrl = 1

;------------------
;Superjump follow
[Statedef 9004]
type = A
physics = N
velset = 1,-11.5
ctrl = 0

[State 9004, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 41

;[State 9004, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 0
;value = *,*

[state 9004, CtrlSet]
type = CtrlSet
trigger1 = Time >= 1
value = 1

[state 9004, VelSetFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = var(59) = 0
trigger2 = var(59) = 1
x = .1

[state 9004, VelSetBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = var(59) = 0
x = -.1

[state 9004, VelAdd]
type = VelAdd
trigger1 = Time > 5
x = 0
y = .4

[State 0,PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 8,0



[State 0,super jump]
type = Explod
trigger1 =!time
anim = 110
ID = 110
pos = 0,20
postype = p1
bindtime = 1
removetime = 26
supermove = 26
pausemovetime = 26
removeongethit = 1
sprpriority = 3
ownpal = 1

[state 9004, End]
type = ChangeState
trigger1 = Pos Y >= 1
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 52
ctrl






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

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

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

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 35
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

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

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

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
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
envshake.time = 7
envshake.freq = 60
envshake.ampl = -4

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=2
movetype=I

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

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

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
sparkxy = 0,-70
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

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
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
air.velocity = -2,-3
envshake.time = 6
envshake.freq = 60
envshake.ampl = -4

[State 610, 2]
type = Explod
trigger1 = animelemtime(5) = 0
ID = 613
anim = 613
postype = p1
pos = 0,0
persistent = 0
bindtime = -1
velocity = 0, 0
accel = 0, 0
sprpriority = 1
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[State Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I

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

[State 620, construct]
type = Helper
;triggerall = Power >= 1000
trigger1 = AnimElemTime(2) = 3
helpertype = normal
name = "construct"
ID = 621
pos = 0,0
postype = p1
stateno = 621

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 631,0

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 86
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
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
value = 948
ctrl = 1
;--------
; Air Hard Punch - construct helper state
[StateDef 621]
anim = 621
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 621, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 621, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 621, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 621, hitdef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 86
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -7
air.velocity = -8,-3
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 621, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 620



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

[State 200, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 200, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 200, Var(10)
channel = 0

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
sparkxy = 0,-70
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

[State 210, VarSet]
type = VarSet
trigger1 = !Time
v = 10
value = ((Random * 2) / 1000)

[State 210, vox]
type = PlaySnd
trigger1 = var(2) != 2
trigger1 = AnimElem = 1
value = 210, Var(10)
channel = 0

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 8,10
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 10,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

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

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 92
guardflag = HA
pausetime = 16,16
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10
guard.velocity = -7
air.velocity = -10,-2
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I

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

;-------------------------------------------------------------------------------

[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 800
ctrl = 0
poweradd= 60
sprpriority = 2


; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 900, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT           ;Attributes: Standing, Normal Throw
;hitflag = M-           ;Affect only ground people who are not being hit
;priority = 1, Miss     ;Throw has low priority, must be miss or dodge type.
sparkno = -1           ;No spark
hitsound = s3,1
sprpriority = -2       ;Draw in front of p2
;p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding back
p2facing = 1          ;Force p2 to face KFM
p1stateno = 805       ;On success, KFM changes to state 810
p2stateno = 810       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down




[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1



; slams P2
[Statedef 805]
type    = S
movetype= A
physics = N
anim = 810
ctrl = 0
poweradd = 1000
sprpriority = 10

[State -3, 1]
type = PlaySnd
trigger1 = time = 0
value = 195, 3

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S9600,1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80, 0   ;X Y




[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;P2
[Statedef 810]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = -1000

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time =0
time = 75
add = -104,-104,-104
mul = 256,256,256
sinadd = 56,56,56,10
invertall = 1
color = 0
;ignorehitpause = 0
;persistent = 1





[State 821, 4] ;Hit ground
type = SelfState
trigger1 = time = 75
value = 5100 ;Hit ground



;-------------------------------------------------------------------------------

[Statedef 900]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 850
ctrl = 0
poweradd= 60
sprpriority = 2


; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 900, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT           ;Attributes: Standing, Normal Throw
;hitflag = M-           ;Affect only ground people who are not being hit
;priority = 1, Miss     ;Throw has low priority, must be miss or dodge type.
sparkno = -1           ;No spark
hitsound = s3,1
sprpriority = -2       ;Draw in front of p2
;p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding back
p2facing = 1          ;Force p2 to face KFM
p1stateno = 905       ;On success, KFM changes to state 810
p2stateno = 9910       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down




[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1



; slams P2
[Statedef 905]
type    = S
movetype= A
physics = N
anim = 905
ctrl = 0
poweradd = 60
sprpriority = 10

[State -3, 1]
type = PlaySnd
trigger1 = time = 0
value = 210, 0



[State -2, FX]
type = Afterimage
trigger1 = time  = 1
time=60
trans = add
PalContrast =  200, 200, 200
PalBright = 0,0,0
length  = 15
TimeGap = 2
FrameGap = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 90, 0   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 90, -55   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50, -55   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10, -65   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -5, -60   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = -15, -140   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -50, -160   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = time > 35
pos = -50, -150   ;X Y



[State 810, snd]
type = VelSet
trigger1 = AnimElem = 7
Y = var(10)
X = var(11)

[State 810, snd]
type = VelAdd
trigger1 = time >= 30
Y = .9


[State 105, 3]
type = ChangeState
trigger1 = time > 35
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -10
value = 906



; landing
[Statedef 906]
type    = S
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
anim = 906
sprpriority = 2

[State 906, PosSet]
type = PosSet
trigger1 = !time
y = 0


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30, -125   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40, -60   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20, 0   ;X Y


[State 810, Throw 11] ; passa P2 de 820 para 821 ar
type = TargetState
trigger1 = AnimElem = 1
value = 911

[State 810, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 72, 1


[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0


[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1


[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -80



[State 4130, 7]
type = EnvShake
trigger1 = AnimElem = 3
time = 10
ampl = 8
freq = 100

[State 610, 4]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State 210, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 8400
pos = -50,0
postype = p2
sprpriority = 10
ownpal = 1

[State 610, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s72, 1



[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 3
value = 915



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Jump Start
[Statedef 909]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 3]
type = VarSet
trigger1 = time = 0
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1





;P2
[Statedef 9910]
type    = A
movetype= H
physics = N
velset = 0,0

[State -2, FX]
type = Afterimage
trigger1 = time  = 1
trans = add
PalContrast =  100, 100, 250
PalBright = -80,-80,-50
time    =  55
length  = 15
TimeGap = 2
FrameGap = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 9910


[State 9910, snd]
type = VelAdd
trigger1 = time >= 30
Y = .9


;P2
[Statedef 911]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 911


[State 911, snd]
type = VelSet
trigger1 = time = 0
Y = 0
X = 0



;P2
[Statedef 915]
type    = A
movetype= H
physics = N
velset = -1,-12
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

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
