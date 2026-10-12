;---------------------------------------------------------------------------
; Hyper 1 - RobotArmor
;---------------------------------------------------------------------------
[Statedef 3000]
type = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<8
value = SCA
time = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
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

[State 3000, superportrait]
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

[State 3000, HYPER portrait]
type = Explod
trigger1 = AnimElem = 1
anim = 11000+random%5
ID = 11000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 160,120;0,0;15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait black]
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
name ="Hyper fx"
ID = 9600
stateno = 9600
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3000, snd]
type = PlaySnd
trigger1 = time = 1
value = 1129, 0
channel = 1


[State 3000, snd]
type = PlaySnd
trigger1 = time = 5
value = 1129, 3

[State 3000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001

;---------------------------------------------------------------------------
; Hyper end
[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3001
juggle  = 8
poweradd= ifelse (var(50) > 0,0,59)
velset = 0,0
ctrl = 0
sprpriority = 2



[State 3001, snd]
type = PlaySnd
trigger1 = time = 11
value = 1129, 4
channel = 1

[State 3001, snd]
type = PlaySnd
trigger1 = time = 50
value = 1129, 2
channel = 1

[State 3001, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1129, 1


[State 3001 , hitdef]
type = HitDef
trigger1 = 1
attr = S, NA
damage    = 80
persistent = 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15,10
sparkno = S8022
guard.sparkno = s8001
sparkxy = -27,-70
hitsound   = S6,0
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15, -5
air.velocity = -16,-5
envshake.time = 6
envshake.freq = 50
envshake.ampl = -6
palfx.time = 45
palfx.add  = -90,0,140
palfx.sinadd = 100,100,100,10
Palfx.color = 0

[State 3001, beamhit]
type = Helper
trigger1 = time = 80
helpertype = normal
name = "beamhit"
ID = 3005
pos = 20,-110
ontop = 0
ignorehitpause = 1
postype = p1
stateno = 3005
ownpal = 1

[State 3001, sphere]
type = Helper
trigger1 = time = 68
helpertype = normal
name = "sphere"
ID = 3006
pos = 10,-55
postype = p1
scale = .7,.7
stateno = 3006
ownpal = 1

[State 3001, sphere]
type = Helper
trigger1 = time = 68
helpertype = normal
name = "sphere"
ID = 3006
pos = 50,-60
postype = p1
scale = .7,.7
stateno = 3006
ownpal = 1


[State 3001,shad]
type = Explod
trigger1 = time = 68
anim = 3008
ID = 3008
pos = 0,0
postype = p1
removetime = 110
sprpriority = 5
ownpal = 1

[State 3001, fx]
type = Explod
trigger1= time>=60
anim = 3007
id = 3007
pos = 90,-100
postype = p1
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 199,Random/100,Random/136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = -.1,.15
removetime = 18
supermovetime = 999
pausemovetime = 999
scale = .1,.1
sprpriority = 8

[State 3001, a4]
type = modifyexplod
trigger1 = 1
ID = 3007
scale = .1,.1

[State 3001, end]
type = ChangeState
trigger1 = Time = 185
value = 3003

;---------------------------------------------------------------------------
[Statedef 3003]
type = A
ctrl = 0
anim = 3003
velset = 0,0

[State 3003, snd]
type = PlaySnd
trigger1 = time = 1
value = 1129, 3

[State 3003, snd]
type = PlaySnd
trigger1 = time = 10
value = 1129, 0
channel = 1

[State 3003, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
;---------------------------------------------------------------------------
[Statedef 3005]
type    = S
movetype = A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
poweradd = 0
anim = 3002

[State 3005, elect]
type = Explod
trigger1 = Movehit = 1
anim = 3004
random = 50, 90
pos = 0,-75
postype = p2
scale = .7,.7
sprpriority = 5
bindtime = 1

[State 3005, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = SCA, HP
damage    = 12,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
hitsound = s15,1
guardsound = 6,0
sparkno = S8022
guard.sparkno = s8001
sparkxy = -30,40
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
envshake.time = 6
envshake.freq = 50
envshake.ampl = -6
p2stateno = 7600
palfx.time = 45
palfx.add  = -90,0,140
palfx.sinadd = 100,100,100,10
Palfx.color = 0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,100]
flag = Noshadow

[State 3005,end ]
type = DestroySelf
trigger1 = time = 100
ignorehitpause = 1
;---------------------------------------------------------------------------
[Statedef 3006]
type = S
ctrl = 0
anim = 3005
velset = 0,0
sprpriority = 4

[State 3006,end]
type = DestroySelf
trigger1 = time = 110
;---------------------------------------------------------------------------
; Hyper 2 - What Comes Down But Does Not Come Up?
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3100,0

[State 3000, 1]
type = AssertSpecial
triggerall = Var(30):=2
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1
[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<8
value = SCA
time = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
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

[State 3000, superportrait]
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

[State 3000, HYPER portrait]
type = Explod
trigger1 = AnimElem = 1
anim = 11000+random%5
ID = 11000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 160,120;0,0;15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait black]
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
name ="Hyper fx"
ID = 9600
stateno = 9600
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

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


[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 120

[State 1000,helper]
type = Helper
;triggerall =  p2stateno != 7670
trigger1 = animelem = 7
ID =3103
pos= 50,-27
stateno = 3103
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
hitsound   = S176,0
guardsound= S8000,6
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
anim = 3101
id= 3101
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
id=3101

[State 1000, 2]
type = ChangeState
trigger1 = time = 250
value =3104
ctrl = 1

;----------------------------------------------------------------------
[Statedef 3104]
type    = S
physics = S
ctrl = 0
anim = 3104
sprpriority = 2

[State 1410, 2]
type = RemoveExplod
trigger1 = !time
id=3101

[State 1000, telepat]
type = Explod
trigger1 = time=0
anim = 3102
id= 3102
pos= -10,-2
supermove = 1
ontop=1
removeongethit = 1
removetime=14

[State 1000, telepat]
type = Explod
trigger1 = time=0
anim = 3110
id= 3110
pos= 63,10
supermove = 1
ontop=1
removeongethit = 1
removetime=60

[State 3105, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = s3100, 1
channel=4

[State 3105, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[statedef 3103]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3103
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

;----------------------------------------------------------------------
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
;----------------------------------------------------------------------
;custom anim
[Statedef 3107]
type = A
movetype = H
physics = N

[State 820, 1]
type = SelfState
Trigger1 = !time
value = 5050


;---------------------------------------------------------------------------
;fatal helper
[Statedef 3106]
type=A
anim=9741
velset=0,0


[State 8052, Large]
type=explod
trigger1= !Time
trigger2 = time=[5,40]
anim=8050+random%2
ID=8050
postype=p1
pos=0,0
vel = (IfElse(Random <= 499,Random/200,Random/(-200))),Random/(-190)
accel= 0, .25
trans=addalpha
alpha=256,128
sprpriority=600
ontop=1
scale=.5,.5
ownpal=1
ignorehitpause=1
random=5,50
facing= ifelse(random<500, -1, 1)
vfacing=ifelse(random<500, -1, 1)

;-----------------------------------------------------------------------------------
;Hologram
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 3230


[State 3200, PlaySnd]
type = PlaySnd
value = S15,10
trigger1 = animelem = 1
channel = 4

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<8
value = SCA
time = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
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

[State 3000, superportrait]
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

[State 3000, HYPER portrait]
type = Explod
trigger1 = AnimElem = 1
anim = 11000+random%5
ID = 11000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 160,120;0,0;15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait black]
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
name ="Hyper fx"
ID = 9600
stateno = 9600
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3200, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 3200, sense bar]
type = Explod
trigger1 = animelem =1
anim = 3210
id = 3210
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 3200, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3220
id = 3220
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3200, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 32001
ctrl = 0

;-----------------------------------------------------------------

[Statedef 32001]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 3200
sprpriority = 3

[State 32001, Images]
type = Helper
triggerall = numhelper(32102) =0
trigger1 = animelem = 1
helpertype = normal
name = "Image1"
ID = 32002
stateno = 32002
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32103) =0
trigger1 = animelem = 2
helpertype = normal
name = "Image1"
ID = 32003
stateno = 32003
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32004) =0
trigger1 = animelem = 3
helpertype = normal
name = "Image1"
ID = 32004
stateno = 32004
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32005) =0
trigger1 = animelem = 4
helpertype = normal
name = "Image1"
ID = 32005
stateno = 32005
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32006) =0
trigger1 = animelem = 1
helpertype = normal
name = "Image1"
ID = 32006
stateno = 32006
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32007) =0
trigger1 = animelem = 2
helpertype = normal
name = "Image1"
ID = 32007
stateno = 32007
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32008) =0
trigger1 = animelem = 3
helpertype = normal
name = "Image1"
ID = 32008
stateno = 32008
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, Images]
type = Helper
triggerall = numhelper(32009) =0
trigger1 = animelem = 4
helpertype = normal
name = "Image1"
ID = 32009
stateno = 32009
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 32001, image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 50
pos = 30,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = 50,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = 70,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = 90,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = -30,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = -50,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = -70,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, Image]
type = explod
trigger1 = time = 0
anim = 3200
postype = p1
sprpriority = 4
supermovetime = -1
removetime = 53
pos = -90,0
bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0

