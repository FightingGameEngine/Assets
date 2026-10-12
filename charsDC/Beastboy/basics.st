; States file for Beastboy -- Basics

;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 5302
velset = 0,0

[State 182, 0]
type = PlaySnd
trigger1 = animelem = 1
value = 604, 10 + (random%2)

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,150]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 5301
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 604,11


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


[State 180, PosSet]
type = PosSet
trigger1 = ScreenPos X < 30
trigger2 = ScreenPos X > 290
x = Pos X + (50 * Facing)

[State 180, Winpose decider]
type = ChangeState
trigger1 = (Time = 1) && (NumHelper(10) = 0)
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose 1 - elephant stomps out
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 0]
type = PlaySnd
trigger1 = animelem=1
value =311, 0

[State 182, 0]
type = PlaySnd
trigger1 = animelem = 13
value = 604, 4 + (random%5)

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=5
value = 605,0
channel = 1

[State 181, 2]
type = PlaySnd
trigger1 = animelem=9
value =7, 0

[State 0, Explod]
type = Explod
trigger1 = animelem=9
anim =  918
pos = 100,0
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


[State 181, 0]
type = PlaySnd
trigger1 = animelem = 17
value = 299, 0


[State 181, 1]
type = AssertSpecial     
trigger1 = Time = [0,260]
flag = roundnotover

;-----------------------
; Winpose 2 - hi lil' doggy
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = animelem=14
anim =  10004
ID =10004
pos = 95,-110
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 182, 0]
type = PlaySnd
trigger1 = animelem = 2
value = 605, 0

[State 182, 0]
type = PlaySnd
trigger1 = animelem = 1
value = 604, 9

[State 182, 0]
type = PlaySnd
trigger1 = animelem = 18
trigger2=animelem=27
value = 0, 5

