; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  59: AI flag
;  50: Desperation quote ("DANGER!" or whatever)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2


; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = S10,10
channel = 0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3001,0
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 61
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 901
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 900
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10004
name = "Left Arrow"
ID = 10004
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10005
ID = 10005
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10000
ID = 10000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 9998
ID = 9998
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 9997
ID = 9997
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S9600,2

[State 3255,EnvShake]
type = EnvShake
trigger1 = AnimElem = 4, =1
time = 90
ampl = 2
freq = 118

[State 191, blast]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "BLAST"
ID = 3001
stateno = 3001
postype = p1
pos = 67,-90
sprpriority = 2
keyctrl = 0
ownpal = 1
size.xscale = 5

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;BLAST
[Statedef 3001]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3252
sprpriority = 2
velset = 0,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3000,0

[state 0,0]
type = Trans
trigger1 = 1
trans = add

[state 0,0]
type = bindtoparent
trigger1 = 1
ignorehitpause = 1
pos = 67,-90




[State 3000, effect]
type = Explod
trigger1 = time = 0
anim = 3258
ID = 3258
postype = p1
ontop = 1
pos = 30,5
ownpal = 0
removeongethit = 1
sprpriority = 5
pausemovetime = 100
supermovetime =100
bindtime = -1
removetime = 100
scale = 1.1,1.1;const(size.xscale),const(size.yscale)


[State 3000, effect]
type = Explod
trigger1 = 1
anim = 3258
ID = 3258
postype = p1
ontop = 1
pos = 30,5
ownpal = 0
removeongethit = 1
sprpriority = 5
pausemovetime = 100
supermovetime =100
bindtime = 1
removetime = 100
scale = 1.1,1.1;const(size.xscale),const(size.yscale)
vel = 20,0
persistent = 10







[State 3000, effect]
type = Explod
trigger1 = time = 0
anim = 3259
ID = 3259
postype = p1
ontop = 1
pos = 30,0
ownpal = 0
removeongethit = 1
sprpriority = 5
pausemovetime = 100
supermovetime =100
bindtime = -1
removetime = 100
scale = 0.5,0.5;const(size.xscale),const(size.yscale)


[State 3000, effect]
type = Explod
trigger1 = 1
anim = 3259
ID = 3259
postype = p1
ontop = 1
pos = 30,0
ownpal = 0
removeongethit = 1
sprpriority = 5
pausemovetime = 100
supermovetime =100
bindtime = 1
removetime = 100
scale = 0.5,0.5
vel = 20,0
persistent = 10

[state b]
type = ModifyExplod
trigger1 = 1
ID = 3259
scale = 1,1+sin(time)*0.2

[state b]
type = RemoveExplod
trigger1 = time >= 100
ID = 3259



[state b]
type = ModifyExplod
trigger1 = 1
ID = 3258
scale = 1,1+sin(time)*0.2

[state b]
type = RemoveExplod
trigger1 = time >= 100
ID = 3258


[state 0,0]
type = AngleDraw
trigger1 = 1
scale = 0.6,0.6+sin(time)*0.2



[state 0,0]
type = assertspecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause = 1

[State 210, 3]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1


[State 220, HitDef]
type = HitDef
attr = S, SP
trigger1 = Time%3 = 0
trigger1 = hitcount < 30
trigger1 = moveguarded < 1
damage = 8,1
getpower = 0,0
animtype = Medium
priority  = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 0,7
hitsound   = S2,2
guardsound = S3,0
sparkno = s3260
sparkxy = 0,0
guard.sparkno = s3260
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -3-5*(hitcount > 28),-9*(hitcount > 12)
air.velocity = -3-5*(hitcount > 28),-9*(hitcount > 12)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = hitcount > 28
air.fall = hitcount > 28
fall.recover = 0
sprpriority = 2

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 210, 3]
type = destroyself
trigger1 = time = 100

[State 23000]
type = DestroySelf
trigger1 = Parent,Stateno != 3000

[StateDef 3100]
type = A
movetype = A
physics = N
anim = 3100
ctrl = 0
velset = 0,0

