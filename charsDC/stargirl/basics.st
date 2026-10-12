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
value = 6,0 + (random%2)

[State 170,1]
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

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

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

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 16,0 + (random%6)
volume = 255
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = 0,2
channel = 1



[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 17,0 + (random%4)
volume = 255


[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;----------------
[Statedef 183, Classic Dazzler]
type = S
movetype = I
physics = S
ctrl = 0
anim = 183
velset = 0,0

[State 3000, som]
type = PlaySnd
trigger1 = animelem = 1
value = 171,1

[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = 1
x = -11
y = -3


[State 3000, som]
type = PlaySnd
trigger1 = time = 6
value = 8,0

[State 3000, som]
type = PlaySnd
trigger1 = time = 120
value = 10,10


[State 3000, som]
type = PlaySnd
trigger1 = time = 100
value = 16,0 + (random%6)
volume = 255

[State 3000, som]
type = PlaySnd
trigger1 = time = 78
value = 20,2

[State 1001, EnvColor]
type = EnvColor
trigger1 = time = 80
value = 255,255,255
time = 2
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 184
ID = 184
pos = -220,160
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
velocity = 5,0
removetime = 300
pausemovetime = 0
scale = 1,1
sprpriority = 0
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 112
ID = 112
pos = -240,160
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
velocity = 5,0
removetime = 300
pausemovetime = 0
scale = 1,1
sprpriority = 1
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 112
ID = 112
pos = -215,108
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
velocity = 5,0
removetime = 300
pausemovetime = 0
scale = 1,1
sprpriority = 1
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver


[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0


[State 190, ChangeState]
type = ChangeState
triggerall = time = 0
trigger1 = Enemy, Name != "Nightcrawler" ;&& Enemy,Authorname != "HyperCombinationFinish"
trigger2 = P2Name != "Nightcrawler" && P4Name != "Nightcrawler"
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have
ctrl = 0

[State 190, ChangeState]
type = ChangeState
triggerall = time = 0
trigger1 = Enemy, Name = "Nightcrawler" ;&& Enemy,Authorname = "HyperCombinationFinish"
trigger2 = P2Name != "Nightcrawler" || P4Name != "Nightcrawler"
value = 196
ctrl = 0

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 14,0 + (random%6)
volume = 255
channel = 2

[State 191, 1]
type = PlaySnd
trigger1 = Time = 60
value = S20,0
volume = 255

[State 191, 1]
type = PlaySnd
trigger1 = Time = 151
value = S20,1
volume = 255

[State 191, Explod]
type = Explod
trigger1 = Time = 60
anim = 195
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 1
ontop = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 150
time = 6
add = 255,255,255

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

;-----------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 14,0 + (random%6)
volume = 255
channel = 2

[State 191, 1]
type = PlaySnd
trigger1 = Time = 60
value = S20,0
volume = 255

[State 191, 1]
type = PlaySnd
trigger1 = Time = 151
value = S20,1
volume = 255

[State 191, Explod]
type = Explod
trigger1 = Time = 60
anim = 195
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 1
ontop = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 150
time = 6
add = 255,255,255

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

;-----------------------
; Intro #3
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 14,0 + (random%6)
volume = 255
channel = 2

[State 191, 1]
type = PlaySnd
trigger1 = Time = 60
value = S20,0
volume = 255

[State 191, 1]
type = PlaySnd
trigger1 = Time = 151
value = S20,1
volume = 255

[State 191, Explod]
type = Explod
trigger1 = Time = 60
anim = 195
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 1
ontop = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 150
time = 6
add = 255,255,255

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

;-----------------------
; Intro #4
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 14,0 + (random%6)
volume = 255
channel = 2

[State 191, 1]
type = PlaySnd
trigger1 = Time = 60
value = S20,0
volume = 255

[State 191, 1]
type = PlaySnd
trigger1 = Time = 151
value = S20,1
volume = 255

[State 191, Explod]
type = Explod
trigger1 = Time = 60
anim = 195
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 1
ontop = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 150
time = 6
add = 255,255,255

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------

; Intro vs Nightcrawler
[Statedef 196]
type = S
ctrl = 0
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 191 + (random%4)
;elem = 1
;ignorehitpause = 
;persistent = 


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = Time = 1
value = 14,6 
volume = 255
channel = 2

[State 191, 1]
type = PlaySnd
trigger1 = Time = 60
value = S20,0
volume = 255

[State 191, 1]
type = PlaySnd
trigger1 = Time = 151
value = S20,1
volume = 255

[State 191, Explod]
type = Explod
trigger1 = Time = 60
anim = 195
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 1
ontop = 0

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 150
time = 6
add = 255,255,255

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0


[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 15,0
guardflag = MA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -20,-80
animtype = Light
ground.type = High
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -1
guard.velocity = -1
air.velocity = -2,-3


;standing light punch combo links


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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1


[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 30,0
guardflag = MA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -15,-75
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70

;standing medium punch combo link




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

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 4
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
hitflag = MA
damage = 45,0
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -50,-50
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.velocity = -7,1
guard.velocity = -3
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90

[State 0, Explod]
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0

[State 230, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 15,0
guardflag = MAFD
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-75
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1
guard.velocity = -0.5
air.velocity = -2,-3


[State 230, back to stance]
type = ChangeState
trigger1 = animtime = 0
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
damage = 32,0
guardflag = MA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70



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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 40,0
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15,0
guardflag = L
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno= S9990
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 30,0
guardflag = L
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-20
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -10
air.velocity = -3,-6
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70

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
value = 0,2

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 45,0
guardflag = MA
pausetime = 15,15
animtype = UP
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 12
ground.hittime  = 110
air.hittime = 110
ground.velocity = -1,-13
guard.velocity = -5
air.velocity = -2,-12
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall =1

[State 420, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 700; the superjump state
ctrl = 1 ; these menas that you re-gain control


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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 18,0
guardflag = L
pausetime = 9,9
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30,0
guardflag = L
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -4,-2
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 112
pos = -70,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 9999
pausemovetime =9999
scale = 1,1
ontop = 1
sprpriority = 1
removeongethit = 1


[State 450, Vel]
type = VelAdd
trigger1 = AnimElem = 3
X = 12

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 47,0
guardflag = L
pausetime = 15,15
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
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 600
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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15,0
guardflag = HA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-7

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30,0
guardflag = HA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45,0
guardflag = HA
pausetime = 15,15
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
air.hittime  = 20
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
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 18,0
guardflag = HA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-7

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30,0
guardflag = HA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-7
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70

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

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=400
value = 19, 3

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50,0
guardflag = HA
pausetime = 15,15
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 15
air.type = low
ground.velocity = -8
ground.hittime  = 15
air.velocity = -18,5
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
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;throw
[Statedef 800]
type    = S
movetype= A
physics = N
anim = 800
velset=0,0
sprpriority = 0
ctrl = 0
juggle = 5

[State 820, 1]
type = HitDef
trigger1 = Time = 0
trigger1 = Numtarget = 0
trigger1 = enemynear,Hitover
attr = S, NT
hitflag = M-
numhits=0
getpower = 0
priority = 3, Miss
sparkno = -1
p1facing = 1;ifelse(command="holdback",-1,1)
p2facing = 1;ifelse(command="holdback",-1,1)
p1stateno = 801
p2stateno = 810 
fall = 1
fall.recover = 0

[State 801, PlaySnd]
type=PlaySnd
trigger1 = animelem=3
value = S18,1
volume = 255
channel=1

[State 820, 2]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl=1

;---------------------------------------------------------------------------
[Statedef 801]
type=S
movetype=A
physics=N
velset = 0,0
anim=801
ctrl=0
sprpriority = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 3
value = 1


[state 801,width]
type=width
trigger1=time=0
edge=45,0

[state 801,Avaaz]
type=playsnd
trigger1=prevstateno=800
trigger1=time=0
value=S19,4
channel = 1

[state 820,throw]
type=targetstate
trigger1=Time=0
value=810

[state 801,targetbind]
type=targetbind
trigger1=animelemtime(1)>0&&animelemtime(2)<0
pos=0,0

[state 801,targetbind]
type=targetbind
trigger1=animelemtime(2)>0&&animelemtime(3)<0
pos=-5,0

[state 801,targetbind]
type=targetbind
trigger1=animelem=2
pos=-10,0
postype=P1
time=-1


[state 801,targetbind]
type=targetbind
trigger1=animelem=3
pos=27,-50
postype=P1
time=-1

[state 801,targetbind]
type=targetbind
trigger1=animelem=4
pos=64,0
postype=P1
time=1

[state 8030,Avaaz]
type=playsnd
trigger1=animelem=1
value=S3,1

[state 8030,Avaaz]
type=playsnd
trigger1=animelem=3
value=S0,2
volume=255
channel=0

[state 801,Naash]
type=targetlifeadd
trigger1=animelem=5
value=-110
kill=1

[State 0, EnvShake]
type = EnvShake
trigger1=animelem=5
time = 30
ampl = 10
[state 801,Naash]
type=targetpoweradd
trigger1=animelem=5
value=95

[state 820,throw]
type=targetstate
trigger1=animelem=5
value=811

[state 820,Shakti]
type=poweradd
trigger1=animelem=5
value=95-(95*(var(30)||var(50)))

[state 820,chaalo]
type=posadd
trigger1=animelem=10
x=60

[state 820,Siraa]
type=changestate
trigger1=animtime=0
value=0
ctrl=1
;---------------------------------------------------------------------------
[Statedef 810]
type=S
movetype=H
physics=N
sprpriority = 1

[State 830]
type=ChangeAnim2
trigger1=time=0
value=810

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 3
value = -1
;ignorehitpause = 
;persistent = 


[state 811,backtoownstate]
type=selfstate
trigger1=time>500
value=5100
;---------------------------------------------------------------------------
[Statedef 811]
type=A
movetype=H
physics=N
sprpriority=-1

[state 811,changeanim2]
type=changeanim;2
trigger1=time=0
value=ifelse(selfanimexist(5070),5070,5030)

[state 811,Shiighrataa]
type=velset
trigger1=time=0
x=-9
y=1

[state 811,Shiighrataa]
type=veladd
trigger1=time>1
y=.5

[State 811,Hilaav]
type=envshake
trigger1=pos y>=0&&vel y>0
time=35
ampl=10
[State 811,backtoownstate]
type=selfstate
trigger1=pos y>=0&&vel y>0
value=5100

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

[Statedef 40001]
anim = 9999

[State 40001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Background]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
trigger1 = root, stateno !=[3000,4999]
value = stateno+1

[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 1500,1
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--AvX Portrait-----
[Statedef 40003]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--AvX Portrait-----
[Statedef 40005]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15608
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15608
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

;JEM HELPERS HYP
[Statedef 40006]
anim = 9999

[State 40006, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40006, Background]
type = Explod
trigger1 = !time
trigger2 = numexplod(10005) = 0
anim = 10005
ID = 10005
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -9998
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
trigger1 = root, stateno !=[3000,4999]
value = stateno+1

[Statedef 40007]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 10005

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 1500,1
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, DestroySelf]
type = DestroySelf
trigger1 = time = 1



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
