;-------------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1
;-------------------------------------------------------------------------------
;Liedown Roll Forward Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9600]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = Null;AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7005) != 0
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
id = 7005

[State 0, Listras2]
type = Explod
trigger1 = 1
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8603) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
id = 8603

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000
value =  9601
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])

;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9610]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = Null;AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7005) != 0
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger3 = root,time>=230
id = 7005

[State 0, Listras2]
type = Explod
trigger1 = root,time<230
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8603) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=230
id = 8603

[State 0, Listras2]
type = Explod
trigger1 = root,time>300
trigger1 = root,time<600
anim = 8604
ID = 8613
pos = 0,0
postype = back
vel = 0,8
accel = 0,2
random = 640,0
removetime = -2
scale = 0.025,1.5
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 996

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8613) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=600
id = 8613

[State 0, Listras2]
type = Explod
trigger1 = root,time>600
trigger1 = root,time<3200
anim = 4181
ID = 4181
pos = 0,0
postype = back
vel = 0,0
accel = 0,0
random = 640,640
removetime = -2
scale = 1.0,1.0
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermove = 1
trans = addalpha
alpha = 256,256
sprpriority = 996
persistent = 8

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4181) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
;trigger2 = root,time>=3200
id = 4181

[State 0, Listras2]
type = Explod
trigger1 = root,time=3200
anim = 4010
ID = 4010
pos = 0,0
postype = back
vel = 0,0
accel = 0,0
removetime = -1
scale = 0.35,0.35
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 998
persistent = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4010) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=3999
id = 4010

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <4000 ;|| (Root,StateNo=4005&&Root,Time>=3990)
value =  9601
ctrl = 0

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = Root,Time>=3990
time = 20
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 9601, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4010) != 0
trigger1 = Root,Time>=4000
id = 4010

[state -1, a1]
type = changeanim
triggerall = anim = 9999
trigger1 = root,time=225
value = 4999

[state -1, a1]
type = changeanim
triggerall = anim = 4999
trigger1 = root,time>600
trigger1 = NumExplod(4010) = 0
value = 4171
persistent = 0

[state -1, a1]
type = changeanim
triggerall = anim = 4171
trigger1 = NumExplod(4010) != 0
value = 4999
persistent = 0

[State 9610, AngleDraw]
type = AngleDraw
trigger1 = Anim = 4171
scale = 0.75,0.95
ignorehitpause = 1

[State 9610, PosAdd]
type = PosAdd
trigger1 = Anim = 4171
x = 150
y = -50
ignorehitpause = 1
persistent = 0

[State 1920, SprPriority]
type = SprPriority
triggerall = anim = 4999
trigger1 = root,time=230
value = 995
ignorehitpause = 1

[State 1920, Trans]
type = Trans
trigger1 = root,time= [230,236]
trans = addalpha
alpha = 50,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [237,240]
trans = addalpha
alpha = 100,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [241,244]
trans = addalpha
alpha = 150,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [245,248]
trans = addalpha
alpha = 200,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [249,252]
trans = addalpha
alpha = 256,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [253,256]
trans = addalpha
alpha = 256,180

[State 1920, Trans]
type = Trans
trigger1 = Time = [257,258]
trans = addalpha
alpha = 256,160

[State 1920, Trans]
type = Trans
trigger1 = Time = [259,260]
trans = addalpha
alpha = 256,140

[State 1920, Trans]
type = Trans
trigger1 = Time = [261,264]
trans = addalpha
alpha = 256,120

[State 1920, Trans]
type = Trans
trigger1 = Time = [265,268]
trans = addalpha
alpha = 256,100

[State 1920, Trans]
type = Trans
trigger1 = Time = [269,272]
trans = addalpha
alpha = 256,80

[State 1920, Trans]
type = Trans
trigger1 = Time = [273,276]
trans = addalpha
alpha = 256,60

[State 1920, Trans]
type = Trans
trigger1 = Time = [277,280]
trans = addalpha
alpha = 256,40

[State 1920, Trans]
type = Trans
trigger1 = Time = [281,284]
trans = addalpha
alpha = 256,20

[State 1920, Trans]
type = Trans
trigger1 = Time = [285,290]
trans = addalpha
alpha = 256,0

[State 9610, EnvShake]
type = Null;EnvShake
trigger1 = Root, Time > 301 && Root, Time < 845
time = 12
freq = 120
ampl = -3
phase = 90
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger3 = root,time >= 4000
trigger4 = Root,StateNo != [4000,4005]

;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9710]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = Null;AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7005) != 0
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger3 = root,time>=230
id = 7005

[State 0, Listras2]
type = Explod
trigger1 = root,time<230
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8603) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=230
id = 8603

