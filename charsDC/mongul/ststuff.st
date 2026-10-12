;---------------------------------------------------------------------------
;----------------------STRIKERS---------------------------------------------
;---------------------------------------------------------------------------
;Calling Cyborg Henshaw
;---------------------------------------------------------------------------
[Statedef 4100]
type = S
movetype= A
physics = S
poweradd= -500
anim = 4010
ctrl = 0
sprpriority = 2

[state 4100, snd]
type = playsnd
trigger1 = time = 0
value = 40,6

[State 4100,helper]
type = Helper
triggerall = !NumHelper(4000)
trigger1 = time = 7
ID = 4000
pos = 40,-200
;postype = back
stateno = 4000
helpertype = normal
name = "henshaw"
keyctrl = 0
BindtoParent =1
;ownpal = 1

[state 4100, changestate]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------
;-------Henshaw Falling
;------------------------
[statedef 4000]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4000
velset = 0,9
sprpriority = -2


[state 4000, snd]
type = playsnd
trigger1 = time = 0
volume = 1000
value = 70,0

[state 4000, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4000, destroy]
type = Destroyself
trigger1 = time = 70

[state 4000, gethit]
type = hitoverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 4001

[state 4000, change]
type = changestate
trigger1 = RootDist y<=15
value =4004
ctrl = 0

[state 4000, set]
type = Velset
trigger1 = RootDist y<=15
x = 0

;-------Henshaw Fly Gethit------------
[statedef 4001]
type = S
movetype = I
physics = S
anim = 4002
sprpriority = -2

[state 4001, snd]
type = playsnd
trigger1 = time = 0
value = 70,3

[state 4001, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4001, changestate]
type = changestate
trigger1 = animtime = 0
value = 4002
ctrl = 1

;------------------------
;Fly Away
;-----------------------

[statedef 4002]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4003
velset = -8,-9
sprpriority = -2

[state 4002, snd]
type = playsnd
trigger1 = time = 0
value = 70,0

[state 4002, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4002, destroy]
type = Destroyself
trigger1 = time = 70
;---------------------------------------------------------------------------
;Henshaw Heat Vision
;--------------------------------------------------------------------------
[Statedef 4004]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = -2

[state 4000, gethit]
type = hitoverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 4001

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 30,3

[State 720, projétil]
type = projectile
trigger1 = animelem = 4
projanim = 4004
projremove = 0
projremovetime = 30
projpriority= 2
projhits = 5
attr = S, SP
damage = 41
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
;getpower = 100,30
hitsound = 5,3
guardsound = 6,0
ground.type = HIGH
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -8,-2
air.animtype = Heavy
air.velocity = -8,-5
air.juggle = 3
fall=1

[State 720, 7]
type = ChangeState
trigger1 = Time = 60
value = 4002
ctrl = 1

;---------------------------------------------------------------------------
;Cyborg Hyper
;---------------------------------------------------------------------------
;Calling
[Statedef 3400]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3400
ctrl = 0
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG
[State 777, superportrait]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -15
ownpal = 1
persistent=0
[State 777, superbg]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -20
ownpal = 1
persistent=0
[State 777, hyperBG2]
type = Helper
trigger1 = Var(55)=1 && !time
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !Var(55) && !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !Var(55)=1 && !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S10, 0
pos = 7, -85
movetime = 40
poweradd = -2000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 4100,helper]
type = Helper
triggerall = !NumHelper(3450)
trigger1 = StateNo = 3400
trigger1 = time = 1
ID = 3450
pos = 0,-200
;postype = back
stateno = 3450
helpertype = normal
name = "henshaw"
keyctrl = 0
;ownpal = 1
sprpriority = 6
BindtoParent =1

[state 4001, snd]
type = playsnd
trigger1 = time = 0
value = 40,7
channel = 6

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401
;--------------------------------------------------------------------------
;Mongul cannon
;--------------------------------------------------------------------------
[Statedef 3401]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3408
juggle =4
sprpriority = 2

