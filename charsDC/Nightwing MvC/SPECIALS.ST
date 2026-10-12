
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdback"
x = -1.0

[State 50, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdfwd"
x = 2.5

[State 660, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -10

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 1
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 41))

[State 50, 2]
type = null;ChangeAnim
trigger1 = Var(3) = 1 && Anim != 42 && vel x >= 0
value = 42

;
;Super Jump adapted from Loganir's
[Statedef 1045]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 1045, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1045, d]
type = removeexplod
trigger1 = !time
id = 104


[State 1045, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 1045, 2]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = var(42) = -1
sysvar(1) = 1

[State 1045, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 1045, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * 1.35
y = 1.65*const(velocity.jump.y)

[State 1045, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)


[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30


[State 1045, 7]
type = Explod
trigger1 = time = 0
anim = 61
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1


[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 1045, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 1045, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 421


;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0

;


;
; Special Attacks
; 
; Special1 (F,D,DF + P)
;   (Move description goes here)
;
; (etc.)
;
;
;
;--
;Batrang 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 80
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1000, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 1000, 2]
type = VarSet
trigger1 = time = 0
fvar(10) = ifelse(command = "z", 8.0, ifelse(command = "y", 5.0, 2.0))
velocity = (-2.0 + fvar(10)), (-0.8 + (const(movement.yaccel)* time))


[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 2
stateno = 1050
ID = 1050
helpertype = Normal
postype = p1
pos = 35, -58
ownpal = 1
;size.xscale = 1
;size.yscale = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, width]
type = Width
trigger1 = AnimElem = 3, >= 0
value = 45,0

;-
; Batarang Catch
[Statedef 1040]
type = S
movetype = H
physics = S
velset = 0
ctrl = 0
anim = 1010

[State 1040]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,5

[State 1040, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(2) = 0
value = 1

[State 1040, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 1040, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--
; Batarang Helper
[Statedef 1050]
type = A
movetype = A
physics = N
velset = 12.55
juggle  = 4
ctrl = 0
anim = 1050
poweradd = 20
sprpriority=1

[State 1040, yellow Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 300, 300, 300
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 1050]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,3

[State 1050, Boomerang]
type = VelAdd
trigger1 = 1
x = -0.3

[State 1050, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1051
ignorehitpause = 1

[State 1050, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1


[State 1050, HitDef]
type = HitDef
trigger1 = animelem = 4 && hitcount < 2
attr = A, SP
damage    = 32,5
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = 2
guard.sparkno = 3
sparkxy = -10,0
hitsound  = S2,1
guardsound = S3,0
guard.sparkno = s911
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
id = 1050

[State 1050, 5 CatchDef]
type = HitDef
trigger1 = RootDist X <= 20 && RootDist X >= -20
trigger1 = root,Statetype != A && root,Movetype = I
trigger1 = Vel X <= 0
attr = A, SP
damage = 0
animtype = Hard
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = 10, 0
hitsound   = 12,0
ground.type = High
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
air.animtype = Back
;air.velocity = -2.5,-5
;air.juggle = 3
affectteam = F
p2stateno = 1040
p2getp1state = 0
ID = 9999
numhits = 0
givepower = 40


[State 1050]
type = DestroySelf
trigger1 = BackEdgeBodyDist <= -50
trigger2 = time = 300
trigger3 = Time >= 50
trigger3 = RootDist X >= -10
trigger3 = RootDist X <= 10
trigger3 = RootDist Y >= 0
trigger3 = RootDist Y <= 150

;--
;Batarang Hit override
[Statedef 1051]
type    = S
movetype = A
physics = N
anim = 1051

[State 1051, VelSet]
type = VelSet
trigger1 = Time = 5
x = -4
y = -2

[State 1051]
type = VelAdd
trigger1 = 1
y = 0.2

[State 1051]
type = DestroySelf
trigger1 = AnimTime = 0

;--
;Batrang 2
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1010, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 1010, Helper]
type = Helper
trigger1 = AnimElem = 2
stateno = 1060
ID = 1060
helpertype = Normal
postype = p1
pos = 35, -58
ownpal = 1
;size.xscale = 1
;size.yscale = 1

[State 1010, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
; Electric Batarang Helper
[Statedef 1060]
type    = S
movetype = A
physics = N
anim = 1060
velset = 10

[State 1060]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,3

[State 1060]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3041,7

[State 1060, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1061
ignorehitpause = 1

[State 1060, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1060, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = target, stateno = 1066
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 1060, Blue Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 0, 50, 300
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 1060, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 35,5
priority = 3, Hit
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound   = s2,1
guardsound = S3,0
sparkno = 3
sparkxy = 20,-20
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0
p1stateno = 1061
p2stateno = ifelse(p2statetype != A, 1066, 1550)

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = movecontact && !moveguarded
value = S3041,0+random%6

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = movecontact && !moveguarded
value = S191,1

[State 1060, ChangeState]
type = ChangeState
trigger1 = movecontact || moveguarded
value = 1061
ctrl = 0

[State 1060, ]
type = DestroySelf
trigger1 = Vel X < 0
trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
trigger1 = Pos Y = [parent, Pos Y - 80, parent, Pos Y - 30]
trigger2 = BackEdgeBodyDist <= -120 || FrontEdgeBodyDist <= -120

;--
; Electric Batarang Hit
[Statedef 1061]
type    = S
movetype = A
physics = N
anim = 1061

[State 1060, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = p2stateno = 1550 || p2stateno = 1066
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 1061, VarSet]
type = VarSet
trigger1 = time = 1
v = 14
value = 0

[State 1061, VelSet]
type = VelSet
trigger1 = Time = 5
x = -4
y = -2

[State 1061]
type = VelAdd
trigger1 = 1
y = 0.2

[State 1061]
type = DestroySelf
trigger1 = AnimTime = 0

;--
; Hit by Electric Batarang
[Statedef 1066]
type    = S
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 1066, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 1066

[State 1066, PosSet]
type = PosSet
trigger1 = time = 1
y = 0

[State 1065, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 1065, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 1065, Electrocuted_Anim]
type = Changestate;Anim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 27696

[State 1065, 6]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1


;--
;Batrang 3
[Statedef 1020]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1020, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 1020, Helper]
type = Helper
trigger1 = AnimElem = 2
stateno = 1070
ID = 1070
helpertype = Normal
postype = p1
pos = 35, -58
ownpal = 1
;size.xscale = 1
;size.yscale = 1

[State 1020, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
; Explosive Batarang Helper
[Statedef 1070]
type    = S
movetype = A
physics = N
anim = 1070
velset = 10

[State 1070]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,3

[State 1070, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1071
ignorehitpause = 1

[State 1070, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1070, orange Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 300, 150, 0
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 1070, explosion fX]
type = Explod
trigger1 = (movecontact || moveguarded) && numexplod(1325) < 1
anim = 1075
ID = 1075
bindtime = 0
pos = 0, 0
postype = p1
ownpal = 0
ontop = 1

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = (movecontact || moveguarded)
value = S1070,0

[State 1070, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 80,10
priority = 3, Hit
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S9,3
guardsound = S3,0
sparkno = 3
sparkxy = 20,-20
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 1
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1070, ]
type = DestroySelf
trigger1 = Vel X < 0
trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
trigger1 = Pos Y = [parent, Pos Y - 80, parent, Pos Y - 30]
trigger2 = BackEdgeBodyDist <= -120 || FrontEdgeBodyDist <= -120
trigger3 = movecontact || moveguarded

;--
; Explosive Batarang Hit
[Statedef 1071]
type    = S
movetype = A
physics = N
anim = 1071

[State 1071, VelSet]
type = VelSet
trigger1 = Time = 5
x = -4
y = -2

[State 1071]
type = VelAdd
trigger1 = 1
y = 0.2

[State 1071]
type = DestroySelf
trigger1 = AnimTime = 0

;
;Diagonal Batarang
[Statedef 1080]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1080
ctrl = 0

[State 1080, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 6004
bindtime = -1
pos = -30, -60
ontop = 1

[State 1080, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 6004
bindtime = -1
pos = 40, -60
ontop = 1

[State 1070]
type = PlaySnd
trigger1 = AnimElem = 2
value = S12,3

[State 1080, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 1080, Batarang]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Batarang"
ID = 1085
pos = 30,-80
postype = p1
stateno = 1085
ownpal = 1

[State 1080, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-
;Helper
[Statedef 1085]
type    = S
movetype = A
physics = N
anim = 1050
velset = 10,-3

[State 1050, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1051
ignorehitpause = 1

[State 1040, yellow Afterimage]
type = AfterImage
trigger1 = time = 1
length = 21
PalBright = 30, 30, 30
PalContrast = 300, 300, 300
Paladd = 0,0,0
PalMul = .95,.95,.50
FrameGap = 2
Trans = Add1
time = -1

[State 1085, Boomerang]
type = VelAdd
trigger1 = Pos y <= 60
x = -0.2
y = 0.1

[State 1085, VelSet]
type = Veladd
trigger1 = Pos y > -60
y = -0.35

[State 1070]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12,2

[State 1085, HitDef]
type = HitDef
trigger1 = animelem = 4 && hitcount < 2
attr = A, SP
damage    = 32,5
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,9
sparkno = 2
guard.sparkno = 3
sparkxy = -10,0
hitsound  = S2,1
guardsound = S3,0
guard.sparkno = s911
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
id = 1085

[State 1085, 5 CatchDef]
type = HitDef
trigger1 = RootDist X <= 20 && RootDist X >= -20
trigger1 = root,Statetype != A && root,Movetype = I
trigger1 = Vel X <= 0
attr = A, SP
damage = 0
animtype = Hard
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = 10, 0
hitsound   = S12,5
ground.type = High
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
air.animtype = Back
;air.velocity = -2.5,-5
;air.juggle = 3
affectteam = F
p2stateno = 1040
p2getp1state = 0
ID = 9999
numhits = 0
givepower = 40

[State 1002, ]
type = DestroySelf
trigger1 = BackEdgeBodyDist <= -50
trigger2 = time = 300
trigger3 = Time >= 50
trigger3 = RootDist X >= -10
trigger3 = RootDist X <= 10
trigger3 = RootDist Y >= 0
trigger3 = RootDist Y <= 150

;
; Special 2 b
[StateDef 1100]
anim = 1100
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 20

[State 200, vel]
type = Velset
trigger1 = Animelem = 2
trigger2 = Animelem = 3
trigger3 = Animelem = 4
x = 5
Y= -6

[State 200, vel]
type = Velset
trigger1 = Animelem = 6
Y= 0
X= 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1,2

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 50,10
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 40
ground.velocity = -1,-10
air.velocity = -1,-4
air.velocity = -2

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 8
attr = S, NA
damage = 50,10
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 12,12
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
air.type = trip
ground.slidetime = 20
ground.hittime  = 20
air.velocity = -2,20
air.velocity = -2
Fall = 1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-
;SPECIAL03_B
[Statedef 1210]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 1200
juggle = 15
poweradd = 200

[State 210,2]
type = Playsnd
trigger1 = time = 4
value = S8,3

[State 210,2]
type = velset
trigger1 = time >= 4
x = 5

[State 210,2]
type = velset
trigger1 = time >= 10
x = 12

[State 210,2]
type = veladd
trigger1 = time = 16
x = .8


[State 210,2]
type = velset
trigger1 = time = 20
x = 0.1

[State 1002]
Type = StateTypeSet
Trigger1 = time > 5
statetype = A 

[State 210,2]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
priority = 3, Hit
attr = S,NA			;STAND / NORMAL ATTACK
hitflag = MA			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = Medium		;2p ANIM
air.animtype = Back		;2p ANIM
ground.type = high
damage = 60,10
getpower = 80
pausetime = 12,12
guard.pausetime = 12,8
ground.slidetime = 15
ground.hittime = 15
air.hittime = 5
guard.hittime = 17
guard.ctrltime = 17
ground.velocity = -7,0
air.velocity = -2,-4
guard.velocity = -12
airguard.velocity = -2,-4
air.juggle = 16
ground.cornerpush.veloff = -18
guard.cornerpush.veloff = -18
sparkxy = 10,-55
juggle = 10
hitsound = S2,1
guardsound = 6,0
sparkno = 2
guard.sparkno = 3
air.fall = 1
fall = 0
fall.recover = 0

[State 210,3]
type = ChangeState
trigger1 = animtime = 0
value = 10
ctrl = 1

;Unused stuff so far--
; energy uppercut
;[Statedef 1050]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 65
ctrl = 0
velset = 9,0
anim =1050
sprpriority = 2

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 1
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 5
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 10
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 15
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 20
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 25
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 30
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 35
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 40
value = 0, 4

[State 1050, 1]
type = null;PlaySnd
trigger1 = animelem = 45
value = 0, 4

[State 1050, 3]
type = null;HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger6 = AnimElem = 14
trigger6 = AnimElem = 16
trigger6 = AnimElem = 18
trigger6 = AnimElem = 20
attr = S, SA
animtype  = Up
damage    = 15,12
guardflag = MA
pausetime = 12,12
sparkno = 2
guard.sparkno = 3
sparkxy = -10,-70
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5, -7
air.velocity = -5.5,-6
yaccel = .45
fall = 1


[State 1050, 4]
type = null;Velset
trigger1 = AnimElem = 2
x = 0

[State 1050, 5]
type = null;ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
;Eletric Wave
[Statedef 1300]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1300
ctrl = 0

[State 1300, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1301
postype = p1
bindtime = -1
pos = 78,-5
ontop = 1
removeongethit = 1

[State 1300, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Electric wave"
stateno = 1350
ID = 1350
pos = 73,3
postype = p1
ownpal = 1

[State 1300, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;--
; Eletric Wave helper
[Statedef 1350]
type    = S
movetype = A
physics = N
anim = 1350
velset = 6

[State 1300,sound]
type = Playsnd
trigger1 = time = 0
value = S191,5

[State 1350, PlaySnd]
type = PlaySnd
trigger1 = movecontact || moveguarded
value = S3041,0+random%6

[State 1350, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1351
ignorehitpause = 1

[State 1350, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1350, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = p2stateno = 1550 || p2stateno = 1066
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 1350, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 100,10
priority = 3, Hit
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = 3
sparkxy = 20,-20
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
p2stateno = ifelse(p2statetype != A, 1066, 1550)
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1350, End]
type = DestroySelf
trigger1 = Vel X < 0
trigger1 = Pos X = [parent, Pos X - 30, parent, Pos X + 30]
trigger2 = BackEdgeBodyDist <= -120
trigger3 = movecontact || moveguarded


;--
; Eletric Wave helper
[Statedef 1351]
type    = S
movetype = A
physics = N
anim = 1351
velset = 6

[State 1351, End]
type = DestroySelf
trigger1 = 1


;
;eletric Shield
[StateDef 1400]
anim = 1400
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20

[State 1400, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1400, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,2

[State 1060]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3041,7

[State 1060]
type = PlaySnd
trigger1 = AnimElem = 4
value = S3041,0+random%6

[State 1010, FX]
type = Explod
trigger1 = AnimElem = 4
anim = 1450
pos = 0,0
sprpriority = 3
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
ontop = 1

[State 1400, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = p2stateno = 1550 || p2stateno = 1066
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 1400, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 120,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 12,12
hitsound = S191,6
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -3,-5
air.velocity = -2
p2stateno = 1550

[State 1400, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
;Shock
[StateDef 1500]
anim = 1500
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20

[State 1500, VelSet]
type = VelSet
trigger1 = animelem = 3 || animelem = 4
x = 5

[State 1500, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1500, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3041,8

[State 1500, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1301
postype = p1
bindtime = -1
pos = 106,-84
ontop = 1

[State 1500, eletricuted fX]
type = Explod
trigger1 = !numexplod(1065)
trigger1 = p2stateno = 1550
anim = 1065
ID = 1065
bindtime = 100
pos = -60, -100
postype = p2
ownpal = 0
ontop = 1

[State 1500, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 60,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 12,12
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15
air.velocity = -4, -5
p2stateno = 1550
fall= 0

[State 1500, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
; Hit by shock
[Statedef 1550]
type    = A
physics = N
movetype = H
velset = ifelse( P2Dist x < 0 , 2, -2), -5

ctrl = 0

[State 1550, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value =  1550

[State 1350, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3041,0+random%6

[State 1550, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 1550, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 1550, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 1550, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;
; Knee Stomp 1
[Statedef 1600]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 80
velset = 0,0
anim = 1600
ctrl = 0

[State 1600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 1600, CS]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0
value = 1601

[State 1600, NoPush]
type = PlayerPush
trigger1 = 1
value = 0


;
; Knee Stomp 2 - Going Up!
[Statedef 1601]
type    = A
movetype= I
physics = N
juggle  = 4
velset = 0,0
anim = 1601
ctrl = 0
sprpriority = 2


[State 1601, ]
type = PlaySnd
trigger1 = time = 0
persistent = 0
value = S3,5

[State 1601, 0]
type = ScreenBound
trigger1 = 1
movecamera = 0

[State 1601, 1]
type = VelSet
trigger1 = 1
y = -15.5

[State 1601, Stomp]
type = ChangeState
trigger1 = Screenpos Y < -25
value = 1602

[State 1601, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

;--
; Knee Stomp 3 - Stomp!
[Statedef 1602]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,8
anim = 1602
ctrl = 0
sprpriority = 2

[State 1602, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1602, 0]
type = PosAdd
trigger1 = Time = 0
x = P2Dist X

[State 1602, 0]
type = ScreenBound
trigger1 = 1
movecamera = 0

[State 1602, 1]
type = HitDef
trigger1 = Time = 1
attr = S, SA
animtype  = Med
damage    = 100,1
priority  = 7
guardflag = MA
pausetime = 4,8
sparkno = 2
sparkxy = -20,0
hitsound   = s2,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,4
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 1602, Bounce]
type = ChangeState
trigger1 = movecontact
value = 1603

;
;Head Stomp 4 - Bounce Away
[Statedef 1603]
type    = A
physics = N
ctrl = 0
velset = 0,0
anim = 1603

[State 1603, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1603, 6]
type = VelSet
trigger1 = Time = 5
x = 0
y = 3

[State 1603, 7]
type = ChangeState
trigger1 = Time = 16
value = 1604
ctrl = 0

;--
[Statedef 1604]
type    = A
physics = A

[State 1604, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1604, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 1604, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -10

[State 1604, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 1604, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 1
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 41))

[State 1604, 2]
type = null;ChangeAnim
trigger1 = Var(3) = 1 && Anim != 42 && vel x >= 0
value = 42

;
; Esgrim
[StateDef 1700]
type = S
movetype = A
physics = S
anim = 1700
ctrl = 0
velset = 0,0
poweradd = 20

[State 1700, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1700, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = S1700,2

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = S1700,1

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 7
value = S1700,0

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 7
value = 1,1

[State 1700, grunt]
type = Velset
trigger1 = Animelem = 5
trigger2 = Animelem = 7
x = 3

[State 1700, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 6
attr = S, NA
damage = 40,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 4,4
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = light
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.velocity = -2

[State 1700, HitDef]
type = HitDef
trigger1 = animelem = 8
attr = S, NA
damage = 50,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = light
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5
air.velocity = -2
fall = 1

[State 1700, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
; Esgrim
[StateDef 1710]
anim = 1710
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20

[State 1710, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = S1700,2

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 9
value = S1700,1

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 7
value = S1700,0

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 11
value = S1700,3

[State 1700, grunt]
type = PlaySnd
trigger1 = animelem = 18
value = S0,1

[State 1710, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 1710, grunt]
type = PlaySnd
trigger1 = animelem = 7
value = 1,1

[State 1710, grunt]
type = PlaySnd
trigger1 = Time = 80
value = 1,2

[State 1710, grunt]
type = Velset
trigger1 = Animelem = 5
trigger2 = Animelem = 7
trigger3 = Animelem = 9
trigger4 = Animelem = 18
x = 4

[State 1710, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
attr = S, NA
damage = 25,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 4,4
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -1
air.velocity = -2

[State 1710, HitDef]
type = HitDef
trigger1 = animelem = 19
attr = S, NA
damage = 50,20
priority = 2                          ; CHANGE THIS
guardflag = MA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5
air.velocity = -2
fall = 1

[State 1710, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;
; Crouching Medium Kick
; CNS difficulty: easy
[StateDef 1800]
type = S
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 1800
poweradd = 20
sprpriority = 2

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1,18
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1800, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1850
bindtime = 13
pos = 0,0
ontop = 1
scale = 1.5, 1

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1800,0


[State 1800, 5]
type = ChangeState
value = 1801
trigger1 = animtime = 0
CTRL = 1


[StateDef 1801]
type = S
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 1801
poweradd = 2
sprpriority = 2

[State 1800, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
hitflag = MAF        ;HLAFD+-
guardflag = LA         ;HLA
affectteam = E          ;B,E,F
animtype = Hard
air.animtype = hard
damage = 100,20
pausetime = 5,5
sparkno = 10
sparkxy = -0,-50
hitsound = S2,2
guardsound = S3,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slide
guard.slide
ground.hit
guard.hit
air.hittime = 20
guard.ctrl
guard.dist = 320
yaccel = 0.5
ground.slidetime = 20		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -9
guard.velocity = 0
air.velocity = 0,0
sprpriority = 1
p1getp2facing = 0


[State 1800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1,11116
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = p2dist x -140
y = -100

[State 1800, PosAdd]
type = Velset
trigger1 = AnimElem = 4
x = 20
y = 10

[State 1800, 5]
type = ChangeState
trigger1 = Pos Y >= 0
VALUE = 50
CTRL = 1
