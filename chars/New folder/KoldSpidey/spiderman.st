;---------------------------------------------------------------------------
; var(1) - Outro

; var(2) - First tick dir activation prevention
; var(3) - Used for pause/superpause and custom state check, basically.
; var(4) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(5) - Persistent direction command detection enabler (due to 2002.04.14).
; var(5) - Hitpause check.
; var(6) - No button on previous tick.
; var(7) - Any dir on this tick.
; var(8) - Any button on this tick.
; var(9) - Matching partner button detected.
; var(10) - AutoTurn bug fixer.
; var(11)- Buffered dir detection disabler.
; var(12)- Max Spider

; var(15) - Taunt
; var(16) - Movie Taunt
; var(17) - Movie Taunt 2
; var(18) - Riser
; var(19) - Spot Light
; var(20) - Air Rave
; var(21) - Stealth Attack
; var(25) - Super Jump
; var(26) - FP Rave Finisher
; var(27) - Air Dash/Wall Cling

; var(30) Target Head Pos

; var(34) Web Swing!
; var(35) Superarmor, Stateno
; var(36) Superarmor, Anim
; var(37) Superarmor, CTRL

; var(40) Ground Roll
; var(41) Difficulty
; var(50) Hit Wall
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.

[statedef 100]
type = S
movetype = I
physics = N
anim = 100
velset = const(velocity.run.fwd.x),const(velocity.run.back.y)
ctrl = 0

[State 102, Dust]
type = explod
trigger1 = animelem = 1
anim = 17103
ID = 7103
sprpriority = 3
postype = p1
vel = 1, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 100
flag = nowalk

[State 100, 8.5]
type = ChangeState
trigger1 = command = "holdup"
value = 40

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.35
ignorehitpause = 1
persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 2 && vel x > 0
x = -0.42
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 106
ctrl = 1

[statedef 101]
type = A
movetype = I
physics = N
anim = 100
velset = const(velocity.run.fwd.x)*2,const(velocity.run.back.y)
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = stateno = 101
value = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 101
flag = nowalk

[State 0, ]
type = Gravity
trigger1 = backedgedist >= -25

[State 0, ]
type = VelSet
trigger1 = backedgedist < -25
trigger1 = time >= 5
x = const(velocity.run.fwd.x)*2
y = 0

[State 0, ]
type = VelSet
trigger1 = backedgedist >= -25
x = const(velocity.run.fwd.x)/2
persistent = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = backedgedist >= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist >= -25
trigger1 = pos y >= 0
value = 52

;---Air Dash---
[Statedef 102]
type    = A
physics = N
velset = 0,-5
ctrl = 0
anim = 102

[State 0, VarSet]
type = VarSet
trigger1 = !time = 0
v = 27
value = 1

[State 0, ]
type = AssertSpecial
trigger1 = time >= 0
flag = NoWalk

[State 0, ]
type = CtrlSet
trigger1 = animelem = 2
value = 1

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,2
channel = 0

