
; States file for Bizarro -- Basics
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
;-----------------------------
;LOSE BIZARRO
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 3]
type = EnvShake
trigger1 = animelem = 4
Time = 55

[State 170, snd]
type = playsnd
trigger1 = animelem = 16
value = 8,0
channel = 0

[State 170, snd]
type = playsnd
trigger1 = animelem = 16
value = 5,4
channel = 1

[State 170, snd]
type = playsnd
trigger1 = animelem = 18
value = 5,2
channel = 2

[State 170, Kaboom]
type = Explod
trigger1 = animelem = 16
anim = 9998
pos = 0,0
postype = p1
sprpriority = 3
scale = 0.75,0.75

[State 170, snd]
type = playsnd
trigger1 = animelem = 4
value = 10,2
channel = 4
loop = 1

[State 170, snd]
type = stopsnd
trigger1 = animelem >= 15
channel = 4

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 170, 2]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175, 3]
type = EnvShake
trigger1 = animelem = 4
Time = 55

[State 175, snd]
type = playsnd
trigger1 = animelem = 16
value = 8,0
channel = 0

[State 175, snd]
type = playsnd
trigger1 = animelem = 16
value = 5,4
channel = 1

[State 175, snd]
type = playsnd
trigger1 = animelem = 18
value = 5,2
channel = 2

[State 175, Kaboom]
type = Explod
trigger1 = animelem = 16
anim = 9998
pos = 0,0
postype = p1
sprpriority = 3
scale = 0.75,0.75

[State 175, snd]
type = playsnd
trigger1 = animelem = 4
value = 10,2
channel = 4
loop = 1

[State 175, snd]
type = stopsnd
trigger1 = animelem >= 15
channel = 4

[State 175, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 175, 2]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000) 

;-----------------------
; Winpose #1 - roar
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, explod]
type = Explod
trigger1 = animelem = 9
anim = 9996
pos = -10,-15
postype = p1
sprpriority = -1

[State 181, playsnd]
type = PlaySnd
trigger1 = animelem = 9
value = 6,0
channel = 0

[State 181, playsnd]
type = PlaySnd
trigger1 = animelem = 9
value = 6,0
channel = 1

[State 181, playsnd]
type = PlaySnd
trigger1 = animelem = 9
value = 6,0
channel = 2

[State 181, playsnd]
type = PlaySnd
trigger1 = animelem = 9
value = 6,0
channel = 3

[State 181, playsnd]
type = PlaySnd
trigger1 = animelem = 9
value = 6,0
channel = 4

[State 181, envshake]
type = EnvShake
trigger1 = animelem = 9
Time = 10

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,300]
flag = RoundNotOver
flag2 = nomusic

;-------------------------
; Winpose #2 - Flown Away
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Kaboom]
type = Explod
trigger1 = animelem = 3
anim = 9998
pos = -11,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 182, Dust]
type = Explod
trigger1 = animelem = 3
anim = 9997
pos = 0,0
postype = p1
scale = 1.5,1.5
sprpriority = 3
supermove = 1
bindtime = 1

[State 182, playsnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0
channel = 1

[State 182, playsnd]
type = PlaySnd
trigger1 = animelem = 3
value = 5,4
channel = 2

[State 182, playsnd]
type = PlaySnd
trigger1 = animelem = 3
value = 5,2
channel = 3

[State 182, envshake]
type = EnvShake
trigger1 = animelem = 3
Time = 15

[State 182, A5]
type = Velset
trigger1 = animelem = 3
y = -8
x = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = RoundNotOver
flag2 = nomusic

;---------------------------------
; Winpose #3 - Legion of Doom
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 182, Dust]
type = Explod
trigger1 = time = 90
anim = 9997
pos = 50,0
postype = p1
scale = 1.1,1.1
sprpriority = -1
supermove = 1
bindtime = 1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = time = 90
value = S8,1
channel = 1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = time = 90
value = S8,1
channel = 2