[State 0, Listras2]
type = Explod
trigger1 = root,time>300
trigger1 = root,time<600
anim = 8604
ID = 8613
pos = 0,0
postype = back
vel = 0,8
accel = 0,2
random = 640,0
removetime = -2
scale = 0.025,1.5
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 996

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8613) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=600
id = 8613

[State 0, Listras2]
type = Explod
trigger1 = root,time>600
trigger1 = root,time<3200
anim = 4181
ID = 4181
pos = 0,0
postype = back
vel = 0,0
accel = 0,0
random = 640,640
removetime = -2
scale = 1.0,1.0
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermove = 1
trans = addalpha
alpha = 256,256
sprpriority = 996
persistent = 8

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4181) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
;trigger2 = root,time>=3200
id = 4181

[State 0, Listras2]
type = Explod
trigger1 = root,time=3200
anim = 4010
ID = 4010
pos = 0,0
postype = back
vel = 0,0
accel = 0,0
removetime = -1
scale = 0.35,0.35
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 998
persistent = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4010) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger2 = root,time>=3999
id = 4010

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000 ;|| (Root,StateNo=4005&&Root,Time>=3990)
value =  9601
ctrl = 0

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = Root,Time>=3990
time = 20
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 9601, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4010) != 0
trigger1 = Root,Time>=4000
id = 4010

[state -1, a1]
type = changeanim
triggerall = anim = 9999
trigger1 = root,time=225
value = 4999

[state -1, a1]
type = changeanim
triggerall = anim = 4999
trigger1 = root,time>600
trigger1 = NumExplod(4010) = 0
value = 4171
persistent = 0

[state -1, a1]
type = changeanim
triggerall = anim = 4171
trigger1 = NumExplod(4010) != 0
value = 4999
persistent = 0

[State 9710, AngleDraw]
type = AngleDraw
trigger1 = Anim = 4171
scale = 0.75,0.95
ignorehitpause = 1

[State 9710, PosAdd]
type = PosAdd
trigger1 = Anim = 4171
x = 150
y = -50
ignorehitpause = 1
persistent = 0

[State 1920, SprPriority]
type = SprPriority
triggerall = anim = 4999
trigger1 = root,time=230
value = 995
ignorehitpause = 1

[State 1920, Trans]
type = Trans
trigger1 = root,time= [230,236]
trans = addalpha
alpha = 50,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [237,240]
trans = addalpha
alpha = 100,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [241,244]
trans = addalpha
alpha = 150,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [245,248]
trans = addalpha
alpha = 200,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [249,252]
trans = addalpha
alpha = 256,256

[State 1920, Trans]
type = Trans
trigger1 = Time = [253,256]
trans = addalpha
alpha = 256,180

[State 1920, Trans]
type = Trans
trigger1 = Time = [257,258]
trans = addalpha
alpha = 256,160

[State 1920, Trans]
type = Trans
trigger1 = Time = [259,260]
trans = addalpha
alpha = 256,140

[State 1920, Trans]
type = Trans
trigger1 = Time = [261,264]
trans = addalpha
alpha = 256,120

[State 1920, Trans]
type = Trans
trigger1 = Time = [265,268]
trans = addalpha
alpha = 256,100

[State 1920, Trans]
type = Trans
trigger1 = Time = [269,272]
trans = addalpha
alpha = 256,80

[State 1920, Trans]
type = Trans
trigger1 = Time = [273,276]
trans = addalpha
alpha = 256,60

[State 1920, Trans]
type = Trans
trigger1 = Time = [277,280]
trans = addalpha
alpha = 256,40

[State 1920, Trans]
type = Trans
trigger1 = Time = [281,284]
trans = addalpha
alpha = 256,20

[State 1920, Trans]
type = Trans
trigger1 = Time = [285,290]
trans = addalpha
alpha = 256,0

[State 9710, EnvShake]
type = Null;EnvShake
trigger1 = Root, Time > 301 && Root, Time < 845
time = 12
freq = 120
ampl = -3
phase = 90
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
trigger3 = root,time >= 4000
trigger4 = Root,StateNo != [3000,3770]

;-------------------------------------------------------------------------------
;Hyper Background End
;-------------------------------------------------------------------------------
[Statedef 9601]
type = S
movetype = I
physics = N
anim = 9999

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = !time
time = 20 + (10 * PrevStateNo = 9610)
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 9601, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4010) != 0
trigger1 = 1
id = 4010

[State 0, PalFXWiz]
type = AllPalFX
trigger1 = (Root, MoveType = H) || (Root, StateNo = [5000,5099])
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S9600,0

[state 8010]
type = modifyexplod
trigger1 = NumExplod(7005) != 0
id = 7005
scale = 1.0,1.0+time/-15.0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8603) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
id = 8603

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7005) != 0
trigger1 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])
id = 7005

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15
trigger2 = root, MoveType = H || root,Stateno =3401 || (StateNo = [5000,5099])

