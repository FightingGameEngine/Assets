;-------------------------------------------------------------------------------
; Basics CNS File
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Lose by Time Over
;-------------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
;-------------------------------------------------------------------------------
; Lose
;-------------------------------------------------------------------------------
[Statedef 172]
type = S
ctrl = 0
velset = 0,0
anim = 172


[State 172]
type = PosSet
trigger1 = Time = 0
y = 0


[State 172]
type = NotHitBy
trigger1 = 1
value = SCA
;-------------------------------------------------------------------------------
; DRAWGAME (Time over)
;-------------------------------------------------------------------------------
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;-------------------------------------------------------------------------------
; Win state decider
;-------------------------------------------------------------------------------
[Statedef 180]
type = S
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 180]
type = Width
trigger1 = Time = 0
value = 50,50

[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinTime
value = 181

[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinKO
value = 181+random%2

;-------------------------------------------------------------------------------
; Win pose 1 - Win KO
;-------------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 190,3

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 191,12

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = AssertSpecial
trigger1 = Time < 150
flag = roundnotover

;--------------------------------------------------------------
;tierra
[Statedef 1190]
type = S
ctrl = 0
anim = 8170

[State 1193, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1193, end]
type = DestroySelf
trigger1 = time = 23

;-------------------------------------------------------------------------------
; Win pose 2- Win KO
;-------------------------------------------------------------------------------
[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 190,4+random%2

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 182,0+random%2

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover

;-------------------------------------------------------------------------------
; Win pose 1 - Time Over
;-------------------------------------------------------------------------------
[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 189]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 189]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[state 0]
type = powerset
trigger1 = time = 0
value = 1000

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "superman"
value = 194
ctrl = 0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have
 
[Statedef 191]
type = S
anim = 191
velset = 0,0
spriority = 2

[state ]
type = BGPalFX
trigger1 = time=0
trigger2 = time=18
trigger3 = time=33
trigger4 = time=48
trigger5 = time=58
trigger6 = time=68
time = 105
add = 50,0,0
mul = 100,100,250
invertall = 0
color = 256

[state ]
type = BGPalFX
trigger1 = time=15
trigger2 = time=30
trigger3 = time=45
trigger4 = time=55
trigger5 = time=65
time = 6
add = 255,255,255
mul = 130,130,260
invertall = 0
color = 256

[state ]
type = BGPalFX
trigger1 = time=90
time = 12
add = 255,255,255
mul = 130,130,260
invertall = 0
color = 256
[state ]
type = SprPriority
trigger1 = time<160
value = -1
[state ]
type = SprPriority
trigger1 = time>=160
value = 4

[State 200, ?????????]
type = Statetypeset
trigger1 = 1
statetype = S
movetype = I
physics = S
ignorehitpause = 1

[State , ?????????]
type = Explod 
trigger1 = animelem=1
trigger2 = time%15=0
trigger2 = time<90
anim = 7006
postype = p1
pos = 0,50
random=40,0
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 0

;-----1???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=18
time = 8
freq = 120
ampl = -10
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=15
value = 600, 18
[State 200, ???]
type = PlaySnd 
trigger1 = time=23
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time =15
anim = 7012
facing = 1
postype = p1
pos = -20,0
scale = 1,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=18
anim = 4521
facing = 1
postype = p1
pos = -20,10
scale = 0.6,0.6
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=18
anim = 7019
facing = 1
postype = p1
pos = -20,10
scale = 0.9,0.9
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod 
trigger1 = time=25
anim = 7020
facing = 1
postype = p1
pos = -20,0
scale = 0.8,0.8
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=25
anim = 7017
facing = 1
postype = p1
pos = -20,10
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----1???????-----

;-----2???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=33
time = 8
freq = 120
ampl = -10
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=30
value = 1000,2
[State 200, ???]
type = PlaySnd 
trigger1 = time=38
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time=30
anim = 7012
facing = -1
postype = p1
pos = 50,15
scale = 1,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=33
anim = 4521
facing = -1
postype = p1
pos = 50,25
scale = 0.6,0.6
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=33
anim = 7019
facing = -1
postype = p1
pos = 50,25
scale = 0.9,0.9
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod 
trigger1 = time=40
anim = 7020
facing = -1
postype = p1
pos = 50,15
scale = 0.8,0.8
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=40
anim = 7017
facing = -1
postype = p1
pos = 0,10
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----2???????-----
;-----3???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=48
time = 8
freq = 120
ampl = -12
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=45
value = 600, 18
[State 200, ???]
type = PlaySnd 
trigger1 = time=55
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time=45
anim = 7012
facing = -1
postype = p1
pos = -70,6
scale = 1,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=48
anim = 4521
facing = -1
postype = p1
pos = -70,6
scale = 0.6,0.6
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=48
anim = 7019
facing = -1
postype = p1
pos = -70,6
scale = 0.9,0.9
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod 
trigger1 = time=55
anim = 7020
facing = -1
postype = p1
pos = -70,0
scale = 0.8,0.8
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=55
anim = 7017
facing = -1
postype = p1
pos = -70,0
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----3???????-----
;-----4???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=58
time = 8
freq = 120
ampl = -12
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=55
value = 600, 20
[State 200, ???]
type = PlaySnd 
trigger1 = time=65
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time=55
anim = 7012
facing = 1
postype = p1
pos = 30,6
scale = 1,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=58
anim = 4521
facing = -1
postype = p1
pos = 30,6
scale = 0.6,0.6
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=58
anim = 7019
facing = -1
postype = p1
pos = 30,6
scale = 0.9,0.9
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod  
trigger1 = time=65
anim = 7020
facing = 1
postype = p1
pos = 30,6
scale = 0.8,0.8
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=65
anim = 7017
facing = 1
postype = p1
pos = 30,6
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----4???????-----
;-----5???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=68
time = 8
freq = 120
ampl = -13
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=65
value = 600, 19
[State 200, ???]
type = PlaySnd 
trigger1 = time=75
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time=65
anim = 7012
facing = -1
postype = p1
pos = -37,26
scale = 1,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=68
anim = 4521
facing = -1
postype = p1
pos = -37,26
scale = 0.6,0.6
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=68
anim = 7019
facing = -1
postype = p1
pos = -37,26
scale = 0.9,0.9
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod 
trigger1 = time=75
anim = 7020
facing = -1
postype = p1
pos = -37,31
scale = 0.8,0.8
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=75
anim = 7017
facing = -1
postype = p1
pos = -37,31
scale = 1.2,1.2
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----5???????-----
;-----6???????-----

[State 500, ?????]
type = EnvShake
trigger1 = time=93
time = 38
freq = 120
ampl = -14
phase = 0
[State 200, ???]
type = PlaySnd 
trigger1 = time=90
value = 600, 18
[State 200, ???]
type = PlaySnd 
trigger1 = time=91
value = 400,19
[State 200, ???]
type = PlaySnd 
trigger1 = animelemtime(9) = 0
value = 190,6

[State 200, ???]
type = PlaySnd 
trigger1 = time=100
value = 400,21

[State , ?????????]
type = Explod 
trigger1 = time=93
anim = 7012
facing = 1
postype = p1
pos = 0,0
scale = 1.2,1
bindtime = 100
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ????????]
type = Explod   
trigger1 = time=93
anim = 4521
facing = 1
postype = p1
pos = 0,0
scale = 0.8,0.8
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ignorehitpause = 1
sprpriority = 3
persistent = 0 

[State , ????????]
type = Explod 
trigger1 = time=93
anim = 7019
facing = 1
postype = p1
pos = 0,0
scale = 1,1
removeongethit = 0
supermovetime = 300
pausemovetime = 300
ownpal = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0 

[State , ?????????]
type = Explod 
trigger1 = time=100
anim = 7020
facing = 1
postype = p1
pos = 0,5
scale = 1,1
supermovetime = 300
pausemovetime = 300
sprpriority = 2

[State , ?????????]
type = Explod 
trigger1 = time=100
anim = 7017
facing = 1
postype = p1
pos = 0,5
scale = 1.4,1.4
supermovetime = 300
pausemovetime = 300
sprpriority = 3

;-----6???????-----

[State , ?????????]
type = Explod 
trigger1 = time=95
trigger2 = time=96
trigger3 = time=97
anim = 7006
postype = p1
pos = -10,30
scale = 1.46,1.46
supermovetime = 300
pausemovetime = 300
sprpriority = 0
[State , ?????????]
type = Explod 
trigger1 = time=95
anim = 7026
postype = p1
pos = -10,0
scale = 1,1
supermovetime = 300
pausemovetime = 300
sprpriority = 5

[state ???]
type=playsnd 
trigger1 = time=220
value=400,18 

[State 191, ????]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 200, ????]
type = Changestate
trigger1 = animtime = 0
value = 0



