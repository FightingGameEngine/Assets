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
; Special 1 x
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
trigger1 = AnimElem = 5
value = S9,1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
player = 35, 25

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1010
projanim = 1010
;projhitanim = 1010
velocity = 0,0
offset = 50,-90
scale = 1,.25
projremove = 0
projremovetime = 12
projscale = 1, 0.4
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 40,6
pausetime = 0,4
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 y
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

; voice
[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S9,1

[State 1001, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
player = 40, 25

[State 1001, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
;projhitanim = 1010
velocity = 0,0
offset = 80,-95
scale = 1,.25
projremove = 0
projremovetime = 12
projscale = 1, 0.6
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 70,8
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,0
air.velocity = -5,-2
envshake.time = 10
envshake.freq = 70
envshake.ampl = -4



[State 1001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 z
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
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

[State 1002, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
player = 45, 25

[State 1002, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1010
projanim = 1010
;projhitanim = 1010
velocity = 0,0
offset = 90,-87
scale = 1,.25
projremove = 0
projremovetime = 12
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 100,10
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -10,0
air.velocity = -7,-2
envshake.time = 12
envshake.freq = 80
envshake.ampl = -4


[State 1002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
;Upperforce
[Statedef 1400]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

[State 1400, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1401
ID = 1401
pos = 17,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -2
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =
;supermove = 0
;pausemove = 0

[State 1400, velset]
type = velset
trigger1 = animelem = 4
x = 6
y = -7

[State 1400, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = Vel x >= 2
x = -0.2

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
physics = A

[State 1400, air hitdef 1]
type = hitdef
attr = A, SA
guardflag = MA
trigger1 = animelem = 3
;trigger2 = animelem = 4
;trigger3 = animelem = 5
;ID = 1301
;noChainID = 1301
sparkno = S9992
sparkxy = 0,-76
animtype = up
ground.type = hard
ground.velocity = -4,-15
air.velocity = -4,-15
yaccel = .7
damage = 37,3
hitsound = S8000,2
ground.hittime = 15
air.hittime = 25
pausetime = 14,14
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 1400, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;--------------------------------------------------------
;Upperforce
[Statedef 1401]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

[State 1401, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1401
ID = 1401
pos = 17,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -2
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =
;supermove = 0
;pausemove = 0

[State 1401, velset]
type = velset
trigger1 = animelem = 4
x = 4
y = -8

[State 1401, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = Vel x >= 1.5
x = -0.2

[State 1401, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
physics = A

[State 1401, air hitdef 1]
type = hitdef
attr = A, SA
guardflag = MA
trigger1 = animelem = 3
;trigger2 = animelem = 4
;trigger3 = animelem = 5
;ID = 1301
;noChainID = 1301
sparkno = S9992
sparkxy = 0,-76
animtype = up
ground.type = hard
ground.velocity = -3,-17
air.velocity = -3,-17
yaccel = .7
damage = 81,4
hitsound = S8000,2
ground.hittime = 15
air.hittime = 25
pausetime = 14,14
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 1401, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;--------------------------------------------------------
;Upperforce c
[Statedef 1402]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

[State 1402, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1401
ID = 1401
pos = 17,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -2
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =
;supermove = 0
;pausemove = 0

[State 1402, velset]
type = velset
trigger1 = animelem = 4
x = 1.2
y = -10

[State 1402, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = Vel x >= 0.5
x = -0.2

[State 1402, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
physics = A

[State 1402, air hitdef 1]
type = hitdef
attr = A, SA
guardflag = MA
trigger1 = animelem = 3
;trigger2 = animelem = 4
;trigger3 = animelem = 5
;ID = 1301
;noChainID = 1301
sparkno = S9992
sparkxy = 0,-76
animtype = up
ground.type = hard
ground.velocity = -1,-20
air.velocity = -1,-20
yaccel = .7
damage = 102,5
hitsound = S8000,2
ground.hittime = 15
air.hittime = 25
pausetime = 14,14
envshake.time = 12
envshake.freq = 80
envshake.ampl = -2
fall = 1

[State 1402, end]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;-----------------------------------------------------
;powerforce x
[Statedef 1500]
type = S
movetype = A
physics = S
poweradd = 50
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1500, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 2

[State 1500, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1500, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 1500, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3

[State 1500, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 30,5
hitsound = S8000,2
ground.hittime = 15
pausetime = 10, 10
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 1500, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 43,5
hitsound = S8000,2
ground.hittime = 15
pausetime = 14,14
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 1500, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1100
elem = 8

[State 1500, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1500, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
;powerforce y
[Statedef 1501]
type = S
movetype = A
physics = S
poweradd = 55
velset = 0,0
anim = 1101
ctrl = 0
sprpriority = 2

[State 1501, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 4

[State 1501, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1501, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 1501, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3

[State 1501, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 35,5
hitsound = S8000,2
ground.hittime = 15
pausetime = 10, 10
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 1501, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 50,6
hitsound = S8000,2
ground.hittime = 15
pausetime = 15,15
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 1501, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1101
elem = 8

[State 1501, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1501, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
;powerforce z
[Statedef 1502]
type = S
movetype = A
physics = S
poweradd = 50
velset = 0,0
anim = 1102
ctrl = 0
sprpriority = 2

[State 1502, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0
x = 6

[State 1502, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
player = 45, 25

[State 1502, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1502, swoosh 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3

[State 1502, air hitdef 1]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 4
animtype = hard
sparkno = S9991
sparkxy = 0,-86
ground.type = hard
ground.velocity = -1,0
air.velocity = -1,-3
damage = 40,6
hitsound = S8000,2
ground.hittime = 15
pausetime = 11, 11
envshake.time = 8
envshake.freq = 60
envshake.ampl = -4

[State 1502, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 7
animtype = diagup
sparkno = S9992
sparkxy = 0,-76
ground.type = hard
ground.velocity = -6,-6
air.velocity = -6,-6
damage = 60,7
hitsound = S8000,2
ground.hittime = 15
pausetime = 16,16
fall = 1
envshake.time = 10
envshake.freq = 60
envshake.ampl = -5

[State 1502, 3]
type = ChangeAnim
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(8) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 1102
elem = 8

[State 1502, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 1502, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------
[Statedef 1600]
type = S
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 9
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 1.5
y = 0
;ignorehitpause =
;persistent =

[State 1300, air hitdef 2]
type = hitdef
attr = S, SA
guardflag = MA
trigger1 = animelem = 3
ID = 1302
noChainID = 1302
animtype = diagup
ground.type = hard
ground.velocity = -20,-3
air.velocity = -6,-5
damage = 30,5
hitsound = S8000,2
ground.hittime = 15
pausetime = 14,14
fall = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 1300, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
[Statedef 1700]
type = A
movetype = A
physics = N
poweradd = 50
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = Velmul
trigger1 = animelem = 1
x = 0
y = -3
;ignorehitpause =
;persistent =

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500,1


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500,2



[State 0, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 1020
projanim = 1020
projscale = .3,.3
projremove = 1
projremovetime = -1
velocity = 7,5
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-80
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,0
pausetime = 5,5
guard.pausetime = 0,0
sparkno = 0
guard.sparkno = 0
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slide = -2,0
guard.slide = -1
ground.slidetime = 0
guard.slidetime = 0
ground.hit = 0
guard.hit = 0
ground.hittime = 0
guard.hittime = 0
air.hittime = 20
ground.velocity = -1,3
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall = 0

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 5
ProjID = 1020
projanim = 1020
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 7,10
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-80
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,0
pausetime = 5,5
guard.pausetime = 0,0
sparkno = 0
guard.sparkno = 0
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slide = -2,0
guard.slide = -1
ground.slidetime = 0
guard.slidetime = 0
ground.hit = 0
guard.hit = 0
ground.hittime = 0
guard.hittime = 0
air.hittime = 20
ground.velocity = -1,3
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 0


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