[State 32001, effect]
type = explod
trigger1 = time = 0
anim = 4066
postype = p1
sprpriority = 3
supermovetime = -1
removetime = 33
pos = 5,-99
bindtime = -1
supermove = 9999
pausemove = 9999
removeongethit = 1
ownpal = 0
ontop =1

[State 32001, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------
[Statedef 32002]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32002, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32002, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32002, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32002, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32002, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32002, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32002, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x -25)
y = (parent, pos y)
persistent = 1


[State 32002, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3

[State 32002, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32003]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32003, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32003, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32003, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32003, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32003, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32003, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x -60)
y = (parent, pos y)
persistent = 1


[State 32003, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3


[State 32003, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32004]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32004, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32004, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32004, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32004, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32004, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32004, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x -100)
y = (parent, pos y)
persistent = 1


[State 32004, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3

[State 32004, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32005]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32005, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32005, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32005, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32005, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32005, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32005, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32005, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32005, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x +25)
y = (parent, pos y)
persistent = 1


[State 32005, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3

[State 32005, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32006]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32006, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32006, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32006, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32006, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32006, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32006, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32006, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32006, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x +60)
y = (parent, pos y)
persistent = 1


[State 32006, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3

[State 32006, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32007]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32007, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32007, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32007, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32007, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32007, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32007, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32007, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32007, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x+100)
y = (parent, pos y)
persistent = 1