[State 0, ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "webline"
ID = 103
pos = 20,-136
stateno = 103
ownpal = 1

[State 0, ]
type = VelAdd
trigger1 = Animelemtime(1) > 8 &&  AnimElemtime(3) < 0
x = .53 

[State 0, ]
type = VelAdd
trigger1 = Animelemtime(2) < 9
y = .47

[State 0, ]
type = VelAdd
trigger1 = Animelemtime(2) >= 4 && AnimElemtime(3) <7
y = -.55

[State 0, ]
type = VelSet
trigger1 = Animelem = 3
x = 7.5 
y = -4.5

[State 0, ]
type = StateTypeSet
trigger1 = Animelemtime(3) > 3
physics = A

[Statedef 103]
type = S
ctrl = 0
anim = 103
velset = 0,0

[State 0, 1]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0 || parent, stateno !=102

[statedef 105]
type = S
movetype = I
physics = N
anim = 105
velset = const(velocity.run.back.x),const(velocity.run.back.y)
ctrl = 0

[State 105, Dust]
type = explod
trigger1 = !time
anim = 17103
ID = 7103
sprpriority = 3
postype = p1
pos = 0, 0
vel = -1, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = nowalk

[State 100, 8.5]
type = ChangeState
trigger1 = command = "holdup"
value = 40

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.37
ignorehitpause = 1
persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 2 && vel x < 0
x = 0.42
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 106
ctrl = 1

; Dash Land
[Statedef 106]
type    = S
physics = S
velset = vel x/2,0
ctrl = 1
anim = 47

[State 52, Dust]
type = explod
trigger1 = !time
anim = 17102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = nowalk

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = 1
y = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---Win--------
[statedef 180]
type = S
movetype = I
physics = S
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 2
value = 184

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 1
value = 182

[State 0, ]
type = ChangeState
trigger1 = time = 0
value = 181

;---------------------------------------------------------------------
; Come On!
[statedef 181]
type = S
movetype = I
physics = S
anim = 181
ctrl = 0

[State 181,1]
type = AssertSpecial
trigger1 = command != "a" && time >= 100
trigger1 = command != "b" && time >= 100
trigger1 = command != "c" && time >= 100
trigger1 = command != "x" && time >= 100
trigger1 = command != "y" && time >= 100
trigger1 = command != "z" && time >= 100
trigger1 = command != "holdfwd" && time >= 100
trigger1 = command != "holdback" && time >= 100
trigger1 = command != "holdup" && time >= 100
trigger1 = command != "holddown" && time >= 100
trigger1 = Time <= 200
trigger2 =  var(0) && animtime = 0
flag = RoundNotOver

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S4,1

; J.J!
[statedef 182]
type = S
movetype = I
physics = S
anim = 182
sprpriority = -8
ctrl = 0

[State 181,1]
type = AssertSpecial
trigger1 = command != "a" && time >= 100
trigger1 = command != "b" && time >= 100
trigger1 = command != "c" && time >= 100
trigger1 = command != "x" && time >= 100
trigger1 = command != "y" && time >= 100
trigger1 = command != "z" && time >= 100
trigger1 = command != "holdfwd" && time >= 100
trigger1 = command != "holdback" && time >= 100
trigger1 = command != "holdup" && time >= 100
trigger1 = command != "holddown" && time >= 100
trigger1 = Time <= 200
trigger2 =  var(0) && animtime = 0
flag = RoundNotOver

[State 0, ]
type = VelSet
trigger1 = time = [13,30]
x = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 11
x = 0

[State 0, ]
type = Explod
trigger1 = animelem = 7
anim = 183
ID = 183
sprpriority = -7
removetime = -1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S3,4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S5,10

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = S12,0

;Symbiote
[statedef 184]
type = S
movetype = I
physics = S
anim = 184
ctrl = 0

[State 181,1]
type = AssertSpecial
trigger1 = command != "a" && time >= 100
trigger1 = command != "b" && time >= 100
trigger1 = command != "c" && time >= 100
trigger1 = command != "x" && time >= 100
trigger1 = command != "y" && time >= 100
trigger1 = command != "z" && time >= 100
trigger1 = command != "holdfwd" && time >= 100
trigger1 = command != "holdback" && time >= 100
trigger1 = command != "holdup" && time >= 100
trigger1 = command != "holddown" && time >= 100
trigger1 = Time <= 200
trigger2 =  var(0) && animtime = 0
flag = RoundNotOver

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 21
value = S3,3

;---Intro-----
[statedef 190]
type = S
movetype = I
physics = S
anim = 190
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 190
flag = intro

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = random > 500
value = 193

[State 0, ]
type = Explod
trigger1 = time = 1
anim = 191
ID = 191
pos = 0,0
removetime = 38
scale = 1, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 40
anim = 191
ID = 191
removetime = 5
scale = .8, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 45
anim = 191
ID = 191
pos = 0,0
scale = .6, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 50
anim = 191
ID = 191
pos = 0,0
scale = .4, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 55
anim = 191
ID = 191
removetime = 5
scale = .2, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 30
anim = 192
ID = 192
removetime = 2
postype = back
pos = backedgedist+15,0
scale = 1, 1
ownpal = 1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 72
add = -200,-200,-200
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 8
time = 2
add = -190,-190,-190
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 9
time = 2
add = -180,-180,-180
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 10
time = 2
add = -170,-170,-170
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 11
time = 2
add = -160,-160,-160
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 12
time = 2
add = -150,-150,-150
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 13
time = 2
add = -140,-140,-140
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 14
time = 2
add = -120,-120,-120
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 15
time = 2
add = -100,-100,-100
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 16
time = 2
add = -90,-90,-90
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 17
time = 2
add = -80,-80,-80
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 18
time = 2
add = -70,-70,-70
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 19
time = 2
add = -60,-60,-60
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 20
time = 2
add = -50,-50,-50
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 21
time = 2
add = -40,-40,-40
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 22
time = 2
add = -30,-30,-30
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 23
time = 2
add = -20,-20,-20
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 24
time = 2
add = -10,-10,-10
mul = 256,256,256

[State 0, ]
type = PlaySnd
trigger1 = animelem = 24
value = S3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 35
value = S5,10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[statedef 193]
type = S
movetype = I
physics = S
anim = 193
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 193
flag = intro

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S3,0

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
trigger2 = animelem = 4
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = floor(-10*const(size.xscale)),-105
removetime = 20
sprpriority = 2

[State 0, ]
type = Explod
trigger1 = animelem = 4
anim = 194
pos = floor(5*const(size.xscale)),-67
removetime = 20
sprpriority = 2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[statedef 1900]
type = S
movetype = I
physics = S
anim = 1900
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 47
value = S5,10
volume = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2name != "Venom"
triggerall = p2name != "Lobo"
trigger1 = animelem = 50
value = S50,2
volume = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2name = "Venom" || p2name = "Lobo"
trigger1 = animelem = 53
value = S50,3
volume = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[statedef 1980]
type = S
movetype = I
physics = S
anim = 1980
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S50,4
persistent = 0

[State 181,1]
type = AssertSpecial
trigger1 = command != "a" && time >= 100
trigger1 = command != "b" && time >= 100
trigger1 = command != "c" && time >= 100
trigger1 = command != "x" && time >= 100
trigger1 = command != "y" && time >= 100
trigger1 = command != "z" && time >= 100
trigger1 = command != "holdfwd" && time >= 100
trigger1 = command != "holdback" && time >= 100
trigger1 = command != "holdup" && time >= 100
trigger1 = command != "holddown" && time >= 100
trigger1 = Time <= 500
trigger2 =  var(0) && animtime = 0
flag = RoundNotOver

[statedef 195]
type = S
movetype = I
physics = S
ctrl = 1

[State 0, ]
type = VarRandom
trigger1 = time = 0
v = 15
range = 1,3

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = time = 0
value = 195

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = time = 0
value = 196

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(15) = 1
trigger1 = animelem = 5,10
trigger2 = var(15) = 2
trigger2 = animelem = 6,10
trigger3 = var(15) = 3
trigger3 = animelem = 7,10
value = 195
elem = 8

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(15) = 2
trigger1 = animelem = 4,3
value = 195
elem = 6

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(15) = 3
trigger1 = animelem = 4,3
value = 195
elem = 7

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(15) = 1
trigger1 = animelem = 5,10
trigger2 = var(15) = 2
trigger2 = animelem = 6,10
trigger3 = var(15) = 3
trigger3 = animelem = 7,10
value = 196
elem = 8

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(15) = 2
trigger1 = animelem = 4,3
value = 196
elem = 6

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(15) = 3
trigger1 = animelem = 4,3
value = 196
elem = 7

[State 0, ]
type = PlaySnd
trigger1 = var(15) = 1
trigger1 = time = 12
value = S4,0
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = var(15) = 2
trigger1 = time = 12
value = S4,1
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = var(15) = 3
trigger1 = time = 12
value = S4,2
channel = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---{Standing Attacks}---
;Punch (light)
[statedef 200]
type = S
movetype = A
physics = S
anim = 200
poweradd = 20
juggle = 1
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = high
air.type = low
damage = 15,0
pausetime = 7,6
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -4
guard.velocity = -3
air.velocity = 0,-4
airguard.velocity = -3,-1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
getpower  = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Punch (medium)
[statedef 210]
type = S
movetype = A
physics = S
anim = 210
poweradd = 30
juggle = 2
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = movehit
v = 18
value = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, Width]
type = Width
trigger1 = time = [6,20]
edge = 30,0
player = 35,-40
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 12,8
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-110
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.slidetime = 25
air.hittime = 25
ground.velocity = 0,-8.5
guard.velocity = -3
air.velocity = 0,-8
airguard.velocity = -2,-2
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
getpower  = 30
givepower = 15