[State 3344, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3344, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[state 3344, snd]
type = playsnd
trigger1 = animelem = 2
value = 30,8
channel = 5
volume = 1000

[State 3344, hit]
type=hitdef
;triggerall = StateNo = 3344
trigger1=time=0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 2,9
sparkno = -1
guard.sparkno = -1
hitsound = 2,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 3
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 3344, prohit]
type = Projectile
trigger1 = AnimElem = 2
projanim = 3406
projremovetime = 120
projhits = 29
projmisstime = 4
projshadow = 0
projpriority = 6
projid = 3406
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 9,3
hitsound = S2,0
guardsound = S3,0
animtype = Hard
removeonhit = 1
removeongethit = 1
guardflag = MA
hitflag = MAF
pausetime = 0,6
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = 0,0
air.velocity = -1, -1
sprpriority = 9
fall = 1
down.velocity = -10
down.hittime = 150
down.bounce = 0

;[State 3344, exp]
;type = Explod
;triggerall = !NumExplod(3310)
;trigger1 = projcontact(3304) = 1
;anim = 3310
;id = 3310
;pos = 0,0
;postype = P2
;sprpriority = 6
;bindtime = 1

[State 3344, end]
type = ChangeState
trigger1 = Time = 145
value = 3402
ctrl = 1


;------------------------------
; Cannon - (move end)
[Statedef 3402]
type    = S
physics = S
ctrl = 0
anim = 3409
sprpriority = 2

[State 3305, xplod1]
type = explod
triggerall = !NumExplod(3405)
trigger1 = StateNo = 3402
trigger1 = animelem = 3
ID = 3405
anim = 3405
name = "cannon"
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = -6
facing = 1
removetime = 27

