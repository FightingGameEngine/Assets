;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Superman Unbound
;---------------------------------------------------------------------------
;Superman Unbound
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
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 50,100
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime =  40
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
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 12
trigger4 = animelem = 16
trigger5 = animelem = 26
trigger6 = animelem = 32
trigger7 = animelem = 36
trigger8 = animelem = 38
trigger9 = animelem = 41
trigger10 = animelem = 42
trigger11 = animelem = 43
attr = S, HA
animtype  = Hard
damage    = 45,0
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
type    = A
movetype= A
physics = N
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 1000

[State 3030, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3030, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 1100
name = "Dust"
postype = p1
pos = 4,-110
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = AnimElem = 9
trigger9 = animelem = 10
trigger10 = animelem = 11
trigger11 = animelem = 12
trigger12 = animelem = 13
trigger13 = AnimElem = 14
trigger14 = animelem = 15
helpertype = normal ;player
name = "Megabeam"
ID = 1001
stateno = 1001
pos = 25,-105
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1000, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 1001]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 3006,1
volume = 255

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 5,5
guardflag = MA
pausetime = 0,10
hitsound = S7,1
guardsound = S171,4
sparkno = S6002
guard.sparkno = S6004
sparkxy = -40
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

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

[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3100
channel = 1
;ignorehitpause =
;persistent =

[State 99]
type = DestroySelf
trigger1 = time = 10

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


; END

;---------------------------------------------------------------------------
;Megabeam
;---------------------------------------------------------------------------
;Megabeam
[Statedef 3100]
type    = A
movetype= A
physics = N
poweradd= -1000
ctrl = 0
velset = 0, 0
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3006,4
volume = 255

[State 3100, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3100, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3100, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, superportrait]
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

[State 3100, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 50,100
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime =  40
sprpriority = -1
ownpal = 1


[State 3100, superportrait]
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

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = AnimElem = 9
trigger9 = animelem = 10
trigger10 = animelem = 11
trigger11 = animelem = 12
trigger12 = animelem = 13
trigger13 = AnimElem = 14
trigger14 = animelem = 15
trigger15 = animelem = 16
trigger16 = animelem = 17
trigger17 = animelem = 18
trigger18 = AnimElem = 19
trigger19 = animelem = 20
trigger20 = animelem = 21
helpertype = normal ;player
name = "Megabeam"
ID = 1001
stateno = 1001
pos = 25,-105
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1000, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 1001]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 3006,1
volume = 255

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
;persistent = 0
attr = SCA, HP
damage    = 95,1
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,20
sparkno = -1
hitsound   = S0,25
guardsound = S0, 42
ground.type = High
;ground.slidetime = 15
;ground.hittime  = 20
;ground.velocity = -10, -10
;air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

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

[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3100
channel = 1
;ignorehitpause =
;persistent =

[State 99]
type = DestroySelf
trigger1 = time = 10

;---------------------------------------------------------------------------
;Demolition Crush
;---------------------------------------------------------------------------
;Demolition Crush
[Statedef 3200]
type =U
movetype = A
physics = N
velset = -6, 0
ctrl = 0
juggle = 6
anim = ifelse(statetype = A,105,105)

[State 4001, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 1]
type = ScreenBound
trigger1 = 1
;value = 1
movecamera = 0,0

[State 3200, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 1
time = 55
anim = 0
sound = S8889,0
pos = 0,10000
movetime = 55
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3200, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3200, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, superportrait]
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

[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 50,100
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime =  40
sprpriority = -1
ownpal = 1


[State 3200, superportrait]
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

[State 0, 1]
type = ChangeState
trigger1 = time = 50
value = 2094
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

; Psycho Drive Crusher
[Statedef 2094]
type =A
movetype = A
physics = N
velset = 11, 0
ctrl = 0
juggle = 6
anim = 2090
sprpriority = 2

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 9995, 2]
type = PosAdd
trigger1 = time = 0
x = -100 - BackEdgeDist


[State 4001, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, 1]
type = Width
trigger1 = AnimElemtime(2) > 0 && AnimElemtime(39) < 0
;edge = 0,0
player = 35,35
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,28
volume = 255
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 6,4
volume = 255
freqmul = 0.8

[State 3001, 1]
type = PalFx
trigger1 = AnimElemTime(1)>0 && time%4=0
time = 8
mul = 280,134,256
add = 0,0,130
color = 0
bright = 200,200,200
ignorehitpause = 1

[State 3001, 1]
type = PalFx
trigger1 = AnimElemTime(1)>0 && time%4=2
time = 8
mul = 280,134,256
add = 0,0,190
color = 0
bright = 200,200,200
ignorehitpause=1



[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[State 0, 1]
type = Explod
trigger1 = (movehit = 1) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(995) < 4)
anim = 995
ID = 995
pos = -10,-50
postype = p2
bindtime = -1
random = 50,50
removetime = 50
sprpriority = ifelse(random <50, 3,-2)
ignorehitpause = 1
ownpal = 1


[State 0, 1]
type = Helper
trigger1 = time = 0 && NumHelper(2098) = 0
helpertype = normal
name = "Flame"
ID = 2098
pos = 73,-50
postype = p1
facing = 1
stateno = 2098
ownpal = 1
ignorehitpause = 1
;persistent = 1


[State 0, 1]
type = ChangeState
trigger1 = time = 180
value = 2052
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1



; PC Flames
[Statedef 2095]
type = S
movetype = A
physics = N
velset = 0,0
anim = 2095
sprpriority = 1
ctrl = 0



[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 73,-50
;ignorehitpause = 0
;persistent = 1

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
TimeGap = 1
FrameGap = 1
length = 20

[State 0, 1]
type = Explod
trigger1 = time%10=0
anim = 2097
pos = 0,0
postype = p1
vel = -1,0




[State 0, 1]
type = Helper
trigger1 = Time%8=0 && NumHelper(2097) < 6
name = "."
ID = 2097
pos = -50, -50+(random%100)
postype = p1
facing = 1
stateno = 2097
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = AnimTime !=0
time = 4

[State 4001, DestroySelf]
type = ChangeState
trigger1 = parent, Anim != [2090,2091]
value = 2096

; Kick FX 2
[Statedef 2096]
type = S
movetype = A
physics = N
velset = 3,0
anim = 2096
sprpriority = 1
ctrl = 0


[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
TimeGap = 1
FrameGap = 1


[State 4001, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0



[Statedef 2097]
type = A
movetype = I
physics = N
anim = 2098
ctrl = 0
velset = 0,0




[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, 1]
type = SprPriority
Trigger1 = Time >= 0
value = 5


[State 0, 2]
type = PalFX
trigger1 = 1
mul = 255-(Statetime*5),255-(Statetime*5),255-(Statetime*5)
time = 1

[State 0, 3]
type = VelSet
trigger1 = Time = 0
x = -1


[State 0, 4]
type = destroyself
trigger1 = time > 50

; PDC Flames
[Statedef 2098]
type = S
movetype = A
physics = N
velset = 0,0
anim = 2099
sprpriority = 0
ctrl = 0
[State 0, 1]
type = VarAdd
trigger1 = moveguarded
v = 1
value = 1
ignorehitpause = 1

[State 0, 1]
type = VarSet
trigger1 = UniqHitCount > 0
v = 1
value = UniqHitCount
ignorehitpause = 1

[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 73,-50
;ignorehitpause = 0
;persistent = 1

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

;[State 3031, 1]
;type = AfterImage
;trigger1 = Time = 0
;time = 9999
;PalBright   =   0,  0,  0
;PalContrast = 120,120,220
;PalAdd      =  0,0,0 ;29, 29, 29
;PalMul      = .77,.77,.77
;trans = add
;TimeGap = 1
;FrameGap = 1
;length = 3

[State 0, 1]
type = Explod
trigger1 = time%10=0
anim = 2097
pos = 0,0
postype = p1
vel = -1,0
scale = 2,2
sprpriority = 4

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 240, 2]
type = HitDef
triggerall = Var(1) < 10
trigger1 = time%3 = 0
attr = S, HA
getpower  = 0
animtype  = Med
damage    = 50,5
guardflag = MA
pausetime = 5,5
sparkno = S8223
sparkxy = -10+ random%20,-40+ random%20
hitsound   = s1,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 25
ground.velocity = -6, -6.5
air.velocity = -6.5,-6.5
air.fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 10
palfx.time = 50
palfx.mul = 280,134,256
palfx.sinadd = 0,0,90,8
palfx.add = 0,0,130
palfx.color = 0
sprpriority = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 0, 1]
type = Explod
trigger1 = (movehit = 1) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(995) < 4)
anim = 995
ID = 995
pos = -10,-50
postype = p2
bindtime = -1
random = 50,50
removetime = 50
sprpriority = ifelse(random <50, 3,-2)
ignorehitpause = 1
ownpal = 1


[State 0, 1]
type = Helper
trigger1 = Time%8=0 && NumHelper(2097) < 6
name = "."
ID = 2097
pos = -400-(random%500), -250+(random%500)
postype = p1
facing = 1
stateno = 2097
ownpal = 1

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = AnimTime !=0
time = 4

[State 0, 1]
type = PalFX
trigger1 = time > 110
time = 1
mul = 256-((statetime-110)*10),256-((statetime-110)*10),256-((statetime-110)*10)

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = parent, Anim != [2090,2091]
value = 2096

; Teleport Back Onscreen
[Statedef 2052]
type =U
movetype = A
physics = S
velset = 0, 0
ctrl = 0
juggle = 5
anim = 9997

[State 0, 1]
type = PosSet
trigger1 = time = 0
x = 0
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 5
value = 3006,1
volume = 255



[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = time = 0
time = 25
add = 0,0,0
mul = 293,0,256
sinadd = -255,-255,-255,25
invertall = 1
color = 256
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = ChangeAnim
trigger1 = time = 5
value = 184
;elem =
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeState
trigger1 = time = 30
value = 50

;-------------------------------------------------------
;Ground war
[StateDef 3300]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1004
poweradd = 0
sprpriority = 2

[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 1
time = 55
anim = 0
sound = S8889,0
pos = 0,10000
movetime = 55
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3300, Hyper Dust]
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
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
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

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 50,100
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime =  40
sprpriority = -1
ownpal = 1


[State 3300, superportrait]
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

[State 0, Explod]
type = Explod
trigger1 = Time = 54
anim = 1005
ID = 1005
pos = 0,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
persistent = 0

[State 3900, end]
type = ChangeState
trigger1 = Time = 55
value = 3301
ctrl = 0
;-----------------------------------------------------------
;hadou combo dash
[StateDef 3301]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1006
poweradd = 0
sprpriority = 2

[State 440, 3]
type = HitDef
trigger1 != time
attr = C, NA
damage    = 0,2
hitflag = MAF
guardflag = MA
pausetime = 6,6
sparkno = S33000
sparkxy = -5,-50
hitsound   = s3006,5
guardsound = s2,0
guard.sparkno = S4101
ground.type = trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -1.5,-6
air.velocity = -3.3, -4
guard.ctrltime = 39
guard.velocity = -10
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
p2facing = 1
;yaccel = .43
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
persistent = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 16
y = 0

[State 3301, end]
type = ChangeState
trigger1 = movehit
value = 3302
ctrl = 0

[State 3301, end]
type = ChangeState
;trigger1 = movehit
trigger1 = Time = 10
value = 0
ctrl = 1
;-------------------------------------------------------------------------
;golpes en piso
[StateDef 3302]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9097
poweradd = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
;triggerall = movehit
trigger1 = animelem  = 6
trigger2 = animelem  = 11
trigger3 = animelem  = 16
trigger4 = animelem  = 21
trigger5 = animelem  = 26
trigger6 = animelem  = 31
value = 3006,0
channel = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = p2stateno = [5000,5999]
trigger1 = animelem = 1
time = 1
id = -1
pos = 30,0

[State 0, TargetState]
type = TargetState
trigger1 = p2stateno = [5000,5999]
trigger1 = animelem = 1
value = 5101
ID = -1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, Explod]
type = Explod
trigger1 = numexplod(10000) = 0
trigger1 = movehit = 1
anim = 9099; +(random%3)
ID = 1002
pos = 100,25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 13
anim = 9098
ID = 1003
pos = -1,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 61
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 440, 3]
type = HitDef
trigger1 = animelem  = 6
trigger2 = animelem  = 11
trigger3 = animelem  = 16
trigger4 = animelem  = 21
trigger5 = animelem  = 26
trigger6 = animelem  = 31
;trigger7 = animelem  = 36
attr = C, NA
damage   = 90,1
hitflag = MAFD
guardflag = L
pausetime = 4,4
sparkno = S33000
sparkxy = -42,-5
hitsound   = s3006,0
guardsound = s2,0
guard.sparkno = S4101
ground.type = high
ground.slidetime = 15
ground.hittime = 20
air.velocity = 0,0
guard.ctrltime = 39
guard.velocity = -10
animtype = light
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
p2facing = 1
;yaccel = .43
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 3303

[State 0, Helper]
type = Helper
trigger1 = animelem = 30
helpertype = normal ;player
name = "carga"
ID = 3880
stateno = 3880
pos = 35,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove =999

[State 440, 3]
type = HitDef
trigger1 = animelem  = 36
attr = C, NA
damage   = 75,5
hitflag = MAFD
guardflag = L
pausetime = 4,4
sparkno = S33000
sparkxy = -27,-5
hitsound   = s3006,0
guardsound = s2,0
guard.sparkno = S4101
ground.type = high
ground.slidetime = 15
ground.hittime = 20
air.velocity = -4,-4
ground.velocity = -6,-8
guard.ctrltime = 39
guard.velocity = -10
animtype = light
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
;yaccel = .43
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimTime = 0
x = 30

[State 3900, end]
type = ChangeState
;trigger1 = movehit
trigger1 = AnimTime = 0
value = 0
ctrl = 1
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
trigger1 = time = 48
value = 5120
ctrl = 0

; END
