[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3000,0

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
Time = 45
;anim =-1;s3012
pos = -10,-70
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1303
ID = 1303
pos = 90,-67
bindtime = -1
removetime = 12
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1304
ID = 1304
pos = 90,-67
bindtime = -1
removetime = 12
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1305
ID = 1305
pos = 90,-67
bindtime = -1
removetime = 12
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 7
trigger3 = animelem = 12
value = 174,7

[State 3401]
type = EnvShake
trigger1 = AnimElem = 6
time = 60
freq = 150
ampl = -3
phase = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 177,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 177,1

[State 3605, 1] ;Dust
type = Explod
trigger1 = animelem = 6
anim = 918
postype = p1
pos = -30, 10
velocity = 0, 0
ontop = 1
accel = 0, 0

[State 250, HitDef]
type = projectile
trigger1 = animelem = 7
projanim = 197
projID = 197
projhitanim = 1302
projremanim = 1302
projcancelanim = 1302
projremovetime = -1
projscale = .5,.5
velocity = 5,0
offset = 50,-67
attr = S,NA
damage = floor(150 + var(41)/(1+(Var(19)/5.0))), 3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = S8210+random%3
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = S178,1
guardsound = S178,1
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3
fall= 1
air.fall = 1
afterimage.time = 90
afterimage.length = 6
afterimage.trans = add

[State 250, HitDef]
type = projectile
trigger1 = animelem = 9
trigger2 = animelem = 11
projanim = 197
projID = 198
projhitanim = 1302
projremanim = 1302
projcancelanim = 1302
projremovetime = -1
projscale = .2,.2
velocity = 5,0
offset = 50,-67
attr = S,NA
damage = floor(25 + var(41)/(1+(Var(19)/5.0))), 3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = S8210+random%3
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = S178,0
guardsound = S178,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3
fall= 1
air.fall = 1
afterimage.time = 90
afterimage.length = 6
afterimage.trans = add

[State 1005]
type = Explod
trigger1 = ProjHit197 = 1 
trigger2 = ProjHit198 = 1 
anim = 1306+random%2
postype = P2
pos = 20+random%10,-40+random%20
bindtime = -1
ignorehitpause = 1
sprpriority = 8
scale = .7, 0.9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ProjHit197 = 1 
value = 3000,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 14
value = 174,15


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------

;---------------------------------------------------------------------------
;Sonic Shockwave
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3100,0

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
Time = 45
;anim =-1;s3012
pos = -10,-70
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

[state 1001, hit]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 1
numhits = 10
hitflag= MAFP
hitsound   = S176,1
guardsound= S176,1
sparkno = -1
sparkxy = -1
guardflag = MA
pausetime = 0,9
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -20
air.animtype = Back
air.velocity = 0,-20
persistent =1
kill = 0

[State 3600, transform]
type = PlaySnd
trigger1 = AnimElem = 3
value = S234,0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 120

[State 1000,helper]
type = Helper
;triggerall =  p2stateno != 7670
trigger1 = animelem = 7
ID =3061
pos= 50,-27
stateno = 3061
size.xscale = .5
size.yscale = .5
helpertype = normal
name = "telepat"
keyctrl = 0
ownpal = 1

[state 1001, hit]
type = HitDef
trigger1 = animelem =12
attr = S, SP
damage =1
hitflag= MAFP
hitsound   = S2,0
guardsound= S3,0
sparkno = -1
sparkxy = -1
guardflag = MA
pausetime = 0,9
guard.sparkno = -1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -7, -1
air.velocity = -7,-1
airguard.velocity = -6,0
persistent =1

[State 1000, telepat]
type = Explod
trigger1 = animelem = 6
anim = 1601
id= 3011
pos= 50,-10
supermove = 1
ontop=1
scale = 0.7,0.7
removeongethit = 1
removetime=-1


[State 200, 1]
type = PlaySnd
trigger1 = animelem=2
value = 25, 4
channel=0

[State 1410, 2]
type = RemoveExplod
trigger1 = !time
id=3011

[State 1000, 2]
type = ChangeState
trigger1 = time = 250
value =3002
ctrl = 1
;-----------------------------------------------------------------------------
; Sonic Shockwave
[Statedef 3002]
type    = S
physics = S
ctrl = 0
anim = 1604
sprpriority = 2

[State 1410, 2]
type = RemoveExplod
trigger1 = !time
id=3011

[State 1000, telepat]
type = Explod
trigger1 = time=0
anim = 1602
id= 1602
pos= -10,-2
supermove = 1
ontop=1
removeongethit = 1
removetime=14

[State 3105, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------wave--------
;Sonic wave
[statedef 3061]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1603
velset = 4,0
sprpriority = 6

[State 10050, 2]
type = EnvShake
trigger1 = Time = 10
ignorehitpause = 5
time = 30
freq = 200
ampl = -4

[State 1001, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000,sound]
type = Playsnd
trigger1 = time = 1
value = S176,3

[state 1001, hit]
type = HitDef
trigger1 = time = 1
attr = S, SP
damage = floor(6 + var(41)/(1+(Var(19)/5.0))), 1
hitflag= MAFP
hitsound   = S176,1
guardsound= S176,1
sparkno = -1
sparkxy = -1
guardflag = MA
pausetime = 0,9
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
persistent =1
p2stateno = 53002

[state 1001, destroy]
type = Destroyself
trigger1 = time = 100

;---------3300

[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 174,8
channel = -1

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
Time = 45
;anim =-1;s3012
pos = -10,-70
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

[state 101, 2]
type = makedust
trigger1 = Time%5 = 0 && AnimElemTime(2) >= 10
pos = 0,0
spacing = 1

[State 105, Flash]
type = Explod
trigger1 = Time%5 = 0 && AnimElemTime(2) >= 10
anim = 113
ID = 113
postype = P1
pos = -20,-51
bindtime = 1
vel = -5,0
ownpal = 1
random = 40,78
scale = 0.5,0.5
removetime = -2

[State 3605, 1] ;Dust
type = Explod
trigger1 = animelem = 2
anim = 918
postype = p1
pos = -30, 10
velocity = 0, 0
ontop = 1
accel = 0, 0

[State -3, Landing Dust]
type = Explod
trigger1 = animelem = 3
ID = 101
anim = 101
postype = p1
pos = 20, -5
bindtime = -1
removetime = 50
sprpriority = -2
ownpal = 1

[State -3, Landing Dust]
type = Explod
trigger1 = animelem = 3
ID = 101
anim = 101
postype = p1
pos = -50, 5
bindtime = -1
removetime = 50
sprpriority = -2
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S174,16

[State 0, VelSet]
type = VelSet
trigger1 = time = [10,63]
x = 8

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8
trigger2 = animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12
numhits = 10
attr = S,NA
damage = floor(28 + var(41)/(1+(Var(19)/5.0))), 3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,0
air.type = Low
air.hittime = 5
air.velocity = -2,-3

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 13
numhits = 10
attr = S,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-9
air.type = Low
air.hittime = 5
air.velocity = -2,-3
fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------3300

[StateDef 3300]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3300
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3300,0

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
Time = 45
;anim =-1;s3012
pos = -10,-70
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

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, Explod]
type = playsnd
trigger1 = animelem = 5
value = 174,5

[State 0, Explod]
type = playsnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
value = 174,6

[State 0, Explod]
type = playsnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
value = 200,0

[State 0, Playsnd]
type = playsnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
value = s900,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S174,7

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 7
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 20
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 20
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 13
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 20
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 20
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 19
attr = S,NA
damage = floor(125 + var(41)/(1+(Var(19)/5.0))), 30
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.velocity = -10,-6
guard.slidetime = 13
guard.hittime = 13
guard.velocity = -16
air.velocity = -10,-6
airguard.velocity = -6
fall = 1
ground.cornerpush.veloff = -24

[State 8706 Explod]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 8
trigger3 = animelem = 9
trigger4 = animelem = 10
trigger5 = animelem = 11
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
removetime = 42
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 8
trigger3 = animelem = 9
trigger4 = animelem = 10
trigger5 = animelem = 11
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
removetime = 42
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 13
trigger2 = animelem = 14
trigger3 = animelem = 15
trigger4 = animelem = 16
trigger5 = animelem = 17
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 13
trigger2 = animelem = 14
trigger3 = animelem = 15
trigger4 = animelem = 16
trigger5 = animelem = 17

anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 19
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 22
trigger5 = animelem = 23
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
removetime = 42
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 19
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 22
trigger5 = animelem = 23
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
removetime = 42
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 19
scale = .5,.5
anim = 1234
ID = 1234
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------------

[StateDef 3400]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3400
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 2
Time = 60
;anim =-1;s3012
pos = 95,-70
sound = S10,0
poweradd = -1000
darken = 0

;----------

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 2
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
triggerall = !numhelper(40003)
trigger1 = time = 2
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
triggerall = !numhelper(40004)
trigger1 = time = 2
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

;----------


[State 250, HitDef]
type = projectile
trigger1 = Time = 15
projscale = .5,.5
projanim = 5678
projhitanim = 5678
projremanim = 5678
projcancelanim = 5678
projremovetime = -1
velocity = 5,0
offset = -25,-70
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 2
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3

[State 250, HitDef]
type = projectile
trigger1 = Time = 20
projscale = .5,.5
projanim = 5678
projhitanim = 5678
projremanim = 5678
projcancelanim = 5678
projremovetime = -1
velocity = 7,0
offset = -25,-50
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 2
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3

[State 250, HitDef]
type = projectile
trigger1 = Time = 25
projscale = .5,.5
projanim = 5678
projhitanim = 5678
projremanim = 5678
projcancelanim = 5678
projremovetime = -1
velocity = 5,0
offset = -25,-30
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 2
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3

[State 250, HitDef]
type = projectile
trigger1 = Time = 30
projscale = .5,.5
projanim = 5678
projhitanim = 5678
projremanim = 5678
projcancelanim = 5678
projremovetime = -1
velocity = 7,0
offset = -25,-10
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 2
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 14
value = 174,15


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------


[Statedef 53000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 53000, Sick Color]
type = null
trigger1 = time = 0
time = 10
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 4050,0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5012

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3009, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 5]
type = StateTypeSet
trigger1 = Pos Y != 0
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 53001 ;HITG_SLIDE

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 53001]
type    = S
movetype= H
physics = S