[State 32007, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3


[State 32007, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32008]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32008, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32008, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32008, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32008, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32008, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32008, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32008, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32008, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x +130)
y = (parent, pos y)
persistent = 1


[State 32008, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3


[State 32008, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef 32009]
type    = S
physics = N
velset = 0,0
ctrl = 0
anim = (parent,anim)
sprpriority = 3

[State 32009, PosSet]
type = PosSet
trigger1 = parent, pos y >= 0 || parent, stateno = 0 || parent, stateno = [51,53]
trigger2 = parent, anim = 47 || parent, stateno = [5080,5121]
trigger3 = parent, statetype = S && parent, movetype = A && parent, pos y >= 0 || parent, statetype = C && parent, movetype = A && parent, pos y >= 0
trigger4 = parent, statetype = S && parent, movetype = H && parent, pos y >= 0 || parent, statetype = L && parent, movetype = H && parent, pos y >= 0 || parent, statetype = C && parent, movetype = H && parent, pos y >= 0
y = 0
ignorehitpause = 0

[State 32009, VelSet]
type = VelSet
trigger1 = parent, pos y < -10
y = parent, vel y
ignorehitpause = 0

[State 32009, VelSet]
type = VelSet
trigger1 = (parent, stateno = [51,53] )|| (parent, stateno = [5080,5121])
y = 0
ignorehitpause = 0

[State 32009, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32009, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 700

[State 32009, ChangeAnim]
type = ChangeAnim
trigger1 = var(17) != (root,anim)
trigger1 = 1
value = (root,anim)
ignorehitpause = 0

[State 32009, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = anim

[State 32009, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x-130)
y = (parent, pos y)
persistent = 1


[State 32009, Turn]
type = Turn
trigger1 = parent, anim = 5 && animtime = 0 || parent, anim = 5 & animtime = 0 || facing != root, facing
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
value = S16,0
trigger1 = time = 120
channel = 3


[State 32009, 7]
type = changestate
trigger1 = time >=700 || matchover || win || lose
value = 32010

;-----------------------------------------------------------------
[Statedef  32010]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3240
sprpriority = 3

[State 3200, PlaySnd]
type = PlaySnd
value = S16,1
trigger1 = animelem = 1
channel = 5

[State 32010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 32010, 7]
type = destroyself
trigger1 = animtime = 0

;-----------------------------------------------------------------
;shoot
[Statedef 3203]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3203
ctrl = 0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1105,2

[State -2, Hyper Combo Finish FX]
type = Helper
trigger1 = (WinKO) && (NumHelper(9700) = 0)
helpertype = Normal
name = "Hyper Combo Finish FX"
ID = 9700
stateno = 9700
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermove=9999
pausemove=9999


[State 3202, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S,HA
damage = 35,10
animtype  = Hard
getpower  = 10
givepower = 25
guardflag = MA
hitflag = MAFDL
pausetime = 2,2
sparkno = s8223
hitsound = s1105,0
guardsound = 6,0
guard.sparkno = s8001
ground.type = high
ground.slidetime = 4
ground.velocity = 0,-1
air.type = Low
air.velocity = 0,-1
air.juggle = 5
fall.animtype = Hard
fall = 1
envshake.time = 15
envshake.ampl = 10
fall.yvelocity = 0
fall.xvelocity =0
down.bounce = 1
fall.recover = 0
getpower  = 0


[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = animtime =0
v = 19 
value = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime =0
value = 3202
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = 1
trigger1 = parent,stateno != 3200
trigger2 = parent,anim != 3200





;---------------------------------------------------------------------------
;Hyper 4 - Riddle
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

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<8
value = SCA
time = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
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

[State 3000, superportrait]
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

[State 3000, HYPER portrait]
type = Explod
trigger1 = AnimElem = 1
anim = 11000+random%5
ID = 11000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 160,120;0,0;15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait black]
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
name ="Hyper fx"
ID = 9600
stateno = 9600
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S195,1
channel = 1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11

[State 3300]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Riddle"
ID = 12345
stateno = 15001
pos = 0,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3300]
type = ChangeState
trigger1 = helper(12345), stateno = 15002
value = 15003
ctrl = 0

[State 3300]
type = ChangeState
trigger1 = !numhelper(12345)
trigger1 = time >= 38
value = 0
ctrl = 1

;anim =
;ignorehitpause =
;persistent =

;--------------------------------------------------------------------------

[Statedef 15001]
type    = A
movetype= A
physics = N
anim = 3301
velset = 3,0

[State 15001]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 15001]
type = VelAdd
trigger1 = 1
x = 0.3

[State 15001]
type = HitDef
trigger1 = !movecontact
attr = S, SP
damage = 0
animtype = Light
guardflag = M
hitflag = M
priority = 1, Hit
pausetime = 0,0
sparkno = S30000
guard.sparkno = s30040
sparkxy = -10, -77
hitsound = S5, 0
guardsound = S30, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0,0

[State 15001]
type = TargetState
triggerall = NumTarget
trigger1 = movehit
value = 15007

[State 15001]
type = ChangeState
trigger1 = movehit
value = 15002

[State 15001]
type = Destroyself
trigger1 = !movehit && root, animtime = 0
;------------------------------------------------------------------------------------------
;Helper question
[Statedef 15002]
type    = A
movetype= I
physics = N
anim = 999
velset = 0,0

[State 15002]
type = VarSet
trigger1 = time = 0
v = 4
value = random%2

;[State 15002]
;type = VarSet
;trigger1 = time = 0
;v = 15
;value = random%2

;[State 15002]
;type = VarSet
;trigger1 = time = 0
;v = 5
;value = random%100

[State 15002]
type = Explod
triggerall = !numexplod(15000)
trigger1 = var(15) = 0
anim = 15000
ID = 15000
pos = ((backedgedist+frontedgedist)/2)-65, 20
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 500
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 15002] ;Wrong
type = Explod
triggerall = !numexplod(15010)
trigger1 = var(15) = 0
anim = ifelse(facing = 1, 15020+var(15), 15080+var(15))
ID = 15010
pos = ((backedgedist+frontedgedist)/2)-40, cond (var(5)>=50,60,40)
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 500
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 15002] ;Correct
type = Explod
triggerall = !numexplod(15020)
trigger1 = var(15) = 0
anim = ifelse(facing = 1,15040+var(15), 15090+var(15))
ID = 15020
pos = ((backedgedist+frontedgedist)/2)-40, cond (var(5)>=50,40,60)
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 500
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 15002]
type = Explod
triggerall = var(5)>=50
triggerall = !numexplod(15030)
trigger1 = var(15) = 0
anim = 15060
ID = 15030
pos = ((backedgedist+frontedgedist)/2)-40, cond(var(4)=0&&var(5)>=50,60,40)
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 502
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 15002]
type = Explod
triggerall = var(5)<50
triggerall = !numexplod(15030)
trigger1 = var(15) = 0
anim = 15060
ID = 15030
pos = ((backedgedist+frontedgedist)/2)-40, cond(var(4)=0&&var(5)<50,40,60)
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 502
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 15002]
type = VarAdd
trigger1 = enemy, teammode != simul
trigger1 = enemy, command = "up"
trigger1 = enemy, stateno = 15006
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), stateno = 15006
trigger2 = enemy(0), command = "up"
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), stateno = 15006
trigger3 = enemy(1), command = "up"
v = 4
value = 1