[State 0, ]
type = ChangeState
trigger1 = command = "holdup"
trigger1 = movecontact = 1
value = 40

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Punch (fierce)
[statedef 220]
type = S
movetype = A
physics = S
anim = 220
poweradd = 45
juggle = 3
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, Width]
type = Width
trigger1 = time = [6,21]
edge = 30,0
player = 30,-20
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 11,11
guard.pausetime = 6,5
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.velocity = -8,-3
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -12
yaccel = 0.5
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0
;fall.recovertime = 5
down.bounce = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (light)
[statedef 230]
type = S
movetype = A
physics = S
anim = 230
poweradd = 20
juggle = 1
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = low
air.type = low
damage = 15,0
pausetime = 7,7
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -4
guard.velocity = -3
air.velocity = 0,-3
airguard.velocity = -3,-1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
getpower  = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (medium)
[statedef 240]
type = S
movetype = A
physics = S
anim = 240
poweradd = 30
juggle = 2
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 3
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = medium
air.animtype = medium
fall.animtype = Back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 9,9
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -6
guard.velocity = -3
air.velocity = 0,-6
airguard.velocity = -2,-2
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
getpower  = 30
givepower = 15
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (fierce)
[statedef 250]
type = S
movetype = A
physics = S
anim = 250
poweradd = 45
juggle = 3
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = movehit
v = 18
value = 12
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = hard
air.animtype = up
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 12,10
guard.pausetime = 6,5
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 35
ground.hittime = 20
air.slidetime = 35
air.hittime = 35
ground.velocity = -8,0
guard.velocity = -3
air.velocity = -0,-8
airguard.velocity = -2,-1
ground.cornerpush.veloff = -11
air.cornerpush.veloff = -11
getpower  = 40
givepower = 20

[State 0, ]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "holdup"
value = 40

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---{Crouching Attacks}---
;Punch (light)
[statedef 400]
type = C
movetype = A
physics = S
anim = 400
poweradd = 20
ctrl = 0
vel = vel x*1.5,0
juggle = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = C,NA
hitflag = MAFD
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 10,0
pausetime = 7,7
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-5
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.velocity = -4
guard.velocity = -3
air.velocity = -4,0
airguard.velocity = -3,-1
down.velocity = -3,-4
down.hittime = 24
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
getpower  = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Punch (medium)
[statedef 410]
type = C
movetype = A
physics = S
anim = 410
poweradd = 30
ctrl = 0
juggle = 3

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAFD
guardflag = MA
damage = 25,0
pausetime = 9,9
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -7,0
guard.velocity = -3
air.velocity = -7,-2
airguard.velocity = -2,-2
down.velocity = -2,-8
down.hittime = 32
down.slidetime = 32
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
guard.cornerpush.veloff = -15
airguard.cornerpush.veloff = -15
getpower  = 30
givepower = 15
fall = 0
fall.recover = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Punch (fierce)
[statedef 420]
type = C
movetype = A
physics = S
anim = 420
poweradd = 45
ctrl = 0
juggle = 4

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, Width]
type = Width
trigger1 = time = [7,18]
edge = 30,0
player = 45,-35
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
hitflag = MAF
guardflag = LA
damage = 45,0
pausetime = 10,10
guard.pausetime = 6,5
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-40
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 18
ground.hittime  = 18
air.hittime = 20
ground.velocity = -10,0
guard.velocity = -3
air.velocity = -10,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
getpower  = 40
givepower = 20

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (light)
[statedef 430]
type = C
movetype = A
physics = S
anim = 430
poweradd = 20
ctrl = 0
juggle = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 1
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = C,NA
hitflag = MAFD
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 15,0
pausetime = 7,7
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-10
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -3,-1
down.velocity = -3,-5
down.hittime = 24
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
getpower  = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (medium)
[statedef 440]
type = C
movetype = A
physics = S
anim = 440
poweradd = 30
ctrl = 0
juggle = 3

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,9
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.slidetime = 10
air.hittime = 10
ground.velocity = -0.25,-5
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-2
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
guard.cornerpush.veloff = -15
airguard.cornerpush.veloff = -15
getpower  = 30
givepower = 15

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (fierce)
[statedef 450]
type = C
movetype = A
physics = S
anim = 450
poweradd = 45
ctrl = 0
juggle = 7

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, Width]
type = Width
trigger1 = time = [6,26]
edge = 40,0
player = 40,-65
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
hitflag = MAF
damage = 45,0
guardflag = L
pausetime = 6,12
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -10,-15
hitsound = S5,3
guardsound = S5,8
ground.type = Trip
ground.slidetime = 24
ground.hittime  = 24
ground.velocity = 0,-4
air.hittime = 32
air.velocity = 0,-3
airguard.ctrltime = 26
airguard.velocity = -10,1
guard.velocity = -10
down.velocity = -3,-6
down.hittime = 32
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
guard.cornerpush.veloff = 0
getpower  = 40
givepower = 20
yaccel =.65
fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---{Jumping Attacks}---
;Punch (light)
[statedef 600]
type = A
movetype = A
physics = N
anim = 600
poweradd = 20
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = high
air.type = high
damage = 15,0
pausetime = 10,10
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 7,-30
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-10
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower  = 20
givepower = 10

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 610, end]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(var(25),701,50)
ctrl = ifelse(!movecontact && var(25),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1

;Punch (medium)
[statedef 610]
type = A
movetype = A
physics = N
anim = 610
poweradd = 30
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = medium
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,0
pausetime = 11,12
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 5,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-6
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 30
givepower = 15
persistent = 0

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 610, end]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(var(25),701,50)
ctrl = ifelse(!movecontact && var(25),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1

;Punch (fierce)
[statedef 620]
type = A
movetype = A
physics = N
anim = 620
poweradd = 45
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, VarSet]
type = VarSet
trigger1 = movehit = 0
v = 26
value = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
triggerall = prevstateno != [600,640]
trigger1 = movecontact = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 10,15
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10
yaccel=.65
getpower  = 40
givepower = 20

[State 0, VarSet]
type = VarSet
triggerall = prevstateno != [600,640]
trigger1 = movehit = 1
v = 26
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
triggerall = prevstateno = [600,640]
trigger1 = movecontact = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 12,14
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =-5
down.velocity = 0,0
down.hittime = 32
guard.hittime = 2
down.bounce = 1
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
getpower  = 40
givepower = 20
yaccel=.65
persistent = 0

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 650, 1a]
type = VarSet
trigger1 = prevstateno = [600,650]
trigger1 = P2moveType = H
v = 20
value = 1
ignorehitpause = 1

[State 650, 2a]
type = ScreenBound
trigger1 =  var(20)=1 && time>=5 && movehit
value = 0
ignorehitpause = 1

[State 650, end]
type = ChangeState
trigger1 = BackEdgeBodyDist <= -1
value = 624
ctrl = 0

[State 650, end]
type = ChangeState
trigger1 = AnimTime = 0 && !movehit
value = ifelse(var(25),701,50)
ctrl = ifelse((!var(20)||var(25)),1,0)

[State 650, end]
type = ChangeState
trigger1 = AnimTime = 0 && movehit
value = 623
ctrl = 0;ifelse(!var(1),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1



;-----------------------------------------------------------------------
;Rave Finisher Attack
;-----------------------------------------------------------------------

[Statedef 623]
type    = A
physics = A

[State 623, a1]
type = ChangeAnim
trigger1 = !Time
value = 51

[State 623, a3]
type = ScreenBound
triggerall = var(20) = 1
trigger1=1
value = 1
movecamera = 0,0
ignorehitpause = 1

[Statedef 624] ;jump down aerial rave
type    = A
physics = N

[State 624, 0]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 624, 1a]
type = VarSet
trigger1 = !time
v = 1
value = 0
ignorehitpause = 1

[State 624, a]
type = ChangeAnim
trigger1 = !Time
value = 51

[State 624, 0]
type = ScreenBound
trigger1 = 1
value = 0

[State 624, 1]
type = ChangeState
trigger1 = time>= 25
;trigger2 = (enemynear,vel x = [-3,3]) && (enemynear,vel y = 0)
value = 625
ctrl = 0

[Statedef 625];wait out screen
type = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 192, A7]
type = PosSet
trigger1 = !time
y = 0

[State 625, 0]
type = VelSet
trigger1 = time>5
x = 25

[State 625, 0]
type = ScreenBound
trigger1 = 1
value = 0

[State 625, 1]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 625, 2]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 625, 3]
type = ChangeState
trigger1 = p2bodydist x <= 230
;trigger2 = BackEdgeDist > -10
value = 101
ctrl = 0

