[Statedef 1000 - Mercury Storm]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1102 
sprpriority = 2

[state 0]
type = notHitBy
trigger1 =1
value = SCA
 
[State 0, Rayos]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Rayos"
ID = 1150
stateno = 1150
pos = 0,0
postype = p1
facing = 1
ownpal = 1
Size.Xscale = .45
Size.Yscale = .4

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1100 - Bolt of Zeus]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 10000+1*(var(10)=2)+2*(var(10)>=3)
poweradd = 60

[State 1000, Startup Invuln]
type = nothitby
trigger1 = animelemtime(3)<0
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 800,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 48,0
persistent = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
SparkNo=-1+(0*(var(50):=0))
p1facing = 1
p2facing = 1
p1stateno = 1101 
guard.dist = 0
id = 1100

[state 0]
type = playsnd
trigger1 = animelem = 5
value = 5,0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 1101]
type = S
movetype= A
physics = N
anim = 10010
sprpriority = 2

[State 801]
type = Targetstate
trigger1 = time = 0
value = 117001

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2400, 0
channel = 0

[state 0]
type = varset
trigger1 = time = 0
fvar(10) = 0.5
 
[State 0, Hold_B]
type = Explod
trigger1 = time = 0
anim = 1501 
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999 
id = 1501
sprpriority = 10


[State 1300]
type = BgPalfx
trigger1 = AnimElem = 11,<0
add = -(2+2)*time,-(2+2)*time,-(2)*time 
time = 1

[State 801]
type = posset
trigger1 = Time = 0
y = 0

[State 801]
type = Width
trigger1 = Time = 0
edge = 80,0
value = 80,0
 
[State 801]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 68,0

[State 801]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 10, < 0
pos = 0,-90

[State 801]
type = Targetstate
trigger1 = AnimElem = 11
value = 117120

[State 0, Hold_B]
type = Helper
trigger1 = AnimElem = 11
stateno = 1250
name="chidorinochikara"
pos = 20,0
postype = p1
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999
size.shadowoffset =2000

[State 801]
type = Targetlifeadd
trigger1 = var(10) = 1
trigger1 = AnimElem = 11
value = -260
kill = 1

[State 801]
type = Targetlifeadd
trigger1 = var(10) = 2
trigger1 = AnimElem = 11
value = -230
kill = 1

[State 801]
type = Targetlifeadd
trigger1 = var(10) = 3
trigger1 = AnimElem = 11
value = -200
kill = 1

[State 801]
type = ChangeState
trigger1 = AnimElem = 11
value = 1102 

[Statedef 1102]
type    = U;S
physics = N
ctrl = 0
anim = 10011
sprpriority = 1

[state 0]
type = removeExplod
trigger1 = time = 0
ID = 1501

[state 0]
type = varset
trigger1 = time = 0
var(10) = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,38
volume = 50

[State 0, FX]
type = Explod
trigger1 = animelemtime(1) >= 0 && animelemtime(4)<0
anim = 605
ID = 605
pos = -15+random%40,-40-random%50
postype = p1
scale = .3,.3
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 1
Angle = Random%360

[State 0, Helper]
Type = Helper
trigger1 = statetype != A
trigger1 = animelemtime(2)=0
HelperType = Normal
Name = "Effect"
StateNO = 6100
Pos = 0,0
PosType = p1
OwnPal = 1
Size.ShadowOffSet = 999999
IgnoreHitPause = 1

[State 0, PlaySnd]
Type = PlaySnd
Trigger1 = Time = 0
Value = S100,0
VolumeScale = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
trigger1 = statetype = A
x = 0
y = 0
;ignorehitpause = 
;persistent = 