; voice
;[State 3000, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 0
;value = S182,0
;channel = 0


[State 1050, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA



; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S10,1
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 61
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 901
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 900
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10004
name = "Left Arrow"
ID = 10004
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10005
ID = 10005
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10000
ID = 10000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 9998
ID = 9998
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 9997
ID = 9997
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S9600,1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = S9600,1


[State 3013, Elec]
type = Helper
trigger1= AnimElem = 2
helpertype = normal
name = "Hyper-Electric"
ID = 31000
pos = 0,0
postype = P1
facing = 1
stateno = 31000
ownpal = 0
priority = 9


[State 3013, Elec]
type = Helper
trigger1= AnimElem = 2
helpertype = normal
name = "Hyper-Electric"
ID = 31001
pos = 0,0
postype = P1
facing = 1
stateno = 31001
ownpal = 0
priority = 9


[State 1990, àÍèuñ≥ìGÇ…Ç»ÇÈ]
type = NotHitBy
trigger1 = Time = 0
value = SCA,AA,AP
ignorehitpause=1


[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 166
value = 0
ctrl = 1


;-------------------------
[Statedef 31000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 31000
ctrl = 0
juggle =6
sprpriority = 9

[State 3014, ontop]
type = SprPriority
trigger1 = 1
value = 9

[State 3014, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow


[State 3014, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (80 * parent, facing)
y = parent, Pos Y + 0




[State 3014, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 117
attr = S, HA
damage = 12,1
getpower  = 0,0
givepower = 0,0
guardflag = MA
hitflag = MAFD
pausetime = 0,11
hitsound = S2,2
guardsound = S3,0
guard.sparkno = -1
sparkno= s9992
sparkxy = 0,-125
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-1
guard.velocity = -2
air.velocity = -1,-1
down.velocity = -1,-1
priority.hit = 12;,Hit
fall=1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 3014,1]
type = Destroyself
trigger1 = time = 166

;-------------------------
[Statedef 31001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 31001
ctrl = 0
juggle =6
sprpriority = 9

[State 3014, ontop]
type = SprPriority
trigger1 = 1
value = 9

[State 3014, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow


[State 3014, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (-60 * parent, facing)
y = parent, Pos Y + 0




[State 3014, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 117
attr = S, HA
damage = 9,1
getpower  = 0,0
givepower = 0,0
guardflag = MA
hitflag = MAFD
pausetime = 0,11
hitsound = S2,2
guardsound = S3,0
guard.sparkno = -1
sparkno= s9992
sparkxy = 0,-125
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-1
guard.velocity = -2
air.velocity = -1,-1
down.velocity = -1,-1
priority.hit = 12;,Hit
fall=1
air.fall=1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 3014,1]
type = Destroyself
trigger1 = time = 166







;---------------------------------------------------------------------------
;Major Force Jump Assault
;---------------------------------------------------------------------------
[Statedef 3200]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 0
facep2 = 1




; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S10,1
pos = 10,-70
poweradd = -1000
unhittable = 1


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 61
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 901
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 900
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10004
name = "Left Arrow"
ID = 10004
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10005
ID = 10005
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10000
ID = 10000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 9998
ID = 9998
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 9997
ID = 9997
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 640, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Animelem = 2
value = 8, 0
channel = 1


[State 3080]
type = null;NotHitBy
trigger1 = AnimElem = 3, >= 0
value = SCA


[State 3080]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 3080]
type = VelSet
trigger1 = AnimElem = 2
x = -4-(BackEdgeDist)*0.03
y = -11-(BackEdgeDist)*0.01

[State 3080]
type = VelAdd
trigger1 = AnimElem = 2, >= 0
y = 0.5

[State 3080]
type = ChangeState
trigger1 = BackEdgeDist < 15
value = 3201
ctrl = 0



[State 3080]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;---------------------------------------------------------------------------
;cling to wall
[Statedef 3201]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3201
ctrl = 0
sprpriority = 0
;facep2 = 1


[State 640, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Animelem = 1
value = 41, 0

[State 640, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Animelem = 1
value = 195, 1


[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0



[State 3081]
type = null;NotHitBy
trigger1 = AnimElem = 4, >= 0
value = SCA


[State 3081]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3081]
type = null;AfterImage
trigger1 = time = 0
time = 120
length = 7
palbright = 30,30,130
palpostbright = 0,0,50
palcontrast =120,120,220
paladd = 0,0,0
palmul = 1,1,1
palcolor = 0
timegap = 2
framegap = 3


[State 3081]
type = varset
trigger1 = Time = 0
var(1) = 0


[State 3081]
type = PosSet
trigger1 = Anim = 3201
x = -130*facing

[State 3081]
type = PosSet
trigger1 = Anim = 3201
x = -130*facing




[State 7]
type = ChangeState
trigger1 = time = 120
value = 70


;---------------------------------------------------------------------------
; Air Attack Falling
;---------------------------------------------------------------------------
[Statedef 70]
type    = A
movetype= I
physics = A
anim = 70
sprpriority = 1
ctrl = 1

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;---------------------------------------------------------------------------
[Statedef 3202]
type     = A
movetype = A
physics  = N
ctrl     = 0
sprpriority = 2
anim = 3202

; voice
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S195,1

[State 210, 3]
type = Turn
trigger1 = FrontEdgeBodyDist <= 20

[State 7]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20||FrontEdgeBodyDist <= 20
value = 1201

[State 600, 4]
type = Gravity
trigger1 = 1

[State 7]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
[Statedef 3210]
type     = A
movetype = A
physics  = N
juggle   = 5
velset   = 0,0
ctrl     = 0
anim = 3210

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1401,1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 100
add = 60,40,5
sinadd= 60,40,5,50
ignorehitpause = 1



[State 455]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5

[State 210, 3]
type = PlayerPush
trigger1 =1
value = 0

[State -3,]
Type = Varset
Trigger1 = time = 0
var(22) = 0
IgNoreHitPause = 1

[State -3]
Type = Varadd
trigger1 =movecontact = 1
var(22) = 1

[State 4]
type = VelSet
trigger1 = Animelem = 1
x = 6
y = -8

[State -3,]
type = Velset
triggerall = var(59) && roundstate = 2
trigger1 = Animelem = 2,> = 0
trigger1 = p2dist X >= 0
x = 2

[State -3,]
type = Velset
triggerall = var(59) && roundstate = 2
trigger1 = Animelem = 2,> = 0
trigger1 = p2dist X <= 0
x = -2

[State 4]
type = Velset
triggerall = !var(59)
trigger1 = Animelem = 2,> = 0
trigger1 = command = "holdfwd"
x = 2

[State 4]
type = Velset
triggerall = !var(59)
trigger1 = Animelem = 2,> = 0
trigger1 = command = "holdback"
x = -2

[State 4]
type = VelSet
trigger1 = time = 50
y = .5


[State 200, ]
type = HitDef
trigger1 =time = 0
attr = A, ST
damage = 240,10
animtype = Hard
ground.type = High
hitflag = MAF
guarDFlag = ma
priority = 3, Hit
pausetime = 3,3
sparkNo= s9995
guard.sparkNo=-1
sparkXY=-10,0
hitsound=S722,1
guardsound=S3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -6,-4
guard.velocity = -14
air.velocity = -3,-6
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 20
envshake.freq = 10
envshake.ampl = 10
envshake.phase = 10
palfx.time = 40
palfx.add  = 80,-70,-200
palfx.sinadd = 0,30,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 60
givepower = 20

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5


[State 600, 4]
type = Gravity
trigger1 = animelemtime(2) >= 0

[State 7];
type = ChangeState
triggerall = movehit
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3211

[State 7]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3212

[State 10000, ]
type = ScreenBound
trigger1 = 1
movecamera = 360,0
;---------------------------
[Statedef 3211]
type = A
movetype = I
physics = N
anim = 3220
ctrl = 0
velset = 0,0
sprpriority = 2

[State 640,]
type = PlaySnd
trigger1 = Animelem = 1
value = 40, 0

[State 8]
type = PosSet
trigger1 = time = 0
y = 0

[State 4]
type = VelSet
trigger1 = Animelem = 2
y = -4

[State 600, 4]
type = Gravity
trigger1 = animelemtime(2) >= 0

[State 7]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 1

;---------------------------

[Statedef 3212]
type = S
movetype = I
physics = S
anim = 3221
ctrl = 0
velset = 0,0
sprpriority = 2

[State 640,]
type = PlaySnd
trigger1 = Animelem = 1
value = 8, 1

[State 8]
type = PosSet
trigger1 = time = 0
y = 0

[State 9]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1


;Off-Wall
[Statedef 3160]
type=A
movetype=A
physics=N
anim=3105
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1401,1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 125
add = 60,40,5
sinadd= 60,40,5,50
ignorehitpause = 1

[State 3160, VelSet]
type =VelSet
trigger1 =anim=3160&&animelem=1
x =0
y =0

[State 3160, PosSet]
type =PosSet
trigger1 =anim=3160&&animelem=1,=2
x =enemynear,pos x


[State 3160, VelSet]
type =VelSet
trigger1 =anim=3160
x =0
y =Ifelse(var(2)<1,10,6)
ignorehitpause=1


[State 3160, ChangeAnim]
type =ChangeAnim
trigger1 =anim=3105&&animelemtime(3)>=0&&Pos y<=-295
value =3160
ignorehitpause =1
persistent=0


[State 3160, No Corner Push]
type=VarSet
trigger1=anim=3160
fvar(5)=0


[State 3160, Unguardable]
type=VarSet
trigger1=!time && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=50


[State 3160, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)



[State 3160, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=(PrevStateNo=[3150,4999]) && var(7)


[State 3160, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1


[State 3160, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1
pos=0,-25


[State 3160, ScreenBound]
type =ScreenBound
trigger1 =anim=3150
value =0
movecamera =0,1
ignorehitpause =1


[State 3160, ScreenBound]
type =ScreenBound
trigger1 =anim=3105&&animelemtime(3)<0
value =1
movecamera =0,1
ignorehitpause =1


[State 3160, ScreenBound]
type =ScreenBound
trigger1 =anim=3105&&animelemtime(3)>=0
trigger2 =anim=3160
value =1
movecamera =1,0
ignorehitpause =1



[State 3160, VelSet]
type=VelSet
trigger1 =anim=3105&&animelem=1
x=0
y=0


[State 3160, PosAdd]
type=Posset
trigger1 =anim=3105&&backedgebodydist<=-5&&pos y>=-40
y=-40
ignorehitpause =1



[State 3160, PosAdd]
type =PosSet
trigger1 =anim=3105&&animelemtime(3)<0
x =-160+ScreenPos x
ignorehitpause =1

[State 3160, Varset]
type=Varset
trigger1 =!time
var(2)=0


[State 3160, Varadd]
type=Varadd
trigger1 =movecontact
var(2)=1


[State 3160, Voice]
type=PlaySnd
trigger1 =anim=3105&&animelem=1
value=3150,0
channel=0


[State 3160, Snd]
type=PlaySnd
trigger1 =anim=3105&&animelem=3
value=105,0

[State 3160, NotHitBy]
type=NotHitBy
trigger1=anim=3105&&AnimElemTime(4) < 0
time=1
value=SCA

[State 3160, Jump Sound]
type=PlaySnd
trigger1 =anim=3105&&animelem=3
value=8, 0


[State 3160, VelSet]
type=VelSet
trigger1 =anim=3105&&animelem=3
x=4
y=-14

[State 455]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5


[State 3160, Hit]
type=HitDef
trigger1 =var(2)<12
id=3200
attr=A, HA
damage=20,6
priority=4, hit
animtype=Hard
getpower=0,0
givepower=20,20
guardflag=MA
hitflag=MAFD
hitsound=S2,1
guardsound=S3,0
pauseTime=4,3
guard.pauseTime=6,6
sparkNo= s9995
guard.sparkNo=-1
sparkXY=-10 + 0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=8
ground.hittime =8
guard.hittime=8
ground.velocity=0,-2
air.velocity=0,-2
down.velocity=0,0
guard.velocity=0
airguard.velocity=-1,-1
airguard.ctrlTime=10
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
fall=1
yaccel=.5
fall.recover=0
forcestand=1
envshake.time = 10
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
palfx.time = 40
palfx.add  = 80,-70,-200
palfx.sinadd = 0,30,0,10
palfx.color = 0
palfx.invertall = 1

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9994
scale = 0.5,0.5

[State 3160, p2state]
type=targetstate
trigger1=anim=3160&&movehit && numtarget(3200)
trigger1=target(3200),Movetype=H  &&enemynear,statetype!=L
ID=3200
value=3121
ignorehitpause=1

[State 3160, p2state]
type=targetstate
trigger1=anim=3160&&movehit && numtarget(3200)
trigger1=target(3200),Movetype=H  &&enemynear,statetype=L
ID=3200
value=3120
ignorehitpause=1

[State 3160, End]
type=ChangeState
trigger1=anim=3160
trigger1=pos y>-vel y
value= 3212
ctrl=0


;---------------------------------------------------------------------------
[Statedef 3120]
type   =L
movetype= H
physics=N
velset=0,0
facep2=1

[State 3120, HitGround]
type=PosSet
trigger1=1
y=0
[State 3120, BounceGround]
type=ChangeAnim2
trigger1=!Time
value=4021

[State 3120, finish]
type=SelfState
trigger1=time>=70
value=Ifelse(Alive,5120,5150)
;---------------------------------------------------------------------------
[Statedef 3121]
type   =A
movetype= H
physics=N
ctrl=0
velset=0,-.5
sprpriority=1

[State 0, VA]
type=VelAdd
trigger1 =animelemtime(2)>=0
y =.5
[State 0, ChangeAnim2]
type=ChangeAnim2
trigger1=!time
value=3121  ;<=======custom animation

[State 0, change]
type=changeState
trigger1=Pos Y >= 0 && Vel Y > 0
value=3120
ctrl=0

;---------------------------------------------------------------------------
; Hyper 4
;---------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 705:         Playsnd]
type                = playsnd
trigger1            = time = 0
value               = 3301,0
channel             = 2



[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S10,1
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8800, 3

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 61
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 901
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 900
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10004
name = "Left Arrow"
ID = 10004
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10005
ID = 10005
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10000
ID = 10000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 9998
ID = 9998
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 9997
ID = 9997
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3000, VelSet]
type = VelSet
trigger1 = animelem =4
x = 15

[State 3001, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = Hard
damage    = 35,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkxy = -10,-80+floor(P2Dist Y)
guard.sparkno = -1
hitsound = S2,1
guardsound = S3,0
sparkno = S9995
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
p1stateno = 3301

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5



[State 3001, goto Attack State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 3301]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 3301
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 90
time = 1
pos = 87,0

[State 3002, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
attr = S, HA
animtype  = Hard
damage    = 23,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = S2,1
guardsound = S3,0
sparkno = S9995
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100

[State 3002, HitDef]
type = HitDef
trigger1 = animelem = 22
attr = S, HA
animtype  = Hard
damage    = 23,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = S2,2
guardsound = S3,0
sparkno = S9995
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
p2stateno = 10210
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5


[State 3002, next]
type = changestate
trigger1 = animelem = 23
value = 3030
ctrl = 0

;; === Finishing Strike ===
[Statedef 3030]
type    = S
movetype= A
physics = S
anim = 3030
ctrl = 0
velset = 0,0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1301, 0


[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 50
getpower = 0,0
givepower = 0,0
priority = 6, Hit
guardflag = MA
pausetime = 40,40
sparkxy = -60,-79
guard.sparkno = -1
hitsound = S2,3
guardsound = S3,0
sparkno = S9995
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 40
envshake.freq = 65
envshake.ampl = -15
envshake.phase = -95
[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5




[state 3030,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1




;----------------
[Statedef 10210]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 10210, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = Vel Y = 0
trigger1 = statetype != A
value = 5002

[State 10210, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = Vel Y = 0
trigger1 = statetype != A
value = 9010


[State 9010, 034.1]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

[State 9010, 034.12]
type = VELSet
trigger1 = p2stateno =[0,9999]
Y = 0


[State 10210, 3]
type = Selfstate
trigger1 = time = 150
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 150
value = 5050
ctrl = 1


;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(2) - StateDef 3210, 3160
; Var(15) - StateDef 3160
; Var(17) - StateDef 3160
; Var(18) - StateDef -2
; Var(19) - StateDef 1400
; Var(21) - StateDef 3160
; Var(22) - StateDef 3160

;--------------------- Float Variable List ----------------------

; fVar(5) - StateDef 3160, -3
