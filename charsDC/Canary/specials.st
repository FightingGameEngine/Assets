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
;   beam
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
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 174,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "missi"
ID = 1010
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1001
ID =  1001
pos = 20,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 1000, changestate]
type = ChangeState
trigger1 = time > 50
trigger2 = time >  10 && numhelper(1010)=0
value = 1001
ctrl = 0

[StateDef 1001]
type = S
movetype = I
physics = S
anim = 1009
ctrl = 0
velset = 0,0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1010]
type = A
movetype = A
physics = N
anim = 1010
velset = 15,0
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add




[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT



[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 50,1
guardflag = MA
hitflag = MAF
pausetime = 6,6
hitsound = s2,1
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 6
envshake.ampl = 3



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100


; Special 1
[StateDef 1050]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VelAdd]
type = VelAdd
trigger1 = time < 42
y = -0.47

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 174,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1002
ID =  1002
pos = -13,-3
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "missi"
ID = 1055
stateno = 1055
pos = 0,30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1000, changestate]
type = ChangeState
trigger1 = time > 100
trigger2 = time >  10 && numhelper(1055)=0
value = 1051
ctrl = 0

[StateDef 1051]
type = A
movetype = I
physics = A
anim = 1051
ctrl = 0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1



[Statedef 1055]
type = A
movetype = A
physics = N
anim = 1011
velset = 10,6
sprpriority = 99

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add