[State 100, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S
ignorehitpause = 1

[State 100, ASS]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn
ignorehitpause = 1


[State 100, NotHitBy]
type = NotHitBy
trigger1 = statetype != A
trigger1 = time = 0;animelemtime(4) >= 0 && animelemtime(8)<0
value = SCA,AA,AP,AT
time = 6
ignorehitpause = 1
;persistent = 

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(4) >= 0 && animelemtime(8)<0
value = 0
ignorehitpause = 1
;persistent = 


[State 100, Vel]
type = velset
trigger1 = animelemtime(2)=0;animelemtime(4) >= 0 && animelemtime(7) < 0
x = -10;-30;*var(10);const(velocity.run.fwd.x)

[State 100, PA]
type = posadd
trigger1 = animelemtime(2)>=0
trigger1 = animelemtime(2)<7
trigger1 = vel x < 0
x = -18

[State 100, VS]
type = velset
trigger1 = animelemtime(2)=3
x = -6;const(velocity.run.fwd.x)

[State 100, VS]
type = velset
trigger1 = animelemtime(2)=7
x = 0 

[State 181, EXPLOD]
type = explod
trigger1 = animelemtime(2)>0
trigger1 = animelemtime(4)<0
persistent = 2
id = 1211
anim = 107
postype = p1
;space = stage ;;MUGEN 1.1 ONLY
pos = 8*var(10),-54
;pos = pos x + camerapos x + 25*facing,pos y - 75 ;;MUGEN 1.1 ONLY
;facing = facing ;;MUGEN 1.1 ONLY
ownpal = 1
facing = var(10)
scale = 1.5,1.25
sprpriority = 2
removetime = -2
;bindid = playerid ;;MUGEN 1.1 ONLY
removeongethit = 0
ignorehitpause = 1
pausemovetime = 9999 

[State 700, Effect]
type = helper
trigger1 = animelemtime(2) = 0
helpertype = normal
name = "Teleport_FX"
ID = 10105
pos = 0,0
postype = p1
stateno = 10101
ownpal = 0
facing = 1
pausemovetime = 9999 

[State 100, End]
type = changestate
trigger1 = !animtime 
value = ifelse((frontedgebodydist < 5),ifelse(statetype=A,110,0),ifelse(statetype=A,110,0))
ctrl = 1

[Statedef 1300 - Achilles' Clutch]
type    = U
movetype = A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 1100, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S 

[State 1400, ChangeAnim]
type = ChangeAnim 
trigger1 = Anim != 1400
trigger1 = Time = 0
value = 1400 + 1*(var(10) = 2) + 2*(var(10) = 3)

[State 1000, Startup Invuln]
type = nothitby
trigger1 = animelemtime(3)<0
value = SCA,AA,AP,AT
ignorehitpause = 1


[State 1303, PlaySnd]
type = PlaySnd 
trigger1 = AnimElem = 4
value = 8400, 5
volume = 200

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 1400, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = AnimElem = 4, = 1
x = 3
y = -8

[State 1400, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = AnimElem = 4, = 1
x = 5
y = -8.5

[State 1400, VelSet]
type = VelSet
triggerall = var(10) = 3
trigger1 = AnimElem = 4, = 1
x = 7
y = -9

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElem = 4, >= 2
y = .5

[State 1000, Explod]
type = Explod 
trigger1 = statetype = S
trigger1 = AnimElem = 3, = 0 
anim = 8551
sprpriority = 3
postype = p1
pos = 10,5
bindtime = 1
ownpal = 1
id = 8091
facing = -1
scale = 1,1
ignorehitpause = 1
pausemovetime = 999999
supermovetime = 999999

[State 1400, HitDef]
type = HitDef 
trigger1 = time = 0
trigger1 = var(45) = 0
attr = A, ST
id = 1300
hitflag = AF
priority = 2, Miss
SparkNo=-1+(0*(var(50):=0))
sprpriority = 1 
p2facing = 1
p1facing = -1
p1stateno = 841
p2stateno = 8420
fall = 0

[State 1400, HitDef]
type = HitDef 
trigger1 = time = 0
trigger1 = var(45) = 1
attr = A, ST
id = 1300
hitflag = AF
priority = 2, Miss
SparkNo=-1+(0*(var(50):=0))
sprpriority = 1 
p2facing = 1
p1facing = -1
p1stateno = 841
p2stateno = 842 
fall = 0

[State 1400, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 661

[Statedef 841 - Hit]
type    = A
movetype = A
physics = N
anim = 8410
velset = 0, 0

[state 0]
type = varset
trigger1 = time = 0
var(45) = 1
 
[State 841, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 800, 0
volume = 200

[State 841, PlaySnd]
type = PlaySnd 
trigger1 = AnimElem = 3
value = 190,15
volume = 200

[State 841, PosAdd]
type = PosAdd 
trigger1 = Time = 0
x = 50
y = -50

[State 841, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 33, -65
[State 841, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30, -60
[State 841, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 33, -85
[State 841, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, -115
[State 841, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = -3
[State 841, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -23, -96

[State 841, TargetBind]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,10

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal ;player
name = "Viento"
ID = 360
stateno = 360
pos = 80,-70
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = .8

[State 0, Teleport]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "Teleport"
ID = 581
stateno = 581
pos = 10,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .34
size.yscale = .34

[State 841, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 1
trigger1 = AnimElem = 5
value = -ceil(fvar(10)*240)

[State 841, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 2
trigger1 = AnimElem = 5
value = -ceil(fvar(10)*200)

[State 841, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 3
trigger1 = AnimElem = 5
value = -ceil(fvar(10)*160)

[State 841, TargetLifeAdd]
type = TargetPowerAdd 
trigger1 = AnimElem = 5
value = 75

[State 841, TargetLifeAdd]
type = PowerAdd 
trigger1 = AnimElem = 5
value = 150

[state 0]
type = varset
trigger1 = AnimElemtime(5) = 10
fvar(10) = fvar(10)*0.8

[State 841, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[Statedef 661 - Missed]
type    = A
physics = A
juggle  = 4
ctrl = 0


[State 661, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 661
trigger1 = Time = 0
value = 661
 
[State 661, StateTypeSet]
type = StateTypeSet
trigger1 = 1
physics = N
[State 661, VelAdd]
type = VelAdd
trigger1 = 1
y = .3
 
[State 660, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1


[Statedef 3030]
type    = S
movetype= A
physics = S
anim = 7801
ctrl = 0
velset = 0,0

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 100
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 40,40
sparkno = s8022
sparkxy = -30,-89
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
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

[state 3030,end]
type = changestate
trigger1 = animelem = 2
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Flying Punch
[Statedef 10064]
type = S
movetype= A
physics = N
velset = 0,0
juggle = 1
anim = 7802
ctrl = 0

[state 100, 4]
type = explod
trigger1 = animelem = 3
id = 100
anim = 6014
postype = p1
pos = -25,-25
ownpal = 1
bindtime = 1
scale = 1,0.5
sprpriority = 5
persistent = 0
removeongethit = 1

[State 191, Helper]
type = Helper
trigger1 = time > 4 && (time%8) = 1
ID = 11065	
stateno = 11065
pos = 70,-70
postype = p1
facing = 1
ownpal = 0
size.xscale = 0.8
size.yscale = 0.8

[State 1006, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 12

[State 405, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 191,9

[State 1006, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
animtype = Medium
guardflag = MA
damage = floor(48 + var(41)/(1+(Var(19)/5.0))), 13
pausetime = 0, 0
sparkno =  -1
sparkxy = -10,-85
ground.type = trip
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 2,-10
air.type = Low
air.hittime = 3
air.velocity = 2,-10

[State -2, Explod]
type = Explod
trigger1 = movehit =1
anim = 4010
ID = 5010
pos = 0,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0  

[State -2, Explod]
type = Explod
trigger1 = movehit =1
anim = 8220+random%2
ID = 5010
pos = 0,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0  

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S8000,5

[State 1006, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 0

[State 1006, 7]
type = ChangeState
trigger1 = Time = 35
value = 10066
ctrl = 1

;---------------------------------------------------------------------------
;  Flying Punch Helper
;---------------------------------------------------------------------------
[Statedef 11065]
type = S
ctrl = 0
anim = 7803

[State 100, snd]
type = PlaySnd
trigger1 = time = 1
value = S0,8

[State 1430, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 25,-70
time = 32

[State 0, Explod]
type = Explod
trigger1 = Time%10 = 0
anim = 8200+random%2
pos = 50,0
postype = p1  
facing = 1
bindtime = 1
vel = -5,-5+random%5
random = -20-25*(StateType = A),-95
removetime = 25
scale = 0.1,0.1
sprpriority = 4
ownpal = 0

[State 1192, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1192, end]
type = DestroySelf
trigger1 = animtime = 0
 
;---------------------------------------------------------------------------
;javelinepunch
[Statedef 1007]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7804
ctrl = 0
sprpriority = -5

[state 100, 4]
type = explod
trigger1 = animelem = 9
id = 6014
anim = 6014
postype = p1
pos = -25,-25
ownpal = 1
bindtime = 1
scale = 1,1
sprpriority = 5
persistent = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 1007, 1]
type = VelSet
trigger1 = AnimElem = 6
x = 12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 190,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 191,5

[State 1007, mano]
type = Explod
trigger1 = animelem =3
name = "cmano"
anim = 6000
pos = -35,-75
postype = p1    ;p2,front,back,left,right
bindtime = -1
removetime = 15
removeongethit = 1
facing = 1
ownpal = 1
scale = 0.7,0.7 
spriority = 5

[State 1007, mano]
type = Explod
trigger1 = animelem =7
name = "cmano"
anim = 6001
pos = 100,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
removetime = 19
removeongethit = 1
ontop=1
facing = 1
ownpal = 1
spriority = 5

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = floor(120 + (root,var(41))/(1+(root,Var(19)/5.0))), 26
guardflag = MA
hitsound = s8000,2
guardsound = S8500,0
sparkno = s8320+random%1
guard.sparkno = S8100
sparkxy = -30,-70; (enemynear,pos y)
animtype = Heavy
pausetime = 7,13
ground.type = High
ground.slidetime = 20
ground.hittime = 15
ground.type = high
ground.slidetime = 15
ground.velocity = -12.5
air.velocity = -12,-4
air.fall = 1
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 10
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

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 2
name = "Special Dust"
anim = 8170
pos = -20,3
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1007, End]
type = ChangeState
trigger1 = time = 45
value = 10066
ctrl = 1

;---------------------------------------------------------------------------
;Javelin Punch Air
[Statedef 10077]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 78044
ctrl = 0
sprpriority = 2

[state 100, 4]
type = explod
trigger1 = animelem = 7
id = 6014
anim = 6014
postype = p1
pos = -25,-25
ownpal = 1
bindtime = 1
scale = 1,1
sprpriority = 5
persistent = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 1007, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 191,5

[State 1007, mano]
type = Explod
trigger1 = animelem =4
name = "cmano"
anim = 6000
pos = -5,-115
postype = p1    ;p2,front,back,left,right
bindtime = -1
removetime = 15
removeongethit = 1
facing = 1
ownpal = 1
scale = 0.7,0.7 
spriority = 5

[State 1007, mano]
type = Explod
trigger1 = animelem =6
name = "cmano"
anim = 6001
pos = 90,-100
postype = p1    ;p2,front,back,left,right
bindtime = -1
removetime = 19
removeongethit = 1
ontop=1
facing = 1
ownpal = 1
spriority = 5

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = floor(120 + (root,var(41))/(1+(root,Var(19)/5.0))), 26
guardflag = MA
hitsound = s8000,2
guardsound = S8500,0
sparkno = s8200+random%2
guard.sparkno = S8100
sparkxy = -30,-70; (enemynear,pos y)
animtype = Heavy
pausetime = 7,13
ground.type = High
ground.slidetime = 20
ground.hittime = 15
ground.type = high
ground.slidetime = 15
ground.velocity = -12.5
air.velocity = -12,-4
air.fall = 1
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
ground.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 10
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

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1007, End]
type = ChangeState
trigger1 = time = 45
value = 70
ctrl = 1


;--------------------------------------------------------------

[Statedef 9041]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7709
ctrl = 0
sprpriority = 10

[State BindToParent]
Type = BindToParent
Trigger1 = IsHelper(9041)
pos = 217,80
time = 42

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 190,10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = floor(50 + (root,var(41))/(1+(root,Var(19)/5.0))), 37
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = 0,0
animtype = Heavy
ground.type = High               
ground.slidetime = 15
ground.hittime  = 25             
ground.velocity = -5
air.type = High                  
air.velocity = -4, -2           
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 10			;Time before opponent regains control in air
palfx.add = 243,192,7
palfx.mul = 256,256,256
palfx.sinadd = -80,-80,-80,3
palfx.invertall = 1

[State -2, Explod]
type = Explod
trigger1 = movehit
anim = 4000
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

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 22

;--------------------------------------------------------------
;sombra
[Statedef 1201]
type = S
ctrl = 0
anim = 7817

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = time = 30


;------------------------------------------------------------------

[Statedef 9090]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7809
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 190,10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 45,3
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S8100
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 7
envshake.ampl = 4
palfx.time = 50
Palfx.add = 243,192,7                               
palfx.mul = 220,152,0
palfx.sinadd = 80, 80, 80, 5  
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7706
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9090
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 24

;--------------------------------------------------------------
;sombra
[Statedef 1202]
type = S
ctrl = 0
anim = 7818

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = time = 30

;------------------------------------------------------------------

[Statedef 1010]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7810
ctrl = 0
sprpriority = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Heat Vision"
ID = 9000
stateno = 9000
pos = 80,-108
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2000
ctrl = 0

;------------------------------------------------------------------

[Statedef 9000]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1001
ctrl = 0
sprpriority = 10

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 45,3
guardflag = MA
pausetime = 10,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S8100
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -50
guard.velocity = -5
air.velocity = -50,1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 7
envshake.ampl = 4

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9096
random = 50, 80
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
trigger1 = time = 24

;--------------------------------------------------------------
;sombra
[Statedef 1203]
type = S
ctrl = 0
anim = 7705

[State 1196, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 1196, end]
type = DestroySelf
trigger1 = animelem = 8

; End