[State 183, Batzarro]
type = Explod
trigger1 = AnimElem = 6
anim = 1833
ID = 1833
postype = p1
pos = 50, 7
sprpriority = -1
ownpal = 1
removetime = -2
bindtime = 1

[State 183, Reverse Flash]
type = helper
trigger1 = animelem = 6
helpertype = normal
ID = 1844
stateno = 1844
postype = p1
pos = -480,7
size.shadowoffset = 6
ownpal = 1

[State 183, Bizarre]
type = Explod
trigger1 = AnimElem = 6
anim = 1845
ID = 1845
postype = p1
pos = 110, 7
sprpriority = -1
ownpal = 1
removetime = -2
bindtime = 1

[State 183,1]
type = AssertSpecial     
trigger1 = Time = [0,400]
flag = RoundNotOver
flag2 = nomusic

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, Intro vs superman]
type = Changestate
triggerall = time = 0
trigger1 = p2name = "Superman" || p4name = "Superman"
trigger2 = p2name = "Superman Beyond" || p4name = "Superman Beyond"
value = 191

[State 190, Intro vs Batman]
type = Changestate
triggerall = time = 0
trigger1 = p2name = "Batman" || p4name = "Batman"
trigger2 = p2name = "Batman Beyond" || p4name = "Batman Beyond"
trigger3 = p2name = "DKR Batman" || p4name = "DKR Batman"
trigger4 = p2name = "The Dark Knight" || p4name = "The Dark Knight"
trigger5 = p2name = "Dark Knight" || p4name = "Dark Knight"
value = 193

[State 190, Intro vs Flash]
type = Changestate
triggerall = time = 0
trigger1 = p2name = "Flash" || p4name = "Flash"
trigger2 = p2name = "The Flash" || p4name = "The Flash"
trigger3 = p2name = "Barry Allen" || p4name = "Barry Allen"
trigger4 = p2name = "The Flash - Barry Allen" || p4name = "The Flash - Barry Allen"
trigger5 = p2name = "The Flash (Barry Allen)" || p4name = "The Flash (Barry Allen)"
trigger6 = p2name = "Wally West" || p4name = "Wally West"
value = 194

[State 190, Intro Decider]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 1,5

[State 190, 1]
type = ChangeState
trigger1 = Var(2) <=1
value = 1946

[State 190, 2]
type = ChangeState
trigger1 = Var(2) <=3
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(2) <=5
value = 191


;-----------------------------
; Intro #1 - crash landing
;-----------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = posadd
trigger1 = animelem = 1
y = -300

[state 191, aft]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
color = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 191, 1]
type = velset
trigger1 = animelem = 1
y = 20

[State 191, 2]
type = velset
trigger1 = pos y = 0
y = 0

[State 191, Kaboom]
type = Explod
trigger1 = Time = 15
anim = 9998
pos = -11,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 191, 6]
type = PlaySnd
trigger1 = time = 15
value = 5,0

[State 191, 3]
type = EnvShake
trigger1 = time = 15
Time = 15

[State 191, 6]
type = PlaySnd
trigger1 = animelem = 8
value = 5,1
channel = 0

[State 191, 6]
type = PlaySnd
trigger1 = animelem = 14
value = 5,2
channel = 1

[State 191, 6]
type = PlaySnd
trigger1 = animelem = 8
value = 5,1
channel = 2

[State 191, 6]
type = PlaySnd
trigger1 = animelem = 8
value = 5,1
channel = 3

[State 191,1]
type = PalFX
trigger1 = time = 186
time = 2
add = 255,255,255

[State 191,1]
type = PalFX
trigger1 = time = 191
time = 2
add = 255,255,255

[State 191,1]
type = PalFX
trigger1 = time = 196
time = 2
add = 255,255,255

[State 191, 2]
type = Explod
trigger1 = time = 186
anim = 62
pos = -10,8
postype = p1
ownpal = 1
removetime = 9

[State 191, 2]
type = Explod
trigger1 = time = 191
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.9,1.5
removetime = 9

[State 191, 2]
type = Explod
trigger1 = time = 196
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.8,2
removetime = 9

[State 191, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3]
type = Changestate
trigger1 = animelem = 18
value = 0

;[State 192, 4b] ;Freeze animation until PreIntro is over
;type = ChangeAnim
;trigger1 = Pos Y >= 2
;trigger1 = RoundState = 0
;value = 190

;----------------------------------
;Intro #2 - Under Ground Coming
[Statedef 192]
type = S
movetype = I
physics = N
anim = 192
velset = 0

[State 192, Rocks]
type = Playsnd
trigger1 = animelem = 2
value = 5,5
channel = 0

[State 192, sound]
type = Playsnd
trigger1 = animelem = 34
value = 5,2
channel = 1

[State 192, Rotate Snd]
type = Playsnd
trigger1 = animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17
trigger2 = animelem = 19 || animelem = 21 || animelem = 23
value = 0,1
channel = 2

[State 192,1]
type = PalFX
trigger1 = animelem = 34
time = 3
add = 255,255,255

[State 192,1]
type = PalFX
trigger1 = animelem = 36
time = 3
add = 255,255,255

[State 192,1]
type = PalFX
trigger1 = animelem = 38
time = 3
add = 255,255,255

[State 192, dust]
type = Explod
trigger1 = animelem = 34
anim = 62
pos = 0,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 192, dust]
type = Explod
trigger1 = animelem = 36
anim = 62
pos = 0,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 192, dust]
type = Explod
trigger1 = animelem = 38
anim = 62
pos = 0,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 192, Ground Rocks]
type = Explod
trigger1 = animelem = 2
anim = 9991
pos = 0,-5
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 192, 1b] 
type = velset
trigger1 = time = 0
y = 0

[State 192, intro flag]
type = AssertSpecial
trigger1 = 1
flag = intro

[State 192, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------
;Intro vs Batman
[Statedef 193]
type = S
movetype = I
physics = N
anim = 193
velset = 0

[State 193, landing sound]
type = Playsnd
trigger1 = animelem = 30
value = 8, 1
channel = 1

[State 193, landing sound]
type = Playsnd
trigger1 = animelem = 30
value = 8, 1
channel = 2

[State 193, landing sound]
type = Playsnd
trigger1 = animelem = 30
value = 8, 1
channel = 3

[State 193, landing sound]
type = Playsnd
trigger1 = animelem = 38
value = 5, 2
channel = 4

[State 193, dust]
type = Explod
trigger1 = animelem = 30
anim = 62
pos = 0,10
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 193, dust]
type = Explod
trigger1 = animelem = 30
anim = 9997
pos = 0,0
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 193,1]
type = PalFX
trigger1 = animelem = 39
time = 3
add = 255,255,255

[State 193,1]
type = PalFX
trigger1 = animelem = 41
time = 3
add = 255,255,255

[State 193,1]
type = PalFX
trigger1 = animelem = 43
time = 3
add = 255,255,255

[State 193, 2]
type = Explod
trigger1 = animelem = 39
anim = 62
pos = -10,8
postype = p1
ownpal = 1
removetime = 9

[State 193, 2]
type = Explod
trigger1 = animelem = 41
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.9,1.5
removetime = 9

[State 193, 2]
type = Explod
trigger1 = animelem = 43
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.8,2
removetime = 9

[State 193, Batzarro]
type = helper
trigger1 = !time
helpertype = normal
ID = 1933
stateno = 1933
postype = p1
pos = 0,7
name = "Batzarro"
size.shadowoffset = 6
ownpal = 1

[State 193, intro flag]
type = AssertSpecial
trigger1 = 1
flag = intro