;-------------------------------------------------------------------

;shazam Intro
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 190,14

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, boom]
type = Explod
trigger1 = animelem = 2
anim = 8421
ID = 8421
pos = 0,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 20
ownpal = 1

[State 0, boom]
type = Explod
trigger1 = animelem = 2
anim = 1984
ID = 1984
pos = 0,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 20
ownpal = 1

[State 0, boom]
type = Explod
trigger1 = animelem = 2
anim = 8422
ID = 8422
pos = 0,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 20
ownpal = 1

[State 192, Helper]
type = Helper
trigger1 = time =0
helpertype = normal ;player
name = "billy"
ID = 190
stateno = 1194
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 192, Helper]
type = Helper
trigger1 = time =35
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1195
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------------------------
;billy
[Statedef 1194]
type = S
ctrl = 0
anim = 7703

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =3
value = 190,1

[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1194, end]
type = DestroySelf
trigger1 = time = 78

;--------------------------------------------------------------
;trueno
[Statedef 1195]
type = S
ctrl = 0
anim = 77044

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 190,9

[State 4200, shockwave2]
type = helper
trigger1 =  AnimElem = 5
helpertype = normal
stateno = 4205
ID = 4205
name = "KKZ"
postype = p1
facing = -1
pos = 0,0
ownpal = 1

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 120
 
 

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

[State 195, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S190,2
channel = 0

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;- 
;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------

 

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
 
;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60
SprPriority = -5

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 1000, Helper]
type = Helper
trigger1 = animelem =4
helpertype = normal ;player
name = "sombra"
ID = 191
stateno = 1200
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1
size.yscale = 1.2
SprPriority = 5

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s4000
sparkxy = 0,-90
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4
palfx.time = 10			;Time before opponent regains control in air
palfx.add = 243,192,7
palfx.mul = 256,256,256
palfx.sinadd = -80,-80,-80,3
palfx.invertall = 1

[State -2, Explod]
type = Explod
trigger1 = movehit
anim = 4010
ID = 5010
pos = 0,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
;sombra
[Statedef 1200]
type = S
ctrl = 0
anim = 6420

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State 420, 0]
type = PlaySnd
trigger1 = Time = 0
value = 220,0

[State 1196, end]
type = DestroySelf
trigger1 = animelem = 7

