;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Win state decider
;---------------------------------------------------------------------------
[Statedef 180]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,59

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,19]
value = 181

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [20,39]
value = 182

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [40,59]
value = 183


;---------------------------------------------------------------------------
; Win pose 1 - Bow
;---------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = time= 1
value = 180,0 + (random%4)


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------
[Statedef 182]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = time= 1
value = 180,4 

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = time= 1
value = 180,0 + (random%4)

[State 181]
type = PlaySnd
trigger1 = animelem= 6
value = 221,2 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 185 + (random%5) 



[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;---------------------------------------------------------------------------
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,39

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,19]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [20,39]
value = 192

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State -3, EnvShake]
type = EnvShake
trigger1 = Time = 1
time = 50
freq = 60
ampl = -4

[State 1101, 0]
type = Explod 
trigger1 = animelem = 1
sprpriority = 0
anim = 1193
postype = P1
pos = 0, 20
removeongethit = 0
removetime = 131
pausemovetime = 0
shadow = 0,0,0
bindtime = 1
scale = .8,.8




[State 1000, PlaySnd]
type = veladd
trigger1 = animelem = 12
y = -8

[State 191, 1]
type = PlaySnd
trigger1 = time = 1
value = S240,0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = S240,1

[State 192, ChangeAnim]
type = Changestate
trigger1 =animtime =0
value = 1191

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = Intro

;191 extras
[Statedef 1191]
type = A
physics = N
anim = 1112
ctrl = 0
sprpriority = 0
;poweradd= 65
velset = 0,0
;facep2 = 1

[State 192, VelAdd]
type = VelAdd
trigger1 = time = 0 
y = 10

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[state 1051, land explod]
type = helper
trigger1 = Anim = 1192
trigger1 = Anim != 1112
trigger1 = AnimElemTime(1) = 1 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 0,0
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1191]
type = PlaySnd
trigger1 = Anim = 1192
trigger1 = Anim != 1112
trigger1 = AnimElemTime(1) = 1
value = S190,1 + (random%5)

[State 1191]
type = PlaySnd
trigger1 = Anim = 1192
trigger1 = Anim != 1112
trigger1 = AnimElemTime(1) = 1
value = S8200,0

[State -3, EnvShake]
type = EnvShake
trigger1 = Time = 20
time = 25
freq = 60
ampl = -4


