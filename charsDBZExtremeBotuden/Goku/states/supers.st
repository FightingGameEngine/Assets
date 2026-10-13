
;Kamehameha
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0
ctrl = 0
sprpriority = 0

;[state 2300, super a]
;type = superpause
;trigger1 = time = 0
;time = 75
;anim = -1
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -30, -73
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =6
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1

[State 2300, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 2216
ID = 2216
postype = p1
pos = -25,0
bindtime = -1
sprpriority = 5
supermovetime = 52
ownpal = 1
removeongethit = 1
facing = -1

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 5
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 6
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 1400,0

[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4

[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3000&&animelem = 6
helpertype = normal
name = "superkamehameha"
ID = 3005
stateno = 3005
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .7;1
size.yscale = .7;1

[State 2200, dust]
type = explod
trigger1 = animelem = 5;time = 25
anim = 2215
pos = 17,5
sprpriority = 5
bindtime = 1
ownpal = 1
removeongethit = 1
facing = -1
removetime = 66

[State 2300, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Air Kamehameha
[Statedef 3010]
type = A
movetype = A
physics = S
anim = 3010
poweradd = -1000
velset = 0,0
ctrl = 0
sprpriority = 2

;[state 2300, super a]
;type = superpause
;trigger1 = time = 0
;time = 75
;anim = -1
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -15,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1


[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,4

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400,0


[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4

;[State 2000, proj]
;type = Explod
;trigger1 = AnimElem = 3
;anim = 3001
;sprpriority = 4
;postype = p1
;pos = -7,-17
;bindtime = -1
;removeongethit = 1
;removetime = 67
;supermove = 0
;ownpal = 1
;scale = 1,1.5


[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3010 && animelem = 5
helpertype = normal
name = "superkamehameha"
ID = 3025
stateno = 3025
pos = -7,-17;0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElem=6
y = 6

[State 3020, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;---------------------------------------------------------------------------
;Kaioken
[Statedef 3150]
type= S
movetype=A
physics=N
anim=3150
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1=movecontact&&animelemtime(2)>=0&&animelemtime(7)<0
value=3150
elem = 7
ignorehitpause =1
persistent =0

[State 3150, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(3)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=45
movetime =45
anim=-1
sound=S3100,1
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 0,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-2]
type = AfterImage
trigger1 = Animelem = 1
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add



[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=0
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=1
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=9
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3150,38
channel=3

[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,13
channel=4
[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,12
channel=5

[State 3010,Helper]
type= Helper
trigger1 =animelem=4&&!numhelper(9938)
helpertype =Normal
name= "KiCharge"
id= 9938
pos= 0,0
postype =p1
stateno =9938
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=1.5
size.yscale=1.5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 3)
time=20
ampl=6

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 255,103

[State 3150, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7001, 7030 + (random % 8))
ID = 7030
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 0, Width]
type = Width
trigger1 =animelemtime(3)=0
value = 40,0
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =animelem=5
x = 14
[State 0, VelSet]
type = VelSet
trigger1 =animelem=6||movecontact
x = 0
ignorehitpause=1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(5)=10
x = .8
ignorehitpause =1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(7)=0
x = .6
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =movehit
value = S2,9
volume =16
ignorehitpause =1
persistent=0
[State 3150,HitDef]
type=HitDef
trigger1=!time
attr=S,HA
hitflag=MAFD
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =230,40
pausetime=12,12
guard.pausetime=12,12
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S2,5
guardsound=S2,8
ground.type=High
ground.slidetime=12
ground.hittime=12
air.hittime=12
yaccel=0.45
ground.velocity= -42,-5
guard.velocity= -14
air.velocity= -42,-4
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover=0
air.recover=0
id=3150
getpower=0
givepower=200,105
envshake.time=12
envshake.ampl=7
p2stateno= 1111300

[State 3150,ChangeState]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1


[Statedef 3151]
type= A
movetype=A
physics=N
anim=3151
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1


[State 3150, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(3)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=45
movetime =45
anim=-1
sound=S3100,1
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 0,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-2]
type = AfterImage
trigger1 = Animelem = 1
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add



[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=0
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=1
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=9
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3150,38
channel=3

[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,13
channel=4
[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,12
channel=5

[State 3010,Helper]
type= Helper
trigger1 =animelem=4&&!numhelper(9938)
helpertype =Normal
name= "KiCharge"
id= 9938
pos= 0,0
postype =p1
stateno =9938
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=1.5
size.yscale=1.5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 3)
time=20
ampl=6


[State 3150, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7001, 7030 + (random % 8))
ID = 7030
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 0, Width]
type = Width
trigger1 =animelemtime(3)=0
value = 40,0
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =animelem=5
x = 14
[State 0, VelSet]
type = VelSet
trigger1 =animelem=6||movecontact
x = 0
ignorehitpause=1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(5)=10
x = .8
ignorehitpause =1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(7)=0
x = .6
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =movehit
value = S2,9
volume =16
ignorehitpause =1
persistent=0
[State 3150,HitDef]
type=HitDef
trigger1=!time
attr=S,HA
hitflag=MAFD
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =230,40
pausetime=12,12
guard.pausetime=12,12
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S2,5
guardsound=S2,8
ground.type=High
ground.slidetime=12
ground.hittime=12
air.hittime=12
yaccel=0.45
ground.velocity= -42,-5
guard.velocity= -14
air.velocity= -42,-4
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover=0
air.recover=0
id=3150
getpower=0
givepower=200,105
envshake.time=12
envshake.ampl=7
p2stateno= 1111300



[State 1100, Gravity]
type = Veladd
trigger1 = AnimElem=7
y = 6

[State 3020, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;dragonrush
;---------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3100
sprpriority = 0
juggle = 1

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2062
stateno = 2062
pos = 0,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =5
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, 8]
type = SuperPause
trigger1 = AnimElem = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=3
anim = 7061
ID = 7061
pos = 0,5
postype = p1
bindtime = -1
removetime = 30
pausemovetime = 45
supermovetime = 45
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3000, flash]
type = PalFX
triggerall = var(10) = 0
trigger1 = time >= 3; && AnimElem = 3, <= 1
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100

[State 3000, 1]
type = playerpush
trigger1 = Time >= 0
value = 0

[State 3000, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2001,1


[State 3000, playsnd];ws‚­‚¼[IIv
type = PlaySnd
trigger1 = Time = 1
value = 2200,1


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 3101

;-----------------------------“Ëi
[Statedef 3101]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101

[State 1600, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 3000,2

[State 3005, 1]
type = PosAdd
trigger1 = Time > 2
x = 6

[State 3005, 2]
type = VelSet
trigger1 = Time = 2
x = 15

[State 3005, 3]
type = VelAdd
trigger1 = Time > 2
x = .15

[State 3005, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 2
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 3005, hit]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = S, HA; SP
damage = 0,0
animtype = Light
hitflag = maf
guardflag = ma
numhits = 0
sparkno = s7030
guard.sparkno = s7001
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,0
ground.hittime = 15
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
kill = 0
p2stateno= 3060



[State 3005, 4]
type = ChangeState
triggerall = var(10) = 0 || var(10) != 0
trigger1 = moveguarded= 1
value = 1105
ctrl=0

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 3102

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1

;---------------------------------
;-----------------------—•‘ij
[Statedef 3102]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3102

[State 3050, muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, width]
type = width
trigger1 = 1
edge = 75,0

[State 3050, bind]
type = TargetBind
Trigger1 = AnimElem = 1, >= 1 && AnimElem = 8, <= 1
pos =  70,0



[state 3020, speedline2]
type = explod
trigger1 = time = 0
anim = 6100
postype = back
pos = 0,0
bindtime = -1
supermove = 1
sprpriority = -4
ontop = 0
ownpal = 1
removetime = 100
scale = 2.575, 1.075



[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = 2000,5


[State 3050, hit]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HP
damage = 75,10
animtype = heavy
hitflag = MAf
snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = 0,-80
guardflag = MA
hitsound = S200,1
guardsound = S6,0
pausetime = 12,25
ground.hittime = 15
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
envshake.time = 20
envshake.ampl = 6
kill = 0
p2facing = 1
;p2stateno= 3060



[state 1710, 1]
type = hitdef
trigger1 = animelem = 9
attr = S, HA
damage = 75, 20
animtype = heavy
guarDFlag = ma
hitflag = maf
priority = 7
pausetime = 10,15
sparkno = s7030+(random%8)
sparkxy = -50,-80
hitsound = S5,8
guardsound = s120,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -1, -11
airguard.velocity = -1.9,-.8     
air.velocity =  -1, -11
fall = 1
fall.recover = 0                     
envshake.time = 20
envshake.freq = 70
envshake.ampl = -6
envshake.phase = 30
kill = 1

[state 2300, super a]
type = superpause
trigger1 = time = 65
time = 45
movetime = 45
anim = -1

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 24
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = 1400,0


[State 0, Explod]
type = Explod
trigger1 =animelem=17
anim = 7061
ID = 7061
pos = 0,5
postype = p1
bindtime = -1
removetime = 120
pausemovetime = 45
supermovetime = 45
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

;[State 0, Kaioken Palfx]
;type = PalFX
;trigger1 = animelem=17
;time = 200
;add = 200,0,0;
;mul = 200,200,200
;sinadd = 50,50,50,50
;color = 256
;ignorehitpause = 1

;[State 0, Kaioken Palfx Anular]
;type = PalFX
;triggerall = numhelper(1360) = 1
;trigger1 = helper(1360),stateno = 1361
;time = 1
;add = 200,0,0;
;mul = 200,200,200
;sinadd = 50,50,50,50
;color = 256
;ignorehitpause = 1


[State 0, Helper]
type = Helper
trigger1 = animelem=24
helpertype = normal ;player
name = "superkamehameha"
ID = 3055
stateno = 3055
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3050, env]
type = EnvColor
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = 245,245,245
ignorehitpause = 1
time = 1


[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;dragonrush
;---------------------------------------------------
[Statedef 4100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3100
sprpriority = 0
juggle = 1

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2062
stateno = 2062
pos = 0,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =5
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, 8]
type = SuperPause
trigger1 = AnimElem = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=3
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 30
pausemovetime = 45
supermovetime = 45
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3000, flash]
type = PalFX
triggerall = var(10) = 0
trigger1 = time >= 3; && AnimElem = 3, <= 1
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100

[State 3000, 1]
type = playerpush
trigger1 = Time >= 0
value = 0

[State 3000, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2001,1


[State 3000, playsnd];ws‚­‚¼[IIv
type = PlaySnd
trigger1 = Time = 1
value = 2200,1


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 4101

;-----------------------------“Ëi
[Statedef 4101]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101

[State 1600, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 3000,2

[State 3005, 1]
type = PosAdd
trigger1 = Time > 2
x = 6

[State 3005, 2]
type = VelSet
trigger1 = Time = 2
x = 15

[State 3005, 3]
type = VelAdd
trigger1 = Time > 2
x = .15

[State 3005, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 2
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 3005, hit]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = S, ha; SP
damage = 0,0
animtype = light
hitflag = maf
guardflag = ma
numhits = 0
sparkno = -1
guard.sparkno = s7030
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,0
ground.hittime = 15
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
kill = 0
p2stateno= 3060



[State 3005, 4]
type = ChangeState
triggerall = var(10) = 0 || var(10) != 0
trigger1 = moveguarded; = 1
value = 0
ctrl=1

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 4102

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1

;---------------------------------
;-----------------------—•‘ij
[Statedef 4102]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4102

[State 3050, muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, width]
type = width
trigger1 = 1
edge = 75,0

[State 3050, bind]
type = TargetBind
Trigger1 = AnimElem = 1, >= 1 && AnimElem = 8, <= 1
pos =  70,0



[state 3020, speedline2]
type = explod
trigger1 = time = 0
anim = 6100
postype = back
pos = 0,0
bindtime = -1
supermove = 1
sprpriority = -4
ontop = 0
ownpal = 1
removetime = 100
scale = 2.575, 1.075



[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = 2000,5


[State 3050, hit]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HP
damage = 75,10
animtype = heavy
hitflag = MAf
snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = 0,-80
guardflag = MA
hitsound = S200,1
guardsound = S6,0
pausetime = 12,25
ground.hittime = 15
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
envshake.time = 20
envshake.ampl = 6
kill = 0
p2facing = 1
;p2stateno= 3060



[state 1710, 1]
type = hitdef
trigger1 = animelem = 9
attr = S, HA
damage = 75, 20
animtype = heavy
guarDFlag = ma
hitflag = maf
priority = 7
pausetime = 10,15
sparkno = s7030+(random%8)
sparkxy = -50,-80
hitsound = S5,8
guardsound = s120,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -1, -11
airguard.velocity = -1.9,-.8     
air.velocity =  -1, -11
fall = 1
fall.recover = 0                     
envshake.time = 20
envshake.freq = 70
envshake.ampl = -6
envshake.phase = 30
kill = 1

[state 2300, super a]
type = superpause
trigger1 = time = 65
time = 45
movetime = 45
anim = -1

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 24
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = 1400,0


[State 0, Explod]
type = Explod
trigger1 =animelem=17
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 120
pausemovetime = 45
supermovetime = 45
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 0, Helper]
type = Helper
trigger1 = animelem=24
helpertype = normal ;player
name = "superkamehameha"
ID = 3055
stateno = 3055
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3050, env]
type = EnvColor
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = 245,245,245
ignorehitpause = 1
time = 1


[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
; Cho Genkidama - Start
[Statedef 4000]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 4000
poweradd = -3000
sprpriority = 2

[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2063
stateno = 2063
pos = 0, -200
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 100
movetime = 100
anim = -1
sound = -1
pos = 32,-80
darken = 0
unhittable = 1
;---------------------
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =5
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1


[State 0: VelSet]
type= VelSet
trigger1 = AnimElem = 3
y= -3
x = 0

[State 0: VelAdd]
type  = VelAdd
trigger1  =(AnimElem = 3, > 0 && AnimElem = 4, < 0) && (Vel Y < -1)
y  = 0.40
x  = 0

[State 0: VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = 0
x  = 0

;;---------------------
;[State 0, PosSet]
;type = PosSet
;trigger1 = pos y > 0
;y = 0;

;[State 0, StateTypeSet]
;type = StateTypeSet
;trigger1 = pos y = 0
;statetype = S
;movetype = A
;physics = S
;---------------------

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 0
;value = S2100,0
;volume = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0; 130
value = S2100,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2100,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 200
value = S2100,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 120
value = S3150,34
volume = 999

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -100

[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 20 && Var(12) < 0
v = 12
value = 6

[State 3000, BGColorFX]
type = BGPalFX
trigger1 = Time > 0
time = 1
add = Var(12),Var(12),Var(12)

[State 3000, Super Charge]
type = Explod
trigger1 = Time = 0
anim = 2063
ID = 2063
pos = 1,-45
sprpriority = 2
supermove = 1
removetime = -2
bindtime = -1
ownpal = 1
scale = .7,.7
removeongethit = 1
ontop = 1
supermovetime= 999
ignorehitpause  = 1

[State 3000, PlaySnd - Super Charge]
type = PlaySnd
trigger1 = Time = 0
value = S950,2
volume = 50

[State 0, Cho Genkidama Charge]
type = Helper
trigger1 = time = 10
helpertype = normal
name = "Cho Genkidama Charge"
ID = 4030
stateno = 4030
pos = 0,100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .035
size.yscale = .035
supermovetime = 999

[State 0, Cho Genkidama Charge Relleno]
type = Helper
trigger1 = time = 10
helpertype = normal
name = "Cho Genkidama Charge Relleno"
ID = 4031
stateno = 4031
pos = 0,100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .035
size.yscale = .035
supermovetime = 999

[State 0, Cho Genkidama]
type = Helper
trigger1 = time = 140
helpertype = normal
name = "Cho Genkidama"
ID = 4050
stateno = 4050
pos = 50,100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .035
size.yscale = .035

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 140
value = S5,28
volume = 999

[State 200, End]
type = ChangeState
trigger1 = time > 140 && numhelper(4050) = 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------------
; P2 Reventado Suelo
[Statedef 4005]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
sprpriority = -1
facep2 = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 5

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5150+ifelse(authorname = "Mikel8888",var(10),0)

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 200, End]
type = Selfstate
trigger1 = time = 150
value = ifelse(life = 0,5150,5120)
ctrl = 1
;-------------------------------------------------------------------------------
; Cho Genkidama - Charge
[Statedef 4030]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 4050
sprpriority = 3

[State 0, Cho Genkidama Cachos]
type = Helper
triggerall = time < 100
trigger1 = timemod = 2,0
helpertype = normal
name = "Cho Genkidama Cachos"
ID = 4035
stateno = 4035
pos = -300+random%600,300-random%600
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .0025
size.yscale = .0025
supermovetime = 999

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = -5,-220

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time < 100
scale = .1+time*.06,.1+time*.06
value = -1-time*25

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 100
scale = 6,6.2
value = -1-time*25

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,25
volume = 50
channel = 3

[State 0, StopSnd]
type = StopSnd
trigger1 = root,stateno != 4000
trigger2 = root,movetype = H
trigger3 = root,animelem = 5
channel = 3

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 200, End]
type = Destroyself
trigger1 = root,stateno != 4000
trigger2 = root,movetype = H
trigger3 = root,animelem = 6
;-------------------------------------------------------------------------------
; Cho Genkidama - Charge Relleno
[Statedef 4031]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 4050
sprpriority = 3

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = -5,-220

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time < 100
scale = .1+time*.06,.1+time*.06
value = -1-time*25

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 100
scale = 6,6.2
value = -1-time*25

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 100,255

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 200, End]
type = Destroyself
trigger1 = root,stateno != 4000
trigger2 = root,movetype = H
trigger3 = root,animelem = 6
;-------------------------------------------------------------------------------
; Cho Genkidama - Charge Bolas
[Statedef 4035]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 4050
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = parentdist x/10
y = parentdist y/10

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1,1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-time*25,256

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 200, End]
type = Destroyself
trigger1 = time = 10
trigger2 = root,movetype = H
trigger3 = root,animelem = 6
;-------------------------------------------------------------------------------
; Cho Genkidama - Start
[Statedef 4050]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 4050
sprpriority = 3


[State 0, Cho Genkidama Relleno]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Cho Genkidama Relleno"
ID = 4060
stateno = 4060
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .035
size.yscale = .035

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = 1+root,fvar(2)+root,fvar(3)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 1
flag = invisible

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -(vel y)*5
scale = 6,6

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 10
y = 10

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= -80
x = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = frontedgebodydist < 0
x = 1.98

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= -80
y = -80

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;[State 0, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = Unguardable

[State 200, 1]
type = HitDef
trigger1 = time=0
attr = S,HP;A, HP
damage = 400,150
animtype= Heavy
guardflag = MAFD
hitflag = MAF, NP, SP, HP, NT, ST, HT
priority = 3, Hit
pausetime= 0, 22
sparkno  = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound= S4000, 4
guardsound = S4000, 4
ground.type= High
ground.slidetime= 12
ground.hittime= 12
ground.velocity = -12, -12
airguard.velocity= -3.9,-4
air.type = High
air.velocity  = -12,-12
air.hittime   = 12
getpower = 0
givepower = 0
yaccel = 0.5
Fall = 1
fall.recover = 0
envshake.time = 30
envshake.freq  = 190
envshake.ampl  = 20

[State 0:    End]
type = ChangeState
trigger1 = (movecontact) || ((frontedgedist <= -175) || (backedgedist <= -175)) || (Pos Y >= 0) 
value = 4051
;-------------------------------------------------------------------------------
; Cho Genkidama - Fin
[Statedef 4051]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 4051
sprpriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S4001,1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 50
ampl = -10

;[State 0, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = Unguardable

[State 200, 1]
type = HitDef
trigger1 = 1
attr = A, HP
animtype  = Heavy
damage    = 0
Hitflag = MAFDE
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -8,-25
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0
Fall = 1
Fall.recover = 0
Sprpriority = 3
Getpower = 0,0
numhits = 0

[State 0, TargetState]
type = TargetState
triggerall = p2stateno != 4005
trigger1 = movehit = 1
value = 4005

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 1
statetype = S
movetype = I
physics = N

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,26
volume = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,12
volume = 999

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 0
scale = 6+time*.8,6+time*.8

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 1200-time*20,256

[State 200, End]
type = Destroyself
trigger1 = time = 70
;-------------------------------------------------------------------------------
; Cho Genkidama - Relleno
[Statedef 4060]
type    = S
movetype= I
physics = N
juggle  = 2
ctrl = 0
anim = 4050
sprpriority = 3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 1
flag = invisible

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -(vel y)*5
scale = 6,6

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 0, EnvShake]
type = EnvShake
trigger1 = timemod = 5,0
time = 5
ampl = -8

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 100,256

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 200, End]
type = Destroyself
trigger1 = parent,stateno != 3050

