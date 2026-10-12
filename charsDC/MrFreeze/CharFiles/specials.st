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

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S10000,1000
channel = 0

[State 1000, beam]
type = Helper
trigger1 = AnimElemTime(6) = 10
helpertype = normal
name = "beam"
ID = 1050
pos = 90,-120
postype = p1
stateno = 1050
ownpal = 1
size.xscale = 1
size.yscale = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 1
anim = 1051
pos = 120,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10+Var(40),10
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 0,3,2)
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12
guard.velocity = -5
air.velocity = -12,4
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Special 1
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S10000,1000
channel = 0

[State 1000, beam]
type = Helper
trigger1 = AnimElemTime(6) = 10
helpertype = normal
name = "beam"
ID = 1050
pos = 90,-120
postype = p1
stateno = 1050
ownpal = 1
size.xscale = 1
size.yscale = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1051
pos = 100,-125
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10+Var(40),10
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 0,3,2)
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12
guard.velocity = -5
air.velocity = -12,-8
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------
;------------------------------
; Special 1
[StateDef 1002]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S10000,1000
channel = 0

[State 1000, beam]
type = Helper
trigger1 = AnimElemTime(6) = 10
helpertype = normal
name = "beam"
ID = 1050
pos = 50,-106
postype = p1
stateno = 1050
ownpal = 1
size.xscale = 1
size.yscale = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 1
anim = 1051
pos = 60,-106
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10+Var(40),10
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 0,3,2)
sparkxy = 0,-96
animtype = DiagUp
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-2
guard.velocity = -5
air.type = high
air.velocity = -2,-2
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100
snap = 70,-10

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 8
x = -4
y = -4
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 9
statetype = A
movetype = I
physics = A

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1
;------------------------------------------------------------------
; Special 1
[StateDef 1003]
type = A
movetype = A
physics = N
anim = 1003
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = S10000,1000
channel = 0

[State 1000, beam]
type = Helper
trigger1 = AnimElemTime(6) = 10
helpertype = normal
name = "beam"
ID = 1050
pos = 101,-56
postype = p1
stateno = 1050
ownpal = 1
size.xscale = 1
size.yscale = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 1
anim = 1051
pos = 101,-56
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10+Var(40),10
hitsound = S2,2
guardsound = S3,0
sparkno = IfElse(var(40) > 0,3,2)
sparkxy = 0,-96
animtype = DiagUp
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,-2
guard.velocity = -5
air.type = high
air.velocity = -4,-1
EnvShake.time = IfElse(var(40) > 0,10,0)
EnvShake.freq = 60
EnvShake.ampl = -8
EnvShake.phase = 100
snap = 70,0

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 7
x = -4
y = -4
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 7
statetype = A
movetype = I
physics = A

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;--------------------------------------------------------------
; Special 1 -- beam helper state
[StateDef 1050]
type = S
movetype = A
physics = N
;anim = 1050
ctrl = 0