;----------------------------------------------------
;Kick (light)
[statedef 630]
type = A
movetype = A
physics = N
anim = 630
poweradd = 20
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 2,0
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = medium
fall.animtype = back
ground.type = high
air.type = low
damage = 15,0
pausetime = 10,11
guard.pausetime = 3,2
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-45
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-6
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower  = 20
givepower = 10

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 610, end]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(var(25),701,50)
ctrl = ifelse(!movecontact && var(25),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1

;Kick (medium)
[statedef 640]
type = A
movetype = A
physics = N
anim = 640
poweradd = 30
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 11,12
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-85
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = 0,-6
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 30
givepower = 15

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 610, end]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(var(25),701,50)
ctrl = ifelse(!movecontact && var(25),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1

;Kick (fierce)
[statedef 650]
type = A
movetype = A
physics = N
anim = 650
poweradd = 45
juggle = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = prevstateno = 102
x = vel x/2
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
triggerall = prevstateno != [600,640]
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 13,13
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -17,6
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10
yaccel=.65
getpower  = 40
givepower = 20

[State 0, ]
type = HitDef
triggerall = prevstateno = [600,640]
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,0
pausetime = 16,13
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -17,6
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
getpower  = 40
givepower = 20

[State 650, xyz]
type = veladd
trigger1 = time>=0
y = ifelse(!var(25),const(movement.yaccel),ifelse(vel y<0,.4,.25))

[State 650, 1a]
type = VarSet
trigger1 = prevstateno = [600,650]
trigger1 = P2moveType = H
v = 20
value = 1
ignorehitpause = 1

[State 650, 2a]
type = ScreenBound
trigger1 =  var(20)=1 && time>=5 && movehit
value = 0
ignorehitpause = 1

[State 650, end]
type = ChangeState
trigger1 = BackEdgeBodyDist <= -1
value = 624
ctrl = 0

[State 650, end]
type = ChangeState
trigger1 = AnimTime = 0 && !movehit
value = ifelse(var(25),701,50)
ctrl = ifelse((!var(20)||var(25)),1,0)

[State 650, end]
type = ChangeState
trigger1 = AnimTime = 0 && movehit
value = 623
ctrl = 0;ifelse(!var(1),1,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y >0 && pos y >= 0
value = 52
ctrl = 1
;---{Push Back}---
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 6300
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6305
ID = 6305
bindtime = 23
removetime = -2
sprpriority = 3

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 140
ctrl = 1

[Statedef 6310];--------------crouch
type    = C
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 6310
sprpriority = 2

[State 6310, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6310, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6315
ID = 6305
bindtime = 23
removetime = -2
sprpriority = 3

[State 6310, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6310, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6310, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6310, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 140
ctrl = 1

[Statedef 6320]
type    = A
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 6320
sprpriority = 2

[State 6320, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6320, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6320, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6325
ID = 6305
bindtime = 23
removetime = -2
sprpriority = 3

[State 6320, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6320, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 140
ctrl = 1

[Statedef 6350];guard push helper
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 6350
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18


; (Credit to ANMC, Bagaliao, and FlowaGirl for the basic helper method concept.)
;
;------------------
; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(2) - First tick button activation prevention.
; var(3) - Used for pause/superpause and custom state check, basically.
; var(4) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(5) - Persistent direction command detection enabler (due to 2002.04.14).
; var(10) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(2)
var(3) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(4):=0
var(3) = (var(4):=1)+(var(5):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(10):=(Facing != Parent,Facing)
trigger1 = !(var(5):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(4) || var(10))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(5):=1)
var(58) = var(5)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(4)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = var(5):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(3)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(58) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(3)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(3) = 2
trigger8 = var(3):=0
var(3) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(2):=1
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(2) - First tick dir activation prevention
; var(3) - Used for pause/superpause and custom state check, basically.
; var(4) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(5) - Hitpause check.
; var(6) - No button on previous tick.
; var(7) - Any dir on this tick.
; var(8) - Any button on this tick.
; var(9) - Matching partner button detected.
; var(10) - AutoTurn bug fixer.
; var(11)- Buffered dir detection disabler.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(2)
var(3) = var(4):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(4):=0
var(3) = var(4):=1

[State 9742, Facing]
type = Turn
trigger1 = var(10):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(7):=0
var(7) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(4) || var(5) || var(11)
var(11) = var(7)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(8)
triggerall = !var(3)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(9):=0
var(9) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(7)
trigger1 = !(var(10) || var(11))
var(58) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(4)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(6) && var(8)
trigger1 = !(var(3) || var(9))
var(58) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(8)
triggerall = !(var(3) || var(9))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(3)
triggerall = !var(5)
trigger1 = var(8)
trigger2 = var(3) = 2
trigger2 = var(3):=0
var(3) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(7) || var(8)
trigger2 = !(Parent,HitPauseTime)
var(5) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(2):=1
var(6) = !var(8)

[Statedef 6200]
type    = S                      
movetype= H                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                                               
poweradd = 0                    
sprpriority = -2
anim=8999

[State 191, Zero Counter Set]
type = VarSet
trigger1 = 1
v = 10
value = 1

[State 6000, pal]
type = PalFX
trigger1 = TimeMod = 8,0
time = 3
add = 48,-70,-70
ignorehitpause = 1

[State 6000, pal]
type = PalFX
trigger1 = TimeMod = 8,2
time = 3
add = 28,-28,-70
ignorehitpause = 1

[State 6000, pal]
type = PalFX
trigger1 = TimeMod = 8,4
time = 3
add = -10,110,-10
ignorehitpause = 1

[State 6000, pal]
type = PalFX
trigger1 = TimeMod = 8,6
time = 3
add = 8,0,70
ignorehitpause = 1

[State 6000, pal]
type = PalFX
trigger1 = TimeMod = 8,8
time = 3
add = 8,8,70
ignorehitpause = 1

[State 3710,PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 1,11
volume=99
channel=1

[State 6000, pal]
type = PalFX
trigger1 = time =0
time = 3333
add = 8,0,70
ignorehitpause = 1

[State 1027, flashasos]
type = Explod
trigger1 = time = 0
anim = 6200
id=6200
pos = -30, 0
postype = back
sprpriority = -2
supermovetime=444
removetime=99999999
scale= 1,1.1
bindtime=999999

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = roundnotover

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0,70]
flag = nomusic

[State 1025, State]
type = changestate
trigger1 = time = 60
value= 6201

[Statedef 6201]
type    = S                      
movetype= H                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                                               
poweradd = 20                    
sprpriority = -2
anim=8999

[State 1027, space]
type = removeExplod
trigger1 = time = 0
anim = 6011
id=6011

[State 1027, space]
type = removeExplod
trigger1 = time = 0
anim = 6200
id=6200

[State 1025, State]
type = destroyself
trigger1 = time=15500

[Statedef 800800]
type    = S
physics = N
movetype= I
anim = 800800
ctrl = 0
velset = 0,0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 810, HitBy]
type = HitBy
trigger1 = time <= 22
value = SCA, NT,ST,HT

[State 810, Push]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0
value = 0

[State 810, AfterImage]
type = Afterimage
trigger1 = AnimElem = 1
time = 23
length = 10
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = .5,.5,.5
trans = add1

[State 810, StateChange]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 830830]
type    = S
physics = S
movetype = I
anim = 830830
ctrl = 0
velset = 0,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 810, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 800, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NT,ST,HT

[State 800, AfterImage]
type = Afterimage
trigger1 = AnimElem = 1
time = 25
length = 10
FrameGap = 6
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = .5,.5,.5
trans = add1

[State 800, StateChange]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========<PotS' POWER CHARGE>==========
[Statedef 16060]
type=S
physics=S
movetype=I
anim=16060
ctrl=0
velset=0,0

[State 740, power]
type=poweradd
triggerall= anim=16060 && power<powermax
trigger1= var(0)<=0 && (command="holdb" && command="holdy")
trigger2= var(0)>=1
value=2+ifelse(time<60,0,(time-60)/10)

[State 740, FX]
type = helper
trigger1 = anim = 16060 && animelemtime(4) >= 0
trigger1 = !numhelper(7240)
helpertype = normal
stateno = 17240
ID = 7240
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = anim = 16060 && animelemtime(4) >= 0
trigger1 = !numhelper(7243)
helpertype = normal
stateno = 17243
ID = 7243
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, Snd]
type=playsnd
trigger1= anim=16060 && time=6
value=0,8
channel=0

[State 740, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 740, Anim]
type=changeanim
triggerall= anim!=16061
trigger1= var(0)<=0 && (command!="holdb" || command!="holdy")
trigger2= power>=const(data.power) || power>=powermax || roundstate!=2
trigger3= var(0)>=1 && (inguarddist || p2movetype=A || p2dist x<160)
value=16061

[State 740, ctrl]
type=ctrlset
trigger1=anim=16061
value=1

[State 740, stopsnd]
type=stopsnd
trigger1= anim=16061
channel=0
persistent=0
persistent=0
[State 740, End]
type=changestate
trigger1= anim=16061 && !animtime
value=0
ctrl=1

;Counter
[statedef 10900]
type = S
movetype = A
physics = S
anim = 10900
poweradd = 0
juggle = 2
ctrl = 0

[State 810, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NT,ST,HT

[State 750, Super Pause FX]
type = helper
trigger1 = animelem = 1 && !numhelper(7250)
helpertype = normal
stateno = 17250
ID = 7250
postype = p1
pos = floor(22*const(size.xscale)), floor(-38*const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 999
[State 750, Super Pause]
type = superpause
trigger1 = animelem = 1
time = 20
movetime = 20
anim = -1
sound = s17, 1
p2defmul = 1
darken = 0
poweradd = -1000

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, Width]
type = Width
trigger1 = time = [6,20]
edge = 30,0
player = 35,-40
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 2,1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 100,0
pausetime = 12,8
guard.pausetime = 5,4
sparkno = s17010 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-110
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.slidetime = 25
air.hittime = 25
ground.velocity = -15,-2
guard.velocity = -3
air.velocity = -15,-2
airguard.velocity = -2,-2
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recover = 0
getpower  = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Jump Dust Helper
[Statedef 17100]
physics = N
velset = 0, 0
anim = 9741
[State 7100, Bind]
type = bindtoroot
trigger1 = time
[State 7100, Dust]
type = explod
trigger1 = !time
anim = 17100
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 17101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = time >= 7

;Power Charge FX
[Statedef 17240]
type = S
anim = 17240
velset = 0, 0
ctrl = 0

[State 7240, Bind]
type = bindtoroot
trigger1 = (root, stateno = 16060) && (root, anim = 16060)
pos = 0, 0
[State 7240, Snd]
type = playsnd
trigger1 = !time
value = 17, 4
channel = 0

[State 7240, Aura]
type = explod
trigger1 = !numexplod(7242)
ID = 7242
anim = 17242
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power < 3000)
ID = 7242
scale = 0.5, 0.1 + .4 * (root, power / 3000.0)
[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power >= 3000)
ID = 7242
scale = 0.5, 0.5

[State 7240, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7240, End]
type = stopsnd
trigger1 = (root, stateno != 16060) || (root, anim != 16060) || (root, movetype = H)
channel = 0
[State 7240, End]
type = removeexplod
trigger1 = (root, stateno != 16060) || (root, anim != 16060) || (root, movetype = H)
[State 7240, End]
type = destroyself
trigger1 = (root, stateno != 16060) || (root, anim != 16060) || (root, movetype = H)

; Power Charge Particles
[Statedef 17243]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 7243, Bind]
type = bindtoroot
trigger1 = !(time % 4)
pos = ceil(-90 + (random / 6.25)), ceil(20 -(random / 6.25))

[State 7243, Particle]
type = explod
trigger1 = (time % 4) = 1
anim = 17243
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x +6) / 16.0), ((rootdist y -85) / 16.0)
scale = ifelse(random < 500, 0.5, -.5), ifelse(random < 500, 0.5, -.5)
removetime = 16
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7243, End]
type = removeexplod
trigger1 = (root, stateno != 16060) || (root, anim != 16060) || (root, movetype = H)
[State 7243, End]
type = destroyself
trigger1 = (root, stateno != 16060) || (root, anim != 16060) || (root, movetype = H)