[State 15002]
type = VarAdd
trigger1 = enemy, teammode != simul
trigger1 = enemy, command = "down"
trigger1 = enemy, stateno = 15006
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), stateno = 15006
trigger2 = enemy(0), command = "down"
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), stateno = 15006
trigger3 = enemy(1), command = "down"
v = 4
value = -1

[State 15002]
type = VarSet
trigger1 = var(4) > 1
v = 4
value = 0

[State 15002]
type = VarSet
trigger1 = var(4) < 0
v = 4
value = 1

[State 15002]
type = RemoveExplod
trigger1 = enemy, teammode != simul
trigger1 = (enemy, command = "up") ||  (enemy, command = "down")
trigger1 = enemy, stateno = 15006
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), stateno = 15006
trigger2 = (enemy(0), command = "up") ||  (enemy(0), command = "down")
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), stateno = 15006
trigger3 = (enemy(1), command = "up") ||  (enemy(1), command = "down")
trigger4 = root, stateno != 15003
trigger4 = root, stateno != 3300
id = 15030

[State 15002]
type = RemoveExplod
trigger1 = root, stateno != 15003
trigger1 = root, stateno != 3300
id = 15020

[State 15002]
type = RemoveExplod
trigger1 = root, stateno != 15003
trigger1 = root, stateno != 3300
id = 15010