[State 182, 1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = roundnotover

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
; Intro 1 - Tiger
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = time = 27
x = 0
y = 0
;ignorehitpause = 
;persistent = 


[State 0, PosAdd]
type = PosAdd
trigger1 = time=0
x = -27
y = 0

[State 191, playsnd1]
type = PlaySnd
trigger1 = Time = 4
value = 50,0

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=8
value = 605,0
channel = 1

[State 191, playsnd2]
type = PlaySnd
trigger1 = Time = 61
value = 604,0 + (random%4)


[state 191, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,70]
flag = Intro

[State 190, vs Superman]
type = ChangeState
trigger1 = Time = 70
value = 0


;-----------------------
; Intro 2 - nice kitty
[Statedef 192]
type = S
ctrl = 0
anim = 192

[State 192, playsnd1]
type = PlaySnd
trigger1 = Time = 4
value = 0,6

[state 192, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=15
value = 604,0 + (random%4)

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=14
value = 605,0
channel = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = Intro

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 =  animelem=16
value = 1

;-----------------------
; Intro 2 - Dobbermann
[Statedef 193]
type = S
ctrl = 0
anim = 185


[state 192, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,128]
flag = Intro

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 0 


[State 0, PosAdd]
type = Posadd
trigger1 = time=0
x = -71
y = 0




[State 0, Veladd]
type = Veladd
trigger1 =time=1
x = 1
y = 0

[State 0, VelMul]
type = Velset
trigger1 = animelem = 13
x = 0
y = 0

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=17
value = 605,0
channel = 1

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=1
value = 604,0 + (random%4)

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 195, 0]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 24
value = 605,0

[State 195, 0]
type = PlaySnd
trigger1 = animelem = 4
value = 181,0


[State 196, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 230]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 35

[State 210, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 210, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
damage = 30,0
guardflag = MA
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = 0,-80
animtype = Light
ground.type = High
ground.slidetime = 4
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -6,-3






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

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 3
attr = C, NA
damage = 15,1
guardflag = MAFD
pausetime = 6,6
hitsound = 5,0
guardsound = 6,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 220, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 310
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = time = 3
value = 0,1

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1=animelem=4
attr = S, NA
damage = 15,0
guardflag = MA
pausetime = 5,5
hitsound = 5,2
guardsound = 6,0
sparkno = S9990
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3


[State 230, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;doublekick launcher

[StateDef 235]
anim = 260
ctrl = 0
type = S
movetype = A
physics = S
velset = 1,0
poweradd = 20

[State 231, swoosh]
type = PlaySnd
trigger1 = time= 2
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 231, HitDef]
type = HitDef
trigger1 = Time=1
attr = S, NA
damage = 35 * ifelse(Var(20)=1, Var(22), 1)
guardflag = MA
pausetime = 11,11
hitsound = 5,2
guardsound = 6,0
sparkno = S9992
sparkxy = -20,-64
animtype = Up
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 7,-12
guard.velocity = -6
air.velocity = 35,-25
fall = 1
fall.recover = 0

[State 235, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = IfElse(Var(20)=3, 11240, 240)
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 35

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 30, 1
guardflag = MA
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 250]
anim =IfElse(Var(20)=3, 11250, 250)
ctrl = 0
type = S
movetype = A
physics = S
velset = 1,0
poweradd = 50

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,4

[State 310, woah]
type = PlaySnd
trigger1 = animelem = 4 
trigger1 = random<=400
value = 1,2

[State 250, Hit 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45 , 1
guardflag = MA
pausetime = 11,11
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = 0,-65
animtype = Heavy
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
ground.velocity = -5
guard.velocity = -5
air.velocity = -3,2
envshake.time = 7
envshake.ampl = 4
fall = 1


[State 250, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 260]
anim = IfElse(Var(20)=3, 11260, 261)
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 5
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
y = 0
;ignorehitpause = 
;persistent = 



[State 260, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = animelem = 4 
trigger1 = random<=400
value = 1,2

[State 260, HitDef 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40 , 1
guardflag = MA
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = 0,-90
animtype = Heavy
ground.type = High
ground.slidetime = 1
ground.hittime  = 20
ground.velocity = -1,-11
guard.velocity = -1
envshake.time = 7
envshake.ampl = 4
air.velocity = -3,-8

[State 260, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Spaz (close-range Stand Medium Punch)
[StateDef 310]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 5,0
poweradd = 50

[State 310, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2=animelem=5
trigger3=animelem=7
value = 0,2

[State 310, grunt]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = random<=400
trigger2=animelem=5
value = 1,2

[State 310, Hit 1]
type = HitDef
trigger1 = animelem=1
trigger2=animelem=5
attr = S, NA
damage = 20 * ifelse(Var(20)=1, Var(22), 1)
guardflag = MA
pausetime = 9,9
hitsound = 5,0
guardsound = 6,0
sparkno = S9991
sparkxy = -35,-40
animtype = Medium
ground.type = High
ground.slidetime = 9
ground.hittime  = 25
ground.velocity = -3
guard.velocity = -10
air.velocity = -3,-6

[State 310, Hit 1]
type = HitDef
trigger1 = animelem=7
attr = S, NA
damage = 40 * ifelse(Var(20)=1, Var(22), 1)
guardflag = MA
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = S9992
sparkxy = -35,-40
animtype = Medium
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -10
air.velocity = -3,-6
fall = 1

[State 310, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Headbutt (close-range Stand Medium Punch)
[StateDef 311]
anim = 231
ctrl = 0
type = S
movetype = A
physics = S
velset = 5,0
poweradd = 50


[State 310, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2=animelem=4
value = 0,2

[State 310, grunt]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = random<=400
value = 1,2

[State 310, Hit 1]
type = HitDef
trigger1 = animelem=3
attr = S, NA
damage = 50,2
guardflag = MA
pausetime = 9,9
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = -35,-40
animtype = Medium
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -10
air.velocity = -3,-6
fall=1

[State 310, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Slide (common crouch hard kck)
[StateDef 400]
anim = IfElse(Var(20)=3, 460, 320)
ctrl = 0
type = C
movetype = A
physics = C
velset = 5,0
poweradd = 50

[State 0, VelAdd]
type = VelAdd
trigger1 = time=0
x = 5
y = 0

[State 400, swoosh]
type = PlaySnd
trigger1 = time=0
value = 7,0

[State 310, woah]
type = PlaySnd
trigger1 = animelem = 2 
trigger1 = random<=400
value = 1,2

[State 400, Hit 1]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 45, 1
guardflag = MA
pausetime = 9,9
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = -35,-40
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 410]
anim = IfElse(Var(20)=3, 11410, 410)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 410, HitDef]
type = HitDef
trigger1 = animelem=2
attr = C, NA
damage = 15, 1
guardflag = L
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno = S9990
sparkxy = 0,-60
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
anim = IfElse(Var(20)=3, 11420, 440)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0


[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15, 1
guardflag = L
pausetime = 8,8
hitsound = 5,0
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

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 430]
anim = IfElse(Var(20)=3, 11430, 430)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 35

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 30 * ifelse(Var(20)=1, Var(22), 1)
guardflag = L
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = 0,-70
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
anim = 411
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 35

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 6
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 16
trigger1 = random<=400
value = 1,0

[State 440, HitDef]
type = HitDef
trigger1 = animelem=2
trigger2=animelem=5
attr = C, NA
damage = 30 * ifelse(Var(20)=1, Var(22), 1)
guardflag = L
pausetime = 15,13
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching hard punch (launcher)
[StateDef 455]
anim = 455
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 40


[State 455, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = animelem = 4 
trigger1 = random<=400
value = 1,2

[State 320, Hit 1]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 45 , 1
guardflag = MA
pausetime = 11,11
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = -20,-64
animtype = Up
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-12
guard.velocity = -6
air.velocity = 0,-12
fall = 1
fall.recover = 0

[State 455, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick  (sweep)
[StateDef 460]
anim =460 ;IfElse(Var(20)=3, 11460, 460)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 50

[State 460, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,2

[State 460, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
hitflag = M   ;D -- not D anymore... seems too cheap, especially with the super-speed powerup =P
damage = 45, 1
guardflag = L
pausetime = 11,11
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
;ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1

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
poweradd = 25

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,0
guardsound = 6,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
air.hittime  = 12
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3


[State 610, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 41

[State 610, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 620]
anim = IfElse(Var(20)=3, 11620, 620)
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 620, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 15, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,0
guardsound = 6,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
air.hittime  = 12

[State 620, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 620, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 630]
anim = IfElse(Var(20)=3, 11630, 630)
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 35

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = -10,-50
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
air.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
envshake.time = 9
envshake.ampl = 4
air.hittime  = 12

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = IfElse(Var(20)=3, 11640, 640)
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 35

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,0

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 30, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,2
guardsound = 6,0
sparkno = S9991
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
envshake.time = 9
envshake.ampl = 5
air.hittime  = 12

[State 640, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 640, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 650]
anim = IfElse(Var(20)=3, 11650, 650)
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 50

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 45, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,8
air.fall = 1
envshake.time = 14
envshake.ampl = 3
envshake.freq = 60
air.hittime  = 12

[State 650, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 650, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 660]
anim = IfElse(Var(20)=3, 11660, 660)
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 50

[State 660, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,3

[State 310, woah]
type = PlaySnd
trigger1 = time = 1
trigger1 = random<=400
value = 1,2

[State 660, HitDef]
type = HitDef
trigger1 = time =0
attr = A, NA
damage = 45, 1
guardflag = HA
pausetime = 12,12
hitsound = 5,1
guardsound = 6,0
sparkno = S9992
sparkxy = -20,-40
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,6
air.fall = 1
envshake.time = 14
envshake.ampl = 3
envshake.freq = 60
air.hittime  = 12

[State 660, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 660, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 660, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50


;-----------------------------------------
; Standing Push Block
[Statedef 750]
type = S
movetype = I
physics = S
anim = 750
velset = 0,0
ctrl = 1

[State 750, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Advancing Guard"
ID = 751
stateno = 751
pos = 5,0
postype = p1
keyctrl = 0
size.ground.back = 35
size.ground.front = 35

[State 750, finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 751]
type = S
movetype = I
physics = N
anim = 751
velset = 0,0
ctrl = 1

[State 751, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 751, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3,0

[State 751, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 751, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = 20
y = 0

[State 751, DestroySelf]
type = DestroySelf
trigger1 = Time = 10


;-----------------------------------------
; Crouching Push Block
[Statedef 752]
type = C
movetype = I
physics = C
anim = 752
velset = 0,0
ctrl = 1

[State 752, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Advancing Guard"
ID = 753
stateno = 753
pos = 5,0
postype = p1
keyctrl = 0
size.ground.back = 35
size.ground.front = 35

[State 752, finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 753]
type = C
movetype = I
physics = N
anim = 753
velset = 0,0
ctrl = 1

[State 753, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 753, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3,0

[State 753, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 753, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = 20
y = 0

[State 753, DestroySelf]
type = DestroySelf
trigger1 = Time = 10


;-----------------------------------------
; Air Push Block
[Statedef 754]
type = A
movetype = I
physics = A
anim = 754
velset = 0,0
ctrl = 1

[State 754, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Advancing Guard"
ID = 755
stateno = 755
pos = 5,0
postype = p1
keyctrl = 0
size.ground.back = 35
size.ground.front = 35

[State 754, finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 755]
type = A
movetype = I
physics = N
anim = 755
velset = 0,0
ctrl = 1

[State 755, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 755, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3,0

[State 755, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 755, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = 20
y = 0

[State 755, DestroySelf]
type = DestroySelf
trigger1 = Time = 10


;---------------------------------------------------------------------------
; combo commentaries

; Good
[StateDef 790]
anim = 790
ctrl = 0
movetype = I
physics = N

[State 790, sound]
type = PlaySnd
trigger1 = Time = 3
value = 12,10

[State 790, cleanup]
type = DestroySelf
trigger1 = IsHelper(3) && (Time > 10)



;---------------------------------------------------------------------------
; Recovery Roll
; Adapted from code by FlowaGirl (flowergirl@cutey.com / http://blargh.i-xcell.com)
[Statedef 900]
type = S
movetype = I
physics = N
anim = 900
velset = 0,0
ctrl = 0
poweradd = 30
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 755, PlaySnd]
type = PlaySnd
trigger1=time=1
value = 0,0

[State 755, PlaySnd]
type = PlaySnd
trigger1=time=1
trigger1=random<=400
value = 1,0
channel = 0

[State 900: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 900: PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 900: PosSet]
type = PosSet
trigger1 = (!Time)
y = 0

[State 900: VelSet]
type = VelSet
trigger1 = (!Time)
x = 6.5 ;4.5
y = 0

[State 900: ChangeState]
type = ChangeState
trigger1 = ((Time > 25) && (Command != "holdfwd")) || ((Time > 35) && (Command = "holdfwd"))
value = 52


[Statedef 901]
type = C
movetype = I
physics = N
anim = 900
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 755, PlaySnd]
type = PlaySnd
trigger1=time=1
value = 0,0

[State 755, PlaySnd]
type = PlaySnd
trigger1=time=1
trigger1=random<=400
value = 1,0
channel = 0

[State 900: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 900: PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 900: PosSet]
type = PosSet
trigger1 = (!Time)
y = 60

[State 900: VelSet]
type = VelSet
trigger1 = (!Time)
x = 6.5 ;4.5
y = 0

[State 900: PosSet]
type = PosSet
trigger1 = ((Time > 25) && (Command != "holdfwd")) || ((Time > 35) && (Command = "holdfwd"))
y = 0

[State 900: ChangeState]
type = ChangeState
trigger1 = ((Time > 25) && (Command != "holdfwd")) || ((Time > 35) && (Command = "holdfwd"))
value = 5120


;---------------------------------------------------------------------------
; Falling from air attack / superjump

; neutral
[StateDef 950]
anim = 950
ctrl = 1
type = A
MoveType = I
physics = A

[State 950, null]
type = Null
trigger1 = Time = 0

; forward
[StateDef 951]
anim = 951
ctrl = 1
type = A
MoveType = I
physics = A

[State 951, null]
type = Null
trigger1 = Time = 0

; back
[StateDef 952]
anim = 952
ctrl = 1
type = A
MoveType = I
physics = A

[State 952, null]
type = Null
trigger1 = Time = 0

