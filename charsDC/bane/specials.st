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
;-------------------------------------------------------------------------------
;Powerbomb
;-------------------------------------------------------------------------------

[Statedef 900]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 900
ctrl = 0
poweradd= 60
sprpriority = 2


; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 900, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT           ;Attributes: Standing, Normal Throw
;hitflag = M-           ;Affect only ground people who are not being hit
;priority = 1, Miss     ;Throw has low priority, must be miss or dodge type.
sparkno = -1           ;No spark
hitsound = s3,1
sprpriority = -2       ;Draw in front of p2
;p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding back
p2facing = 1          ;Force p2 to face KFM
p1stateno = 905       ;On success, KFM changes to state 810
p2stateno = 9910       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down




[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1



; slams P2
[Statedef 905]
type    = S
movetype= A
physics = N
anim = 905
ctrl = 0
poweradd = 60
sprpriority = 10

[State -3, 1]
type = PlaySnd
trigger1 = time = 0
value = 10, 11




[State -2, FX]
type = Afterimage
trigger1 = time  = 1
time=60
trans = add
PalContrast =  200, 200, 200
PalBright = 0,0,0
length  = 15
TimeGap = 2
FrameGap = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 90, 0   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 90, -55   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50, -55   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10, -65   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -5, -60   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = -15, -140   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -50, -160   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = time > 35
pos = -50, -150   ;X Y



[State 810, snd]
type = VelSet
trigger1 = AnimElem = 7
Y = var(10)
X = var(11)

[State 810, snd]
type = VelAdd
trigger1 = time >= 30
Y = .9


[State 105, 3]
type = ChangeState
trigger1 = time > 35
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -10
value = 906



; landing
[Statedef 906]
type    = S
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
anim = 906
sprpriority = 2

[State 906, PosSet]
type = PosSet
trigger1 = !time
y = 0


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30, -125   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40, -60   ;X Y

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20, 0   ;X Y


[State 810, Throw 11] ; passa P2 de 820 para 821 ar
type = TargetState
trigger1 = AnimElem = 1
value = 911

[State 810, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 72, 1


[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0


[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1


[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -80



[State 4130, 7]
type = EnvShake
trigger1 = AnimElem = 3
time = 10
ampl = 8
freq = 100

[State 610, 4]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State 210, 4]
type = Explod
trigger1 = AnimElem = 3
anim = 9992
pos = -10,0
postype = p2
sprpriority = 10
ownpal = 1

[State 610, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s72, 1

[State 610, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = s13, 2

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 3
value = 915



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Jump Start
[Statedef 909]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 3]
type = VarSet
trigger1 = time = 0
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1





;P2
[Statedef 9910]
type    = A
movetype= H
physics = N
velset = 0,0

[State -2, FX]
type = Afterimage
trigger1 = time  = 1
trans = add
PalContrast =  100, 100, 250
PalBright = -80,-80,-50
time    =  55
length  = 15
TimeGap = 2
FrameGap = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 9910


[State 9910, snd]
type = VelAdd
trigger1 = time >= 30
Y = .9


;P2
[Statedef 911]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 911


[State 911, snd]
type = VelSet
trigger1 = time = 0
Y = 0
X = 0



;P2
[Statedef 915]
type    = A
movetype= H
physics = N
velset = -1,-12
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;Ground Stomp-------------------------------------------------------------------

[Statedef 3320]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 3320
sprpriority = 0
facep2 = 1



[State 3320]
type = Helper
trigger1 = AnimElem = 8
stateno = 6320
Id = 6320

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 92999
ID = 6010
pos = 0,0
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
scale = 2,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 92922
ID = 6010
pos = 0,0
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
scale = 2,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 61
ID = 6010
pos = 0,0
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
scale = 2,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3320]
type = HitDef
trigger1 = time = 0
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = S, NA
animtype = Hard
damage    = 105,10
guardflag = MA
pausetime = 7,7
sparkno = S9992
sparkxy = -10,-40
guard.sparkno = s9993
hitsound   = S2,2
guardsound = S4,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-13
air.velocity = 0,-12
getpower = 0
;fall = 1
;air.fall = 1
;fall.recover =0
p2stateno = 7321
;p2stateno = 9020


[State 3320]
type = EnvShake
Trigger1 = AnimElem=8
time = 30
freq = 100
ampl = -10
phase = 10

[State 3220]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2000,8


[State 3320]
type = varset
trigger1 = MoveHit
var(29) = 1
ignorehitpause = 1
persistent = 0


[State 3320]
type = VarAdd
trigger1 = MoveContact
var(21) = 1
ignorehitpause = 1
persistent = 0


[State 3320]
type = VarAdd
trigger1 = !MoveContact && AnimElem = 6, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0

[State 3320]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Rock Helper--------------------------------------------------------------------
[Statedef 6320]
type = S
movetype = I
physics =N
anim = 6320
ctrl = 0
sprpriority = 3
velset = 0,0



[State 6320]
type = ChangeAnim
trigger1 = Parent,Stateno = 3320 && Parent,AnimElem = 7, <= 0
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = Anim
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 6320]
type = DestroySelf
trigger1 = AnimTime = 0



;------------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 7321]
type    = A
movetype= H
physics = N
ctrl = 0

[State 7321]
type = VelAdd;Gravity
trigger1 = 1
y = 0.35;GetHitVar(yaccel)

[State 7321]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 7321]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(SelfAnimExist(5055),5055,5050)

[State 7321]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 5055
value = ifelse(SelfAnimExist(5051),5051,5050)

[State 7321]
type = SelfState
trigger1 = time = 0
value = 5071 ;HITA_RECOV
persistent = 0

[State 7321]
type = null;SelfState
;triggerall = HitFall
trigger1 = Vel Y > 1 ;Anim is over
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 7321]
type = null;SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5071


;Charging Light Wall Slam---------------------------------------------------------------------------

[Statedef 1200]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0,0
ctrl = 0
anim = 1200


[State 1200, Effect]
type = PlaySnd
trigger1 = AnimElem=1
value = 8, 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0


[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4)=0
x = 11

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 11



[State 1200, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
animtype = hard
air.animtype = back
hitflag = MAF
guardflag = MA
priority = 6,Hit
pausetime= 1, 2
sparkno = -1
guard.sparkno =  -1
sparkxy = -1
hitsound   = S1,9
guardsound = S2,0
damage = 5,0
guard.dist = 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
air.velocity = -6,-6
airguard.velocity = -6.67,-1
yaccel = .5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
numhits=0
getpower = 0
givepower = 0
envshake.time = 5
envshake.ampl = 2
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 1200

[State 901,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1204
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 0
trigger4 = moveguarded
value = 1201
ctrl = 0

;Charging Medium Wall Slam---------------------------------------------------------------------------

[Statedef 1210]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0,0
ctrl = 0
anim = 1210


[State 1210, Effect]
type = PlaySnd
trigger1 = AnimElem=1
value = 8, 0


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 1



[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0





[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4)=0
x = 11

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 11


[State 1200, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
animtype = hard
air.animtype = back
hitflag = MAF
guardflag = MA
priority = 6,Hit
pausetime= 1, 2
sparkno = -1
sparkxy = -1
hitsound = S3,1
guardsound = S3,0
damage = 15,0
guard.dist = 0
getpower = 0
givepower = 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
air.velocity = -6,-6
airguard.velocity = -6.67,-1
yaccel = .5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
numhits=0
envshake.time = 5
envshake.ampl = 2
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 1200

[State 901,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1204
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 0
trigger4 = moveguarded
value = 1201
ctrl = 0

;Charging heavy Wall Slam---------------------------------------------------------------------------
=
[Statedef 1220]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0,0
ctrl = 0
anim = 1220


[State 1220, Effect]
type = PlaySnd
trigger1 = AnimElem=1
value = 8, 0


[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 2

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0



[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4)=0
x = 11

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 11


[State 1200, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
animtype = hard
air.animtype = back
hitflag = MAF
guardflag = MA
priority = 6,Hit
pausetime= 1, 2
sparkno = -1
sparkxy = -1
hitsound = S3,1
guardsound = S3,0
damage = 25,0
guard.dist = 0
getpower = 0
givepower = 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 0
air.velocity = -6,-6
airguard.velocity = -6.67,-1
yaccel = .5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
numhits=0
envshake.time = 5
envshake.ampl = 2
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 1200

[State 901,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1204
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 0
trigger4 = moveguarded
value = 1201
ctrl = 0
;---------------------------------------------------------------------------
;miss
[Statedef 1201]
type    = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 1201

[State 450, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s0,2
channel = 2

[State 1201, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;crash wall
[Statedef 1204]
type    = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1202

[State 1000, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 1400, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim =918
supermove = 1
ontop = 1
removeongethit = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1000,2
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s40,0
channel = 3

[State 901, Throw]
type = TargetState
trigger1 = time = 0
value = 1207

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -75
postype = P1
time = -1

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 11
y = -.9

[State 3100, VelAdd]
type = veladd
trigger1 = 1
y = .09

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 1206

[State 1510,1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 1205
;---------------------------------------------------------------------------
;dash
[Statedef 1205]
type    = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1203

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s100,4
channel = 4

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s52,0
channel = 5

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 14;13.5

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 7103
ID = 7103
pos = -15,-5
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 901,1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -75
postype = P1
time = -1

[State 901,1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -75
postype = P1
time = -1

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 20;10
trigger2 = Time = 150
value = 1206

;---------------------------------------------------------------------------
;crash after dash
[Statedef 1206]
type    = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,8)
velset = 0,0
ctrl = 0
anim = 1204
poweradd= 60

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 7103

[State 220, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s2000,1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s11,2

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = s2000,7


[State 100,wall]
type = GameMakeAnim
trigger1 = AnimElem = 2
pos = 20,-77
value = 72
postype = p2


[State 1206, width]
type = width
trigger1 = animelem = 1
edge = 40,0

[State 1206, width]
type = width
trigger1 = animelem = 2
edge = 75,0

[State 1206, width]
type = width
trigger1 = animelem = 3
edge = 90,0

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -77
Time = -1
postype = P1

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -77
Time = -1
postype = P1
ignorehitpause=1

[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 1200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = up
hitflag = MAF
guardflag = MA
snap = 95,0
priority = 6,Hit
pausetime = 0,1
sparkno = -1
sparkxy = -1
hitsound   =-1
guardsound =-1
damage=ifelse(var(10)=2, 146, ifelse(var(10)=1, 139, 132)),0
guard.dist = 0
givepower = 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6,-8.5
air.velocity = -6,-8.5
yaccel = .55
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
ID = 1200
numhits=0
getpower = 0
givepower = 0



[State 1205, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;p2grabbed, dashing
[Statedef 1207]
type    = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1201, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 1510,1]
type = changeanim2
trigger1 = time = 0
value = 1207


;-------------------------------------------------------------------------------

; Sewer Lid Toss
[Statedef 1100]
type    = S
movetype= A
physics = S
poweradd= 60
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, Explod]
type = Explod
trigger1 = Time = 0
anim = 1111
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
sprpriority = 2
removeongethit = 1

[State 0, 2]
type = VarSet
trigger1 = time = 0
fvar(17) = ifelse(command = "z", 8.0, ifelse(command = "y", 5.0, 2.0))
velocity = (-2.0 + fvar(10)), (-0.8 + (const(movement.yaccel)* time))


[State 1100,sound1]
type = Playsnd
trigger1 = time = 1
value = 3,1

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = s0,1

[state 1100, 2]
type = helper
trigger1 = AnimElem = 8, =1
helpertype = normal
name = "sewerlid"
id = 1035
pos = 75, -80
postype = P1
stateno = 1101
ownpal = 1

[State 0, width]
type = Width
trigger1 = AnimElem = 3, >= 0
value = 45,0

[State 1100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Lid States
[Statedef 1101]
type = A
movetype = A
physics = N
velset = 2.55 + root,fvar(17), 0
juggle  = 4
ctrl = 0
anim = 7575
poweradd = 0
sprpriority=4

[State 1101, 18 ]
type = AfterImage
trigger1 = time = 0
time = 32
FrameGap = 2
timegap = 3
length = 10
PalBright   =   50,  50,  50
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 1

[state 1101, 1]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AP,AP,AP
stateno = 11112
ignorehitpause = 1

[State 1101, 3]
type = playsnd
trigger1 = time = 0
value = s1004,2


[State 1035, 5]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage   = 95,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
sparkno = S9992
hitsound = S2,2
guardsound = S3,0
sparkxy = 20,-20
guard.sparkno = s9993
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,4
envshake.time = 7
envshake.ampl = 4
fall = 1




[state 1035, 7]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera = 0, 0

[state 1035, 8]
type = helper
trigger1 = movehit
helpertype = normal
name = "falling lid"
id = 1102
pos = 40, 20
postype = P1
stateno = 1102
ownpal = 1

[state 1035, 9]
type = destroyself
trigger1 =  movecontact
trigger2 = Frontedgedist<-80 || Backedgedist<0

[Statedef 1102]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 75757
sprpriority = 3

[State 1040, 2]
type = explod
trigger1 = AnimElem = 2
anim = 5757
postype = p1
pos = -60,-30
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1102, 3]
type = playsnd
trigger1 = AnimElem = 2
value = 60,8


[State 1036, 1]
type = VelSet
trigger1 = time = 0
x = -4
y = -7

[state 1036, 2]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 11112]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 75775
sprpriority = 2


[State 7212]
type = DestroySelf
trigger1 = time = 5
;---------------------------------------------------------------------------
; Knee Stomp 1
[Statedef 1040]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 1040
ctrl = 0


[State 1040, 2]
type = explod
trigger1 = AnimElem = 3
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

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
anim = 1045
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
value = 1050

[State 1045, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

;--------------------------
; Knee Stomp 3 - Stomp!
[Statedef 1050]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 80
velset = 0,5
anim = 1050
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

[State 1050, 1]
type = HitDef
trigger1 = Time = 1
attr = S, SA
animtype  = Med
damage    = 95,10
priority  = 7
guardflag = MA
pausetime = 4,8
sparkno = S9992
sparkxy = 0,-48
guard.sparkno = s9993
hitsound   = s2,2
guardsound = 6,0
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
trigger1 = Time = 23
value = 1055

;------------------------------
;Knee Stomp 4 - Bounce Away
[Statedef 1055]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 4444

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
;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 1
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
guard.sparkno = s9993
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;Helper
;-------------------------------------------------------------------------------
; Deadshot-Floyds attack

[Statedef 1150]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 0
anim = 1051
ctrl = 0
sprpriority = 0

[State 240, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s60,12





[State 1150, CallHelper]
type = helper
trigger1 = animelem = 1
ID = 12200
pos = 0,-60
postype = back
stateno = 12200
helpertype = normal
name = "deadshot"
ownpal = 0
keyctrl = 0



[State 1150, TheEnd]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
 ;Anti Spam Helper
;-------------------------------------------------------------------------
[Statedef 1055]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1055
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time <= 30
flag = invisible
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 200;p2stateno != [3050,3054];time = 200
;---------------
; Deadshot helper
;---------------
[Statedef 12200]
type = S
anim = 1150
velset = 4, 4
movetype = A
physics = N
sprpriority = 3

[State 12200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S8,0

[State 12200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3,1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 2
value = 1

[State 0, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 12203
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = root, movetype = H
value = 12203
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[State 1200, 2]
type = ChangeState
trigger1 = Pos Y = 0
value = 12201

;------------------
; Deadshot shooting
;------------------
[Statedef 12201]
type = S
anim = 1160
velset = 0,0
movetype = A
physics = N
sprpriority = 3





;dust
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 61
ID = 61
pos = 0,0;-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = 0
ontop = 1
shadow = 0,0,0
supermove = 9999
pausemove = 9999
ownpal = 1
removeongethit = 0

;special wave
[State 0, Explod]
type = Explod
trigger1 = time=1;time = 2
anim = 918
ID = 918
pos = 0,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem =3
anim = 8125
ID = 8125
pos = 57,-37
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;the bullets
[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Bullet"
ID = 1234
stateno = 1234
pos = 57,-98
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

;the shells
[State 420, 2]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "Shells"
id = 1235
stateno = 1235
pos = 52,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

[State 1200, bulletsound]
type = PlaySnd
trigger1 = animelem = 3;time = 1
value = 65,0

[State 0, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 12203
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = root, movetype = H
value = 12221
ctrl = 0

[State 1202, TheEnd]
type = ChangeState
trigger1 = time = 100;AnimTime = 0
value = 12221
;------------------------------------------------------------------------------
;------------------
[Statedef 12221]
type = S
anim = 1161
velset = 0,0
movetype = A
physics = N
sprpriority = 3

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem =3
anim = 8125
ID = 8125
pos = 36,-24
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0


;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem =3
anim = 8125
ID = 8125
pos = 39,-18
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;the bullets
[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Bullet"
ID = 1234
stateno = 1234
pos = 57,-86
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

;the bullets
[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Bullet"
ID = 1234
stateno = 1234
pos = 57,-79
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1


;the shells
[State 420, 2]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "Shells"
id = 1235
stateno = 1235
pos = 29,-89
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

;the shells
[State 420, 2]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "Shells"
id = 1235
stateno = 1235
pos = 33,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

[State 1200, bulletsound]
type = PlaySnd
trigger1 = animelem = 3;time = 1
value = 65,0

[State 0, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr= SCA,AA,AP,AT
stateno = 12203
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = root, movetype = H
value = 12203
ctrl = 0

[State 12201, TheEnd]
type = ChangeState
trigger1 = time = 100;AnimTime = 0
value = 12203


;--------
;buletts
;--------
[Statedef 1234]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1234
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time > 0
x = 15

[State 200, 1]
type = HitDef
triggerall = p2statetype != A
trigger1 = time > 0
attr = S, HP
getpower = 0
damage = 2,1
animtype = heavy
guardflag = MA
hitflag = MAFP
sparkno = s9992
pausetime = 5,9;9,9
sparkxy = 10,0;-50
guard.sparkno = s9993
hitsound = s1, 9
guardsound = s4, 1
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -10,3
air.fall = 1
fall.recover =0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded



[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1236
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1236
ctrl = 0
;anim =
ignorehitpause = 1
;persistent =



;--------
;shells
;--------
[Statedef 1235]
type    = S
movetype= A
physics = N
anim = 1235
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 11,22
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100
;--------
;bullets blocked
;--------
[Statedef 1236]
type    = S
movetype= A
physics = N
anim = 1236
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 1,2
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100
;------------------
; Deadshot jumps out
;------------------
[Statedef 12203]
type = S
anim = 1151
velset = -4,-2
movetype = A
physics = N
sprpriority = 3

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S8,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 918
ID = 918
pos = 0,0
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
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1203, TheEnd]
type = destroyself
trigger1 = Time = 45
;------------------------------------------------------------------------------
;Flip Kick
[Statedef 1117]
anim = 1117
ctrl = 0
type = A
movetype = A
physics = A
velset = 0,0
poweradd = 90
facep2 = 1
time = 15

[State 12203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S100,4


[State 1117, EnvShake]
type = EnvShake
trigger1 = movehit
time = 1
freq = 100
ampl = -4
phase = 90

[State 1117, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 1117, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 5
y = 6

[State 1117, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7
getpower = 0
givepower = 0
damage = 95,20
pausetime = 7,10
Guard.pausetime = 3,10
guard.sparkno = -1
sparkxy = -10,-50
hitsound = S2,2
guardsound = S3,0
sparkno = s9992
ground.type = low
guard.hittime = 20
ground.cornerpush = 0
ground.velocity = -1, -8
guard.velocity = -10
air.velocity = -1, -8
airguard.velocity = -1, -2
fall = 1
air.fall = 1
fall.recover = 0
P2stateno = 3301
; palfx.time = 60
; palfx.mul = 256,256,256
; palfx.add = 50,50,200
; palfx.sinadd = 90,90,90,40

[State 1050, Bounce]
type = ChangeState
trigger1 = MoveContact
value = 1755

[State 1117, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;------------------------------
;Head Stomp 4 - Bounce Away
[Statedef 1755]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 851

[State 1055, 6]
type = VelSet
trigger1 = Time = 2
x = const(velocity.airjump.back.x)
y = const(velocity.airjump.y)

[State 1055, 7]
type = ChangeState
trigger1 = Time = 2
value = 5040
ctrl = 0



;-----------------------------------------------------------------------------
;Slide Kick P2 Hit State
[Statedef 3301]
type =  A
physics = N
movetype = H
velset = 0,0

[State 3301, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5010

[State 3301, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 5010

;------------------
;flying through the air
; (a custom gethit state)
[Statedef 3301]
type    = A
movetype= H
physics = N

[State 3301, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 3301, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 3301, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 3301, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 5010

[State 3301, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; hit wall
; (a custom gethit state)
[Statedef 3303]
type    = A
movetype= H
physics = N

[State 3303, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 3303, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 3303, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 3303, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 3303, Spark]
type = Explod
trigger1 = Time = 0
anim = F72 ;3402
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 3303, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3303

[State 3303, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 3303, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 3304

;------------------
;  bounce off wa
;(a custom gethit state)ll
[Statedef 3304]
type    = A
movetype= H
physics = N

;[State 3304, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 3304, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 3304, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 3304, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 3304, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 3304, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 3304, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 3304, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 3304, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 3304, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


