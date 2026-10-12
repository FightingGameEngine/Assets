;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
;=====================================================================
[Statedef 3050]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2100
juggle = 0

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 76,7




[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 75
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000,EX SHADOW FX]
type=afterimage
trigger1 = Time = 5
time = -1
length = 10
timegap = 1
framegap = 2
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1


[State 2000,SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
anim = -1
sound = S8889,0
pos = 10,-70
movetime = 60
unhittable = 1
supermove = 1
poweradd = -1000



[State 1001,1]
type = ChangeState
trigger1 = time = 60
value = 2101
ctrl = 0

;------------------------------------------------------------------------
[Statedef 2101]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2101
juggle = 0



;============================================================================
;============================================================================

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

;============================================================================
;============================================================================




[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = -16
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
y = -8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
y = -1
[State 0, VelSet]
type = VelSet
trigger1 = time >= 14
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 18
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 22
y = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
y = 10
[State 0, VelSet]
type = VelSet
trigger1 = time >= 26
y = 12
[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
y = 14

[State 0, throw]
type = HitDef
Triggerall = animelem = 15
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2stateno != [150,152]
;
Trigger2 = p2stateno=52 || p2stateno = 0|| p2stateno = [10,12]

attr = S, HT
hitflag = M           ;M-
guardflag = -1
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 3120
p2stateno = 3125
fall = 1
fall.recover = 1
numhits = 0


[State 0,changeState]
type = changeState
trigger1 = time >= 20
trigger1 = Pos Y >= 30
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;------------------------------------------------------------------------
[Statedef 2110]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 47
juggle = 0

;52 add landing smoke
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[state 1051, land explod]
type = helper
trigger1 = time = 0 & numhelper(8010) = 0
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

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0,changeState]
type = changeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3120]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = -4
anim = 2120
juggle = 0


[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 = AnimElem = 1
helpertype = normal ;player
name ="Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 0, throw]
type = varset
trigger1=facing=1&&time=0
v=27
value=240
[State 0, throw]
type = varset
trigger1=facing=-1&&time=0
v=28
value=240

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = 2100,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 2100,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = 8000,2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 7,2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 830,0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
time = 10
freq = 100
ampl = -5
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 30
time = 15
freq = 120
ampl = -10

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 0, explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
anim = 8223
sprpriority = 8
postype = p1
pos = 30,-70
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0



[State xxx, Explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
anim = 10001
ID = 10001
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999


[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
value = 1

[State 0, targetlifeadd]
type = targetlifeadd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = -30
kill=0
[State 0, targetlifeadd]
type = targetlifeadd
trigger1 = animelem = 30
value = -75



[State -2, 2]
type = Playsnd
trigger1 = animelem = 32
value = 7777,0
channel = 27
persistent=0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010
ctrl = 0
;------------------------------------------------------------------------
[Statedef 3125]
type = S
physics = N
movetype = H
ctrl = 0
sprpriority = 5
velset = 0,0
juggle = 0



[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2125




[State 0, ChangeState]
type = ChangeState
trigger1 = time = 138
value = 3015
ctrl = 0


;==============================================================================
;------------------------------------------------------------------------
[Statedef 3010]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 5
anim = 2010




[State 1021,1]
type=AfterImage
trigger1= animelem = 1
time=70
length=30
palcolor = 256
palinvertall =0
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 10,10,10
trans=add1
framegap = 3


[State 0,varset]
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 0,varset]
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1

[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist < 20
trigger1 = animelem = 1
x = 20
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist = [21,40]
trigger1 = animelem = 1
x = 40
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist < 20
trigger1 = animelem = 10
x = 20
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist = [21,40]
trigger1 = animelem = 10
x = 40

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 7
trigger2 = animelem = 14
time = 24
ampl = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2000,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = 2000,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 13
value = 810,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 13
value = 830,0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
trigger2 = animelem = 10
trigger3 = animelem = 17
time = 1
pos = 0,0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 3
time = 5
pos = 12,0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(38)>=0
pos = 0,10

[State 0, explod]
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 13
anim = 8170
sprpriority = 2
postype = p2
pos = 50,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 125
value = 40,0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 125
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 0, VelSet]
type = VelSet
trigger1 = time >= 122
x = 2
y = -12
[State 0, VelSet]
type = VelSet
trigger1 = time >= 124
y = -10
[State 0, VelSet]
type = VelSet
trigger1 = time >= 128
y = -8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 132
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 136
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 140
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 144
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 148
y = 1
[State 0, VelSet]
type = VelSet
trigger1 = time >= 152
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 156
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 160
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 164
y = 10

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -30
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -20
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 11
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 12
x = -10
persistent = 0


[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = -20
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 10
x = -10
persistent = 0
;
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 15
x = -20
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 16
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 17
x = -10
persistent = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 18
x = -10
persistent = 0

[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = animelem = 6
trigger2 = animelem = 13
trigger3 = animelem = 21
value = -15
kill=0
[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 6
trigger2 = animelem = 13
trigger3 = animelem = 21
value = 1
;===========================================

[State 0,ChangeState]
type = ChangeState
trigger1 = time >= 168
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3020
ctrl = 0

;------------------------------------------------------------------------
[Statedef 3020]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 4
anim = 2020

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim =  3310
pos = 90,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = -5
ownpal = 0
removeongethit = 0

[State 0, TargetState]
type = TargetState
trigger1 =time=0
value =3025
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =time=0
value =-75




[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
;trigger2 = animelem = 3
value = 840,0


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 55
ampl = 11



[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 3015]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = -1
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time = 0
value = 2015

;------------------------------------------------------------------------
[Statedef 3025]
type = A
movetype = H
physics = N
sprpriority = -3
velset = 0, 0
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2025
[State 0, PosSet]
type = PosSet
trigger1 =time=0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 26
x = -1
y = -3
[State 0, VelSet]
type = VelSet
trigger1 = time >= 30
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 34
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 38
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 42
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 46
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 50
y = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 54
y = 10

[State 0,selfState]
type = selfState
trigger1 = time >= 40
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100
ctrl = 0



;---------------------------------------------------------------------------
; Hyper 3 - Agony Smash
;---------------------------------------------------------------------------
[Statedef 3301]
type = A
movetype = I
physics = N
anim = 40
ctrl = 0
velset = 0,0

[state 700,blur]
type = afterimage
trigger1 = time = 1
length = 30;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3301, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3301, jump velset]
type = VelSet
y = -10
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, gravity]
type = gravity
trigger1 = anim = 41


[State 3301, jump changeanim]
type = ChangeAnim
value = 41
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, jump statetypeset]
type = StateTypeSet
statetype = A
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, go to attack state]
type = ChangeState
value = 3300
trigger1 = vel y >= 0
trigger1 = anim = 41

;--------------
;Attack State
[Statedef 3300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 2

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 76,2

[State 3300, goto attack state]
type = ChangeState
trigger1 = 1
value = 3302



[Statedef 3302]
type = U
movetype = A
physics = N

[State 3300]
type = Playsnd
trigger1 = animelem = 4
value = 13,4

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 0]
type = NotHitBy
trigger1 = AnimElem = 1,= 0
value = SCA,NA,SA,NT,HT
time = 55


[State 3201, hitoverride]
type = null;HitOverride
attr = SCA, AA, AP, AT
trigger1 = 1
stateno = stateno

[State 3200, take damage]
type = lifeadd
value = -gethitvar(damage)
trigger1 = time = 0

[State 3200, gethit color]
type = palfx
trigger1 = time = 0
trigger1 = prevstateno != 3300
add = 128, 64, 0
time = 5

[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3300, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
poweradd = -1000
sound = S8889,0
pos = 10,-70

[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
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
name ="Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3300, drop]
type = velset
y = 10
trigger1 = animelem = 4

[State 3300, stop]
type = velset
y = 0
trigger1 = pos y >= 0

[State 3300, stay on ground]
type = posset
x = pos x
y = 0
trigger1 = pos y >= 0

[State 3300, helper]
type = helper
trigger1 = pos y >= 0
trigger1 = anim = 3300
ID = 3310
stateno = 3310
pos = 80,10


[State 3101, Debris 0]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3107
pos = 75, 5
ownpal = 1
vel = 0,0
accel = 0,0

[State 3101, Debris 1]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3110
pos = 25, 5
ownpal = 1
vel = 5,-12
accel = 0,0.8

[State 3101, Debris 2]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3110
pos = 25, 5
ownpal = 1
vel = -10,-16
accel = 0,0.8

[State 3101, Debris 3]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3111
pos = 25, 5
ownpal = 1
vel = 7,-13
accel = 0,0.75

[State 3101, Debris 4]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3111
pos = 25, 5
ownpal = 1
vel = 9,-12
accel = 0,0.75

[State 3101, Debris 5]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3111
pos = 25, 5
ownpal = 1
vel = -2,-16
accel = 0,0.75

[State 3101, Debris 6]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3111
pos = 25, 5
ownpal = 1
vel = -4,-15
accel = 0,0.75

[State 3101, Debris 7]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3112
pos = 25, 5
ownpal = 1
vel = -1,-18
accel = 0,0.7

[State 3101, Debris 8]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3112
pos = 25, 5
ownpal = 1
vel = 6,-18
accel = 0,0.7

[State 3101, Debris 9]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3112
pos = 25, 5
ownpal = 1
vel = 10,-5
accel = 0,0.7

[State 3101, Debris 10]
type = Explod
trigger1 = pos y >= 0
trigger1 = anim = 3300
anim = 3112
pos = 25, 5
ownpal = 1
vel = 6,-11
accel = 0,0.7





[State 3300, ChangeAnim]
type = ChangeAnim
value = 3301
trigger1 = pos y >= 0
trigger1 = anim = 3300



[State 3300, end]
type = ChangeState
trigger1 = animtime = 0
trigger1 = anim = 3301
value = 0
ctrl = 1

;------------------
; Helper
[Statedef 3310]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3105
sprpriority = 5

[State 3101, Smoke]
type = Explod
trigger1 = time = 0
anim = 3108
pos = 65, -15
ownpal = 1


[State 3300]
type = Playsnd
trigger1 = time = 0
value = 840,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1
volume = 255

[State 1100]
type = Playsnd
trigger1 =animelem = 1
value = 800,3


[State 3105, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3105
value = 3105
ignorehitpause = 1

[State 3105, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3105, PosSet]
;type = null
type = PosSet
trigger1 = parent, facing = 1
x = parent, Pos X +10
y = parent, Pos Y +15
ignorehitpause = 1
[State 3005, PosSet]
;type = null
type = PosSet
trigger1 = parent, facing = -1
x = parent, Pos X -10
y = parent, Pos Y +15
ignorehitpause = 1

[State 3105, 2]
type = HitDef
trigger1 = AnimElemTime (1) >= 0
attr = S, HA
animtype  = Hard
damage    = 47, 6
getpower  = 0
;hitflag = MAFD
guardflag = MA
pausetime = 1,1
sparkno = -1
sparkxy = -1
guard.sparkno = S8001
hitsound = S8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3.2,-15.2
air.velocity = -3.2,-15.2
yaccel = .6
envshake.time = 20
envshake.freq = 120
envshake.ampl = -10
fall = 1
fall.recover = 0




[State 3105, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
;trigger2 = parent, StateNo != 3100



[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
ID = 10007
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
anim = 10077
ID = 10077
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
anim = 10008
ID = 10008
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
anim = 10009
ID = 10009
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
anim = 10005
ID = 10005
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
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8222
getpower = 0,0
givepower = 0,0
sparkxy = -10,-80+floor(P2Dist Y)
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
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
p1stateno = 3002


[State 3001, goto Attack State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 3002]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 3001
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 90
time = 1
pos = 60,0

[State 3002, HitDef]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 12
trigger3 = animelem = 16
trigger4 = animelem = 26
trigger5 = animelem = 32
trigger6 = animelem = 36
trigger7 = animelem = 38
trigger8 = animelem = 41
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8223
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
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

[State 3002, next]
type = changestate
trigger1 = animelem = 43
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

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 100
getpower = 0,0
givepower = 0,0
priority = 6, Hit
guardflag = MA
pausetime = 40,40
sparkno =  s8223
sparkxy = -30,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90


[State 3030, SuperPause]
type = SuperPause
trigger1 =  animelem = 1
time = 20
sound = -1
anim = -1
darken = 0

[state 3030,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;P2 Custom Hyper Statedef
[Statedef 10210]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0

[State 850, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5002


[State 10210, 3]
type = Selfstate
trigger1 = time = 88
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 100
value = 5050
ctrl = 1


;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3075]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3050
sprpriority = 2

[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3300, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
poweradd = -1000
anim = -1
sound = S8889,0
pos = 10,-70

[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = animelem = 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
hitsound = S8600,0
p1sprpriority = 1     ;Draw p1's sprite in front of p2
hitonce = 1                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 31220
p2stateno = 4020    ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0
ID = 3050        ;This prevents p2 from going into a guard state if close
numhits = 0              ;Force p2 into falling down


[State 1021,1]
type=AfterImage
trigger1= animelem = 2
time=70
length=30
palcolor = 256
palinvertall =0
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 10,10,10
trans=add1
framegap = 3

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 31220]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = -4
anim = 2120
juggle = 0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =



[State 3099, jump to center screen]
type = posset
trigger1 = animelem = 33
trigger1 = facing = 1
x = -75

[State 3099, jump to center screen]
type = posset
trigger1 = animelem = 33
trigger1 = facing = -1
x = 75
;ignorehitpause =
;persistent =


[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 = AnimElem = 1
helpertype = normal ;player
name ="Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 0, throw]
type = varset
trigger1=facing=1&&time=0
v=27
value=240
[State 0, throw]
type = varset
trigger1=facing=-1&&time=0
v=28
value=240

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = 2100,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 2100,20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = 8000,2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 7,2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 830,0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
time = 10
freq = 100
ampl = -5
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 30
time = 15
freq = 120
ampl = -10

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 0, explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
anim = 8223
sprpriority = 8
postype = p1
pos = 30,-70
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0



[State xxx, Explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
anim = 10001
ID = 10001
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999


[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
trigger4 = animelem = 30
value = 1

[State 0, targetlifeadd]
type = targetlifeadd
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 23
value = -15
kill=0
[State 0, targetlifeadd]
type = targetlifeadd
trigger1 = animelem = 30
kill=0
value = -25

[State 4010, Throw]
type = TargetState
trigger1 = AnimElem = 32
value = 4021



[State -2, 2]
type = Playsnd
trigger1 = animelem = 32
value = 7777,0
channel = 27
persistent=0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 4006
ctrl = 0

;--------------------------------------
;CallLobster Jones
[StateDef 4006]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 4006
poweradd = 0
sprpriority = 2




[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S77,1



[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 187
time = 2
add = 256,256,256
;mul = 256,256,256
;sinadd = 0,0,0,10
;invertall = 0
;color = 256
;ignorehitpause =
;persistent =

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,187]
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = [0,187]
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = time = 76
helpertype = normal ;player
name = "lobster jones"
ID = 8998
stateno = 8998
pos = -103,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 22
trigger3 = AnimElem = 26
trigger4 = AnimElem = 30
trigger5 = AnimElem = 34
value = S75,2
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =






[State 4200, 1]
type = Projectile
trigger1 = AnimElem = 18
trigger2 = AnimElem = 22
trigger3 = AnimElem = 26
trigger4 = AnimElem = 30
trigger5 = AnimElem = 34
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-95
; HitDef
attr = S, HP
damage = 15,3
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
kill = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 0
envshake.ampl = 4
envshake.time = 10
ground.cornerpush.veloff = 0







[State 4006, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------------
[Statedef 4020]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 4020, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4010

;----------------------------------------------------------------------
[Statedef 4021]
type = A
movetype = H
physics = N
velset = -5.5,-8
poweradd = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 4021, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 4021, 4] ;Hit ground
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4011 ;Hit ground

;--------------------------------
;CustomState
[Statedef 4011]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 7,0
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = f60
ID = 60
pos = 0,0
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


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 4011
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 4012
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-----------------------------
;CustomGetup
[StateDef 4012]
type = S
movetype = H
physics = S
velset = 0,0
poweradd = 40

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5120
;elem = 1
;ignorehitpause =
;persistent =


[State 4012, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 4013
ctrl = 0

;-----------------------------
;CustomDizzy
[StateDef 4013]
type = S
movetype = H
physics = S
velset = 0,0
poweradd = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5300
;elem = 1
;ignorehitpause =
;persistent =


[State 4012, end]
type = SelfState
trigger1 = time = 200
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;enters
[Statedef 8998]
type = S
anim = 8998
velset = 2,0
movetype = A
physics = N
sprpriority = 3


[state 8998,2]
type = posset
trigger1 = time = 0
y = 6

[State 8998, 3]
type = ChangeState
trigger1 = time = 36
value = 8997
ctrl = 0


;---------------------------------------------------------------------------
;Fire the Gatling Gun.
[Statedef 8997]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 8999
ctrl = 0





[State 0, Explod]
type = Explod
trigger1 = AnimElem = 14
trigger2 = AnimElem = 18
trigger3 = AnimElem = 22
trigger4 = AnimElem = 26
trigger5 = AnimElem = 30
anim = 7000
ID = 7000
pos = 100,-90
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
scale = 0.5,0.5
kill=0
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 15
trigger2 = AnimElem = 19
trigger3 = AnimElem = 23
trigger4 = AnimElem = 27
ProjID = 8997
projanim = 8997
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-95
; HitDef
attr = S, HP
damage = 15,2
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
kill = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 0
envshake.ampl = 4
envshake.time = 10
ground.cornerpush.veloff = 0


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 31
ProjID = 8997
projanim = 8997
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projpriority = 1
velocity = 14,0
offset = 95,-95
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,-3
air.velocity = -8,-3
fall = 1
air.fall = 1


;[State 8997, effect]
;type = Explod
;trigger1 = animelem = 7
;anim = 8999
;postype = p1
;pos = 0,0
;scale = .6,.6
;sprpriority = 2
;bindtime = 1
;ownpal = 1



[State 8997,2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8,2





[State 8997, 5]
type = ChangeState
trigger1 = animtime = 0
value = 8996


;---------------------------------------------------------------------------
; exits
[Statedef 8996]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 8995

[State 8996, fly off]
type = PlaySnd
trigger1 = animelem = 3
value = 9999,7
volume = 175
channel = 0



[State 8996, 1]
type = VelSet
trigger1 = AnimElem = 14
x = -4
y = -4

[State 8996, 3]
type = DestroySelf
trigger1 = Time = 75

;---------------------------------------------------------------------------
; Hyper 4 - Hellspawn Fury (multi-kick)
;---------------------------------------------------------------------------

[Statedef 3774]
anim = 5301
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0



[State 0,super jump]
type = Explod
trigger1 = time = 12
anim = 3333
ID = 3333
pos = 0,0
postype = p1
bindtime = 1
removetime = 46
supermove = 46
pausemovetime = 46
removeongethit = 1
sprpriority = 3
ownpal = 1

[State 0,super jump]
type = Explod
trigger1 = time = 0
anim = 3334
ID = 3334
pos = 10,0
postype = p1
bindtime = 1
removetime = 46
supermove = 46
pausemovetime = 46
removeongethit = 1
sprpriority = -1
ownpal = 1




;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 12
time = 46
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 800, superpause]
type = SuperPause
trigger1 = AnimElem = 2
anim = -1
time = 70
movetime = 70
pos = -10,-70
sound = S8889,0
poweradd = -1000
sprpriority = 5
unhittable = 1


[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8800, 3

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 2
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 2
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 2
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
trigger1 = facing = 1
anim = 10007
ID = 10007
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
trigger1 = AnimElem = 2
trigger1 = facing = -1
anim = 10077
ID = 10077
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
trigger1 = AnimElem = 2
anim = 10008
ID = 10008
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
trigger1 = AnimElem = 2
anim = 10009
ID = 10009
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
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
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
trigger1 =  AnimElem = 2
helpertype = normal ;player
name ="Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 800, 1]
type = ChangeState
trigger1 = time = 70
value = 3077
ctrl = 0

; Ten attack jump
[Statedef 3077]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 9,-8
ctrl = 0
anim = 3078
poweradd = 0
sprpriority = 2

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 76,4



[state 12,12]
type = veladd
trigger1 = time >= 0
y = 0.7

[State 200, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 15, 2
animtype = hard
guard.sparkno = S508
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 2
sparkno = s8222
sparkxy = -10, -60
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
p1stateno = 3078
p2stateno = 10210
guardsound = S0, 0
ground.type = high
ground.slidetime = 10
ground.hittime  = 40
ground.velocity = -2
airguard.velocity = -2,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 40
kill = 0

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3555



[state 12,12]
type = changestate
trigger1 = MoveGuarded
value = 3802

[State 200, 7]
type = ChangeState
trigger1 = Time >= 2 && vel y > 0 && pos y >= 0
value = 3802
ctrl = 1


;;-----------------------------------------------------------------------------
;P2 Custom Statedef
[Statedef 3556]
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
value = 5300

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
trigger1 = time = 88
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 100
value = 5050
ctrl = 1

[Statedef 3555]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 7555
poweradd = 0
sprpriority = 2

[State 1013,bat]
type = Helper
trigger1 = animelem = 3
id = 3080
name = "horn"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3080
helpertype = normal
keyctrl = 0
ownpal = 1

[State 1013,bat]
type = Helper
trigger1 = animelem = 3
id = 3081
name = "horn"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3081
helpertype = normal
keyctrl = 0
ownpal = 1



[state 12,12]
type = posset
trigger1 = time = 0
y = 0

[State 200, 7]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1


; Ten attack jump land
[Statedef 3802]
type    = S
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 5302
poweradd = 0
sprpriority = 2


[state 12,12]
type = posset
trigger1 = time = 0
y = 0

[State 200, 7]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1
;-------------------
; Attack State
[Statedef 3078]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3074
ctrl = 0

[state 12,12]
type = posset
trigger1 = time >= 0
y = 0


[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3555

[State 1013,bat]
type = Helper
trigger1 = animelem = 37
id = 3080
name = "horn"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3080
helpertype = normal
keyctrl = 0
ownpal = 1

[State 1013,bat]
type = Helper
trigger1 = animelem = 37
id = 3081
name = "horn"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3081
helpertype = normal
keyctrl = 0
ownpal = 1

[state 1000]
type = Playsnd
trigger1 = animelem = 36
value = 75,3

[state 1000]
type = Playsnd
trigger1 = animelem = 36
value = 75,3

;[State 0]
;type = NotHitBy
;trigger1 = 1
;value = SCA,NA,SA,NT,HT
;time = 1

[State 3010, hitoverride]
type = null;HitOverride
attr = SCA, AA, AP, AT
trigger1 = 1
stateno = stateno

[State 3010, take damage]
type = lifeadd
value = -gethitvar(damage)
trigger1 = time = 0

[State 3010, gethit color]
type = palfx
trigger1 = time = 0
trigger1 = prevstateno != 3074
add = 128, 64, 0
time = 5

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 3
value = 14,1

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 7
value = 14,2

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 10
value = 14,3

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 13
value = 14,4

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 16
value = 14,5

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 19
value = 14,6

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 23
value = 14,8

[State 3000, Playsnd]
type = Playsnd
trigger1 = animelem = 28
value = 14,9

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 96
time = 1
pos = 60,0



[State 3010, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3010, HitDef high]
type = HitDef
trigger1 = animelem = 5
attr = C, HA
animtype  = Hard
damage    = 30,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 7,7
sparkno =  s8223
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 20;15
ground.hittime  = 20;15
ground.velocity = 0
kill = 0
fall.recover = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100

[State 3010, HitDef low]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 10
trigger3 = animelem = 13
trigger4 = animelem = 16
trigger5 = animelem = 19
attr = C, HA
animtype  = Hard
damage    = 30,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 7,7
sparkno =  s8223
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
fall.recover = 0
kill = 0
p2stateno = 10210
guard.kill = 0
fall.kill = 0
getpower = 0,0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100


[State 3010, HitDef up]
type = HitDef
trigger1 = animelem = 25
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
kill=0
envshake.time = 1
envshake.ampl = 1


[State 3010, Hitdef Back]
type = HitDef
trigger1 = animelem = 28
attr = C, HA
animtype  = Hard
damage    = 30,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 7,7
sparkno =  s8223
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
fall.recover = 0
kill = 0
p2stateno = 8718
guard.kill = 0
fall.kill = 0
getpower = 0,0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100

[State 106, 2]
type = Posadd
trigger1 = animelem = 31
x = 20

[State 750, 7]
type = SprPriority
trigger1 = animelem = 31
value = -3

[State 750, 7]
type = SprPriority
trigger1 = animelem = 35
value = 5




[State 3010, Hitdef Back]
type = HitDef
trigger1 = animelem = 36
attr = S, HA
animtype  = back
damage    = 50,0
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 7,7
sparkno =  s8223
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -16,-6
guard.velocity = -3
air.velocity = -6,-6
air.type = Low
air.hittime = 18
air.fall = 1
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100


[State 3010, End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 8718]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3099, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5000





[State 3099, SelfState]
type = SelfState
trigger1 = Time >= 75
value = 5050
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

[Statedef 3080]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3080
velset = -4,-1
sprpriority = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 75


[Statedef 3081]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3081
velset = -6,4
sprpriority = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 75

; END
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(18) - StateDef -2
; Var(20) - StateDef 2010
; Var(27) - StateDef 2120
; Var(28) - StateDef 2120

;--------------------- Float Variable List ----------------------

; fVar(5) - StateDef -3
