;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 60
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, 2]
type = VarSet
trigger1 = time = 0
fvar(17) = ifelse(command = "z", 8.0, ifelse(command = "y", 5.0, 2.0))
velocity = (-2.0 + fvar(10)), (-0.8 + (const(movement.yaccel)* time))

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 25, 3


[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 15



[State 1050, 1]
type = Helper
trigger1 = animelem = 3
pos = 140,-86
postype = p1
stateno = 1050
sprpriority = 2
helpertype = normal
name = "Special 1"
id = 1050
keyctrl = 0
ownpal = 1

[State 1000, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;projectile

[Statedef 1050]
type = S
movetype = A
physics = N
anim = 1001
velset = 2.55 + root,fvar(17), 0
sprpriority = 2
id = 1001
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 1050, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SP
damage   = 95,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
sparkno = -1
sparkxy = -1
guard.sparkno = s1050
hitsound = s8000,2
guardsound = s8500,0
sparkxy = 20,-20
guard.sparkno = s9993
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,4
envshake.time = 7
envshake.ampl = 4


[State -2, blood spark]
type = explod
trigger1 = movehit = 1
trigger2 = movecontact = 1
anim = 1050
pos = 15,-85
facing = -1
postype = P2
sprpriority = 2
bindtime = -1
removetime = 40



[State 0, DestroySelf]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 100




[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3100
poweradd = 60
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 95,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -30,-79
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
;fall=1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 2200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 60
anim = 2000
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 25, 0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000, 16

[State 420, HitDef]
type = HitDef
trigger1 = TimeMod = 6,1
trigger1 = !moveguarded
attr = C, NA
damage = 14,4
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-1
air.velocity = -2,-1
airguard.velocity = -6,0
envshake.time = 1
envshake.ampl = 1
fall = 1
fall.recover = 0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1



[Statedef 2201]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 60
anim = 2001
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000, 16

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 3
value = 25, 0

[State 420, HitDef]
type = HitDef
trigger1 = TimeMod = 6,1
trigger1 = !moveguarded
attr = C, NA
damage = 14,4
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-1
air.velocity = -2,-1
airguard.velocity = -6,0
envshake.time = 1
envshake.ampl = 1
fall = 1
fall.recover = 0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

[Statedef 22011]
type = S
movetype = A
physics = N
poweradd = 60
velset = 1.5,0
anim = 20011
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 16


[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 25, 0


[State 1300, velset]
type = velset
trigger1 = animelem = 3
y = -8

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
physics = A

[State 420, HitDef]
type = HitDef
trigger1 = TimeMod = 6,1
trigger1 = !moveguarded
attr = C, NA
damage = 15,1
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-4
air.velocity = -2,-2
airguard.velocity = -6,0
envshake.time = 1
envshake.ampl = 1
fall = 1
fall.recover = 0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 1300, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1



[Statedef 22012]
type = A
movetype = A
physics = N
poweradd = 60
velset = 4,4
anim = 20012
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 16

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 1
value = 25, 0

[State 420, HitDef]
type = HitDef
trigger1 = TimeMod = 6,1
trigger1 = !moveguarded
attr = C, NA
damage = 14,4
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-4
air.velocity = -2,-4
airguard.velocity = -6,0
envshake.time = 1
envshake.ampl = 1
fall = 1
fall.recover = 0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 1300, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

[Statedef 22013]
type = A
movetype = A
physics = N
poweradd = 60
velset = 0,13
anim = 6902
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 16

[State 52]
type = EnvShake
trigger1 = movehit=1
time = 16
freq = 120
ampl = -8


[State 1002, HitDef]
type = HitDef
trigger1 = Time = 1
attr = S, SA
animtype  = Med
priority  = 7
guardflag = MA
pausetime = 4,8
sparkno = s8222
sparkxy = 0,-48
guard.sparkno = s8001
hitsound = S8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,4
envshake.time = 7
envshake.ampl = 4
fall = 1


[State 1050, Bounce]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1055

;------------------------------
;Knee Stomp 4 - Bounce Away
[Statedef 1055]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 2150




[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 2
value = 25, 2

[State 1055, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1055, 2]
type = PosSet
trigger1 = Time = 0
y = 0


[State 1055, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




[Statedef 2202]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 60
anim = 2002
ctrl = 0
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 5
value = 25, 5

[State 52]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = TimeMod = 6,1
time = 12
ampl = 4


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 11
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 21
x = 0
y = 0

[State 2103, 1]
type = Turn
trigger1 = animelem = 21

[State 100, Explod]
type = Explod
trigger1 = animelem = 6
anim = 8333
ID = 8333
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
trigger1 = !moveguarded
attr = C, NA
damage = 95,6
priority = 4, Hit
hitflag = MAFD
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = 5

[state 7210, 1]
type = hitoverride
trigger1 = 2202
time = 1
attr= SCA,NP,SP,HP
stateno = 5120
ignorehitpause = 1

[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0


[State 3100, End]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 5
trigger2 = time=100
value = 2103
ctrl = 0

[Statedef 2103]
type    = C
movetype= A
physics = C
poweradd= 0
velset = 0,0
anim = 2103
ctrl = 0
sprpriority = 2


[state 7210, 1]
type = hitoverride
trigger1 = 2103
time = 1
attr= SCA,NP,SP,HP
stateno = 5120
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 2103, 1]
type = Turn
trigger1 = animelem = 1




[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1



[StateDef 2100]
type = S
movetype = A
physics = N
anim = 2003
poweradd = 60
ctrl = 0
velset = 0,0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 13


[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 25, 1

[State 193, 1]
type = Helper
trigger1 = animelem = 4
;trigger1 = facing = 1
trigger1 = numhelper(2110) = 0
helpertype = normal
name = "geyser"
id = 2110
postype = p1
facing = 1
pos = 0,0
stateno = 2110
keyctrl = 0

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 2101]
type = S
movetype = A
physics = N
anim = 2003
poweradd = 60
ctrl = 0
velset = 0,0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 13

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 25, 1

[State 193, 1]
type = Helper
trigger1 = animelem = 4
;trigger1 = facing = 1
trigger1 = numhelper(2110) = 0
helpertype = normal
name = "geyser"
id = 2110
postype = p1
facing = 1
pos = 75,0
stateno = 2110
keyctrl = 0

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 2102]
type = S
movetype = A
physics = N
poweradd = 60
anim = 2003
ctrl = 0
velset = 0,0

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 13

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 4
value = 25, 1

[State 193, 1]
type = Helper
trigger1 = animelem = 4
;trigger1 = facing = 1
trigger1 = numhelper(2110) = 0
helpertype = normal
name = "geyser"
id = 2110
postype = p1
facing = 1
pos = 150,0
stateno = 2110
keyctrl = 0

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------
; surge helper
[Statedef 2110]
type = S
movetype = A
physics = N
anim = 2004
sprpriority = 1

[State 52]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 120
ampl = -8


[State 1004, Screenbound]
type = Screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1004, Stop moving]
type = PosFreeze
trigger1 = 1
x = 0
y = 0

[State 1100]
type = Playsnd
trigger1 =animelem = 1
value = 900,5

[State 2110, hitdef]
type = hitdef
ID = 2110
trigger1 = time = 0
trigger1 = !movecontact
attr = S, HP
damage = 95,6
priority = 1, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
hitsound = s8000,2
guardsound = s8500,0
guard.sparkno = s8001
animtype = Heavy
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -1,-12
guard.velocity = 0
air.velocity = -2,-1
fall = 1
fall.recover = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100


[State 3110, destroyself]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Knee Stomp 1
[Statedef 1040]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 6900
ctrl = 0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 9999,7


[State 0,super jump]
type = Explod
trigger1 = AnimElem = 3
anim = 8004
ID = 8004
pos = 0,20
postype = p1
bindtime = 1
removetime = 26
supermove = 26
pausemovetime = 26
removeongethit = 1
sprpriority = 3
ownpal = 1

[State 1040, CS]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0
trigger1 = NumHelper(1041) = 0
value = 1045

[State 1040, NoPush]
type = PlayerPush
trigger1 = 1
value = 0


;---------------------------
; Knee Stomp 2 - Going Up!
[Statedef 1045]
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 0
velset = 0,0
anim = 6901
ctrl = 0
sprpriority = 2



[State 1045, ]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1045, 0]
type = ScreenBound
trigger1 = 1
movecamera = 0

[State 1045, 1]
type = VelSet
trigger1 = 1
y = -10.5

[State 1045, Stomp]
type = ChangeState
trigger1 = Screenpos Y < -25
value = 10501

[State 1045, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

;--------------------------
; Knee Stomp 3 - Stomp!
[Statedef 10501]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 80
velset = 0,.3
anim = 6902
ctrl = 0
sprpriority = 2

[State 1050, 0]
type = PosAdd
trigger1 = Time = 0
x = P2Dist X

[State 1045, 0]
type = ScreenBound
trigger1 = 1
movecamera = 0




[State 1002, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = !movecontact
attr = A,NA
damage = 15,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 9,10
sparkno = s8222
sparkxy = (enemy ,const(size.mid.pos.x)), 0
guard.sparkno = s8001
hitsound = S8000,2
guardsound = S8500,0
ground.type = Trip
air.type = Trip
ground.slidetime = 30
ground.hittime = 50
ground.velocity = 0
air.velocity = 0,1
fall = 1
air.fall = 1
givepower = 5



[State 3200 , a9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 47

[Statedef 33040]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3040
ctrl = 0
sprpriority = -1



[State 0, Grenade Helper]
type = Helper
trigger1 =  AnimElem = 6
helpertype = normal
name = "Grenade"
ID = 3344
pos = 160,0
postype = P1
facing = 1
stateno = 3344
priority = 5
ownpal = 0



[State 3100, End]
type = ChangeState
triggerall = numhelper(3344) > 0
trigger1 = helper(3344),movehit
value = 33006
ctrl = 0


[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 33006
ctrl = 1



[Statedef 33006]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3006
ctrl = 0
sprpriority = -2




[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1




;Grenade Helper
[Statedef 3344]
type = S
movetype = A
physics = N
juggle  = 4
poweradd= 0
ctrl = 0
anim = 3004
velset = 2,0
sprpriority = 5




[State 420, HitDef]
type = HitDef
triggerall = numhelper(3344) > 0
trigger1 = !moveguarded
trigger1 = time = 0
attr = S,N
damage = 100,5
animtype = Medium
guardflag = MA
hitflag = MF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = -1
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s25,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
p2stateno = 33041


[state 5355, 1]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 52001
ignorehitpause = 1


[State 99]
type = DestroySelf
trigger1 = helper(3344),movehit

[State 99]
type = DestroySelf
trigger1 = time = 25

[Statedef 33041]
type = S
movetype = H
physics = S
ctrl = 0
sprpriority = 0
velset = 0,0


[State 1221, a0]
type = PosSet
trigger1 = !time
y = 0

[State 1221, a1]
type = ChangeAnim2
trigger1 = !time
value = 3021


[State 882, SelfState]
type = SelfState
trigger1 = Time >= 75
value = 5050
ctrl = 0

[Statedef 52001]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 9800
sprpriority = 2


[State 7212]
type = DestroySelf
trigger1 = time = 5

; END