[State 0, VarAdd]
type = VarSet
trigger1 = time = 0
v = 1    ;fv =
value = 0
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1050
[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 5
[State 0, AngleAdd]
type = AngleDraw
trigger1 = 1
value = 0

;---------------------------------StraigthFoward Ground
[State 1010, PosSet]
type = PosSet
triggerall = Parent, anim = 1000
trigger1 = 1
x = parent, Pos X - (-105 * parent, facing)
y = parent, Pos Y - (90)
;---------------------------------StraigthFoward Air
[State 1010, PosSet]
type = PosSet
triggerall = Parent, anim = 1002
trigger1 = 1
x = parent, Pos X - (-50 * parent, facing)
y = parent, Pos Y - (106)

;-------------------------------------DiagUp
[State 1010, PosSet]
type = PosSet
triggerall = Parent, anim = 1001
trigger1 = 1
x = parent, Pos X - (-85 * parent, facing)
y = parent, Pos Y - (116)
[State 0, AngleAdd]
type = AngleSet
triggerall = Parent, anim = 1001
trigger1 = 1
value = 30
;-------------------------------------DiagDown
[State 1010, PosSet]
type = PosSet
triggerall = Parent, anim = 1003
trigger1 = 1
x = parent, Pos X - (-96 * parent, facing)
y = parent, Pos Y - (56)
[State 0, AngleAdd]
type = AngleSet
triggerall = Parent, anim = 1003
trigger1 = 1
value = -20
;--------------------------------------------

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add ;none, add, addalpha, add1, sub

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1050,0
[State 1010, PlaySnd]
type = PlaySnd
trigger1 = time > 1 && time < 10
value = S1050,1

[State 0, Projectile]
type = Projectile
trigger1 = time > 1 && time < 10
ProjID = 1049
projanim = 1049
projremove = 1
projremovetime = -1
projremanim = 1048
velocity = 30,(ifelse((Parent, Anim = 1000) || (Parent, Anim = 1002) ,0,(ifelse((Parent, Anim = 1001), -18, 15))))
remvelocity = 0,0
projpriority = 9
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
projhits = 1
;miss = 1
attr = S,SA
hitflag = MA
guardflag = MA
damage = 5,5
guardflag = MA
pausetime = 0,0
;hitsound = S9,1
;guardsound = S3,0
;p2stateno = (IfElse(Var(1) = 7, 105050, -1));105050
sparkno = S1048
sparkxy = 0,0
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,-4
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 20
palfx.add = 0,50,240
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,7
palfx.invertall = 1
palfx.color = 0

[State 1010, DestroySelf]
type = ChangeState
trigger1 = AnimTime = 0; && movehit
value = 1051
[State 1010, DestroySelf]
type = DestroySelf
trigger1 = parent, Anim != [1000,1010]
;-------------------------------------------------------------------------------
; Special 1 -- beam helper state
[StateDef 1051]
type = S
movetype = A
physics = N

[State 0, Projectile]
type = Projectile
trigger1 = time = 1; && time < 10
ProjID = 1047
projanim = 1047
projremove = 1
projremovetime = -1
velocity = 30,(ifelse((Parent, Anim = 1000) || (Parent, Anim = 1002) ,0,(ifelse((Parent, Anim = 1001), -18, 15))))
remvelocity = 0,0
projpriority = 9
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
projhits = 1
;miss = 1
attr = S,SA
hitflag = MA
guardflag = MA
damage = 5,5
guardflag = MA
pausetime = 0,0
hitsound = S9,1
guardsound = S3,0
p2stateno = 105050 ;(IfElse(Var(1) = 7, 105050, -1));105050
sparkno = S9992
sparkxy = -500,-500
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,-4
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 20
palfx.add = 0,50,240
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,7
palfx.invertall = 1
palfx.color = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 1
;-------------------------------------------------------------------------------
;
[StateDef 1060]
type = S
movetype = A
physics = N
;anim = 1050
ctrl = 0
anim = 1060
sprpriority = 9

[State 0, PosSet]
type = PosSet
triggerall = anim = 1060
trigger1 = 1
x = (enemynear, Pos X)
y = (enemynear, Pos Y)
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1050,2

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1060
trigger1 = (enemynear, stateno != 105050) || time > 90
value = S1060,0
freqmul = 1.5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1060
trigger1 = (enemynear, stateno != 105050) || time > 90
value = 1061

[State 0, DestroySelf]
type = DestroySelf
triggerall = anim = 1061
trigger1 = animtime = 0
;-------------------------------------------------------------------------------
[StateDef 105050]
statetype = S       ;S,A,C,L
movetype = H        ;I,A,H
physics = N         ;A,C,S,N
ctrl = 0
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 105050

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
;ignorehitpause =
;persistent =

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < -1
statetype = A       ;S,A,C,L
movetype = H        ;I,A,H
physics = A         ;A,C,S,N

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 60
add = 0,50,240
mul = 120,224,150
sinadd = 85,55,110,10
invertall = 0
color = 256

[State 0, SelfState]
type = SelfState
trigger1 = time > 90
value = 5070
ctrl = 1
;---------------------------------------------------------------------------
; Special 1
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
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
value = S1100,0

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "FrostyGround"
ID = 1110
pos = 90,0
postype = p1
stateno = 1110
ownpal = 1
size.xscale = 1
size.yscale = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99
removetime = 10
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
[StateDef 1110]
type = c
movetype = A
physics = N
anim = 1110
ctrl = 0
sprpriority = -9

[State 0, Explod]
type = Explod
trigger1 = time < 11
trigger2 = time < 11
anim = 1111
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,.05
random = 100,10
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 30
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 0
sparkxy = -500,-500
animtype = Light
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 1,-1
guard.velocity = -3
EnvShake.time = IfElse(var(40) > 0,5,1)
EnvShake.freq = 90
EnvShake.ampl = -1
EnvShake.phase = 200
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = movehit && animelem = 6
value = (anim)
elem = 9

[State 1000, changestate]
type = DestroySelf
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
[StateDef 1150]
type = C
movetype = A
physics = N
anim = 1150
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
value = S1100,1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,0


[State 1000, beam]
type = Helper
trigger1 = AnimElemTime(3) = 5
helpertype = normal
name = "FrostyGround2"
ID = 1110
pos = 0,0
postype = p1
stateno = 1110
ownpal = 1
size.xscale = 1.3
size.yscale = .9
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) = 5
anim = 1151
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99
removetime = 10
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
[State 0, Explod]
type = Explod
trigger1 = animtime > 8 && animtime < 26
anim = 1111
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,.05
random = 100,10
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 11
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------
; Frozen Wall
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S10000,1200
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
triggerall = time > 14 && time < 40
trigger1 = timemod = 4,2
value = S1050,1

[State 1000, beam]
type = Helper
triggerall = Anim = 1200
trigger1 = AnimElemTime(3) = 2
helpertype = normal
name = "Wall"
stateno = 1209
ID = 1200
pos = 110,30
postype = p1
ownpal = 1
size.xscale = 1
size.yscale = 1.4
shadow = 0,0,0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1200
trigger1 = animtime = 0
value = 1201

[State 1000, changestate]
type = ChangeState
triggerall = anim = 1201
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------
[StateDef 1209]
type = s
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 2    ;fv = 10
value = 5

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 0
value = 1210

[StateDef 1210]
type = s
movetype = A
physics = N
ctrl = 0
sprpriority = 9

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 1212
value = 1210

[State 0, VarSet]
type = VarSet
trigger1 =time = 0
v = 1    ;fv = 10
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
v = 1    ;fv =
value = 6

[State 0, Explod]
type = Explod
trigger1 = time < 25
anim = 1215
pos = 10,-10 - (Var(1))
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,-1
accel = 0,0
random = 50,20
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 200, HitDef]
type = HitDef
trigger1 = Timemod = 4,3
attr = S, NA
damage = 5
guardflag = MA
pausetime = 1,1
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-80
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5, 0
guard.velocity = -2
air.velocity = -8,-.2
;snap = 30,-23

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1212
attr = SCA, AA, AP, AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
time = 1
forceair = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Parent, anim = 1201
trigger1 = Parent, animelem = 3 ; && animelem = 3)
value = 1211
[State 0, ChangeState]
type = ChangeState
trigger1 = time > 150
trigger2 = Var(2) = 0
value = 1219
;---------------------------------------------------------------------------
[StateDef 1211]
type = s
movetype = A
physics = N
ctrl = 0
sprpriority = 9
velset = 7,0
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 1213
value = 1211
;-----------------------------------WallKickedFX
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && prevstateno != 1213
value = S2,2
[State 0, Explod]
type = Explod
trigger1 = time = 0 && prevstateno != 1213
anim = F2
pos = 0,-120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 8
shadow = 0,0,0
removeongethit = 0
[State 0, Pause]
type = Pause
trigger1 = time = 0
time = 3
movetime = 1
;------------------------------------GroundDusts
[State 0, Explod]
type = Explod
trigger1 = 1
anim = 1216
pos = 0,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,-1
accel = 0,0
random = 20,20
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;----------------------------------------Hitdef
[State 200, HitDef]
type = HitDef
trigger1 = Timemod = 4,3
attr = S, NA
damage = (20 - hitcount)
guardflag = MAD
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-80
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0 - (15 - hitcount), -.2
guard.velocity = -2
air.velocity = -8,-.2
;snap = 30,-23
;----------------------------------------GetHit
[State 0, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1213
attr = SCA, AA, AP, AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
time = 1
forceair = 0
[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && frontedgedist <= 10
trigger2 = time > 40
trigger3 = Var(2) = 0
value = 1219
;---------------------------------------------------------------------------

[Statedef 1212]
type    = S
movetype= H
physics = N
;velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F40
pos = 0,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 2    ;fv =
value = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 1210
;----------------
[Statedef 1213]
type    = S
movetype= H
physics = N
;velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F40
pos = 0,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 2    ;fv =
value = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 1211
;--------------------------------------------------------------------------
[Statedef 1219]
type    = S
movetype= H
physics = S
anim = 1219

;------------------------------------GroundDusts
[State 0, Explod]
type = Explod
trigger1 = 1
anim = 1216
pos = 0,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,-1
accel = 0,0
random = 30,20
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 9
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
[StateDef 1300]
type = A
movetype = I
physics = N
anim = 1300
ctrl = 0
velset = 0,0

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
y = -3

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S10000,1300
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
triggerall = time > 5 && time < 30
trigger1 = timemod = 4,2
value = S1050,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "AirSpikedStone"
ID = 1310
stateno = 1310
pos = 0,10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1301
ctrl = 0

[StateDef 1301]
type = A
movetype = I
physics = A
anim = 1301
ctrl = 0
velset = 0,5
;-----------------------------------WallKickedFX
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2,2
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F2
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 8
shadow = 0,0,0
removeongethit = 0
[State 0, Pause]
type = Pause
trigger1 = time = 0
time = 3
movetime = 1
;-----------------------------------WallKickedFX

[State 0, VelAdd]
type = VelAdd
trigger1 = Vel Y > 10
y = 1

[State 0, ChangeState]
type = null
trigger1 = animtime = 0
value = 1301
ctrl = 0
;--------------------------------------------------------------------
;--------------------------------------------------------------------
[StateDef 1310]
type = A
movetype = I
physics = N
anim = 1310
velset = 0,0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time < 30
trigger2 = time < 30
anim = 1111
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 60,40
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
[State 0, Explod]
type = Explod
triggerall = time > 10
trigger1 = time < 20
trigger2 = time < 20
anim = 1111
pos = 0,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-.5
accel = 0,-.1
random = 100,20
removetime = -2
pausemovetime = 0
scale = 1.5,1.5
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Parent, stateno = 1301 && Parent, Pos Y > Pos Y + 20
value = 1311

;--------------------------------------------------------------
[State 0, Explod]
type = Explod
trigger1 = Parent, stateno != [1300,1301]
anim = 1311
ID = 1311
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1.2,1.1
sprpriority = 2
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = Parent, stateno != [1300,1301]
value = S1060,0
freqmul = 1.5
ignorehitpause = 1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = Parent, stateno != [1300,1301]
ignorehitpause = 1
;-----------------------------------------------------------------------------
[StateDef 1311]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
triggerall = !movehit
trigger1 = 1
x = Parent, Pos X
y = Parent, Pos Y + 20

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
hitflag = MAD
damage = 100
guardflag = L
pausetime = 11,11
hitsound = S2,5
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,8
air.velocity = -1,8
guard.velocity = -3
fall = 1
EnvShake.time = IfElse(var(40) > 0,15,10)
EnvShake.freq = 90
EnvShake.ampl = -4
EnvShake.phase = 100

;------------------------------Destroy
[State 0, Explod]
type = Explod
trigger1 = Pos Y > -5 || movehit || Parent, stateno != 1301
anim = 1311
ID = 1311
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -2
pausemovetime = 0
scale = 1.2,1.1
sprpriority = 2
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = Pos Y > -5 || movehit || Parent, stateno != 1301
value = S1060,0
freqmul = 1.5
ignorehitpause = 1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = Pos Y > -5 || movehit || Parent, stateno != 1301
ignorehitpause = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[StateDef 1400]
type = A
movetype = I
physics = N
anim = 1400
ctrl = 0
velset = 0,0

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 4
y = -.5
x = -1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
physics = A

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S10000,130
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 5
trigger2 = animelemtime(4) = 5
trigger3 = animelemtime(4) = 10
trigger4 = animelemtime(4) = 10
trigger5 = animelemtime(4) = 15
trigger6 = animelemtime(4) = 15
value = S1400,1
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 5
trigger2 = animelemtime(4) = 10
trigger3 = animelemtime(4) = 15
value = S1050,1

[State 0, Helper]
type = Helper
trigger1 = animelemtime(4) = 5
trigger2 = animelemtime(4) = 10
trigger3 = animelemtime(4) = 15
helpertype = normal ;player
name = "AirSpikeBuster"
ID = 1410
stateno = 1410
pos = 79,-68
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 0
;--------------------------------------------------------------------
[StateDef 1410]
type = A
movetype = A
physics = N
anim = 1410
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 1
range = -5,15

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(1)
scale = 1,.8
[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = var(1)

[State 0,]
type = VelSet
trigger1 = Var(1) <= 2
x = 4
y = 6
[State 0,]
type = VelSet
trigger1 = Var(1) > -2 && Var(1) < 2
x = 5
y = 5
[State 0,]
type = VelSet
trigger1 = Var(1) >= 2
x = 6
y = 4

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 8,8
hitsound = S1400,2
guardsound = S3,0
sparkno = 10
sparkxy = 0,0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-6

[State 0, Explod]
type = Explod
trigger1 = movehit || Pos Y > -1
anim = 1411
ID = 1411
pos = 5,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,.2
random = 10,10
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ignorehitpause = 1

[State 0, ChangeState]
type = destroyself
trigger1 = movehit || Pos Y > -1
ignorehitpause = 1

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