[State 4050,0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 5]
type = StateTypeSet
trigger1 = Pos Y != 0
type = a

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger2 = anim != 5017 && Time >= 10
value = 5017

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= 12
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 53002

;------------------- 3
[Statedef 53002]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 5000, 5]
type = StateTypeSet
trigger1 = Pos Y != 0
type = a

[State 3005, 1] ;Dizzy animation while stunned
type = ChangeAnim
trigger1 = Pos Y = 0
trigger2 = Pos Y > 0
value = 5300 ;Hit ground
persistent = 0

[State 3005, 2] ;Airborne opponents fall to ground
type = PosAdd
trigger1 = Pos Y < 0
Y = 3

;[State 810,TargetLifeAdd]
;type = LifeAdd
;trigger1 = (var(4) % 26) = 1
;value = -IfElse((Time = 0),56,23)

;[State 3112, HitAdd]
;type = HitAdd
;trigger1 = (var(4) % 26) = 1
;value = 1


[State 5001, 6]
type = ChangeState
trigger1 = Time >= 200
value = 50003

;----------------------------------
[Statedef 50003]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5001, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 5050, 3]
type = VelAdd
trigger1 = 1
y = .45

[State 5300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5050, 6]
type = SelfState
trigger1 = Time > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;HIT_BOUNCE