[State 3201, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3005, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Henshaw Falling
;---------------------------------------------------------------------------
[statedef 3450]
type = S
movetype = A
physics = N
ctrl = 0
anim =  3401
velset = 0,9
sprpriority = 6


[State 3344, hit]
type=hitdef
;triggerall = StateNo = 3344
trigger1=time=0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 2,9
sparkno = -1
guard.sparkno = -1
hitsound = 2,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 3
fall = 1
air.fall = 1
hitonce = 1
numhits = 1


[State 3305, xplod1]
type = explod
triggerall = !NumExplod(3422)
trigger1 = StateNo = 3450
trigger1 = animelem = 1
ID = 3422
anim = 3402
name = "cannon"
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = -6
facing = 1
removetime = -1
removeongethit = 1

[state 4000, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4000, destroy]
type = Destroyself
trigger1 = time = 70

[state 4000, gethit]
type = hitoverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 4001

[state 4000, set]
type = Velset
trigger1 = RootDist y<=0
x = 0

[state 4000, change]
type = changestate
trigger1 = RootDist y<=0
value =3451
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Henshaw Arm Cannon
;--------------------------------------------------------------------------
[Statedef 3451]
type    = S
movetype= A
physics = S
juggle  = 4
anim = 3403
ctrl = 0
sprpriority = 6
velset = 0,0

[State 3201, d]
type = removeexplod
trigger1 = !time
id = 3422

[state 4000, gethit]
type = hitoverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 3459


[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 30,3

[State 720, projétil]
type = projectile
trigger1 = animelem = 7
projanim = 3407
projremove = 0
projremovetime = 115
projhits = 25
projpriority = 9
attr = S, SP
damage   = 9,3
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
;getpower = 100,30
hitsound = S2,0
guardsound = S3,0
ground.type = HIGH
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -8,-2
air.animtype = Heavy
air.velocity = -8,-5
air.juggle = 3
fall=1

[State 720, 7]
type = ChangeState
trigger1 = Time = 135
value = 3452
ctrl = 1
;--------------------------------------------------------------------------
;Henshaw End
;--------------------------------------------------------------------------
[Statedef 3452]
type    = S
physics = S
ctrl = 0
anim = 3404
sprpriority = 6

[State 440, vel]
type=velset
trigger1=animelem=7
x=-7
y=-9

[state 4000, snd]
type = playsnd
trigger1 = time = 0
value = 70,4
channel = 2
volume = 1000


[state 4002, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4002, destroy]
type = Destroyself
trigger1 = time = 70

;---------------------------------------------------------------------------
;-------Henshaw Stand Gethit------------
[statedef 3459]
type = S
movetype = I
physics = S
anim = 3410
sprpriority = 6

[state 4001, snd]
type = playsnd
trigger1 = time = 0
value = 70,3

[state 4001, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4001, changestate]
type = changestate
trigger1 = animtime = 0
value = 3453
ctrl = 1

;---------------------------------------------------------------------------
;Leave after Henshaw hit
;--------------------------------------------------------------------------
[Statedef 3453]
type    = S
physics = S
ctrl = 0
anim = 3411
sprpriority = 6

[State 440, vel]
type=velset
trigger1=animelem=2
x=7
y=-9

[state 4000, snd]
type = playsnd
trigger1 = time = 0
value = 70,0
channel = 2
volume = 1000

[state 4002, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[state 4002, destroy]
type = Destroyself
trigger1 = time = 70

; P2 States
;---------------------------------------------------------------------------
;Hit by Black Mercy
[Statedef 7670]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5051

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -15

[State 7697, Blue_FX]
type = PalFX
trigger1 = Anim = 5051
trigger1 = Time = 1
time = 82
add = 0,-200,0
mul = 256,256,256
sinadd = 40,80,40,10
;invertall = 1
color = 0
;invertall = 1

[State 7696, 6]
type = SelfState
trigger1 = Time = 82
ctrl = 1
value = 5070

; Hit by Fire
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 1006

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 35
add = 40,-60,-150
sinadd = 60,25,0,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Multihits
[Statedef 7897]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5080


[State 7696, 6]
type = SelfState
trigger1 = Time =16
ctrl = 0
value = 5080
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Offscreen
;---------------------------------------------------------------------------

; Sale - Parte I
;---------------------------------------------------------------------------
[Statedef 750]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 195

[State 750,ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 750,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750,PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 750,PosAdd]
type = PosAdd
trigger1 = Time = 40
x = (-1 * BackEdgeBodyDist) + (-50)

[State 750,PlaySnd]
type = PlaySnd
trigger1 = Time = 38
value = 4,0

[State 750,ChangeState]
type = ChangeState
trigger1 = Time = 50
value = 751
ctrl = 0


; Entra - Parte II
;---------------------------------------------------------------------------
[Statedef 751]
type    = S
physics = N
anim = 100
ctrl = 0

[State 751,ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 751,PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 751,NotHitBy]
type = NotHitBy
trigger1 = time = 1
value = SCA
time = 30

[State 751,VelSet]
type = VelSet
trigger1 = 1
x = 10

[State 751,ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist >= 70
ctrl = 1
value = 0

;-----------------------------------------------------------------------------
;Throw
;-----------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 804
p2stateno = 805
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 804]
type = S
movetype = A
physics = S
anim = 801
velset = 0,0


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =30,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value =30,0

[State 810, a]
type = Width
trigger1 = 1
value = 80, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 62,-130

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 61,-150

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 90,-160

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 3
offset = -0, -200
attr = S, NA
animtype  = Heavy
guardflag = MA
hitflag = MAF
damage = 95,8
getpower = 60
givepower = 40
pausetime = 0,10
sparkno = 2
sparkxy = -5, -130
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-8
air.velocity = -5,-8
fall=1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = -2

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 805]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80


[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 802


[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; Hit Wall + aerial>ground  gethits
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Statedef 9020]
type    = A
movetype= H
physics = N

[State 9020, Turn]
type = Turn
trigger1 = (!Time) && (FrontEdgeBodyDist <= 30)

[State 9020, 1]
type = VelSet
trigger1 = !Time
x = Vel X / 2
y = Vel Y / 2

[State 9020, Pos]
type = PosAdd
trigger1 = !Time
x = 15 - BackEdgeBodyDist

[State 9020, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9020, No scroll]
type = ScreenBound
trigger1 = 1
value =1

[State 9020, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 9020

[State 9020, State]; more like Vs series now
type = ChangeState
trigger1 = AnimTime = 0
value = 9021 ;5031


[Statedef 9021]; changed to vs hitwall
type    = A
movetype= H
physics = N
anim = 5040;5210
ctrl = 0
velset=0,2


[State 9021, No scroll]
type = ScreenBound
trigger1 = 1
value =1

[State 9021, 2] ;Turn if not facing opponent
type = Turn
trigger1 = !Time
trigger1 = p2dist X < -20

[State 9021, 1]
type = VelMul
trigger1 = Time = 4
y = .8

[State 9021, 1]
type = VelAdd
trigger1 = Time = 4
y = -1.5

[State 9021, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 9021, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 9021, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 9021, 3]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 15

[State 9021, 5]
type = VelAdd;Gravity
trigger1 = Time >= 0
y = .75

[State 9021, 5] ;Land on ground
type = selfState
triggerall = alive
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

[State 9020, 3]
type = SelfState
trigger1 = !alive && time>=2
value = 5050
ctrl = 0






[Statedef 9022];grab
type    = A
movetype= H
physics = N

[State 9022, Turn]
type = Turn
trigger1 = (!Time) && (FrontEdgeBodyDist <= 30)

[State 9022, 1]
type = VelSet
trigger1 = !Time
x = Vel X / 2
y = Vel Y / 2

[State 9022, Pos]
type = PosAdd
trigger1 = !Time
x = 8 - BackEdgeBodyDist

[State 9022, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9022, No scroll]
type = ScreenBound
trigger1 = 1
value = 0

[State 9022, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 1022

[State 9022, State]
type = ChangeState
trigger1 = Time >= 10
value =5031

[Statedef 9023]; changed to vs bounce ground
type    = A
movetype= H
physics = N
anim = 5040;,5210
ctrl = 0
velset=-6,-5

[State 9023, No scroll]
type = ScreenBound
trigger1 = 1
value =1

[State 9023, 1]
type = VelMul
trigger1 = Time = 4
y = .8

[State 9023, 1]
type = VelAdd
trigger1 = Time = 4
y = -1.5

[State 9023, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 9023, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 9023, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 9023, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9023, 5]
type = VelAdd;Gravity
trigger1 = Time >= 0
y = .35

[State 9023, 5] ;Land on ground
type = selfState
triggerall = Time >= 15 && alive
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

[State 9020, 3]
type = SelfState
trigger1 = Time >= 15 && !alive
value = 5050
ctrl = 0



;---------- custom fall state
[Statedef 5031]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0, Vel Y -.1

[State 5031, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 9020, No scroll]
type = ScreenBound
trigger1 = time<=5
value =0

[State 5031, 3]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5040
ctrl = 0

[State 5031, 4]
type = SelfState
triggerall = HitFall
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100
ctrl = 0


[Statedef 9025];---------aerial
type    = A
movetype= H
physics = N

[State 9025, 1]
type = Velset
trigger1 = time>=2
x=-1
y=6

[State 9025, 1]
type = VelAdd
trigger1 = 1
y = -.1

[State 9025, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 1022

[State 9025, 4]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 9026
ctrl = 0


[Statedef 9026];---------aerial
type    = S
movetype= H
physics = N


[State 9026, Anim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 9026, 4]
type = SelfState
trigger1 = Time>=15
value = 5050
ctrl = 0




;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;END Hit Wall + aerial>ground gethits
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW



