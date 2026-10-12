;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = A
movetype= A
physics = N
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 3000
sprpriority = -1

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

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 10,-90
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
anim = 10008
ID = 10008
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1
scale= 0.42,0.42


[State 3000, superbg]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

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

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 4200

[State 1001, Helper]
type = Helper
trigger1 = animelem =7
helpertype = normal ;player
name = "sombra"
ID = 1205
stateno = 1205
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1001, Helper]
type = Helper
trigger1 = animelem =7
helpertype = normal ;player
name = "ray"
ID = 193
stateno = 9002
pos = 35,-93
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5

[State 1001, Rings]
type = explod
trigger1 = animelem =7
anim = 7706
id = 1225
postype = p1
pos = 37, -90
sprpriority = 3
removetime = 13
supermove = 1
;scale = 1.5,1.5
bindtime = -1
ignorehitpause = 1

[State 1001, charge]
type = explod
trigger1 = animelem =6
anim = 7708
id = 1225
postype = p1
pos = -30, -97
sprpriority = 3
removetime = 30
supermove = 1
;scale = 1.5,1.5
bindtime = -1
ignorehitpause = 1

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

;--------------------------------------------------------------
;sombra
[Statedef 1205]
type = S
ctrl = 0
anim = 7819

[State 1197, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State 1197, end]
type = DestroySelf
trigger1 = time = 50
;--------------------------------------------------------------
;ray
[Statedef 9002]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 7707
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 190,13
volume = 100
channel = 0
freqmul = 1.1

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
trigger10 = AnimElem = 15
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
trigger16 = AnimElem = 21
trigger17 = AnimElem = 22
trigger18 = AnimElem = 23
trigger19 = AnimElem = 24
trigger20 = AnimElem = 25
trigger21 = AnimElem = 26
trigger22 = AnimElem = 27
trigger23 = AnimElem = 28
trigger24 = AnimElem = 29
trigger25 = AnimElem = 30
trigger26 = AnimElem = 31
trigger27 = AnimElem = 32
trigger28 = AnimElem = 33
trigger29 = AnimElem = 34
trigger30 = AnimElem = 35
trigger31 = AnimElem = 36
trigger32 = AnimElem = 37
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

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 50

;---------------------------------------------------------------------------
; Hyper 2
;---------------------------------------------------------------------------
[Statedef 3003]
type    = A
movetype= A
physics = N
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 3002
sprpriority = -1

[State 3003, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3003, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3003, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 10,-90
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3003, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3003, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1
scale= 0.42,0.42

[State 3003, superbg]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,14
volume = 100
channel = -2
freqmul = 1.0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 4200

[State 1004, Helper]
type = Helper
trigger1 = animelem =7
helpertype = normal ;player
name = "xplode"
ID = 1111
stateno = 1111
pos = -10,20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale=1.5
size.yscale=1.5
spriority = 5


[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 75
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;xplode
[Statedef 1111]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7714
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 48,1
volume = 100
channel = -1
freqmul = 1.0

[State 1110 , 1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
trigger10 = AnimElem = 15
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
attr = SCA, HP
damage    = 35
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = s8223
sparkxy = -10,-100
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

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 6
time = 30
freq = 70

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 43
;------------------------------------------------------------------------
;Unibeam
[Statedef 3005]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 7800
sprpriority = -1

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

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 10,-90
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
anim = 10008
ID = 10008
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1
scale= 0.42,0.42

[State 3000, superbg]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 48,2
volume = 100
channel = -2
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 4200

[State 3005, Helper]
type = Helper
trigger1 = animelem =3
helpertype = normal ;player
name = "ray"
ID = 193
stateno = 1043
pos = 0,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 5
size.xscale=2
size.yscale=2

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = time = 80
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

[Statedef 1043]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 7701
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,4
volume = 100
freqmul = 1


[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
trigger10 = AnimElem = 15
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
trigger16 = AnimElem = 21
trigger17 = AnimElem = 22
attr = SCA, HP
damage    = 35
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = s8223
sparkxy = -10,0
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
fall = 1

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

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 6
time = 70
freq = 60

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002


[State 99]
type = DestroySelf
trigger1 = time = 70

;-------------------------------------------------------------------------------
; END