[State 15002]
type = RemoveExplod
trigger1 = root, stateno != 15003
trigger1 = root, stateno != 3300
id = 15000

[State 15002]
type = DestroySelf
trigger1 = root, stateno != 15003
trigger1 = root, stateno != 3300


;-------------------------------------------------------------------------------------------
;Riddle hit
[Statedef 15005]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1005,1

[State 0, Dust]
type = Explod
trigger1 = Time%2=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = -1
velocity = 2,0
sprpriority = 20
ownpal = 1

[State 105, 2]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 3]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 105, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 15003

;---------------------------------------------------------------
[Statedef 15003]
type    = S
movetype= I
physics = S
anim = 191


;[State 2200,8]
;type = SuperPause
;trigger1 = AnimElem = 1
;time = 185
;movetime = 185



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S195,2
channel = 1

[State 15003]
type = ChangeState
triggerall = helper(12345), var(4) = 1
trigger1 = enemy, teammode != simul
trigger1 = (enemy, command = "a") || (enemy, command = "b")  || (enemy, command = "c")  || (enemy, command = "x")  || (enemy, command = "y")  || (enemy, command = "z")
trigger1 = enemy, stateno = 15006
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), stateno = 15006
trigger2 = (enemy(0), command = "a") || (enemy(0), command = "b")  || (enemy(0), command = "c")  || (enemy(0), command = "x")  || (enemy(0), command = "y")  || (enemy(0), command = "z")
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), stateno = 15006
trigger3 = (enemy(1), command = "a") || (enemy(1), command = "b")  || (enemy(1), command = "c")  || (enemy(1), command = "x")  || (enemy(1), command = "y")  || (enemy(1), command = "z")
value = 15004
ctrl = 1