[State 193, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------
;Intro vs Flash
[Statedef 194]
type = S
movetype = I
physics = N
anim = 194
velset = 0

[State 194, Reverse Flash]
type = helper
trigger1 = !time
helpertype = normal
ID = 1944
stateno = 1944
postype = p1
pos = 20,7
name = "Reverse Flash"
size.shadowoffset = 6
ownpal = 1

[State 194, intro flag]
type = AssertSpecial
trigger1 = 1
flag = intro

[State 194, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-------------------------------
;Intro Special (Legion of Doom)
[Statedef 1946]
type = S
movetype = I
physics = N
anim = 1946
velset = 0

[State 1946,1]
type = PalFX
trigger1 = animelem = 10
time = 3
add = 255,255,255

[State 1946,1]
type = PalFX
trigger1 = animelem = 12
time = 3
add = 255,255,255

[State 1946,1]
type = PalFX
trigger1 = animelem = 14
time = 3
add = 255,255,255

[State 1946, 2]
type = Explod
trigger1 = animelem = 10
anim = 62
pos = -10,8
postype = p1
ownpal = 1
removetime = 9

[State 1946, 2]
type = Explod
trigger1 = animelem = 12
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.9,1.5
removetime = 9

[State 1946, 2]
type = Explod
trigger1 = animelem = 14
anim = 62
pos = -10,8
postype = p1
ownpal = 1
scale = 0.8,2
removetime = 9

[State 1946, Batzarro]
type = helper
trigger1 = !time
helpertype = normal
ID = 1947
stateno = 1947
postype = p1
pos = -60,7
name = "Batzarro"
size.shadowoffset = 6
ownpal = 1

[State 1946, Reverse Flash]
type = helper
trigger1 = !time
helpertype = normal
ID = 1948
stateno = 1948
postype = p1
pos = 50,7
name = "Reverse Flash"
size.shadowoffset = 6
ownpal = 1

[State 1946, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S5,2
channel = 1


[State 1946, intro flag]
type = AssertSpecial
trigger1 = 1
flag = intro

[State 1946, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;-----------------------------
; TAUNT
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 5]
type = PosFreeze
trigger1 = time >= 0

[State 195, Vibes]
type = Explod
trigger1 = animelem = 3
anim = 9996
pos = -70,-15
postype = p1
sprpriority = 1

[State 195, 3]
type = EnvShake
trigger1 = animelem = 4
Time = 15

[State 195, 3]
type = Playsnd
trigger1 = animelem = 4
value = 5,0

[State 195, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
; BASIC MOVES
;-----------------------------

;-----------------------------
; STAND_X
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 30

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,0

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,0

[State 200 , 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
persistent = 0
attr = S, NA
damage    = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-90
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -4
air.velocity = -1,-3

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; STAND_A
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 201
poweradd = 30

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,0

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,0

[State 201 , 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
persistent = 0
attr = S, NA
damage    = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-70
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -4
air.velocity = -1,-3

[State 200, 7]
type = ChangeState
triggerall = var(3) != 0
trigger1 = Animelem = 4
value = 0
ctrl = 1

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; STAND_Y
[Statedef 202]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 204 
poweradd = 60

[State 202, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 0

[State 202, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0, 2
channel = 1

[State 202 , 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA   
damage    = 80 
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,10
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-70
hitsound   = S2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3, -5
air.velocity = -3,-5
;fall = 1
;fall.recover = 0

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------
; STAND_B
[Statedef 203]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 203
poweradd = 40

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,1

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,1

[State 203 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
persistent = 0
attr = S, NA
damage    = 30,9
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-70
hitsound = S2,1
guardsound = S3,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
air.velocity = -2,-3

[State 203, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; STAND_Z
[Statedef 204]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 202
poweradd = 40

[State 204, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
channel = 0

[State 204, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0, 3
channel = 1

[State 202 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
persistent = 0
attr = S, NA  
damage    = 50 
animtype = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-90
hitsound   = S2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2, -12
air.velocity = -2,-12

[State 204, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; STAND_C
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 60

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,2

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 205 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, NA
damage    = 50,9
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-70
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -16, -5
air.velocity = -16,-5

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;CROUCH_X
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 9
poweradd= 30
anim = 400
velset = 0,0
ctrl = 0

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,0

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,0

[State 400 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
persistent = 0
attr = C, NA
damage    = 20
animtype = Light
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-46
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -3
air.velocity = -1,-3

[State 400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;CROUCH_A
[Statedef 401]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 401
poweradd = 20
sprpriority = 2

[State 401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S1,0

[State 401, 1]
type = PlaySnd
trigger1 = Time = 0
value = s0, 0

[State 401, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 20,9
animtype = Light
hitflag = MAF
guardflag = L
priority = 2, Hit
pausetime = 8,8
sparkno = 2
guard.sparkno = 40
sparkxy = 10, 5
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 401, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;CROUCH_Y
[Statedef 402]
type    = C
movetype= A
physics = C
juggle  = 9
velset = 0,0
ctrl = 0
anim = 402
poweradd = 40

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 15
Channel=4

[State 405, 6]
type = PlaySnd
trigger1 = animtime = 2
value = 0, 0
Channel=2

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 4
value = 0, 15
Channel=4

[State 405, 6]
type = PlaySnd
trigger1 = animtime = 6
value = 0, 1
Channel=2

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 8
value = 0, 15
Channel=4

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 11
value = 0, 15
Channel=4

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 12
value = 0,2
Channel=0

[State 402 , 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 12
trigger5 = AnimElem = 13
attr = C, NA
damage    = 25
animtype = Medium
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 3,9
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-46
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2, 0

[State 402, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;CROUCH_B
[Statedef 403]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 403
poweradd = 40
sprpriority = 2

[State 403, 1]
type = PlaySnd
trigger1 = Time = 0
value = s0,1

[State 403, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S1,1

[State 403, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 30,9
animtype = Medium
hitflag = MAF
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 2
guard.sparkno = 40
sparkxy = 10, 5
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 403, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;CROUCH_Z
[Statedef 404]
type    = C
movetype= A
physics = C
juggle  = 9
velset = 0,0
ctrl = 0
anim = 404
poweradd = 60

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S0,2

[State 201, 6]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 404 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 
trigger3 = AnimElem = 4
persistent = 0
attr = C, NA   
damage    = 80 
animtype = up
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10,8
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 20
ground.velocity = -0, -13
air.velocity = -0,-13
guard.velocity = -3   
airguard.velocity = -3   

[State 404, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;CROUCH_C
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 405
poweradd = 60
velset = 0,0
sprpriority = 2

[State 405, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S1,2

[State 405, 1]
type = PlaySnd
trigger1 = Time = 0
value = s0, 2

[State 405 , 1]
type = Velset
trigger1 = AnimElem = 2
x = 30

[State 405 , 1]
type = Velset
trigger1 = animelem = 10
x = 0
 
[State 405 , 3]
type = MakeDust
trigger1 = Time = 1
pos = -25,3
spacing = 2

[State 405 , 4]
type = MakeDust
trigger1 = time >= 8
trigger1 = time <= 22
pos = -15,3

[State 405 , 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5 
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
persistent = 0
attr = C, NA   
damage    = 80 
animtype = Heavy
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10,8
sparkno = 2
guard.sparkno = 40
sparkxy = 10, 5
hitsound   = S2,2
guardsound = s3,0
ground.type = trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0   
air.velocity = -1,-4
air.type = trip
down.velocity = 0,0
fall = 1
air.fall = 1
fall.animtype = back
down.bounce = 1
bounce = 1

[State 405, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------------------------
;JUMP_A
[Statedef 601]
type    = A     
movetype= A     
physics = A    
juggle  = 1     
ctrl = 0  
anim = 601 
poweradd = 30

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,0
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 1

[State 601 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
persistent = 0
attr = A, NA   
damage    = 10
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,0
guardsound = s3,0
ground.type = Low
air.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -3,-3
air.velocity = -1,-3

[State 601, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1

;-----------------------------
;JUMP_B
[Statedef 603]
type    = A     
movetype= A     
physics = A     
juggle  = 1     
ctrl = 0  
anim = 603
poweradd = 40

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 1

[State 603 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
persistent = 0
attr = A, NA  
damage    = 30 
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4,-4
air.velocity = -2,-4
air.fall = 1

[State 603, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1


;-----------------------------
;JUMP_C
[Statedef 605]
type    = A     
movetype= A     
physics = A     
juggle  = 1     
ctrl = 0  
anim = 605 
poweradd = 60

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,2
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
channel = 1

[State 605 , 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
persistent = 0
attr = A, NA   
damage    = 60 
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,8
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
air.type = Low
ground.velocity = -4,-5
air.velocity = -3,-5

[State 605, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1

;-----------------------------
;JUMP_X
[Statedef 600]
type    = A     
movetype= A     
physics = A     
juggle  = 1     
ctrl = 0  
anim = 600 
poweradd = 30

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,0
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 1

[State 600 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
persistent = 0
attr = A, NA   
damage    = 10 
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -3,-3
air.velocity = -1,-3

[State 600, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1


;-----------------------------
;JUMP_Y
[Statedef 602]
type    = A     
movetype= A     
physics = A     
juggle  = 1     
ctrl = 0  
anim = 602
poweradd = 40

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 8
value = 1,1
channel = 1

[State 602 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger4 = AnimElem = 4
persistent = 0
attr = A, NA  
damage    = 30 
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,1
guardsound = s3,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4,-4
air.velocity = -2,-4

[State 602, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1

;-----------------------------
;JUMP_Z
[Statedef 604]
type    = A     
movetype= A     
physics = A     
juggle  = 1     
ctrl = 0  
anim = 604
poweradd = 60

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,3
channel = 0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 14
value = 0,15
channel = 1

[State 405, 6]
type = PlaySnd
trigger1 = Time = 4
value = 1,2
channel = 2

[State 604 , 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger4 = AnimElem = 4
persistent = 0
attr = A, NA   
damage    = 60 
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-70
hitsound   = S2,2
guardsound = s3,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-3
air.velocity = -3,-3
;air.fall = 1

[State 604, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 615
ctrl = 1

;--------------------
; Superjump Idle
[Statedef 615]
type = A
movetype = I
physics = A
ctrl = 1

[State 615, a]
type = ChangeAnim
trigger1 = Vel Y > 0
value = 44
persistent = 0

[State 615, 1]
type = VelAdd
trigger1 = command = "holdfwd"
x = .1

[State 615, 2]
type = VelAdd
trigger1 = command = "holdback"
x = -.1

;---------------------------------------------------------------------------
;Throw Beam / Forward + Y/Z
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 800

[State 810, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1

[State 800, 2]
type = HitDef
Trigger1 = AnimElem = 2
Trigger2 = AnimElem = 3
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0
hitsound = s3,1
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
;p1 grab animation
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810

[State 810, 6]
type = PlaySnd
trigger1 = Time = 0
value = 9,2
channel = 0

[State 810, 6]
type = PlaySnd
trigger1 = Time = 0
value = 9,2
channel = 1

[State 810, 6]
type = PlaySnd
trigger1 = Time = 0
value = 9,2
channel = 2

[State 810, 6]
type = PlaySnd
trigger1 = animelem = 18
value = 1,4
channel = 3

[State 810, 6]
type = PlaySnd
trigger1 = animelem = 18
value = 1,4
channel = 4

[State 810, 6]
type = PlaySnd
trigger1 = Time = 0
value = 9,2
channel = 5

[State 810, Cool]
type = explod
trigger1 = Time = 8
sprpriority = 7
pos = 0,-139
postype = p1
anim = 700
removetime = 40

;-----------------------------
;Ice Bloc
[State 221, 0]
type = Helper
trigger1 = time = 12
helpertype = normal
name = "Ice Bloc"
id = 007
postype = p1
pos = 55,-85
stateno = 226
keyctrl = 0
ownpal = 0
priority = 7

[State 810, Ice]
type = explod
trigger1 = Time = 10
sprpriority = 7
pos = 20,0
postype = p2
anim = 699
removetime = 40

[State 810, Ice]
type = explod
trigger1 = Time = 8
sprpriority = 7
pos = 20,15
postype = p2
anim = 699
removetime = 40
scale = 0.3, 0.3

[State 810, Ice]
type = explod
trigger1 = Time = 12
sprpriority = 7
pos = -10,25
postype = p2
anim = 699
removetime = 40
scale = 0.5, 0.5

[State 810, Ice]
type = explod
trigger1 = Time = 5
sprpriority = 7
pos = 15,-25
postype = p2
anim = 699
removetime = 40
scale = 0.75, 0.75

[State 810, Ice]
type = explod
trigger1 = Time = 0
sprpriority = 7
pos = -25,-20
postype = p2
anim = 699
removetime = 40
scale = 1.5,1.5

[State 810, 6]
type = PlaySnd
trigger1 = Time = 66
value = 0,7

[State 810, 2]
type = TargetBind
Trigger1 = time <= 36
pos = 64,-124
time = 1

[State 810, 4]
type = TargetBind
Trigger1 = AnimElem = 17
pos = 42,-113
time = 1

[State 810, 5]
type = TargetBind
Trigger1 = AnimElem = 18
pos = 16,-89
time = 1

[State 810, 6]
type = TargetBind
Trigger1 = AnimElem = 19
pos = 13,-90
time = 1

[State 810, 8]
type = TargetBind
Trigger1 = AnimElem = 20
pos = 73,-85
time = 1

[State 810, 9]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;Ice Bloc 2
[State 810, 1]
type = Helper
trigger1 = time = 12
helpertype = normal
name = "Ice Bloc 2"
id = 007
postype = p1
pos = 55,-85
stateno = 227
keyctrl = 0
ownpal = 0
priority = 5
sprpriority = 3

[State 810, 6]
type = PlaySnd
trigger1 = Time = 66
value = 0,7

[State 810, 2]
type = TargetBind
Trigger1 = time <= 36
pos = 64,-124
time = 1

[State 810, 4]
type = TargetBind
Trigger1 = AnimElem = 17
pos = 32,-113
time = 1

[State 810, 5]
type = TargetBind
Trigger1 = AnimElem = 18
pos = 16,-89
time = 1

[State 810, 6]
type = TargetBind
Trigger1 = AnimElem = 19
pos = 13,-90
time = 1

[State 810, 7]
type = TargetLifeAdd
Trigger1 = AnimElem = 19
value = -130

[State 810, 8]
type = TargetBind
Trigger1 = AnimElem = 20
pos = 73,-85
time = 1

[State 810, 9]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;state for p2 when grab
[Statedef 820]
type    = A
movetype= H
physics = N
anim = 5050
ctrl = 0
velset = 0,0
color = 5

[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 820

[State 820, 1]
type = VelAdd
trigger1 = Time = 66
x = -4
y = -1

[State 820, 3]
type = ChangeAnim2
trigger1 = Time = 72
value = 821

[State 820, 4]
type = PalFX
trigger1 = animelem = 1
time = 100
add = 49,173,231
mul = 13,179,199
ignorehitpause = 1

[State 820, Ice]
type = explod
trigger1 = Time = 12
sprpriority = 7
pos = -10,25
postype = p2
anim = 698
removetime = 40
scale = 2, 2

;-----------------------------
;alive
[State 820, 4]
type = ChangeState
trigger1 = Time = 84
trigger1 = alive = 1
value = 821
;end for p2

[State 820, 4]
type = SelfState
trigger1 = alive = 0
trigger1 = Time >= 72
value = 5050
;end for p2


[Statedef 821]
type    = A
movetype= H
physics = N

;Gravity
[State 821, 3]
type = VelAdd
trigger1 = Time >= 0
y = .70

[State 821, 4] ; near ground
type = ChangeState
trigger1 = Pos Y >=-55
value = 822

[Statedef 822]
type    = A
movetype= H
physics = N
velset = 0, 0

[State 822, 1]
type = PosSet
trigger1 = Time = 0
y = -55

;petrify him !!!
[State 822, 3]
type = SelfState
trigger1 = Time = 60
value = 5050
;end for p2

;-----------------------------
;bloc state 1
[Statedef 226]
type    = S
movetype= A
physics = N
poweradd = 0
ctrl = 0
velset = 0, 0
anim = 226
pos = 55,-85
sprpriority = 1

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 9
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 10
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 11
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 12
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 13
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 14
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 15
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 16
pos = 55,-85

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 17
pos = 23,-74

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 18
pos = 7,-50

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 19
pos = 4,-51

[State 226, 4]
type = BindToParent
Trigger1 = AnimElem = 20
pos = 64,-47

[State 226, 9]
type = VelAdd
trigger1 = Time = 54
x = 4
y = -1

[State 226, 4]
type = posset
Trigger1 = pos X > 150
x = 150

[State 226, 4]
type = posset
Trigger1 = pos X < -150
x = -150

[State 226, 10]
type = ChangeState
trigger1 = Time = 72
value = 228

[Statedef 228]
anim = 225
sprpriority = 0

[State 228, 3]
type = VelAdd;Gravity
trigger1 = Time >= 0
y = .70

[State 228, 4]
type = posset
Trigger1 = pos X > 150
x = 150

[State 228, 4]
type = posset
Trigger1 = pos X < -150
x = -150

[State 229, 4] ; near ground
type = ChangeState
trigger1 = Pos Y >=-19
value = 230

;-----------------------------
[Statedef 230]
velset = 0,0
anim = 225
sprpriority = 1

[state 230, 8]
type = ChangeState
trigger1 = time = 140
trigger2 = P2StateNo != 822
value = 233

;-----------------------------
;bloc state 2
[Statedef 227, 0]
type    = S
movetype= A
physics = N
poweradd = 0
ctrl = 0
velset = 0, 0
anim = 227
pos = 55,-85
sprpriority = 0

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 9
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 10
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 11
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 12
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 13
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 14
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 15
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 16
pos = 55,-85

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 17
pos = 23,-74

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 18
pos = 7,-50

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 19
pos = 4,-51

[State 227, 4]
type = BindToParent
Trigger1 = AnimElem = 20
pos = 64,-47

[State 227, 9]
type = VelAdd
trigger1 = Time = 54
x = 4
y = -1

[State 227, 4]
type = posset
Trigger1 = pos X > 150
x = 150

[State 227, 4]
type = posset
Trigger1 = pos X < -150
x = -150

[State 227, 10]
type = ChangeState
trigger1 = Time = 72
value = 229

[Statedef 229]
anim = 228
sprpriority = 0

[State 229, 3]
type = VelAdd;Gravity
trigger1 = Time >= 0
y = .70

[State 229, 4]
type = posset
Trigger1 = pos X > 150
x = 150

[State 229, 4]
type = posset
Trigger1 = pos X < -150
x = -150

[State 229, 4] ; near ground
type = ChangeState
trigger1 = Pos Y >=-19
value = 231

;-----------------------------
[Statedef 231]
velset = 0,0
anim = 228
sprpriority = 0

[state 231, 8]
type = ChangeState
trigger1 = time = 140
trigger2 = P2StateNo != 822
value = 233

;------------------------------
[Statedef 233]
anim = 229

[state 233, 8]
type = destroyself
trigger1 = AnimTime = 0

[State 220, BreakIce]
type = explod
trigger1 = Time = 5
sprpriority = 7
pos = 5,-37
postype = p2
anim = 31024
scale = 1.5,1.5

[State 220, BreakIce]
type = explod
trigger1 = Time = 5
sprpriority = 7
pos = 20,-8
postype = p2
anim = 31024

[State 220, BreakIce]
type = explod
trigger1 = Time = 5
sprpriority = 7
pos = -20,-10
postype = p2
anim = 31024

[State 220, BreakIce]
type = explod
trigger1 = Time = 5
sprpriority = 7
pos = -5,30
postype = p2
anim = 31024

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
