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
trigger1 = AnimElem = 4
value = 1000,2
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 700,2
channel = 0

[State 1000, fireball]
type = hitdef
trigger1 = AnimElem = 4 ||  AnimElem = 5 || AnimElem = 6
numhits = 3
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 40,5
pausetime = 4,4
sparkno = s-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0



[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1030
ID = 1030
pos = -45,-85
postype = p1
bindtime = -1
sprpriority = -1
scale = 0.5,0.5

[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 9876
ID = 9876
pos = 45,-75
postype = p1
bindtime = -1
sprpriority = 5
scale = 0.5,0.5

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 69
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1900]
type    = S
movetype = A
physics = N
ctrl = 0
poweradd = 70
velset = 0,0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0


[State 902, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 1900

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1900,var(12)
channel = 0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,100
channel = 19

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0,100
channel = 20

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 7.5

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 4
Trigger1 = P2BodyDist X <= 5
value = 1902

[State 901, State End]
type = ChangeState
trigger1 = Time >= 24+(9*var(5))
value = 1901

;---------------------------------------------------------------------------
;“ó•SE“óŽ®E‹ÕŒŽ@—zi’âŽ~j
[Statedef 1901]
type = S
physics = S
ctrl = 0
anim = 1901
velset = 0,0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 101, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
;“ó•SE“óŽ®E‹ÕŒŽ@—ziUŒ‚j
[Statedef 1902]
type    = S
movetype = A
physics = S
juggle = 8
ctrl = 0
poweradd = 0
velset = 0,0
anim = 1902

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0


[State 100, Effect]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = back
damage = 50
priority  = 7, Hit
hitflag = MAF
guardflag = M
pausetime = ceil(13*(2-(var(16)>0))/2),ceil(13*(2-(var(16)>0))/2)
sparkno = S8210+(random%8)
guard.sparkno = S8105
sparkxy = -20, -68
hitsound = S2,2
guardsound = S1,0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = 0
guard.velocity = -8
air.velocity = -3.5,-6.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
fall.recovertime = 60
yaccel = .5
persistent = 0
getpower = ifelse(var(17),70,143)*(1000+var(24))/1000*!(var(15)||var(16)),35*(1000+var(24))/1000*!(var(15)||var(16))
givepower = 35, 35
forcestand = 1
P2facing = 1
kill = 0
guard.kill = 0
envshake.time = 10
envshake.ampl = 3
ID = 1900
nochainID = var(40)

[State 1100, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1905
ctrl = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1903
ctrl = 1

[Statedef 1905]
type    = S
movetype = A
physics = S
juggle = 0
velset = 6
ctrl = 0
poweradd = 0
anim = 1905

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
;“ó•SE“óŽ®E‹ÕŒŽ@—zi’Í‚Ýj
[Statedef 1903]
type    = S
movetype = A
physics = S
juggle = 0
velset = 6
ctrl = 0
poweradd = 0
anim = 1903

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 3
movetype = I

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0


[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
air.animtype  = back
damage = 100
priority  = 7, Hit
hitflag = MAF
guardflag = M
pausetime = ceil(13*(2-(var(16)>0))/2),ceil(13*(2-(var(16)>0))/2)
sparkno = S-1
guard.sparkno = S-1
sparkxy = -20, -86
hitsound = S2,2
guardsound = S1,0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = -5
guard.velocity = -8
air.velocity = -3.5,-6.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
fall.recovertime = 60
yaccel = .5
persistent = 0
getpower = ifelse(var(17),70,143)*(1000+var(24))/1000*!(var(15)||var(16)),35*(1000+var(24))/1000*!(var(15)||var(16))
givepower = 35, 35
forcestand = 1
P2facing = 1
kill = 0
guard.kill = 0
ID = 1900
numhits = 0
nochainID = var(40)
palfx.time = 90
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State -3, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1020
ID = 1020
pos = 25,-95
postype = p1
bindtime = -1
sprpriority = 5
scale = 0.5,0.5

[State 1100, ChangeState]
type = ChangeState
triggerall = animelem = 3
Trigger1 = 1 && numtarget
value = 1912
persistent = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value =  0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1912]
type    = S
movetype = A
physics = N
juggle = ifelse(target,gethitvar(fall),0,8)
velset = 0,0
anim = 1912

[State 3001, Width]
type = posadd
trigger1 = animelem = 1
x = 15

[State 3001, Width]
type = posadd
trigger1 = animelem = 2
x = 10

[State 3001, Width]
type = posadd
trigger1 = animelem = 3
x = 5

[State 3001, Width]
type = Width
trigger1 = Time = 0
edge = 60,0

[State 901, Throw]
type = TargetState
trigger1 = Time = 0
value = 1916

[State 3001, Width]
type = Width
trigger1 = Time = 0
edge = 60,0

[State 901,1]
type = TargetBind
trigger1 = animelem = 1
pos = -10, -50
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 2
pos = 30, -106
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 3
pos = 30, -133
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 4
pos = 31, -25
time = 1

[State 1100, HitDef]
type = HitDef
triggerall = prevstateno != 1950
trigger1 = AnimElem = 2
attr = S, SA
animtype  = back
air.animtype  = back
damage = 150
priority  = 7, Hit
hitflag = MAF
guardflag =
pausetime = 0,0
sparkno = S1020
guard.sparkno = S-1
sparkxy = 0, 0
hitsound = s-1,0
guardsound = S-1,0
ground.type = Low
ground.slidetime = 60
ground.hittime  = 60
guard.ctrltime = 60
ground.velocity = -4,-7.5
guard.velocity = -8
air.velocity = -4,-7.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .5
getpower = ifelse(var(17),70,143)*(1000+var(24))/1000*!(var(15)||var(16)),35*(1000+var(24))/1000*!(var(15)||var(16))
givepower = 35, 35
forcestand = 1
kill = 1
guard.kill = 0
envshake.time = 12
envshake.ampl = 5


[State 1100, HitDef]
type = HitDef
triggerall = prevstateno = 1950
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
air.animtype  = back
damage = 100
priority  = 7, Hit
hitflag = MAF
guardflag =
pausetime = 0,0
sparkno = S1020
guard.sparkno = S-1
sparkxy = 0, 0
hitsound = S-1,0
guardsound = S-1,0
ground.type = Low
ground.slidetime = 60
ground.hittime  = 60
guard.ctrltime = 60
ground.velocity = -4,-12
guard.velocity = -8
air.velocity = -4,0
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .5
getpower = ifelse(var(17),70,143)*(1000+var(24))/1000*!(var(15)||var(16)),35*(1000+var(24))/1000*!(var(15)||var(16))
givepower = 35, 35
forcestand = 1
kill = 1
guard.kill = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,3
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,4
channel = 0

[State 901, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 5030
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1916]
type    = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State -3, Explod]
type = Explod
trigger1 = animelem =  4
anim = 1234
ID = 1234
pos = 35,-25
postype = p2
bindtime = -1
sprpriority = 5
scale = 0.5,0.5

[State -3, Explod]
type = Explod
trigger1 = animelem =  4
anim = 1235
ID = 1235
pos = 35,-25
postype = p2
bindtime = -1
sprpriority = -1
scale = 0.5,0.5

[State 902, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1916

[State 1191, screenbound]
type = screenbound
trigger1 = AnimElemTime(4) < 0
value = 1

[State 903, Vel]
type = VelSet
trigger1 = AnimElem = 4
x = -4
y = 5.5

[State 903, Vel]
type = veladd
trigger1 = AnimElemTime(4) > 0
y = 0.4


[State 903, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 170, 1]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA

[State 903, 2]
type = SelfState
triggerall = AnimElemTime(4) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

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

;--------------------------------------------------------------------------
[StateDef 1100]
anim = 1100
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 700,0

[State 200, swoosh]
type = velset
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
x = 6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 100
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-99
animtype = medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 10
ground.velocity = -6,-3
guard.velocity = -6
air.velocity = -6,-3
fall = 0

[State 200, back to stance]
type = ChangeState
trigger1 = Time = 28
value = 0
ctrl = 1
;--------------------------------------------------------------------------
[StateDef 1200]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,1
channel = 0


[State 200, swoosh]
type = velset
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
y = -3
x = 2.5

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 100
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-99
animtype = heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 10
ground.velocity = -6,-6
guard.velocity = -6
air.velocity = -6,-3
fall = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = -1
y = -2

[State 200, back to stance]
type = ChangeState
trigger1 = Time = 33
value = 50
ctrl = 1


[Statedef 1600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3530
poweradd = 55
sprpriority = 2
velocity = 0,0

[State 3075,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 35
length = 16
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 1
palfx.color = 1
timegap = 1
framegap = 2
trans = add1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -3
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 10

[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3600
ID = 3600
removetime = 125
pos = 45,-52
postype = p1
bindtime = -1
sprpriority = 3
scale = .5,.5

[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3601
ID = 3601
removetime = 125
pos = 45,-52
postype = p1
bindtime = -1
sprpriority = -3
scale = .5,.5

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 4
value = 1000,5

[State 650, HitDef]
type = HitDef
trigger1 = Time  = 0
attr = A,NA
damage = 75,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = s7772
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,3
air.fall = 1
fall = 1
air.hittime = 25
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = movehit
value = 1610

[State 650, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 1611

[Statedef 1610]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3536
poweradd = 55
sprpriority = 2

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3600

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3601

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -3
y = -3

[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1611]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 1310
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
y = -3

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3600

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3601

[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-------------------------------------------------------------------------------

[Statedef 1710]
type = A
movetype = A
physics = A
anim = 3520
ctrl = 0
velset = 0,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 0

[State 1000, PlaySnd]
type = Velset
trigger1 = AnimElem = 3
x = -1
y = -3

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 4,3
offset = 30,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 27
value = 50
ctrl = 1


[Statedef 1720]
type = A
movetype = A
physics = A
anim = 3525
ctrl = 0
velset = 0,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 0

[State 1000, PlaySnd]
type = Velset
trigger1 = AnimElem = 3
x = -1
y = -3

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 5,2
offset = 40,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 27
value = 50
ctrl = 1


[Statedef 1730]
type = A
movetype = A
physics = A
anim = 3527
ctrl = 0
velset = 0,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || Animelem = 6
value = 1000,2
channel = 0

[State 1000, PlaySnd]
type = Velset
trigger1 = AnimElem = 3
x = -1
y = -5

[State 1000, PlaySnd]
type = Velset
trigger1 = AnimElem = 6
x = -1
y = -3

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 4,3
offset = 30,-80
trigger1 = AnimElem = 6
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 5,2
offset = 40,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 48
value = 50
ctrl = 1