;Counter FX
[Statedef 17250]
physics = N
velset = 0, 0
anim = 9741

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 20
add = -255, -128, -64
sinadd = 255, 128, 64, 80
persistent = 0
[State 7250, palfx]
type = palfx
trigger1 = !time
time = 20
sinadd = -255, -255, -255, 80

[State 7250, Dust]
type = explod
trigger1 = !time
anim = 17104
ID = 7104
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = 30
ownpal = 1
[State 7250, thunder]
type = explod
trigger1 = !time
anim = 17250
ID = 7250
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
removetime = -2
supermovetime = 30
ownpal = 1
[State 7250, Circle]
type = explod
trigger1 = !time
anim = 17251
ID = 7251
sprpriority = 3
postype = p1
removetime = 20
supermovetime = 30

[State 7250, Shrink]
type = modifyexplod
trigger1 = numexplod(7251)
ID = 7251
scale = 0.2 + (0.09 * time), 0.2 + (0.09 * time)
[State 7250, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7250, End]
type = destroyself
trigger1 = time >= 20

;Super Spark Helper
[Statedef 17500]
physics = N
velset = 0, 0
anim = 9741

[State 7500, Lv1]
type = bgpalfx
trigger1 = time <= 10 && root, var(42) = 5
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(25.6 * time), 256 -floor(25.6 * time), 256
color = 256 -floor(25.6 * time)
[State 7500, Lv1]
type = bgpalfx
trigger1 = (time = [11, 39]) && root, var(57) = 5
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv1]
type = bgpalfx
trigger1 = time >= 40 && root, var(42) = 5
time = 1
mul = ceil(51.2 * (time -40)), ceil(51.2 * (time -40)), 256
color = floor(51.2 * (time -40))