[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1112
trigger1 = Anim != 1192
trigger1 = Pos Y > -2
value = 1192

[State 192, VelSet]
type = VelSet
trigger1 = Anim = 1192
trigger1 = Anim != 1112
x = 0
y = 0

[State 192, PosSet]
type = PosSet
trigger1 = Anim = 1192
trigger1 = Anim != 1112
y = 0


[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 1192

[State 192, 4] ;Change to stand state
type = ChangeState
triggerall = Anim = 1192
triggerall = Anim != 1112
trigger1 = AnimTime = 0
trigger1 = Pos Y > -1
value = 0
;------------------------------------------------
;Intro2 Why do you bother
[Statedef 192]
type = S
ctrl = 0
anim = 193
sprpriority = 2

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 3105, b1]
Type = BGPalfx
Trigger1 = time = [0, 190]
Add = -200,-200,-200
IgnoreHitPause = 1
time = 1

[State 3105, b1]
Type = BGPalfx
trigger1 = Time >= 0
trigger1 = Time <= 190
time = 1
add = (-200+(time*.9)),(-200+(time*.9)),(-200+(time*.9))

[State 181, elect]
type = Explod
trigger1 = time = 60
anim = 194
removetime = 38
postype = p1
pos = 0,0
sprpriority = 5


[State 195]
type = PlaySnd
trigger1 =animelem= 2
value = 190,0

[State 195]
type = PlaySnd
trigger1 =time= 60
value = 221,3


[State 3020, Shine]
type = helper
trigger1 = time = 65
ID = 13519
pos = 0,0
postype = p1
stateno = 13519
supermovetime = 9999
helpertype = normal
name = "Thunder"
ownpal = 0
keyctrl = 0

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2


[State 195]
type = PlaySnd
trigger1 =time= 1
value = 195,0
persistent = 0

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -6
air.type = Low
air.hittime = 9
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = 30
sprpriority = 2


[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random<=400
value = 200,1

[State 210, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S,NA
damage = 40,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -6
air.type = Low
air.hittime = 12
air.velocity = -6,-5
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 220
poweradd = 40
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 60,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = -30,-75
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-7
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall=1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 20
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 230, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9
sparkno = s8002
sparkxy = -15,-25
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -3,0
air.type = Low
air.hittime = 9
air.velocity = -5,0

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 240
poweradd = 30
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 40,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 12
air.velocity = -5,0
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 250
poweradd = 20
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S,NA
damage = 60,1
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = -15,-75
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -10,-7
air.type = Low
air.hittime = 15
air.velocity = -10,0
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall = 1

[State 250, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 9
air.velocity = -5,0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = 30
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 410]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = C,NA
damage = 40,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
air.hittime  = 9
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------

[Statedef 420]
type = C
movetype= A
physics = C
juggle = 4
poweradd= 160
ctrl = 0

[State 420]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = Time = 0 && Anim != 420
value = 420

[State 420]
type = turn
trigger1 = p2dist X <= -1
trigger1 = time = 0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2


[State 250]
type = HitDef
trigger1 = AnimElem = 4
animtype = UP
air.animtype = UP
attr = c, NA
damage = 60,1
getpower = 30,10
guardflag = MA
hitflag = MAFD
priority = 6, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = -20,-90
guard.sparkno = s8001
hitsound = s8000,2
guardsound = s2,1
ground.type = low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 0,ifelse(prevstateno = 1003,-18,-13.7)
air.type = Low
air.velocity = 0,ifelse(prevstateno = 1003,-18,-12)
air.hittime = 15
p2stateno = 421

[State 420]
type = StateTypeSet
trigger1 = animelem = 5
statetype = C
movetype = I
physics = C


[State 420]
type = ChangeState
triggerall = var(40)&& movehit
triggerall= p2life != 0
trigger1 = AnimElem = 5
value = 700
ctrl = 0

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------
;p2 Launched State
[Statedef 421]
type    = A
movetype= H
physics = N
velset = 0, 0
ctrl = 0

[State 421, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 421

;[State 421]
;type = turn
;triggerall =
;trigger1 = time = 0

[State 421]
type = VelSet
trigger1 = AnimElem = 2
y = -13.8

[State 421]
type = VelAdd
trigger1 = AnimElem = 2,>= 0
y = .45

[State 421]
type = VelSet
trigger1 = !Alive
x = -.5
y = -8

[State 421]
type = SelfState
trigger1 = Time > 20
trigger1 = Vel Y >= 0
value = 5040
ctrl = 1

[State 421]
type = SelfState
trigger1 = !Alive
value = 5050
;----------------------------
;CROUCH HARD PUNCH 2
[Statedef 422]
type = C
movetype= A
physics = C
juggle = 4
poweradd= 160
ctrl = 0

[State 422]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = Time = 0 && Anim != 420
value = 420

[State 422]
type = turn
trigger1 = p2dist X <= -1
trigger1 = time = 0

[State 422]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 422]
type = HitDef
trigger1 = AnimElem = 3
animtype = UP
air.animtype = UP
attr = C, NA
damage = Ceil(40*fvar(7)),5
;damage = 20
getpower = 30,10
guardflag = L
hitflag = MAFD
priority = 6, Hit
pausetime = 15,15
sparkno = S7000
sparkxy = -20,-45
guard.sparkno = S7047
hitsound = s1,2
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0,-2
air.hittime = 40
air.velocity = 0,-2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
nochainid = 1  ; ?? no rula en helper?
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall = 1
fall.recover = 0

[State 422]
type = HitDef
trigger1 = AnimElem = 4
animtype = UP
air.animtype = UP
attr = c, NA
damage = Ceil(100*fvar(7)),10
;damage = 60,10
getpower = 30,10
guardflag = MA
hitflag = MAFD
priority = 6, Hit
pausetime = 14,14
sparkno = S7000
sparkxy = -20,-90
guard.sparkno = S7047
hitsound = s1,2
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime = 30
ground.velocity = 0,ifelse(prevstateno = 1003,-18,-13.7)
air.type = Low
air.velocity = 0,ifelse(prevstateno = 1003,-18,-12)
air.hittime = 60
p2stateno = 423

[State 422]
type = StateTypeSet
trigger1 = animelem = 5
statetype = C
movetype = I
physics = C

[State 422]
type = NotHitBy
trigger1 = 1
value = S,NT
time = 1

[State 422]
type = ChangeState
triggerall = var(20) = 20 && movehit
triggerall=power>=1000 && backedgebodydist <= 50
triggerall= p2life != 0
trigger1 = AnimElem = 4
value = 3000
ctrl = 0

[State 422]
type = ChangeState
triggerall = var(20) = 20 && movehit
triggerall=power>=2000 && backedgebodydist > 50
triggerall = frontedgebodydist >= 80
triggerall= p2life != 0
trigger1 = AnimElem = 5,=0
value = 3300
ctrl = 0

[State 422]
type = ChangeState
triggerall = var(20) = 20 && movehit
triggerall= p2life != 0
trigger1 = AnimElem = 5
value = 700
ctrl = 0

[State 422]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------
;p2 Launched State
[Statedef 423]
type    = A
movetype= H
physics = N
velset = 0, 0
ctrl = 0

[State 421, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 421

[State 421]
type = AssertSpecial
trigger1 = time <= 20
flag = noairguard

[State 421]
type = VelSet
triggerall = enemy, pos y >= -30
trigger1 = AnimElem = 2
y = -12.2

[State 421]
type = VelSet
triggerall = enemy, pos y < -30
trigger1 = AnimElem = 2
y = -8.8

[State 421]
type = VelSet
trigger1 = !Alive
x = -.5
y = -8

[State 421]
type = VelAdd
trigger1 = AnimElem = 2,>= 0
y = .45

[State 421]
type = SelfState
trigger1 = Time > 20
trigger1 = Vel Y >= 0
value = 5040
ctrl = 1

[State 421]
type = SelfState
trigger1 = !Alive
value = 5050


;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 430, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
damage = 20,1
animtype = Light
hitflag = MA
guardflag = MA
priority = 2, Hit
pausetime = 9,9
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -3,0
air.type = Low
air.hittime = 9
air.velocity = -5,0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = 30
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,1

[State 440, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 40,1
animtype = Medium
hitflag = MA
guardflag = MA
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 12
air.velocity = -5,0
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 250
poweradd = 20
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S,NA
damage = 60,1
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = -15,-75
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -10,-7
air.type = Low
air.hittime = 15
air.velocity = -10,0
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall = 1

[State 250, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 10,10
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
air.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,1

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 40,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 12
air.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 620
poweradd=40
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 240]
type = PlaySnd
triggerall = var(29) = 0
trigger1 = AnimElem = 2
value = 0,3

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2

[State 620, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 60,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 15
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,0

[State 630, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 25,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 10,10
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime  = 10
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640
poweradd = 30
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,1

[State 640, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A,NA
damage = 45,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 12
air.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70


[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 650
poweradd=40
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2


[State 200]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,2

[State 650, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A,NA
damage = 60,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 15,15
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime  = 15
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90


[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
;GROUND THROW
[Statedef 800]
type = S
movetype= A
physics = N
anim = 800
poweradd = 30
ctrl = 0

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
guardflag =
damage = 0
getpower  = 50
givepower = 40
priority = 1, Hit
pausetime = 0,10
snap = -40, 0, 0
sparkno = -1
hitsound = S3,0
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 801
p2stateno = 802
fall = 1
kill = 1

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;GROUND THROW TECH HIT DECIDER
[Statedef 801]
type    = S
movetype= A
physics = N
velset = 0
anim = 801
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 58


[State 200]
type = PlaySnd
trigger1 = time = 0
value = 210,0

[State 801]
type = TargetBind
trigger1 = time <= 5
pos = 50, 0
time = 5




[State 801]
type = targetstate
TriggerAll = Time = 0
trigger1 = var(32) = 0
value = 802


[State 301, end]
type = ChangeState
Trigger1 = Time = 0
value = 804
ctrl = 0



;GROUND THROW P1 STATE
[Statedef 804]
type    = S
movetype= A
physics = N
velset = 0
anim    = 801
ctrl    = 0


[State 860, p2] ;explodpedr
type = helper
triggerall = NumTarget > 0
trigger1 = target, stateno=802 
trigger1 = target, animelem = 5
helpertype = normal
stateno = 1205
ID = 1205
name = "floor"
postype = p2
pos = -140,160
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 804]
type = ScreenBound
trigger1 = Alive
value = 0

[State 804]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3,8

[State 801]
type = targetstate
TriggerAll = Time = 0
trigger1 = var(32) = 1
value = 899

[State 804]
type = explod
trigger1 = animelem = 5
anim = 7008
postype = p1
pos = 164,10
sprpriority = -5
removetime = 90
removeongethit = 0

[State 804]
type = TargetBind
trigger1 = AnimElem = 1
pos = -145, -90
time = 12

[State 804]
type = SprPriority
trigger1 = AnimElem = 1
value = 0

[State 804]
type = TargetBind
trigger1 = AnimElem = 2
pos = -100, -130
time = 4

[State 804]
type = SprPriority
trigger1 = AnimElem = 2
value = 3

[State 804]
type = TargetBind
trigger1 = AnimElem = 3
pos = -78, -155
time = 4

[State 804]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, -150
time = 4

[State 804]
type = TargetBind
trigger1 = AnimElem = 5
pos = 150, 10
time = 4

[State 804]
type = Explod
trigger1 = AnimElem = 5
anim = 7027
pos = 170,10
postype = p1
facing = 1
sprpriority = 3
bindtime = 1
removetime = 10

[State 804]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -120
persistent = 0

[State 804]
type = TargetState
trigger1 = AnimElem = 6
value = 803


[State 810]
type = EnvShake
trigger1 = AnimElem = 4
time = 12

[State 804]
type = TargetDrop
trigger1 = animelem = 7

[State 804]
type = ChangeState
triggerall = var(20) = 20
triggerall = frontedgebodydist <=80
triggerall = p2life != 0
triggerall = animelem = 8
trigger1 = ctrl = 0
value = 422

[State 804]
type = ChangeState
triggerall = var(20) = 20
triggerall = frontedgebodydist > 80
triggerall = p2life != 0
triggerall = animelem = 8
trigger1 = ctrl = 0
value = 1000

[State 804]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;GROUND THROW P2 STATE
[Statedef 802]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 802]
type = ChangeAnim2
trigger1 = time = 0
value = 802

[State 802]
type = ScreenBound
trigger1 = Alive
value = 0

;----------------------
;P2 Thrown into ground
[Statedef 803]
type = A
movetype = H
physics = N
sprpriority = -1

[State 802]
type = ChangeAnim2
trigger1 = time = 0
value = 803

[State 803]
type = Velset
trigger1 = time = 0
x = -2
y = -7

[State 803]
type = Gravity
trigger1 = 1

[State 803] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = Command = "recovery"
trigger2 = var(20) = 20
value = 5200 ;HITFALL_RECOVER

[State 803]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;helper thunder intro
;Brillo Pal
[Statedef 13519]
ctrl = 0
anim = 8787

[State 3019, Assert]
type = AssertSpecial
trigger1 = Time <= 30
flag = NoFG
flag2 = NoBarDisplay
flag3 = GlobalNoShadow

[State 3019, PalFX]
type = AllPalFX
trigger1 = Time >= 0
time = 1
color = 256-(time*4)
add = 130+(time*55), 130+(time*55), 130+(time*55)
ignorehitpause = 1


[State 3019, 1]
type = DestroySelf
trigger1 = Time >= 35


;END
