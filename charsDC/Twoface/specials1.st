; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,2
channel = 0

[State 1002, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 223
ID = 223
pos = 90,-114
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

; sfx
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,4

[State 1002, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2


[State 1002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------
[StateDef 1003]
type = S
movetype = A
physics = S
anim = 1003
ctrl = 0
velset = 0,0

; voice
[State 1003, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,3
channel = 0

[State 1003, superportrait]
type = Explod
trigger1 = AnimElem = 7
anim = 223
ID = 223
pos = 95,-105
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

; sfx
[State 1003, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,4

[State 1003, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1003, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------

[StateDef 1004]
type = S
movetype = A
physics = S
anim = 1004
ctrl = 0
velset = 0,0

; voice
[State 1004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,2
channel = 0

[State 1004, superportrait]
type = Explod
trigger1 = AnimElem = 7
anim = 223
ID = 223
pos = 80,-114
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

; voice
[State 1004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,3
channel = 0

[State 1004, superportrait]
type = Explod
trigger1 = AnimElem = 7
anim = 223
ID = 223
pos = 50,-105
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

; sfx
[State 1004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,5

[State 1004, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1004, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

[Statedef 1001]
type=S
physics=S
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1001,]
type=helper
trigger1=animelem=5
helpertype=normal
stateno=1005
ID=1005
name="acidx"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001, snd]
type=playsnd
trigger1=animelem=5
value=11,2
channel=0

[State 1001, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

[Statedef 1011]
type=S
physics=S
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1001,]
type=helper
trigger1=animelem=5
helpertype=normal
stateno=1006
ID=1005
name="acidy"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001, snd]
type=playsnd
trigger1=animelem=5
value=11,2
channel=0

[State 1001, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1
[Statedef 1021]
type=S
physics=S
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1001,]
type=helper
trigger1=animelem=5
helpertype=normal
stateno=1008
ID=1005
name="acidz"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001, snd]
type=playsnd
trigger1=animelem=5
value=11,2
channel=0

[State 1001, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

[Statedef 1031]
type=S
physics=S
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1001,]
type=helper
trigger1=time = 20
helpertype=normal
stateno=1005
ID=1005
name="acidx"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001,]
type=helper
trigger1=time = 18
helpertype=normal
stateno=1006
ID=1005
name="acidy"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001,]
type=helper
trigger1=time = 16
helpertype=normal
stateno=1008
ID=1005
name="acidz"
postype=p1
pos=63,-100
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1001, snd]
type=playsnd
trigger1=animelem=5
value=11,2
channel=0

[State 1001, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

;--------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 10006]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 10006

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time < 16
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
;ignorehitpause =
;persistent =





[State 0, Helper]
type = Helper
triggerall = var(2) = 1
trigger1 = animelem = 14
helpertype = normal
name = "GRENADE1"
ID = 10007
stateno = 10007
pos = Ceil(-14*Const(size.xscale)),Ceil(-138*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, Helper]
type = Helper
triggerall = var(2) = 2
trigger1 = animelem = 14
helpertype = normal
name = "TEARGAS1"
ID = 6191007
stateno = 6191007
pos = Ceil(-14*Const(size.xscale)),Ceil(-138*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, Helper]
type = Helper
triggerall = var(2) = 3
trigger1 = animelem = 14
helpertype = normal
name = "MOLOTOV1"
ID = 6211007
stateno = 6211007
pos = Ceil(-14*Const(size.xscale)),Ceil(-138*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = S1,ifelse(random < 500, 15,17)
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,1
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S0,9
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S0,24
volume = 255
channel = -1

[State 1006, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 10007]
type = S
movetype= A
physics = N
ctrl = 0
anim = 10007
poweradd= 0
sprpriority = 7

[State 2000, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 1*time+1
scale = 1,1
ignorehitpause = 1
;persistent =


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x =  0
y =  0


[State 0, VelSet]
type = VelSet
trigger1 = time = 4
x =  4.5
y = -6

[State 0, Gravity]
type = Gravity
trigger1 = 1
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=-20
trigger2 = movecontact
value = 10008
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 10008]
type = S
movetype= A
physics = N
ctrl = 0
anim = 10008
poweradd= 0
sprpriority = 7

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time > 0
x =  -1
y =  -1

[State 0, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 90,45
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-9
guard.velocity = -3
airguard.velocity = -3
air.type = High
air.velocity = -2,-9
air.hittime = 120
envshake.time = 8
envshake.freq = 100
down.velocity = -2,-10.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 5
palfx.add = 70,0,0
palfx.mul = 256,256,256
palfx.sinadd = 0,0,0,1
palfx.invertall = 0
palfx.color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,25
volume = 255
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 6191007]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6191007
poweradd= 0
sprpriority = 7

[State 2000, 1]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 1*time+1
scale = 1,1
ignorehitpause = 1
;persistent =


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x =  0
y =  0


[State 0, VelSet]
type = VelSet
trigger1 = time = 4
x =  4.5
y = -6

[State 0, Gravity]
type = Gravity
trigger1 = 1
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=-10
trigger2 = movecontact
value = 6191008
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 6191008]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6191008
poweradd= 0
sprpriority = 7

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
;ignorehitpause =
;persistent =


[State 620, Velocity]
type = Velset
trigger1 = pos y = 0
x = 0
y = 0

[State 0, 1]
type = HitDef
triggerall = enemy,stateno != 6201008
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
attr = S, SP
damage = 0,5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 0,0
guard.velocity = -3
airguard.velocity = -3
air.type = High
air.velocity = 0,0
air.hittime = 120
envshake.time = 8
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 6201008

[State 0, SMOKE1]
type = Explod
trigger1 = timemod = 5,0
anim = 6201007
ID = 6201007
pos = -60+(random%120),-0-(random%25)
sprpriority = 2
supermove = 1
removetime = -2
bindtime = 1
vel =  ifelse(random < 500, 1,-1),ifelse(random < 500, -2,-4)
ownpal = 1
scale = .7,.6
removeongethit = 1
ontop = 1
supermovetime 	= 999
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,28
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,29
volume = 255
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 60

;---------------------------------------------------------------------------
; Thrown by Aerial drop
[Statedef 6201008]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
;ignorehitpause =
;persistent =

[State 620, Velocity]
type = Velset
trigger1 = pos y = 0
x = 0
y = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1
trigger1 = pos y != 0
;ignorehitpause =
;persistent =

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = time < 0
value = -1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 3,0
value = -4
kill = 1
absolute = 0
;ignorehitpause =
;persistent =

[State 45, 2]
type = ChangeAnim2
trigger1 = Time = 0
value = 6201008

[State 2003, Hit ground]
type = SelfState
trigger1 = time >= 80
value = 5000
;---------------------------------------------------------------------------

;----------------------------------------------------------------------

[Statedef 6211007]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6211007
poweradd= 0
sprpriority = 7

[State 2000, 1]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 1
scale = 1,1
ignorehitpause = 1
;persistent =


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x =  0
y =  0


[State 0, VelSet]
type = VelSet
trigger1 = time = 4
x =  4.5
y = -6

[State 0, Gravity]
type = Gravity
trigger1 = 1
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=-10
trigger2 = movecontact
value = 6211008
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 6211008]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6211008
poweradd= 0
sprpriority = 7

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
;ignorehitpause =
;persistent =


[State 620, Velocity]
type = Velset
trigger1 = pos y = 0
x = 0
y = 0

[State 0, 1]
type = HitDef
triggerall = enemy,stateno != 6231008
trigger1 = animelem = 2
attr = S, SP
damage = 0,5
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 0,0
guard.velocity = -3
airguard.velocity = -3
air.type = High
air.velocity = 0,0
air.hittime = 120
envshake.time = 8
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 6231008

[State 0, SMOKE1]
type = Explod
trigger1 = timemod = 3,0
anim = 6221008
ID = 6221008
pos = -60+(random%100),10
sprpriority = 2
supermove = 1
removetime = -2
bindtime = 1
vel =  ifelse(random < 500, 1,-1),ifelse(random < 500, -2,-4)
ownpal = 1
scale = 1,1
removeongethit = 1
ontop = 1
supermovetime 	= 999
ignorehitpause  = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,30
volume = 255
channel = -1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 60



;---------------------------------------------------------------------------
; Thrown by Aerial drop
[Statedef 6231008]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 11,0
volume = 255
channel = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 80
add = 70,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
;ignorehitpause =
;persistent =

[State 620, Velocity]
type = Velset
trigger1 = pos y = 0
x = 2
y = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1
trigger1 = pos y != 0
;ignorehitpause =
;persistent =

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = time < 0
value = -1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 3,0
value = -4
kill = 1
absolute = 0
;ignorehitpause =
;persistent =

[State 45, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 6231008

[State 2003, Hit ground]
type = SelfState
trigger1 = time >= 80
value = 5010
;---------------------------------------------------------------------------