[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 50,1
guardflag = MA
hitflag = MAF
pausetime = 6,6
hitsound = s2,1
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -9, 9
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 6
envshake.ampl = 3

[State 1055, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100



[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 12


[State 0, VelSet]
type = Veladd
trigger1 = animelem = 4
x = 10
y = -2
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = Veladd
trigger1 = animelem = 6
x = 6
y = 0
;ignorehitpause = 
;persistent = 

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause = 
;persistent = 



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = random<=400
value = 200,3

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = A,NA
damage = 75
animtype = hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s9995
sparkxy = -10, -33
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -12,1
air.velocity = -12,10
air.fall = 1
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
fall = 1




[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 0


[StateDef 1110]
type = A
movetype = A
physics = A
anim = 1110
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 8
y = -1
;ignorehitpause = 
;persistent = 


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = random<=400
value = 200,3

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NA
damage = 75
animtype = hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s9995
sparkxy = -10, -33
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -12,1
air.velocity = -12,10
air.fall = 1
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
fall = 1




[State 1100, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 0


[StateDef 1200, sommersault]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "anti_y"
v = 41
value = 2


[State 0, VarSet]
type = VarSet
triggerall = command = "anti_x"
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "anti_z"
trigger2 = var(59)
v = 41
value = 4


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 200,6

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0.3 + var(41)
y = -8 - var(41)


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 70,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = s9995
sparkxy = -15, -95
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -1,-9
air.type = Low
air.hittime = 20
air.velocity = -1,-9
envshake.time = 7
envshake.ampl = 4
fall = 1


[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
y = 0.5

[State 0, VelMul]
type = Velset
trigger1 = time = 25
x = 0
;ignorehitpause = 
;persistent = 



[State 0, ChangeState]
type = ChangeState
triggerall = animtime = 0
trigger1 = vel y >= 0;animtime = 0
value = 948
ctrl = 0

;new strike fast
[Statedef 1400]
type = A
movetype = I
physics = N
anim = 1400
velset = 0,0
ctrl = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1200,1]
type = VelSet
trigger1 = animtime = 0
x = -12
y = const(velocity.jump.y)*1.25

[State 1200, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1401
ctrl = 1

[Statedef 1401]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1401

[State 1201, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1201, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1201, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1201, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1201, 4]
type = ChangeState
value = 1402
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1201, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1402]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1402
velset = 0,0

[State 1202, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 200,2

[State 1202, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1403

[Statedef 1403]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 20, 10
anim = 1403

[State 1203, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1203, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1203, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = s9994
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6,-5
guard.velocity = -6
air.velocity = -5,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
;p2getp1state = 1

;----------------------------------------------------------

;Anti-Air Strike B

[Statedef 1410]
type = A
movetype = I
physics = N
anim = 1400
velset = 0,0
ctrl = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1210,1]
type = VelSet
trigger1 = animtime = 0
x = 6
y = const(velocity.jump.y)*1.75

[State 1210, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1411
ctrl = 1

[Statedef 1411]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1401

[State 1211, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1211, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1211, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1211, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1211, 4]
type = ChangeState
value = 1412
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1211, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1412]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1402
velset = 0,0

[State 1212, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1212, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 200,2

[State 1212, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1413

[Statedef 1413]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 15, 10
anim = 1403

[State 1213, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1213, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1213, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = s9994
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-3
guard.velocity = -7
air.velocity = -4,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
;p2getp1state = 1

;------------------------------------------------------------
 ;Anti-Air Strike C

[Statedef 1420]
type = A
movetype = I
physics = N
anim = 1400
velset = 0,0
ctrl = 0

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1220,1]
type = VelSet
trigger1 = animtime = 0
x = 18
y = const(velocity.jump.y)*2.5

[State 1220, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1421
ctrl = 1

[Statedef 1421]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1401

[State 1221, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1221, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1221, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1201, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1221, 4]
type = ChangeState
value = 1422
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1221, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1422]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1402
velset = 0,0

[State 1222, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1222, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 200,2

[State 1222, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1423

[Statedef 1423]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 25, 7
anim = 1403

[State 1223, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1223, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1223, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = s9994
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-3
guard.velocity = -7
air.velocity = -4,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
;p2getp1state = 1
;-------------------------------------------------------------------------------
;========================<SLIDING ARROW>=======================
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 70 * !var(20)
sprpriority = 2
facep2 = 1

[State 1000, Velocity]
type = VelSet
trigger1 = AnimElemTime(3) >= 0
x = 4

[State 1000, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 4
value = 0, 3
channel = 1

[State 1000, Slide Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8, 0

[State 1000, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) < 0 
player = 25,0

[State 1000, StateTypeSet: Crouch]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = C       
physics = C

[State 1000, Hit] 
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = L
hitflag = MF
hitsound = S2,3
guardsound = S130,0
pausetime = 0,0
guard.pausetime = 12,12
sparkno = s9993
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = 30 + 0 * (var(35) := 63), var(36) := 0
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = 0
air.velocity = -1,-7
guard.velocity = -11
;airguard.velocity = -8, -3
;airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 0
kill = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1000, Success Leg Takedown]
type = ChangeState
trigger1 = MoveHit = 1
value = 1301

[State 1000, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 12
value = 1305

;Success 1st
[Statedef 1301]
type = C
movetype = A
physics = C
;anim = 1001
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
;facep2 = 1

[State 1001, Velocity]
type = VelSet
trigger1 = AnimElemTime(3) >= 0
x = IfElse(PrevStateNo = 1300,4,IfElse(PrevStateNo = 1310,4.5,5))

[State 1001, Hit: Leg Takedown] 
type = HitDef
trigger1 = Time = 0 && (EnemyNear, StateType = S)
attr = C, SA
damage = 0
priority = 4, hit
animtype = Up
guardflag = L
hitflag = MF
hitsound = -1
guardsound = -1
pausetime = 0,0
p1stateno = 1302
p2stateno = 1303
p2getp1state = 1
numhits = 0
sparkNo = -1
guard.sparkNo = -1
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
p2facing = 1
kill = 0

[State 1001, Hit: P2 Not Stand Type] 
type = HitDef
;trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0 && (EnemyNear, StateType != S)
attr = C, SA
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 0, 0
guardflag = L
hitflag = MF
hitsound = -1
guardsound = -1
pausetime = 12,12
guard.pausetime = 12,12
sparkNo = -1
guard.sparkNo = -1
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -1, -7
air.velocity = -1, -7
guard.velocity = -11
;airguard.velocity = -8, -3
;airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 1
fall.recover = 0
numhits = 0

[State 1001, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= IfElse(PrevStateNo = 1300,12,IfElse(PrevStateNo = 1310,16,21)) 
value = 1305

;Leg Takedown 
[Statedef 1302]
type    = S
movetype= A
physics = N
anim = 1301
poweradd = 50 * !var(20)
velset = 0,0
sprpriority = -1

[State 0, Explod]
type = Explod
trigger1 = time= 0
anim = 1306
ID = 1306
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 8
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 1002, Voice]
type = PlaySnd
trigger1 = AnimElemTime(8) = 8
value = 177, 1
channel = 0

[State 1002, Hit Snd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 8
value = 2, 2
channel = 1

[State 1002, Slam Snd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 8
value = 175, 0

[State 1002, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) < 0
pos = ceil(45 * const(size.xScale)), 0

[State 1002, Width]
type = Width
trigger1 = !Time
edge = 60,20

[State 1002, Width]
type = Width
trigger1 = AnimElemTime(8) = 8
edge = 70,20

[State 1002, P2 Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(8) = 8
value = -70

[State 1002, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(8) = 8
value = 35

[State 1002, Juggle]
type = VarAdd
trigger1 =  AnimElemTime(8) = 8
var(15) = 1
ignoreHitPause = 1

[State 1002, Juggle]
type = VarSet
trigger1 = AnimElemTime(8) = 8
var(16) = 1
ignoreHitPause = 1

[State 1002, Impact Dust]
type = Helper
trigger1 = AnimElemTime(8) = 8
helpertype = Normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = ceil(100 * const(size.xscale)), 0
ownpal = 1

[State 1002, Velocity]
type = VelSet
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(13) < 0
x = -.75

[State 1002, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = -14

[State 1002, End]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1

;Leg Takedown(Target)
[Statedef 1303]
type    = A
movetype= H
physics = N
velset = 0,0


[State 1003, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 1302

[State 1003, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
persistent = 1

[State 1003, AngleSet]
type = AngleSet
trigger1 = !Time
value = 0

[State 1003, AngleAdd]
type = AngleAdd
trigger1 = AnimElemTime(3) >= 0
value = 8

[State 1003, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(3) >= 0

[State 1003, End]
type = ChangeState
trigger1 = !Animtime
value = 1304

;Leg TakeDown(Target 2nd)
[Statedef 1304]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 1004, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1004, On Ground]
type = PosSet
trigger1 = Time = 1
y = 0

[State 1004, PosAdd]
type = PosAdd
trigger1 = Time = 1
x = const(size.mid.pos.y) 

[State 1004, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 5110

[State 1004, EnvShake]
type = EnvShake
trigger1 = Time = 1 
time = 14
freq = 120
ampl = 4

[State 1004, End]
type = SelfState
trigger1 = Time >= 45
value = IfElse(Alive,5120,5150)

;Miss
[Statedef 1305]
type    = C
movetype = I
physics = C
anim = 1305
ctrl = 0
sprpriority = 2

[State 1005, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

[StateDef 8103]
type = A
anim = 9999
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod


;---
[StateDef 8110]
type = A
anim = 9999
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod

