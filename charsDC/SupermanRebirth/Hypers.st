;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
;Super Heat Vision 
[Statedef 3000]
type    = A
movetype= A
physics = N
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 1011
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,14
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1000, Explod];LIGHT
type = Explod
trigger1 = animelem = 6
anim = 1012
ID = 1012
pos = 20,8
postype = p1
bindtime = -1
scale = const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
removetime = 60

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  AnimElem = 3
Time = 40
pos = -5, -95
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  AnimElem = 3
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = AnimElem = 3
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = AnimElem = 3
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 1001, Helper]
type = Helper
trigger1 = animelem =6
helpertype = normal ;player
name = "sombra"
ID = 1205
stateno = 1205
pos = 20,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale= 2
size.yscale=0.8

[State 1001, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "Heat Vision"
ID = 193
stateno = 9002
pos = 20,-85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale= 1.5
size.yscale=0.8

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 106
value = 0
ctrl = 1

;--------------------------------------------------------------
;sombra
[Statedef 1205]
type = S
ctrl = 0
anim = 7816

[State 1197, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State 1197, end]
type = DestroySelf
trigger1 = time = 80

;---------------------------------------------------------------------------

;--------------------------------------------------------------
;heatvision
[Statedef 9002]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 7711
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 190,13
volume = 100
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1000, Explod];LIGHT
type = Explod
trigger1 = animelem = 1
anim = 7710
ID = 7710
pos = 0,0
postype = p1
bindtime = -1
scale = .5,.1
sprpriority = 9
ownpal = 1
removeongethit = 0
ignorehitpause = 1
removetime = 71

[State 1000, shake it]
Type = EnvShake
trigger1 = AnimElem = 7
Time = 50
freq = 60
ampl = 10
phase = 0
ignorehitpause = 1


[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
trigger9 = AnimElem = 15
trigger10 = AnimElem = 16
trigger11 = AnimElem = 17
trigger12 = AnimElem = 18
trigger13 = AnimElem = 19
trigger14 = AnimElem = 20
trigger15 = AnimElem = 21
trigger16 = AnimElem = 22
trigger17 = AnimElem = 23
trigger18 = AnimElem = 24
trigger19 = AnimElem = 25
trigger20 = AnimElem = 26
trigger21 = AnimElem = 27
trigger22 = AnimElem = 28
trigger23 = AnimElem = 29
trigger24 = AnimElem = 30
trigger25 = AnimElem = 31
trigger26 = AnimElem = 32
trigger27 = AnimElem = 33
trigger28 = AnimElem = 34
trigger29 = AnimElem = 35
trigger30 = AnimElem = 36
trigger31 = AnimElem = 37
trigger32 = AnimElem = 38
attr = SCA, HP
damage    = 11,2
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
fall=1

[State 240]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 80
;---------------------------------------------------------------------------
;solar flare
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1014
ctrl = 0
sprpriority = 5

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 192,3

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
;anim =-1;s3012
pos = -10, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 3001]
type = Explod 
trigger1 = animelem = 3
sprpriority = 4
anim = 7702
pos = 0,0
removeongethit = 1
;scale = 1,1.5
bindtime = -1
removetime = 140
supermovetime = 99999
pausemovetime = 99999
postype = p1

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 191,2
volume = 255

[State 1000, shake it]
Type = EnvShake
trigger1 = AnimElem = 4
Time = 50
freq = 40
ampl = 10
phase = 0
ignorehitpause = 1

[State 3001, goto Attack State]
type = ChangeState
trigger1 = time = 140
value = 3002
ctrl = 1
;--------------------------------------------------------------
[Statedef 3002]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1013
ctrl = 0
sprpriority = 5

[State 3002, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 70
freq = 170
ampl = -7

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 192,4
volume = 100

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = 191,4
volume = 100

[State 3401]
type = Projectile
trigger1 = AnimElem = 11
projanim = 1015
offset = 0,0
velocity = 0, 0
projid = 1001
projremovetime = 120
projhits = 5
projpriority = 1
projmisstime = 5
projscale = 1,1
attr = S, HP
damage    = 100
animtype  = Hard
numhits = 1
getpower  = 10
givepower = 25
guardflag = MA
pausetime = 2,8
sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
guard.sparkno = -1
ground.type = low
ground.slidetime = 1
ground.velocity = 15
airguard.velocity = -15
air.type = Low
air.velocity = -15,1
fall = 1
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3401, hits]
type = Explod
triggerall = !NumExplod(8200)
trigger1 = movehit
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
anim = 8200
pos = floor(p2dist x -15),floor(p2dist y - 79)
supermove = 1
sprpriority = 9999
removeongethit = 1

[State 240]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[State 3401, Explod]
type = Explod
trigger1 = animelem = 11
anim = 8171
pos = 0,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;scale = 0.8,1.5
sprpriority = 0

[State 3401, Explod]
type = Explod
trigger1 = animelem = 11
anim = 8676
pos = 0,-20
postype = p1
facing = -1
vfacing = 1
bindtime = 1
;scale = 0.8,1.5
sprpriority = 0

[State 3401, explod]
type = Explod
trigger1 = animelem = 11
anim = 77044
removetime = 53
postype = p1
pos = 40,70
facing = 1
sprpriority = 6
scale = 7,7

[State 3401]
type = ChangeState
trigger1 = time = 173
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;atmosfera
[Statedef 3003]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 0
anim = 7703
poweradd = 0
ctrl = 0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 0
Time = 40
;anim =-1;s3012
pos = 0, -100
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 100, snd]
type = PlaySnd
trigger1 = animelem = 3
value = 1100,1
channel = 0

[State 4120, 2] 
type = PlaySnd
trigger1 = animelem = 9
value = 192,5

[State 3003, 3]
type = VelAdd
trigger1 = 1
trigger1 = Pos Y < 0
y = .02

[State 3003, 4]
type = PosSet
trigger1 = Pos Y >= -1
y = 0

[State 3003, 5]
type = VelSet
trigger1 = Pos Y >= -1
y = 0

[State 3003, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 20

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x <= 40
x = 0

[State 3003, 1]
type = HitDef
trigger1 = Animelem = 4
attr = S, HT
;hitflag = M
;guardflag = M
pausetime = 1, 1
priority = 1, Miss
sparkno = -1
hitsound = S0,30
p1stateno = 112140
p2stateno = 10301
p2facing = -1
fall = 1

[State 3003]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------
[Statedef 112140]
type = S
movetype = I
physics = N
ctrl = 0
anim = 7708
velset = 0, 0
sprpriority = 2


[State 1010, 3]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0, 0
time = 2


[State 1010, 5]
type = TargetBind
trigger1 = AnimELem = 2
pos = 0, 0
time = 3

[State 1010, 7]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,-40;39,-20 ;39, -81
time = 18

[State 1010, 8]
type = VelSet
trigger1 = AnimElem = 3
y = -6; -11.5
x = 1.3

[State 1010, 9]
type = Gravity
trigger1 = AnimElemNo(0) = [3,8]

[State 1010, 10]
type = VelSet
trigger1 = AnimElem = 9
y = 0

[State 1010, 11]
type = TargetBind
trigger1 = AnimElem = 9
pos = 0,-40 ;56,-20;56, -73
time = 5

;[State 1010, 12]
;type = TargetBind
;trigger1 = AnimElem = 10
;pos = 39, -39
;time = 4

;[State 1010, 13]
;type = TargetBind
;trigger1 = AnimElem = 11
;pos = -7, 0
;time = -1

;[State 1010, 14]
;type = VelSet
;trigger1 = AnimElem = 11
;y = 8

[State 1010, 15]
type = Gravity
trigger1 = AnimElemNo(0) = 11

[State 1010, 16]
type = ChangeState
trigger1 = AnimElemNo(0) = 10
;trigger1 = Pos Y >= 0
value = 112143

;-----------------------------
; Being Grabbed state
[Statedef 10301]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 1030, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 7714;805

[State 1030, 2]
type = ScreenBound
trigger1 = 1
value = 0

;[State 1030, 3]
;type = SelfState
;trigger1 = time = 600
;value = 5050

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[StateDef 112143]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7716
poweradd = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 192,6
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

;*Enable for Pause effect berfore Punching
[State 31008, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = -45,-98 ;-45,-95:MyMugenscale
darken = 1


[State 188, Big punch Boom]
type = Explod
trigger1 = Animelem = 3;Movecontact = 1
anim = 7006
pos = 40,55;30,-55
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1
scale = .7,.7

[State 188, Shock wave]
type = Explod
trigger1 = Animelem = 3;Movecontact = 1
anim = 7120
pos = 30,-65
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1
scale = .7,.7

[State 188, Rocks Boom]
type = Explod
trigger1 = Animelem = 3;Movecontact = 1
anim = 8676
pos = 10,130
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1,1

[State 188, Rocks Boom]
type = Explod
trigger1 = Animelem = 3;Movecontact = 1
anim = 8676
pos = 0,130
postype = p2
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1.5,1.5


[State 112143, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 400
animtype = up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = s8220
sparkxy = -40, -96
hitsound = s5, 4
guardsound = s6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,-25
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,25
air.hittime = 20
envshake.time = 25
envshake.ampl = -14
getpower = 0
fall = 1
fall.recover = 0
kill = 0
p2stateno = 3120

[State 182, Epileptastic]
type = EnvColor
trigger1 = Movecontact = 1
value = 240,240,240
time = 1



[State 3110, end]
type = ChangeState
trigger1 = hitcount > 0 && animelem = 6
value = 3130
ctrl = 0

[State 3110, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------
;CustomState
[StateDef 3120]
type = A
movetype= H
physics = A
juggle  = 1
velset = 0,-20
ctrl = 0
poweradd = 0
sprpriority = 1



[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 1000, Land]
type= changestate
trigger1= vel y > 0
trigger1= pos y > -vel y
value= 5150

;------------------------------------------------------------------
;Follow
[Statedef 3130]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 7717


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
y = -20
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 9
value = 0,81


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 107, 1] ;Blur Effect
type = AfterImage
trigger1 = animelem = 2
time = 15
palcontrast = 130,80,82;222,142,82
trans = add
length = 15
timegap = 1
framegap = 1

[State 50000, 2st Boom]
type = Explod
trigger1 = Animelem = 2
anim = 7705
pos = 135,60
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1
scale = 1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 14,8;S9,1
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,9;S9,1
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =



[State 3130, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = MAF
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 31140
p2stateno = 31150
fall = 1
fall.recover = 0
fall.damage = 150
fall.envshake.time = 45
fall.envshake.ampl = 6
fall.envshake.phase = 90
fall.envshake.freq = 80
numhits = 0

;--------------------------------------------------------------
;edificio Smash
[Statedef 31140]
type = A
movetype= A
physics = N
anim = 7724
poweradd = 0
velset = 0,0
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 17
time = 20
freq = 60
ampl = -4

[State 405, 6]
type = PlaySnd
trigger1 = Time = 60
value = 190,7

[State 405, 6]
type = PlaySnd
trigger1 = Time = 2
value = 190,10

[State 100, snd]
type = PlaySnd
trigger1 = animelem = 17
value = 1100,1
channel = 0

[State 3401, hits]
type = Explod
triggerall = !NumExplod(8200)
trigger1 = movehit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
anim = 8200
pos = 55,-110
supermove = 1
sprpriority = 9999
removeongethit = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
anim = 7707
pos = -30,-70
postype = p2
sprpriority = 9999
bindtime = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 17
value = 192,6
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 7729
ID = 77722
pos = 51,55
;postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2 ;240
supermovetime = 999999
pausemovetime = 999999
scale = .85,.6
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0 ;1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(7722) = 1
flag = nofg
flag2 = nobg
flag3 = nobardisplay


[State 3140, superpause]
type = SuperPause
trigger1 = Time = 1;AnimElem = 1
time = 1;115;80
sound = S10,1
pos = -10,-45
darken = 1


[State 0, Explod]
type = Explod
trigger1 = time = 100
anim = 7722
ID = 7722
pos = 55,55
;postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100 ;240
supermovetime = 999999
pausemovetime = 999999
scale = 1,.6
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0 ;1

[State 188, Shock wave]
type = Explod
trigger1 = Animelem = 17;Movecontact = 1
anim = 7120
pos = 20,-60
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1
scale = .7,.7

[State 188, Shock wave2]
type = Explod
trigger1 = Animelem = 17;Movecontact = 1
anim = 7728
pos = -10,-10
postype = p1
sprpriority = 5
supermove = 1
bindtime = 1
scale = .8,.8

[State 188, beam]
type = Explod
trigger1 = time = 22;Movecontact = 1
anim = 1001
pos = 0,-20
postype = p1
sprpriority = 999
ontop = 1
removetime = 20
supermove = 1
bindtime = 1
scale = 1,1


[State 188, nube]
type = Explod
trigger1 = time = 2;Movecontact = 1
anim = 7725
pos = 0,-80
postype = p1
sprpriority = 999
ontop = 1
removetime = 200
supermove = 1
bindtime = 1
scale = 1,1

[State 188, nube]
type = Explod
trigger1 = time = 2;Movecontact = 1
anim = 7726
pos = -20,-30
postype = p1
sprpriority = 999
ontop = 1
removetime = 200
supermove = 1
bindtime = 1
scale = 1,1

[State 188, nubeoscura]
type = Explod
trigger1 = time = 103;Movecontact = 1
anim = 7727
pos = -20,-190
postype = p1
sprpriority = 999
ontop = 1
removetime = 150
supermove = 1
bindtime = 1
scale = 1,1


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 150
id = 7722
;ignorehitpause =
;persistent =


[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 17
value = 1
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = Posset
trigger1 = time = 0
x = 0
y = 150
;ignorehitpause =
;persistent =


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 3140, Bind 1]
type = TargetBind
trigger1 = time = 2
pos = 40, -35

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
y = -150
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 2
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 148
x = 50


[State 3140, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 17
value = -400
kill = 0

[State 3130, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3140

;-----------------------------------------------------------

[Statedef 31150]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 3


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 110
x = -20
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 7
x = -2

[State 0, VelSet]
type = VelSet
trigger1 = time = 240
y = 20
;ignorehitpause =
;persistent =



;ignorehitpause =
;persistent =

[State 3150, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 77177

;--------------------------------------------------------------
;diario planeta Smash
[Statedef 3140]
type = A
movetype= A
physics = N
anim = 7720
poweradd = 0
velset = 0,0
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 29
time = 60
freq = 80
ampl = 17
phase = 90


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 28
value = 192,6
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 192,7
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(7800) = 1
flag = nofg
flag2 = nobg
flag3 = nobardisplay

[State 3140, superpause]
type = SuperPause
trigger1 = animelem = 28
time = 10;115;80
sound = S10,1
pos = -410,-450
darken = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 29
value = 1
;ignorehitpause =
;persistent =


[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 0
time = 2
add = 256,256,256

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 30
time = 2
add = 256,256,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 29
value = 0,204;S5,5
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 28
value = S0,0
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 7800
ID = 7800
pos = 90,240
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1.3
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 188, Shock wave]
type = Explod
trigger1 = Animelem = 28;Movecontact = 1
anim = 7120
pos = -20,-55
postype = p1
sprpriority = 999
supermove = 1
bindtime = 1
removetime = 2
scale = .7,.7

[State 188, nube]
type = Explod
trigger1 = Animelem = 29;Movecontact = 1
anim = 7730
pos = -60,-75
postype = p1
sprpriority = 999
ontop = 1
removetime = 14
supermove = 1
bindtime = 1
scale = .3,.3

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 30
id = 7800
;ignorehitpause =
;persistent =


[State 0, PosSet]
type = Posset
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 3140, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = -100, -10

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 85
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 2
x = 0
;ignorehitpause =
;persistent =


[State 0, Helper]
type = Helper
triggerall = numhelper(3006) = 0
trigger1 = enemy, pos y = 0
helpertype = normal ;player
name = "splode"
ID = 3006
stateno = 3106
pos = 150,20
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove


[State 3140, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 29
value = -400
kill = 0

[State 3140, Throw]
type = TargetState
trigger1 = AnimElem = 30
value = 3151

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 30
x = -100
y = -500
;ignorehitpause =
;persistent =


[State 1000, Land]
type= changestate
trigger1= time = 180
value= 1055

;-----------------------------------------------------------

[Statedef 3150]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 3


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
y = -6
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && time = [2,30]
y = .2
;ignorehitpause =
;persistent =

[State 3150, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 77177

;---------------------------------------------------------------

[Statedef 3151]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = 60
x = 30
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = -500
;ignorehitpause =
;persistent =

[State 3151, 4] ;Hit ground
type = changestate
trigger1 = Vel x > 0
trigger1 = Pos x >= 0
value = 3155 ;Hit ground

;------------------------------------------------------------------
;HitGround
[StateDef 3155]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 2

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -700
kill = 1
absolute = 0
;ignorehitpause =
;persistent =


[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 7801
;elem = 1
;ignorehitpause =
;persistent =


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 60
freq = 80
ampl = 17
phase = 90
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3155, end]
type = Selfstate
trigger1 = AnimTime = 0 && alive = 1
value = 5120
ctrl = 0

[State 3155, end]
type = Selfstate
trigger1 = AnimTime = 0 && alive != 1
value = 5150
ctrl = 0

;------------------------------------------------------------------

;Splode
[StateDef 3106]
type = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 7802
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7802
scale = 1.5,1.5
ID = 3006
pos = 150,20
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
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 8676
ID = 3006
pos = 150,0
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
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 8676
ID = 3006
pos = 150,0
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
scale = 3,3
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 192,8
volume = 255
channel = 0
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 20
;ignorehitpause =
;persistent =

[State 3106, end]
type = destroyself
trigger1 = time = 122
;-------------------------------------------------
;Land
;-------------------------------------------------
[StateDef 1055]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 47;1055
poweradd = 0
sprpriority = 2


[State 0, 5]
type = Explod
trigger1 = animelem = 1
anim = 702
pos = -65,0
postype = p1
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,203 ;0,203;S40,0
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =


[State 1055, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;super ice breath
[Statedef 3008]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1016
poweradd= -2000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,14
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1020,0]
type = PlaySnd
trigger1 = time = 26
value = 192,10

[State 1020,0]
type = PlaySnd
trigger1 = time = 30
value = 192,10


[State 1020,0]
type = PlaySnd
trigger1 = time = 2
value = 192,9
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
pos = 0, -90
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 1000, shake it]
Type = EnvShake
trigger1 = time = 30
Time = 100
freq = 60
ampl = 10
phase = 0
ignorehitpause = 1

[State 3200, flash]
type = explod
trigger1 = time = 30
anim = 7719
pos = -240,-195
sprpriority = -999
ignorehitpause = 1
removetime = 120
removeongethit = 1
ownpal = 1
supermove = 1
scale = 2,1

[State 3200, flash]
type = explod
trigger1 = time = 30
anim = 7721
pos = -50,10
postype = p2
sprpriority = 11
ignorehitpause = 1
removetime = 130
removeongethit = 1
ownpal = 1
supermove = 1
scale = 1.5,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 42
value = 191,3

[State 1610, 1]
type = Velset
trigger1 = Time = 35
x = -1

[State 9009, Wave]
type = Explod
trigger1 = Time = 26
anim = 7007
pos = 18,-95
postype = p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 2,2

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,29
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 9,-2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 10,2
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 10,-2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,14
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 11,-1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 25,10
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 12,-1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 13,-0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 13,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,19
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 13,0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,5
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 12,1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 11,1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 26
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 10,2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 26
trigger1 = p2stateno = 722
trigger1 = p2stateno != 723
projanim = 7718
projremanim = -1
projhitanim = 77188
projscale = 0.30,0.30
offset = 18,-100
velocity = 11,-3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 8
guardflag =
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 115
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 80 ,80)
Palfx.add = 49,173,231
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
p2stateno = 723

[State 3200, 7]
type = ChangeState
trigger1 = Time = 155
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3302]
type = S
movetype = A
physics = N
anim = 1005
ctrl = 0
sprpriority = 100
velset = 0,0
hitcountpersist = 1


[State 24000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 191,5

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 190,10

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
trigger5 = animelem = 7
trigger6 = animelem = 8
trigger7 = animelem = 9
trigger8 = animelem = 10
attr = S, SP
damage = floor(25 + (root,var(41))/(1+(root,Var(19)/5.0))), 7
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = S8220+random%1
guard.sparkno = S8100
sparkxy = -30, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0
air.type = High
air.velocity = -4, -2
air.hittime = 25
fall = 1

[State 24000]
type = DestroySelf
trigger1 = Time = 29

;==========================================================================
;core damage
[Statedef 3040]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 7804
ctrl = 0
sprpriority = 2

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  animelem = 1
Time = 40
;anim =-1;s3012
pos = -20, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 191,3
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 3005, VelSet]
type = VelSet
trigger1 = animelem =3
x = 15

[State 3005, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = Hard
damage    = 40
hitflag = MA
priority = 8, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
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
p1stateno = 3006


[State 3005, goto Attack State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 3006]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 78044
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 90
time = 1
pos = 60,0

[State 3006, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
attr = S, HA
animtype  = Hard
damage    = 50
hitflag = MA
priority = 2, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -45,-90
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

[State 3006, next]
type = changestate
trigger1 = time = 10
value = 3007
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 3007]
type = S,SA
movetype= A
physics = N
anim = 7806
velset = 0,0
poweradd= 40
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19
value = 191,2
volume = 100


[State 3007, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S,NA
animtype = High
damage = 40
guardflag = MA
pausetime = 5,12
sparkno =  s8022
sparkxy = -10,-65
hitsound = s8000,2
p2stateno = 5300
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 30
ground.velocity = -2
air.velocity = -2.2,-3.2



[State 11001, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
time = 25
value = SCA
ignorehitpause = 1

[State 3007, 2]
type = Explod
trigger1 = Time = 33
anim = 7814
sprpriority = -3
postype = p1
removetime = 55


[State 405, 6]
type = PlaySnd
trigger1 = Time = 33
value = 0,73

[State 3007, 3]
type = changestate
trigger1 = Animtime = 0
value = 1043

;; === omega ===

[Statedef 1043]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 7807
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 192,11
volume = 250

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,4
volume = 100



[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
trigger17 = AnimElem = 17
trigger18 = AnimElem = 18
trigger19 = AnimElem = 19
trigger20 = AnimElem = 20
trigger21 = AnimElem = 21
trigger22 = AnimElem = 22
trigger23 = AnimElem = 23
trigger24 = AnimElem = 24
trigger25 = AnimElem = 25
trigger26 = AnimElem = 26
trigger27 = AnimElem = 27
trigger28 = AnimElem = 28
attr = S, HA
animtype  = Hard
damage    = 100
hitflag = MA
priority = 28, Hit
guardflag = MA
pausetime = 3,3
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -45,-90
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
kill = 0
guard.kill = 0
fall.kill = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
fall = AnimElem = 28


[State 3002, next]
type = changestate
trigger1 = Animtime = 0
value = 3009
ctrl = 0

;-------------------------------------------------------------------------------

[Statedef 3009]
type = S,SA
movetype= A
physics = N
anim = 7808
velset = 0,0
poweradd= 40
ctrl = 0

[State 405, 6]
type = PlaySnd
triggerall = var(3)= 0
trigger1 = Time = 12
value = 0,14

[State 405, 6]
type = PlaySnd
trigger1 = animelem= 5
value = 0,26;73

[State 405, 6]
type = PlaySnd
triggerall = var(3)!= 0
trigger1 = Time = 0
value = 0,76

[State 11001, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
time = 35
value = SCA
ignorehitpause = 1

[State 3007, 2]
type = Explod
trigger1 = Time = 2
anim = 7814
sprpriority = -3
postype = p1
removetime = 55

[State 405, 6]
type = PlaySnd
trigger1 = Time = 33
value = 0,73

[State 3002, next]
type = changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;superman unbound
[StateDef 3400]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 7810
sprpriority = 2


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 0
Time = 40
pos = -10, -90
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Null;Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 3101, Snd]
type = PlaySnd
trigger1 = Time = 0
value = S3000, 0

[State 3101, 2]
type = HitDef
trigger1 = !movehit
trigger2 = !movecontact
attr = A, SA
damage = 0, 0
guardflag = HA
hitflag = MAF
pausetime = 0, 0
sparkno =  s8022
sparkxy = -20,-80
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
p1stateno = 3103
fall = 0

[State 3101, 4]
Type = VelSet
trigger1 = MoveHit
y = 0
x = 0

[State 3101, 3]
Type = StateTypeSet
trigger1 = Time = 1
StateType = A

[State 3101, 4]
Type = VelSet
trigger1 = Time = 13
y = 0
x = 10

[State 3101, 9]
type = afterimage
trigger1 = !Time
time = 21
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3301, end]
type = ChangeState
trigger1 = movehit
value = 3103
ctrl = 0

[State 3301, end]
type = ChangeState
;trigger1 = movehit
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
[Statedef 3103]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7811
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 28
trigger9 = AnimElem = 32
trigger10 = AnimElem = 34
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 44
trigger15 = AnimElem = 46
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 59
trigger20 = AnimElem = 62
trigger21 = AnimElem = 65
trigger22 = AnimElem = 67
trigger23 = AnimElem = 70
trigger24 = AnimElem = 71
value = 8000, 2


[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3013, pos]
Type = Posset
trigger1 = Time = 0
y = 0

[State 3013, blind]
type = targetbind
trigger1 = time = 0
pos = 20, 0

[State 3000, 9]
type = afterimage
trigger1 = !Time
time = 125
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3102,PlaySnd]
type = PlaySnd
trigger1 = AnimElem =1
volume = 250
value = 70, 8

[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 300, 0
animtype =  Heavy
guardflag = L;MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0, 8
sparkno =  s8022
guard.sparkno = -1
sparkxy = -10, -55
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 0 ,0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 20
fall = 1
kill = 0
p2stateno = 3303

[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
trigger13 = AnimElem = 32
trigger14 = AnimElem = 34
trigger15 = AnimElem = 36
trigger16 = AnimElem = 38
trigger17 = AnimElem = 40
trigger18 = AnimElem = 42
trigger19 = AnimElem = 44
trigger20 = AnimElem = 48
trigger21 = AnimElem = 50
trigger22 = AnimElem = 52
trigger23 = AnimElem = 54
trigger24 = AnimElem = 56
trigger25 = AnimElem = 58
trigger26 = AnimElem = 60
trigger27 = AnimElem = 62
trigger28 = AnimElem = 64
trigger29 = AnimElem = 66
trigger30 = AnimElem = 68
attr = S, HA
animtype =  Heavy
damage = 300, 0
guardflag = L;MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0, 8
sparkno =  s8022
guard.sparkno = -1
sparkxy = -55, -15
hitsound = s8000,2
guardsound = S8000,6
ground.type = Trip
ground.slidetime = 0;6
ground.hittime  = 0;12
ground.velocity = 0 ,0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 20
fall = 1
kill = 0
p2stateno = 3303


[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 68
attr = S, HA
animtype =  Heavy
guardflag = L;MA
hitflag = MAFD
damage = 300, 0
priority = 30, Hit
pausetime = 0, 8
sparkno = s8022
guard.sparkno = -1
sparkxy = -55, -15
hitsound = s8000,2
guardsound = S8000,6
ground.type = Trip
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -18,-8
airguard.velocity = -18,-8
air.type = High
air.velocity = -18,-8
air.hittime = 20
fall = 1

[State 1100, Boom]
type = PlaySnd
trigger1 = AnimElem = 71
value = 30,0
volume = 100

[State 1000, hits]
type = Explod
triggerall = !NumExplod(8022)
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
trigger13 = AnimElem = 32
trigger14 = AnimElem = 34
trigger15 = AnimElem = 36
trigger16 = AnimElem = 38
trigger17 = AnimElem = 40
trigger18 = AnimElem = 42
trigger19 = AnimElem = 44
trigger20 = AnimElem = 48
trigger21 = AnimElem = 50
trigger22 = AnimElem = 52
trigger23 = AnimElem = 54
trigger24 = AnimElem = 56
trigger25 = AnimElem = 58
trigger26 = AnimElem = 60
trigger27 = AnimElem = 62
trigger28 = AnimElem = 64
trigger29 = AnimElem = 66
trigger30 = AnimElem = 68
anim = 8022
pos = 85, 0
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(8171)
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
trigger13 = AnimElem = 32
trigger14 = AnimElem = 34
trigger15 = AnimElem = 36
trigger16 = AnimElem = 38
trigger17 = AnimElem = 40
trigger18 = AnimElem = 42
trigger19 = AnimElem = 44
trigger20 = AnimElem = 48
trigger21 = AnimElem = 50
trigger22 = AnimElem = 52
trigger23 = AnimElem = 54
trigger24 = AnimElem = 56
trigger25 = AnimElem = 58
trigger26 = AnimElem = 60
trigger27 = AnimElem = 62
trigger28 = AnimElem = 64
trigger29 = AnimElem = 66
trigger30 = AnimElem = 68
anim = 8171
pos = 50,0
supermove = 1
sprpriority = -5
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(8170)
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
trigger13 = AnimElem = 32
trigger14 = AnimElem = 34
trigger15 = AnimElem = 36
trigger16 = AnimElem = 38
trigger17 = AnimElem = 40
trigger18 = AnimElem = 42
trigger19 = AnimElem = 44
trigger20 = AnimElem = 48
trigger21 = AnimElem = 50
trigger22 = AnimElem = 52
trigger23 = AnimElem = 54
trigger24 = AnimElem = 56
trigger25 = AnimElem = 58
trigger26 = AnimElem = 60
trigger27 = AnimElem = 62
trigger28 = AnimElem = 64
trigger29 = AnimElem = 66
trigger30 = AnimElem = 68
anim = 8170
pos = -50,0
supermove = 1
sprpriority = -5
removeongethit = 1

[State 1100, Rocks]
type = Explod
trigger1 = AnimElem = 4
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 28
trigger9 = AnimElem = 32
trigger10 = AnimElem = 34
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 44
trigger15 = AnimElem = 46
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 59
trigger20 = AnimElem = 62
trigger21 = AnimElem = 65
trigger22 = AnimElem = 67
trigger23 = AnimElem = 70
trigger24 = AnimElem = 71
id = 8676
anim = 8676
pos = -90,15
postype = p1
sprpriority = -3
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 1100, Rocks]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 28
trigger9 = AnimElem = 32
trigger10 = AnimElem = 34
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 44
trigger15 = AnimElem = 46
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 59
trigger20 = AnimElem = 62
trigger21 = AnimElem = 65
trigger22 = AnimElem = 67
trigger23 = AnimElem = 70
trigger24 = AnimElem = 71
id = 8676
anim = 8676
pos = 0,15
postype = p1
sprpriority = 999
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 1100, Rocks]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 28
trigger9 = AnimElem = 32
trigger10 = AnimElem = 34
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 44
trigger15 = AnimElem = 46
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 59
trigger20 = AnimElem = 62
trigger21 = AnimElem = 65
trigger22 = AnimElem = 67
trigger23 = AnimElem = 70
trigger24 = AnimElem = 71
id = 8676
anim = 8676
pos = 100,15
postype = p1
sprpriority = 999
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 193, sand]
type = Explod
trigger1 = AnimElem = 68
anim = 7510
pos = 0,0
sprpriority = -999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1


[State 1001, EnvShake]
type = EnvShake
triggerall = anim = 7811
trigger1 = animelem = 6
time = 328
freq = 100
ampl = -8
phase = 90

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1
under = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1


[State 1010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3016
ctrl = 1

;---------------------------------
[Statedef 3016]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 7812
sprpriority = -2

[State 107, 1] ;Blur Effect
type = AfterImage
trigger1 = animelem = 4
time = 10
palcontrast = 130,80,82;222,142,82
trans = add
length = 15
timegap = 50
framegap = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 16
value = 192,7
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0


[State 1001, Helper]
type = Helper
trigger1 = animelem = 16
helpertype = normal ;player
name = "Heat Vision"
ID = 9003
stateno = 9003
pos = -45,-100
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale= .8
size.yscale= .8

[State 3102,ChangeState]
type= changestate
trigger1= time = 130
value= 1055

;--------------------------------------------------------------
;heatvision
[Statedef 9003]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
poweradd = -3000
anim = 7813


[State 223, 4]
type = PalFX
triggerall = var(3) != 0
trigger1 = time = 1
time = 30
add = 49,173,231
mul = 13,179,199
ignorehitpause = 1

[State 5140, 2]
type = SprPriority
trigger1 = Time = 0
value = 999

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 22
trigger12 = AnimElem = 24
trigger13 = AnimElem = 25
trigger14 = AnimElem = 27
trigger15 = AnimElem = 28
trigger16 = AnimElem = 30
trigger17 = AnimElem = 31
trigger18 = AnimElem = 33
trigger19 = AnimElem = 34
trigger20 = AnimElem = 36
trigger21 = AnimElem = 37
trigger22 = AnimElem = 39
trigger23 = AnimElem = 40
attr = SCA, HP
damage    = 38,8
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 7, Hit
pausetime = 0,10
sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
fall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,200]
flag = Noshadow

[state 1611, 8]
type = destroyself
trigger1 = time = 80
trigger2 = parent, stateno != 3016
;---------------------------------------------------------------------------
;Hit by hadou combo
[Statedef 3303]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 0

;[State 1703, Turn]
;type = Turn
;trigger1 = P2bodydist x < -5

[State 0, HitBy]
type = HitBy
trigger1 != time
value = SCA,NA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 906, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value =5101

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 365
value = 5050
ctrl = 0

; END
;-------------------------------------------------------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
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
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[2000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
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

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers

;-------------------------------------------------------------------------------
;MvC Ko
[Statedef 9999]
ctrl = 0
anim = 9741

[State 9999,PlaySnd]
type = PlaySnd
trigger1 =!Time
value = s9999,4

[State 9999,PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = s230,11

[State 9999, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 55
flag = NoBarDisplay
flag2 = NoMusic

[State 9999, Explod]
type = Explod
trigger1 =!Time
anim = 9999
postype = Left
pos = 0,0
bindtime = -1
sprpriority = 5
scale = 1,1
pausemovetime = 999999
supermovetime = 999999
removetime = 40

[State 9999,DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