[State 15003]
type = ChangeState
triggerall = helper(12345), var(4) = 0
trigger1 = enemy, teammode != simul
trigger1 = (enemy, command = "a") || (enemy, command = "b")  || (enemy, command = "c")  || (enemy, command = "x")  || (enemy, command = "y")  || (enemy, command = "z")
trigger1 = enemy, stateno = 15006
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), stateno = 15006
trigger2 = (enemy(0), command = "a") || (enemy(0), command = "b")  || (enemy(0), command = "c")  || (enemy(0), command = "x")  || (enemy(0), command = "y")  || (enemy(0), command = "z")
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), stateno = 15006
trigger3 = (enemy(1), command = "a") || (enemy(1), command = "b")  || (enemy(1), command = "c")  || (enemy(1), command = "x")  || (enemy(1), command = "y")  || (enemy(1), command = "z")
value = 5300
ctrl = 0
;------------------------------------------------------------------------------------------------------
;Taunt, you are wrong.
[Statedef 15004]
type    = S
movetype= I
physics = S
anim = 196


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S195,4
channel = 1

[State 15004]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------------------------------
;Custom P2stateno
[Statedef 15006]
type    = S
movetype= I
physics = S
anim = 0


[State 15006]
type = ChangeState
trigger1 = enemy, teammode != simul
trigger1 = enemy, name = "Riddler"
trigger1 = (enemy, stateno != 5300) && (enemy, movetype != H)
trigger1 = enemy, prevstateno = 15003
trigger2 = enemy, teammode = simul
trigger2 = enemy(0), name = "Riddler"
trigger2 = (enemy(0), stateno != 5300) && (enemy(0), movetype != H)
trigger2 = enemy(0), prevstateno = 15003
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), name = "Riddler"
trigger3 = (enemy(1), stateno != 5300)  && (enemy(1), movetype != H)
trigger3 = enemy(1), prevstateno = 15003
value = 5300
ctrl = 0

[State 15006]
type = SelfState
trigger1 = enemy, teammode != simul
trigger1 = enemy, name = "Riddler"
trigger1 = enemy, stateno = 5300
trigger1 = enemy, prevstateno = 15003
trigger2 = enemy, teammode = simul
trigger2 = enemy(1), name = "Riddler"
trigger2 = enemy(0), stateno = 5300
trigger2 = enemy(0), prevstateno = 15003
trigger3 = enemy, teammode = simul
trigger3 = enemy(1), name = "Riddler"
trigger3 = enemy(1), stateno = 5300
trigger3 = enemy(1), prevstateno = 15003
trigger4 = enemy, teammode != simul
trigger4 = enemy, name = "Riddler"
trigger4 = (enemy, stateno != 5300) && (enemy, movetype = H)
trigger4 = enemy, prevstateno = 15003
trigger5 = enemy, teammode = simul
trigger5 = enemy(0), name = "Riddler"
trigger5 = (enemy(0), stateno != 5300) && (enemy(0), movetype = H)
trigger5 = enemy(0), prevstateno = 15003
trigger6 = enemy, teammode = simul
trigger6 = enemy(1), name = "Riddler"
trigger6 = (enemy(1), stateno != 5300)  && (enemy(1), movetype = H)
trigger6 = enemy(1), prevstateno = 15003
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 15007]
type    = S
movetype= I
physics = S
anim = 0

[state 15007, 0]
type=changestate
trigger1=time=0
value=15008
ctrl=0

;---------------------------------------------------------------------------
[statedef 15008]
type    = S
movetype= I
physics = S
anim = 0

