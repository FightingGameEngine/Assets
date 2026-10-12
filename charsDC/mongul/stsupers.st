;---------------------------------------------------------------------------
;-------------Supers------------------------------------------------------
;---------------------------------------------------------------------------
;Black Mercy
;----------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd = 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000,helper]
type = Helper
triggerall = !NumHelper(1001)
triggerall = p2stateno !=  7670
trigger1 = time = 26
ID = 1001
pos = 0,0
stateno = 1001
helpertype = normal
name = "blackmercy"
keyctrl = 0
ownpal = 1


[State 1000,sound]
type = Playsnd
trigger1 = time = 0
value = 0,2

[State 1000,sound]
type = Playsnd
trigger1 = time = 1
value = 40,4

[State 1000,sound]
type = Playsnd
trigger1 = animelem = 5
value = 30,7

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, 2]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

;--------Black Mercy--------
[statedef 1001]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1001
velset = 8,0
sprpriority = 6

[State 1001, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1001, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1004
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1001, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1001, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000, glow]
type = Explod
triggerall = !NumExplod(1005)
trigger1 = Time = 0
anim = 1005
id= 1005
supermove = 1
ontop = 1
removeongethit = 1
removetime= -1
bindtime = -1


[state 1001, hit]
type = HitDef
trigger1 = movecontact = 0
attr = S, SP
damage = 120,10
hitflag= MAFP
hitsound   = S3,1
sparkno = -1
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
p2stateno = 7670

[State 1001, Bmercy]
type = RemoveExplod
trigger1 = movehit = 1 || moveguarded = 1
trigger2 = time = 70
id= 1005

[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(1002)
trigger1 = movehit = 1
anim = 1002
pos = 30, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 82
ownpal = 1

[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(1006)
trigger1 = movehit = 1
anim = 1006
pos = 30, 0
postype = p2
sprpriority = 8
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 82
ownpal = 1

[State 1001, med1]
type = Explod
triggerall = !NumExplod(1003)
trigger1 = moveguarded = 1
anim = 1003
velocity = 1, 0
pos = 20, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 32
ownpal = 1

[State 1001, med1]
type = Explod
triggerall = !NumExplod(1004)
trigger1 = moveguarded = 1
anim = 1004
velocity = 1, 0
pos = 20, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 32
ownpal = 1

;[state 1210, sndx]
;type = playsnd
;trigger1 = moveguarded = 1
;value = 40,2

[state 1001, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 1001, destroy]
type = Destroyself
trigger1 = time = 70

;--------Black Mercy--------
[statedef 1004]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1003
velset = -1,-3
sprpriority = 6

[state 1001, destroy]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Earthquake based on Goro's by Sander71113
;---------------------------------------------------------------------------
[Statedef 1100]
type = S
movetype = A
physics = S
juggle = ifelse(var(13) >= 1, 0, 14)
velset = 0,0
ctrl = 0

[State 1100, Quake Varset]
type = Varset
trigger1 = time = 1
trigger1 = var(13) >= 1
var(13) = 0

[State 1100, Changeanim]
type = Changeanim
trigger1 = time = 0
trigger1 = anim != 1100
value = 1100

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1100, Rocks]
type = Explod
trigger1 = AnimElem = 4
id = 1101
anim = 1101
pos = 0,0
postype = p1
sprpriority = -3
ownpal = 1
removeongethit = 1


[State 1100, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 25
ampl = -9
freq = 90

[State 1100, Boom]
type = PlaySnd
trigger1 = AnimElem = 4
value = 30,0
volume = 100

[State 1100, yel]
type = PlaySnd
trigger1 = time = 0
value = 40,3
volume = 100

[State 1100, Hitdef]
type = HitDef
triggerall = AnimElem = 1, = 1
trigger1 = p2statetype = S
attr = S, ST
damage = 184
hitflag = HD
guardflag = L
animtype = Back
ground.animtype = Trip
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.velocity = -1.5,-5
air.velocity = -1.5,-5
guard.velocity = 0
fall = 1
fall.recovertime = 35
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 90,70
givepower = 50,20
p2getp1stateno = 1
p2stateno = 1030
hitonce = 0
yaccel = .55

[State 1100, Hitdef]
type = HitDef
triggerall = AnimElem = 1, = 1
trigger1 = p2statetype = L
attr = S, ST
damage = 204
hitflag = FD
guardflag = N
animtype = Back
ground.animtype = Trip
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.velocity = (ifelse(p2stateno = 1335,-1.5,-3.5)),(-5)
air.velocity = (ifelse(p2stateno = 1335,-1.5,-3.5)),(-5)
guard.velocity = 0
fall = 1
fall.recovertime = 35
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 90,70
givepower = 50,20
yaccel = .55
p2getp1stateno = 1
p2stateno = 1110
hitonce = 0

[State 1100, END]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 1030]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1030, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 1030, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 1031

[State 1030, 3]
type = ForceFeedback
trigger1 = Time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 1031]
type    = A
movetype= H
physics = N

[State 1031, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1031, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1031, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1031, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 1320
;---------------------------------------------------------------------------

; HIT_Ground
[Statedef 1320]
type    = L
movetype= H
physics = N

[State 1320, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 1
x = 1

[State 1320, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1320, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 1320, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 1320, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 1320, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1320, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1320, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1320, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 1320, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 1320, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1320, 11]
type = PosFreeze
trigger1 = 1

[State 1320, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 1325

[State 1320, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1325]
type    = L
movetype= H
physics = N

[State 1325, 1] ;Coming hit ground anim (normal)
type = Nothitby
trigger1 = 1
value = SCA

[State 1325, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 1325, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 1325, 3]
type = HitFallVel
trigger1 = GetHitVar(fall.yvel) != 0
trigger1 = Time = 0

[State 1325, VEl]
type = Velset
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
x = sysvar(4)
y = -3.7

[State 1325, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 1325, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 1325, 6] ;Hit ground
trigger1 = time > 5
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 1330

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 1330]
type    = L
movetype= H
physics = N

[State 1330, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1330, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 1330, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 1330, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 1330, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 1330, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1330, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 1330, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1330, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 1330, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1330, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 1330, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 1330, 11] ;If just died
type = SelfState
triggerall = !alive
triggerall = time >= 50
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 1330, GETUP]
type = ChangeState
triggerall = alive
trigger1 = time >= 19
value = 1335

[State 1330, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 1330, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 1330, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 1330, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------

; HIT_GETUP
[Statedef 1335]
type    = L
movetype= H
physics = N

[State 1335, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 1335, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 1335, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 1335, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 1335, 5] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = time >= 12
value2 = SCA
time = 12

[State 1335, 6]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;HITLSHAKE
[Statedef 1110]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1110, 3] ;Freeze
type = ChangeAnim
trigger1 = anim = 5112 || anim = 5172
trigger1 = selfanimexist(5082)
value = 5082

[State 1110, 3] ;Freeze
type = ChangeAnim
trigger1 = anim = 5111 || anim = 5171
trigger1 = selfanimexist(5081)
value = 5081

[State 1110, 3] ;Freeze
type = ChangeAnim
trigger1 = anim = 5110 || anim = 5170
value = 5080

[State 1110, 3] ;Freeze
type = Changestate
trigger1 = time = 0
trigger1 = anim = [5120,5122]
value = 1300
ctrl = 0

[State 1110, 4]
type = posset
trigger1 = 1
y = 0

[State 1110, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 1115
ctrl = 0
;---------------------------------------------------------------------------

; HIT_BOUNCE (bounce into air)
[Statedef 1115]
type    = A
movetype= H
physics = N

[State 1115, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5082
trigger1 = SelfAnimExist(5162)
value = 5162

[State 1115, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5081
trigger1 = SelfAnimExist(5161)
value = 5161

[State 1115, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5080
value = 5160

[State 1115, 3]
type = Hitvelset
trigger1 = time = 0
x = 1

[State 1115, 3]
type = velset
trigger1 = time = 0
y = -6

[State 1115, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 1115, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .45

[State 1115, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 1120
ctrl = 0
;---------------------------------------------------------------------------

;HIT_BOUNCE (hit ground)
[Statedef 1120]
type    = L
movetype= H
physics = N

[State 1120, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 1120, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1120, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 1120, 2] ;Hit ground anim (DIAGUP)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5162
trigger1 = SelfAnimExist(5102)
value = 5102

[State 1120, 2] ;Hit ground anim (HITUP)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5161
trigger1 = SelfAnimExist(5101)
value = 5101

[State 1120, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5160
value = 5100

[State 1120, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1120, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1120, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1120, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 1120, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 1120, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1120, 11]
type = PosFreeze
trigger1 = 1

[State 1120, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 1120, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------

; Bounce 2
[Statedef 1125]
type    = A
movetype= H
physics = N

[State 1125, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5102
trigger1 = SelfAnimExist(5162)
value = 5162

[State 1125, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5101
trigger1 = SelfAnimExist(5161)
value = 5161

[State 1125, 1] ;Coming hit ground anim
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 5100
value = 5160

[State 1125, 3]
type = Hitvelset
trigger1 = time = 0
x = 1

[State 1125, 3]
type = velset
trigger1 = time = 0
y = -3.5

[State 1125, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 1125, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .45

[State 1125, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 1330
ctrl = 0
;---------------------------------------------------------------------------
; Teleport
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1200
ctrl = 0
poweradd= 20
sprpriority = 2

[State 750, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 1

;------move
[Statedef 1201]
type    = S
movetype= A
physics = N
juggle  = 4
anim = 1201
ctrl = 0
sprpriority = -6

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = 10

[State 1200, 2]
type = ChangeState
trigger1 = Time = 30
value = 1202
ctrl = 1

;------Appear
[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1202
ctrl = 0
sprpriority = 2

[State 1202, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 30,2

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Yellow Beam (D, DF, F + P) -- 720,721
;---------------------------------------------------------------------------
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

[State 720, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 40,5

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 30,3

[State 720, projétil]
type = projectile
trigger1 = animelem = 3
projanim = 1401
projremove = 0
projremovetime = 48
projhits = 7
attr = S, SP
damage = 20
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = -1
getpower = 100,30
hitsound = 5,3
guardsound = 6,0
ground.type = HIGH
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -8,-2
air.animtype = Heavy
air.velocity = -8,-5
air.juggle = 3
;fall=1

[State 720, exp]
type = Explod
triggerall = !NumExplod(8500)
trigger1 = projcontact(721) = 1
anim = 8500
id = 8500
pos = 00,-80
postype = p2
sprpriority = 3
bindtime = 1

[State 720, 7]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;AXES (Move A)
;-------------------------------------------------------------------------------
[Statedef 1450]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1450
sprpriority = -1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 220, 1]
type = PlaySnd
trigger1 = animelem=6
value = 30, 5

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 440, vel]
type=velset
trigger1=animelem=5
x=5

[State 440, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(5)>=0&&animelemtime(8)<0&&movehit
value=0
ignorehitpause=1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 100, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = S1456
sparkxy = -110, -25
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
;fall = 1



[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;AXES (Move B)
;-------------------------------------------------------------------------------
[Statedef 1451]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1451
sprpriority = -1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 440, vel]
type=velset
trigger1=animelem=5
x=5

[State 440, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(5)>=0&&animelemtime(9)<0&&movehit
value=0
ignorehitpause=1

[State 220, 1]
type = PlaySnd
trigger1 = animelem=6
trigger2 = animelem=7
value = 30, 5

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 100, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 6, 15
sparkno = S1455
sparkxy = 60, 0
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
;fall = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 50, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 15
sparkno = S1456
sparkxy = -110, -25
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
;fall = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;AXES (Move C)
;-------------------------------------------------------------------------------
[Statedef 1452]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1452
sprpriority = -1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 440, vel]
type=velset
trigger1=animelem=5
x=7

[State 440, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(5)>=0&&animelemtime(11)<0&&movehit
value=0
ignorehitpause=1

[State 220, 1]
type = PlaySnd
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=10
value = 30, 5

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 100, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 6, 15
sparkno = S1455
sparkxy = 60, 0
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
;fall = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 50, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 15
sparkno = S1456
sparkxy = -110, -25
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
;fall = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, NA
damage = 50, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 15
sparkno = S1457
sparkxy = -120, -10
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7 ,-4
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-4
air.hittime = 20
fall = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