[State 7500, Lv2]
type = bgpalfx
trigger1 = time <= 15 && root, var(42) = 6
time = 1
add = 256 -ceil(17.07 * time), 256 -ceil(17.07 * time), 256 -ceil(17.07 * time)
mul = 256 -floor(17.07 * time), 256 -floor(17.07 * time), 256
color = 256 -floor(17.07 * time)
[State 7500, Lv2]
type = bgpalfx
trigger1 = (time = [16, 47]) && root, var(42) = 6
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv2]
type = bgpalfx
trigger1 = time >= 48 && root, var(42) = 6
time = 1
mul = ceil(51.2 * (time -48)), ceil(51.2 * (time -48)), 256
color = floor(51.2 * (time -48))

[State 7500, Lv3]
type = bgpalfx
trigger1 = time <= 20 && root, var(42) = 7
time = 1
add = 256 -ceil(12.8 * time), 256 -ceil(12.8 * time), 256 -ceil(12.8 * time)
mul = 256 -floor(12.8 * time), 256 -floor(12.8 * time), 256 -floor(12.8 * time)
color = 256 -floor(12.8 * time)
[State 7500, Lv3]
type = bgpalfx
trigger1 = (time = [21, 54]) && root, var(42) = 7
time = 1
mul = 0, 0, 0
color = 0
[State 7500, Lv3]
type = bgpalfx
trigger1 = time >= 55 && root, var(42) = 7
time = 1
mul = ceil(51.2 * (time -55)), ceil(51.2 * (time -55)), ceil(51.2 * (time -55))
color = floor(51.2 * (time -55))

[State 7500, Spiral]
type = helper
trigger1 = !time && root, var(42) >= 6
helpertype = normal
stateno = 17509
ID = 7509
name = "Super Charge Spiral"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 7500, Main]
type = explod
trigger1 = !time
anim = 17500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1
[State 7500, Large Circle]
type = explod
trigger1 = !time
anim = 17501
ID = 7501
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Portrait]
type = explod
trigger1 = time = 1 && root, var(42) = 7 && Root, StateNo != 3601
anim = ifelse((root, var(1) = 2), 17511, 17510)
ID = 7510
postype = back
pos = 160, 120
sprpriority = -16
bindtime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = !time
anim = 17502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 7
anim = 17502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 14
anim = 17502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 21
anim = 17502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 28
anim = 17502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(42) = 5
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(42) = 6
ID = 7500
scale = 1.5 -(0.0283 * time), 1.5 -(0.0283 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(42) = 7
ID = 7500
scale = 1.5 -(0.025 * time), 1.5 -(0.025 * time)

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time < 8
ID = 7510
postype = back
pos = -160 + (40 * time), 120
scale = 0.5, 0.5
trans = addalpha
alpha = (32 * time), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && (time = [8, 50])
ID = 7510
postype = back
pos = 160, 120
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time >= 50 && root, var(1) != 2
ID = 7510
postype = back
pos = 160 -(20 * (time -50)), 120 + (40 * (time -50))
scale = 0.5 + (0.25 * (time -50)), 0.5 + (0.25 * (time -50))
trans = addalpha
alpha = 256 -ceil(25.6 * (time -50)), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time >= 50 && root, var(1) = 2
ID = 7510
postype = back
pos = 160 -(18 * (time -50)), 120 + (32 * (time -50))
scale = 0.5 + (0.25 * (time -50)), 0.5 + (0.25 * (time -50))
trans = addalpha
alpha = 256 -ceil(25.6 * (time -50)), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

[State 7500, Safety]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
[State 7500, No bars]
type = assertspecial
trigger1 = root, var(57) = 7
flag = nobardisplay
flag2 = noFG

[State 7500, Safety]
type = removeexplod
trigger1 = root, var(42) = 5 && time >= 45
trigger2 = root, var(42) = 6 && time >= 53
trigger3 = time >= 60
[State 7500, End]
type = destroyself
trigger1 = root, var(42) = 5 && time >= 45
trigger2 = root, var(42) = 6 && time >= 53
trigger3 = time >= 60

;Spiral
[Statedef 17509]
physics = N
anim = 17509
sprpriority = 5
[State 7509, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = !time
value = -15 * (random % 24)
[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -15

[State 7509, Angle]
type = angledraw
trigger1 = root, var(42) = 6
scale = 1 -(time / 53.0), 1 -(time / 53.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(42) = 6
trans = addalpha
alpha = floor(4.83 * time), 256

[State 7509, Angle]
type = angledraw
trigger1 = root, var(42) = 7
scale = 1 -(time / 60.0), 1 -(time / 60.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(42) = 7
trans = addalpha
alpha = floor(4.267 * time), 256

[State 7509, End]
type = destroyself
trigger1 = root, var(42) = 6 && time >= 53
trigger2 = time >= 60

;Super KO Helper
[Statedef 17600]
type = A
velset = 0, 0
anim = 9741
[State 7600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 7600, Snd]
type = playsnd
trigger1 = !time
value = 17, 7
channel = 1

[State 7600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 7600, MvC]
type = explod
trigger1 = !time
anim = 17601
ID = 7601
ontop = 1
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Fade]
type = modifyexplod
trigger1 = numexplod(7601)
ID = 7601
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 7600, Circle]
type = explod
trigger1 = !time
anim = 17600
ID = 7600
sprpriority = -255
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Scale]
type = modifyexplod
trigger1 = numexplod(7600)
ID = 7600
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 7600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 7600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 7600, End]
type = destroyself
trigger1 = roundstate < 3
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
[State -2, AssertSpecial]
type = AssertSpecial
triggerall = roundno = 1
trigger1 = roundstate < 2
flag = NoMusic

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = !numhelper(7600)
trigger1 = stateno = [2000,4999]
trigger2 = stateno = [6000,6999]
helpertype = normal
stateno = 17600
ID = 7600
name = "KO FX"
postype = left
pos = 160, -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 40, 3]
type = VarSet
triggerall = stateno != 40
trigger1 = statetype != A
v = 43
value = 0

[State -2, AfterImageTime]
type = AfterImageTime
trigger1 = movetype = H
time = 0

[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you to treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(0):=0
var(0) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1


[State 0, ]
type = PosSet
triggerall = prevstateno = [100,106]
trigger1 = stateno = [200,450]
trigger2 = stateno = [10,12]
y = 0

[State 0, ]
type = VelSet
triggerall = prevstateno = [100,106]
trigger1 = stateno = [200,450]
trigger2 = stateno = [10,12]
y = 0

[State 0, ]
type = PlaySnd
triggerall = anim = 47
trigger1 = time = 1
value = 5,10
channel = 9
lowpriority = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VarSet
trigger1 = ctrl = 1
v =  20
value = 0
ignorehitpause = 1

[State 0, ]
type = VarSet
trigger1 = 1
v =  30
value = -(Enemynear,const(size.head.pos.y))
ignorehitpause = 1

[State -2, Hit Wall] ;Based in HIT WALL CODES - Thanks to DG && SMI (Bia)
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9020
triggerall = target(0), vel X < -6;-7
trigger1 = StateNo = 220 && movehit
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = StateNo = 220 && movehit
trigger2 = target(0), FrontEdgeBodyDist <= 20
trigger2 = var(50) :=1
trigger3 = (StateNo = [1300,1325]) && (movehit)&& (P2BodyDist X > 75)
trigger3 = target(0), BackEdgeBodyDist <= 20
trigger3 = var(50) :=1
trigger4 = (StateNo = [1300,1325]) && (movehit)&& (P2BodyDist X > 75)
trigger4 = target(0), FrontEdgeBodyDist <= 20
trigger4 = var(50) :=1
value = 9020
ID = 0

[State -2, a9];p2 bounce ground mvsc style
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0 && !win
triggerall = target(0),  StateNo != 9023
trigger1 = !var(20) && prevStateNo = 650
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
trigger2 = !var(20) && StateNo = 650 && movehit
trigger2 = target(0), stateno=5100
trigger2 = var(50) :=1
trigger3 = !var(20) && StateNo = 220 && movehit
trigger3 = target(0), stateno=5100
trigger3 = var(50) :=1
trigger4 = !var(20) && prevStateNo = 220
trigger4 = target(0), stateno=5100
trigger4 = var(50) :=1
trigger5 = !var(20) && StateNo = 1705 && movehit
trigger5 = target(0), stateno=5100
trigger5 = var(50) :=1
trigger6 = !var(20) && prevStateNo = 1705
trigger6 = target(0), stateno=5100
trigger6 = var(50) :=1
trigger7 = !var(20) && var(26) = 1 && StateNo = 620 && movehit
trigger7 = target(0), stateno=5100
trigger7 = var(50) :=1
trigger8 = !var(20) && var(26) = 1  && prevStateNo = 620
trigger8 = target(0), stateno=5100
trigger8 = var(50) :=1
value = 9023
ID = 0

[State -2, reset var(50)]
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)]
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, A3]
type = VarSet
trigger1 = (Var(40) = 1) && (MoveType != H)
var(40) = 0

[State 0, PosSet]
type = PosSet
trigger1 = prevstateno = 100
trigger2 = prevstateno = 150
y = 0
ignorehitpause = 14
persistent = 0

[State 0, PosSet]
type = VelSet
trigger1 = prevstateno = 100
trigger2 = prevstateno = 150
y = 0
ignorehitpause = 14
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = numhelper(7010)!= 0
time = 2
add = -255,-255,-255
ignorehitpause = 1
persistent = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
;
; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
; Feel free to move this controller to your character's intro state for slightly
; better efficiency.
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy
; control options in Training mode without activating the dummy's AI while
; working on the character, then all you need to do is temporarily disable
; this controller.  Or, if you want to permanently disable this controller in
; Training mode, then you could use the Training mode detection code available
; from my site ( http://www.mugenguild.net/~winane/ ), and then just add a
; "(var(59)&63)>30" triggerall to this controller.
; Alternatively, you can just set "Dummy control" to "Manual", press a P2 button
; to kill the AI helper, and then set dummy control back to "Cooperative".  (In
; fact, setting dummy control to manual isn't even necessary, if you press the
; P2 button prior to the first time you pause.)
[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(58) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

; Within StateDef -3, none of your own AI-related code should come after the code
; provided here (and putting it before the code is also generally a bad idea).
; It's better to use State -1 (or, in special circumstances, State -2) instead.

[State -3, a1]
type = varadd
trigger1 = time = 1 && movetype = A && fvar(30)<.8
fvar(30)= ifelse((stateno = [2000,2499]) && movehit,.09,ifelse((stateno = [2500,4999]),.30,ifelse((stateno = [6000,30000]),.30,ifelse((stateno = [1000,1999]),.20,.10))))
ignorehitpause = 1

[State -3, a2];reset
type = varset
trigger1 = numenemy && fvar(30)
trigger1 = (enemynear,movetype!=H)
fvar(30) = 0
persistent = 0
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 9005
pos = -300

[State -3,]
type = VarSet
trigger1= (MoveType != H)
var(35) = StateNo
ignorehitpause = 1

[State -3,]
type = VarSet
trigger1 = MoveType != H && StateNo != 9000
var(37) = Ctrl

[State 0, VarSet]
type = VarSet
triggerall = var(25) !=0
trigger1 = statetype != A && ctrl
v = 25
value = 0
ignorehitpause = 1
persistent = 1

[State 0, VarSet]
type = VarSet
triggerall = var(27) !=0
trigger1 = statetype != A && ctrl
v = 27
value = 0
ignorehitpause = 1
persistent = 1

[State 0, VarSet]
type = VarSet
triggerall = var(34) !=0
trigger1 = statetype != A
v = 34
value = 0
ignorehitpause = 1
persistent = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(0)
v = 41
value = ceil(const(data.sparkno)*ifelse((const(data.sparkno)=[3,6]),100,ifelse(const(data.sparkno)<3,25,ifelse(const(data.sparkno)<=9,75,50))))


;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
