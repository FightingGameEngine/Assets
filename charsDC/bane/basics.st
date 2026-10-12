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
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 240, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s60,11

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0




[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,250]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Explod]
type = Explod
Trigger1 = AnimElem=2
anim = 1882
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
sprpriority = 2
removeongethit = 1

[State 182, Explod]
type = Explod
Trigger1 = AnimElem=5
anim = 1883
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
sprpriority = 2
removeongethit = 1

[State 182,0]
type = PlaySnd
Trigger1 = AnimElem=5
value = 60,8


[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 100,4

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,400

[State 190, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "Batman"
trigger2 = p2name = "JLUBATMAN"
trigger3 = p2name = "BATMANTAS"
trigger4 = p2name = "BATMAN RETURNS"
trigger5 = p2name = "batman_mvdc"
trigger6 = p2name = "batman1"
trigger7 = p2name = "batman2"
trigger8 = p2name = "IMTbatman"
value = 1997
ctrl = 0


[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 194

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 193

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [301,400]
value = 191


;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,275]
flag = Intro


[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 72,2
persistent = 0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 32999
ID = 6010
pos = 10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = .9,.9
supermove
pausemove
scale = 2,1
sprpriority = 0
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 32922
ID = 6010
pos = 10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = .9,.9
supermove
pausemove
scale = 2,1
sprpriority = 0
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 191, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
shadow = -1
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191]
type = EnvShake
Trigger1 = AnimElem=7
time = 30
freq = 100
ampl = -10
phase = 10

[State 191]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2000,8
channel = 7

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305


[State 192, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0
;-----------------------------------------------------------------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 240, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s60,10
persistent = 0
channel = 3


[State 192]
type = PlaySnd
trigger1 = AnimElem = 1
value = 72,4
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 8
value = 72,4
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 13
value = 72,3
persistent = 0
channel = 7

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,185]
flag = Intro


[State 192, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;intro 3-----------------------------------------------------------------------

[Statedef 193]
type = S
ctrl = 0
anim = 492
sprpriority = 1
velset = 0,0

[State 193, grunt]
type = PlaySnd
trigger1 = Time = 175
value = 8,0
channel = 5


[State 193, grunt]
type = PlaySnd
trigger1 = Time = 160
value = 8,0
channel = 5


[State 193, grunt]
type = PlaySnd
trigger1 = Time = 225
value = 100,4
channel = 7


[State 193, Explod]
type = Explod
trigger1 = Time = 0
anim = 491
ID = 491
pos = 30,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
shadow = -1
removetime = 225
scale = 1,1
sprpriority = -1

[State 193, Explod]
type = Explod
trigger1 = Time = 0
anim = 4911
shadow = -1
ID = 4911
pos = 45,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 225
scale = 1,1
sprpriority = -1


[State 193, Explod]
type = Explod
trigger1 = Time = 0
anim = 4991
shadow = -1
ID = 4991
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 265
scale = 1,1
sprpriority = 3
ontop = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,225]
flag = Intro


[State 193, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0


[Statedef 194]
type = S
ctrl = 0
anim = 194
sprpriority = 1
velset = 0,0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 1
value = 61,0
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 19
value = 61,2
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 29
value = 61,1
persistent = 0
channel = 7


[State 194, Explod]
type = Explod
trigger1 = Time = 0
anim = 198
ID = 198
shadow = -1
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 150
scale = 1,1
sprpriority = -1


[State 194, Explod]
type = Explod
trigger1 = AnimElem = 29
anim = 499
ID = 499
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 40
scale = 1,1
sprpriority = -1


[State 142, 2]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = Intro


[State 194, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0


; Batman Intro
[Statedef 1997]
type = S
ctrl = 0
anim = 1997
velset = 0,0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 3
value = 72,1
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 7
value = 72,1
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 11
value = 72,1
persistent = 0
channel = 7

[State 192]
type = PlaySnd
trigger1 = AnimElem = 15
value = 72,1
persistent = 0
channel = 7



[State 1997, Explod]
type = Explod
trigger1 = Time = 0
anim = 1998
shadow = -1
ID = 1998
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 260
scale = 1,1
sprpriority = 5

[State 192]
type = PlaySnd
trigger1 = AnimElem = 19
value = 60,4
persistent = 0
channel = 7

[State 1997, 2]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = Intro


[State 1997, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195]
type = PlaySnd
trigger1 = AnimElem = 1
value = 72,5

[State 195, 1]
type = ChangeState
trigger1 = Time = 110
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,7
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -5,-74
guard.sparkno = s9993
animtype = Light
ground.slidetime = 10
ground.hittime = 10
air.hittime = 20
guard.hittime = 11
guard.ctrltime = 11
ground.velocity = -3
air.velocity = -3,-3
guard.velocity = -6.6
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 40
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,11
guardflag = MA
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
guard.sparkno = s9993
animtype = Medium
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
guard.hittime = 15
guard.ctrltime =15
ground.velocity = -5
air.velocity = -3,-7
yaccel = 0.55
guard.velocity = -12
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 60
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,15
guardflag = MA
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
guard.sparkno = s9993
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 20
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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,7
guardflag = MAFD
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
guard.sparkno = s9993
animtype = Light
ground.slidetime = 10
ground.hittime = 10
air.hittime = 20
guard.hittime = 11
guard.ctrltime = 11
ground.velocity = -3
air.velocity = -3,-4
yaccel = 0.55
guard.velocity = -6.6
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,11
guardflag = MA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
guard.sparkno = s9993
animtype = Medium
ground.slidetime = 20
ground.hittime = 20
air.hittime = 30
guard.hittime = 17
guard.ctrltime =17
ground.velocity = -3
air.velocity = -3,-4
yaccel = 0.55
guard.velocity = -14
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 60
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,15
guardflag = MA
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
guard.sparkno = s9993
animtype = Heavy
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
guard.hittime = 15
guard.ctrltime =15
ground.velocity = -5
air.velocity = -3,-4
yaccel = 0.55
guard.velocity = -7
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,7
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 7,10
sparkno = s9990
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-40
guard.sparkno = s9993
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
envshake.time = 7
envshake.ampl = 4
air.velocity = -1.5,-3
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2


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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,11
animtype = Medium
guardflag = MA
pausetime = 8,10
sparkno = s9991
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-40
guard.sparkno = s9993
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -6
envshake.time = 7
envshake.ampl = 4
air.velocity = -2.5,-4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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
juggle = 4
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
damage = 50,3
guardflag = L
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
sparkxy = -10,-60
guard.sparkno = s9993
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-14
guard.velocity = -5
air.velocity = -1,-14
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 20
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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,7
hitflag = MAF
guardflag = L
pausetime = 7,10
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
sparkno = s9990
guard.sparkno = s9993
animtype = Light
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7
air.velocity = -2,-3
down.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
down.hittime = 20
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 40
sprpriority = 2


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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,11
hitflag = MAF
guardflag = L
pausetime = 8,10
hitsound = S2,1
guardsound = S3,0
sparkxy = -5,-30
sparkno = s9991
guard.sparkno = s9993
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,-2
air.velocity = -1.2,-3
envshake.time = 7
envshake.ampl = 4
guard.velocity = -5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,15
hitflag = MAF
damage = 50,3
guardflag = L
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -5,-20
guard.sparkno = s9993
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
guardflag = HA
priority = 3
sparkno = s9990
sparkxy = -0,-55
guard.sparkno = s9993
hitsound = S2,0
guardsound = S3,0
ground.type = Low
pausetime = 12,12
ground.slidetime =8
ground.hittime = 9
guard.hittime = 13
air.hittime = 12
guard.ctrltime = 13
ground.velocity = -4
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



;---------------------------------------------------------------------------
; Air Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
guardflag = HA
hitsound = S2,1
guardsound = S3,0
sparkno = s9991
sparkxy = 0,-75
guard.sparkno = s9993
animtype = Med
ground.type = Low
pausetime = 12,12
ground.slidetime = 8
ground.hittime = 12
guard.hittime = 17
air.hittime = 9
ground.velocity = -3
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=60
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
guardflag = HA
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
sparkxy = -10,-55
guard.sparkno = s9993
animtype = Heavy
ground.type = Low
pausetime = 15,15
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 17
air.hittime = 9
ground.velocity = -5
air.velocity = -5,6
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

; Air Hard Punch Knockdown
[StateDef 621]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
juggle = 1
poweradd = 60

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
damage = 50,3
guardflag = HA
pausetime = 9,10
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
sparkxy = -10,-55
guard.sparkno = s9993
animtype = Heavy
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3, 15
air.velocity = -3,15
envshake.time = 7
envshake.ampl = 4
fall = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
guardflag = HA
hitsound = S2,0
guardsound = S3,0
sparkno = s9990
sparkxy = 5,-60
guard.sparkno = s9993
animtype = Light
ground.type = High
pausetime = 12,12
ground.slidetime = 8
ground.hittime = 9
guard.hittime = 13
air.hittime = 12
guard.ctrltime = 13
ground.velocity = -4
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 40
sprpriority = 2

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
guardflag = HA
hitsound = S2,1
guardsound = S3,0
sparkno = s9991
sparkxy = -10,-50
guard.sparkno = s9993
animtype = Hard ;Med
ground.type = Low
pausetime = 12,12
ground.slidetime = 8
ground.hittime = 12
guard.hittime = 17
air.hittime = 9
ground.velocity = -7
air.velocity = -1,-7
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd=60
sprpriority = 2


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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
sparkxy = -10,-72
guard.sparkno = s9993
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -10,3
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

; Air Hard Kick Knockback
[StateDef 651]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
juggle = 1
poweradd = 60

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
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
guardflag = HA
pausetime = 10,10;8
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
sparkxy = -10,-72
guard.sparkno = s9993
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10
air.velocity = -15
envshake.time = 7
envshake.ampl = 4
fall = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 850
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 851
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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


;-----------------------------Suplex Grab---------------------------------------------------------------------------
[Statedef 8080]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 900
sprpriority = 1





[State 8080, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT           ;Attributes: Standing, Normal Throw
;hitflag = M-           ;Affect only ground people who are not being hit
;priority = 1, Miss     ;Throw has low priority, must be miss or dodge type.
sparkno = -1           ;No spark
hitsound = S3,1
sprpriority = -2       ;Draw in front of p2
;p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding back
p2facing = 1          ;Force p2 to face KFM
p1stateno = 33001      ;On success, KFM changes to state 810
p2stateno = 33002       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down

[State 8080, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Throw
[Statedef 33001]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 33001
sprpriority = 2

[State 666, voz]
type = PlaySnd
trigger1 = Time = 2
value = s1000, 7


[State 211, Effect]
type = PlaySnd
trigger1 = AnimElem=1
value = 10, 11
channel = 1


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

[State 810, snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 72, 1



[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 90, 0   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0, -55   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 5, -55   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -12, -60   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -35, -80   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -50, -90   ;X Y

[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = -130, -80   ;X Y


[State ex, TargtBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -150, -50   ;X Y


[State ex, TargtBind]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -100


[State 400, 7]
type = EnvShake
trigger1 = AnimElem = 9
time = 10
ampl = 5
freq = 100

[State 610, 4]
type = HitAdd
trigger1 = AnimElem = 9
value = 1

[State 210, 4]
type = Explod
trigger1 = AnimElem = 9
anim = 9992
pos = 15,-5
postype = p2
sprpriority = 10
ownpal = 1

[State 810, snd]
type = PlaySnd
trigger1 = AnimElem = 9
value = s1, 2

[State 810, snd]
type = PlaySnd
trigger1 = AnimElem = 9
value = s1000, 6


[State ex, TargtBind]
type = TargetState
trigger1 = AnimElem = 9
value = 33003

[State ex, TargtBind]
type = Turn
trigger1 = animTime = 0



[State 811, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------

[Statedef 33002]
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


[State ex, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 33002

[State ex, screen]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 1


;--------------------------------------------------

[Statedef 33003]
type    = A
movetype= H
physics = N
velset = 5,0

[State 33003, Pose]
type = PosSet
trigger1 = TIme = 0
Y = 0

[State 33003, vel]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 33003, Self]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------Wall toss Grab2-----------------------------------------------------
[Statedef 8088]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 990
sprpriority = 2

[State 8088, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
hitflag = MAF
guardflag =
priority = 1
pausetime = 0,10
snap = -40, 0, 0
sparkno = -1
p2facing = 1
p1stateno = 211;next state for p1
p2stateno = 213 ;next state for p2
hitsound = S3,1


[State 210, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;p1 grab animation
[Statedef 211]
type    = S
movetype= A
physics = N
anim = 8811

[State 211, Effect]
type = PlaySnd
trigger1 = AnimElem=7
value = 10, 11
channel = 1

[State 211, 2]
type = TargetBind
Trigger1 = AnimElem = 1
pos = 65,-102
time = 1

[State 211, 3]
type = TargetBind
Trigger1 = AnimElem = 2
pos = 70,-104
time = 1

[State 211, 4]
type = TargetBind
Trigger1 = AnimElem = 3
pos = 42,-113
time = 1

[State 211, 5]
type = TargetBind
Trigger1 = AnimElem = 4
pos = 16,-89
time = 1

[State 211, 6]
type = TargetBind
Trigger1 = AnimElem = 5
pos = 13,-90
time = 1

[State 211, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 5
value = -130

[State 211, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = s2000,1


[State 211, 8]
type = TargetBind
Trigger1 = AnimElem = 6
pos = 73,-103
time = 1

[State 211, 9]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;state for p2 when grab
[Statedef 213]
type    = A
movetype= H
physics = N
anim = 5050
ctrl = 0
velset = 0,0

[State 213, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 213

[State 213, 1]
type = VelAdd
trigger1 = Time = 30
x = -20
y = -1

[State 213, Rotor]
type = ChangeAnim2
trigger1 = time = 35
value = 214


[State 213, 4]
type = changestate
trigger1 = animelem = 6
value = 214

[Statedef 214]
type    = A
movetype= H ;Get hit
physics = N

[State 214, Sacudida]
type = EnvShake
Trigger1 = Time = 0
time = 15
ampl = -3
freq = 90
phase = 90



[State 942,19]
type = GameMakeAnim
trigger1 = time = 0
value = 72
postype = p2

[State 213, 4]
type = SelfState
trigger1 = Time = 0
value = 5050
;end for p2



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