[state 15008,0]
type=changestate
trigger1=time=185
value=15006
;---------------------------------------------------------------------------
; Hyper 3 - Kaboom
;---------------------------------------------------------------------------
[Statedef 4000]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd = 70
ctrl = 0
sprpriority = 2
anim = 1300
[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<8
value = SCA
time = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
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

[State 3000, superportrait]
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

[State 3000, HYPER portrait]
type = Explod
trigger1 = AnimElem = 1
anim = 11000+random%5
ID = 11000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 160,120;0,0;15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, superportrait black]
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
name ="Hyper fx"
ID = 9600
stateno = 9600
pos = 0,0
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1000,3

[State 2200, 2]
type = PosFreeze
trigger1 = (Time=[0,6])

[State 0, VelAdd]
type = VelSet
trigger1 = AnimElem = 2
x = 10
y = 10

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
attr = A,HA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = s8222
sparkxy = 0,-40
guard.sparkno = s8001
hitsound = s8000,4
guardsound = S8000,6
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
fall=1
envshake.time = 7
envshake.ampl = 4
p1stateno = 4010
p2stateno = 1320
kill=0

;--------------------------------------------
;Kick Off hit
[Statedef 4010]
type    = A
movetype= A
physics = N
poweradd = 70
ctrl = 0
sprpriority = 2
anim = 1310
velset= 0,0


[State 0, PosSet]
type = PosSet
trigger1 = !time
y = pos y


[State 0, TargetBind]
type = TargetBind
trigger1 = !time
time = 1
id = -1
pos = 50,ifelse(pos Y>=-50,0,50)
ignorehitpause = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,4


[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -6
y = -3

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
physics = A

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal ;player
name = "grenade"
ID = 4011
stateno = 4011
pos = 45, -42
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale=1.5
size.yscale=1.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=5
value = S1520,1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimElem=5
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
; Grenade flying
[Statedef 4011]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 11, 7
poweradd = 50
anim =1045
ctrl = 0
sprpriority = 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
attr = A,HP
damage = 218,20
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 2,2
sparkno = s8222
sparkxy = 0,0
guard.sparkno = s8001
hitsound = s1520,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-1
air.type = Low
air.hittime = 18
air.velocity = -12,3
envshake.time = 2
envshake.ampl = 2
fall=1
fall.recover=0
down.hittime = 25
down.bounce = 1
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0
down.velocity = -12,-7




[State 1051, new flame]
type = Explod
triggerall = numtarget
triggerall = !(target,ishelper)&& !NumExplod(1048)
trigger1 = MoveHit
anim = 1048
ID = 1048
postype = P2
pos = 0,-20
pausemovetime = 9999
supermovetime = 9999
sprpriority = 500
bindtime = -1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = MoveHit
value = S1045,2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = Time>0
scale= 1,1
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30
ignorehitpause = 1


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1047
time = -1


[State 0, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 4012
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=-8
value = 1046
ignorehitpause = 1

;---------------------------------------------------------------------------
; Grenade explods
[Statedef 4012]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim =1047
ctrl = 0
sprpriority = 2

[State -3: Helper]
type = Helper
trigger1 = (WinKO) && (NumHelper(8400) = 0)
helpertype = Normal
name = "Hyper WinKO"
id = 8400
pos = 0,0
postype = p1
facing = 0
stateno = 9700
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1



[State 1051, new flame]
type = Explod
triggerall = numtarget
triggerall = !(target,ishelper)&& !NumExplod(1048)
trigger1 = MoveHit
anim = 1048
ID = 1048
postype = P2
pos = 0,-20
pausemovetime = 9999
supermovetime = 9999
sprpriority = 500
bindtime = -1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 0, boom]
type = Explod
trigger1 = !time
anim = 7170
ID = 7170
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -10
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1045,1


[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 20
ampl = 10
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;---------------------- Integer variable list ----------------------

; AiLevel:= -2
; var(1):= 5300, 9741, -1
; var(2):= 155, 5350, 5351, 9741
; var(3):= 5000, 5010, 5020, 5030
; var(4):= 1300, 1400
; var(9):= 9741
;var(18):= -2
;var(19):= 3200, 3203
;var(58):= -3
;var(59):= 9741, -3

;---------------------- Float variable list ----------------------


