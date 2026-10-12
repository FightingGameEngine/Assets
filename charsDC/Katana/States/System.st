; Jump Start
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0

[State 40, VarSet]
type = VarSet
trigger1 = 1
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, VarSet]
type = VarSet
trigger1 = !Time
var(2) = ifElse(command = "HighJump", 3, 0)

[State 40, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(2) = 3

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && var(2) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Forward Dash
[Statedef 101]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 101
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1100,2
volume = 50

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 30

[State 0, VelSet]
type = VelSet
triggerall = prevstateno = 50||prevstateno = 80
trigger1 = animelem = 2
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2

[State 0, Soru]
type = Explod
trigger1 = time = 2
anim = 9028
ID = 101
pos = 0,-30
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = I
physics = A

[State 101, End]
type = ChangeState
trigger1 = ifelse(statetype = A,time = 13,animtime = 0)
value = ifelse(statetype = A,50,0)
ctrl = 1

;---------------------------------------------------------------------------
; Back Dash
[Statedef 105]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 105
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1100,2
volume = 50

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -30

[State 0, VelSet]
type = VelSet
triggerall = prevstateno = 50||prevstateno = 80
trigger1 = animelem = 2
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = -2

[State 0, Soru]
type = Explod
trigger1 = time = 2
anim = 9028
ID = 101
pos = 0,-30
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A
movetype = I
physics = A

[State 200, End]
type = ChangeState
trigger1 = ifelse(statetype = A,time = 13,animtime = 0)
value = ifelse(statetype = A,50,0)
ctrl = 1

;---------------------------------------------------------------------------
;Airdash
[Statedef 107]
type    = A
physics = A;N
velset = 0,0
sprpriority = 1
ctrl = 0

[State 107, ch]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 111
ctrl = 1

[State 107, aa]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "a"
value = 600
[State 107,ab]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "b"
value = 610
[State 107, ac]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "c"
value = 620
[State 107, ba]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "x"
value = 630
[State 107,bb]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "y"
value = 640
[State 107, bc]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "z"
value = 650

[State 107, a1]
type = playsnd
trigger1 = !time
value = 50,0;0,195
channel = 6
ignorehitpause = 1

[State 100, 0]
type = VelSet
trigger1 = animelem = 1
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)

[State 107, a1]
type = VelSet
trigger1 = !time
x = 9

[state 107, a2]
type = VelAdd
trigger1 = Time >=0
y = -.40

[State 107, a3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 107, 1] ;Blur Effect
type = AfterImage
trigger1 = Time = 0
time = 17
length = 9
TimeGap  =1
FrameGap = 2
palcolor = 256
PalAdd = 0,0,0
Trans = Add
PalContrast =  255, 0, 0
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50

[State 107, a7]
type = ChangeState
trigger1 = Time >= 15
value = 51
ctrl =1

;------------------------------
;Air Back Dash
[Statedef 108]
type    = A
physics = A;N
velset = 0,0
sprpriority = 1
ctrl = 0

[State 108, ch]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 115;21
ctrl = 1

[State 108, aa]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "a"
value = 600
[State 108,ab]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "b"
value = 610
[State 108, ac]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "c"
value = 620
[State 108, ba]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "x"
value = 630
[State 108,bb]
type = ChangeState
trigger1 = animelemtime(2) >= 0
trigger1 = Command = "y"
value = 640
[State 108, bc]
type = ChangeState
trigger1 = animelemtime(2) >= 110
trigger1 = Command = "z"
value = 650

[State 108, a1]
type = playsnd
trigger1 = !time
value = 50,0;0,197
channel = 6
ignorehitpause = 1

[State 108, a1]
type = VelSet
trigger1 = !time
x = -9

[state 108, a2]
type = VelAdd
trigger1 = Time >=0
y = -.40

[State 108, a3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 108, 1] ;Blur Effect
type = AfterImage
trigger1 = Time = 0
time = 17
length = 9
TimeGap  =1
FrameGap = 2
palcolor = 256
PalAdd = 0,0,0
Trans = Add
PalContrast =  255, 0, 0
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50

[State 108, a7]
type = ChangeState
trigger1 = Time >= 15
value = 51
ctrl =1

;èüóòÉ|Å[ÉYï™äÚ
;[Statedef 180]
;type = S
;ctrl = 0
;anim = 0
;velset = 0,0

;[State -2, 3]
;type = ChangeState
;trigger1 = Time = 0
;value = ifelse(Random <= 500, 181,181)

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181+random%3

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 180, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 180, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 182, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 3
[Statedef 183]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = time = [1,220]
flag = roundnotover

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Pre-Intro
[Statedef 190]
type = S

[State 190, ChangeState]
type = ChangeState
triggerall = enemy,name = "Hina"
trigger1 = Time = 0
value = 192

[State 190, ChangeState]
type = ChangeState
trigger1 = Time = 0
value = 191

;---------------------------------------------------------------------------
; Introduction
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Time = 25
value = 190,0
channel = 1

[State 191, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction vs Hina
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Time = 25
value = 190,1
channel = 1

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Time = 90
value = 190,0
channel = 1

[State 192, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 195
sprpriority = 2

; Cooldown Timer
[State 195, VarSet(x): CooldownTimer]
type = VarSet
trigger1 = !time
v = 18
value = 125

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 180,0+(random%2)
channel = 1

[State 195, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing and Crouching Parry
[Statedef 700]
type = U
movetype = I
physics = U
anim = IfElse(StateType = S,700,701)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 700, CtrlSet]
type = CtrlSet
trigger1 = (Time > 5) && (StateType = S)
value = 1

[State 700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 700, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 700, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 700, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15 ;8

[State 700, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 700, Explod]
type = Explod
triggerall = StateType = S
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 25,-75
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, Explod]
type = Explod
triggerall = StateType = C
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 25,-45
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 700, End]
type = ChangeState
trigger1 = (!AnimTime)
value = IfElse(StateType = S,0,11)
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Parry
[Statedef 702]
type = A
movetype = I
physics = N
anim = 702
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 702, CtrlSet]
type = CtrlSet
trigger1 = (Time > 4)
value = 1

[State 702, NotHitBy]
type = NotHitBy
trigger1 = (Time < 14)
value = SCA

[State 702, Pause]
type = Pause
trigger1 = (!Time)
time = 5
movetime = 5

[State 702, VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 702, PalFX]
type = PalFX
trigger1 = (!Time)
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 14 ;8

[State 702, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 8
freq = 60
ampl = -2
phase = 90

[State 702, Null]
type = Null
trigger1 = (!Time)
trigger1 = (FVar(0) := Vel X) && (FVar(1) := Vel Y)

[State 702, VelSet]
type = VelSet
trigger1 = (Time)
x = 0
y = 0
persistent = 0

[State 702, VelSet]
type = VelSet
trigger1 = (Time > 14)
x = FVar(0)
y = FVar(1)
persistent = 0

[State 702, VelAdd]
type = VelAdd
trigger1 = (Time > 14)
y = 0.45

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,0
channel = 0

[State 702, PlaySnd]
type = PlaySnd
trigger1 = (!Time)
value = 700,1
channel = 1

[State 702, Explod]
type = Explod
trigger1 = (!Time)
anim = 8700
id = 8700
pos = 26,-85
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 12
scale = .5,.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1

[State 702, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Parry Helper
[Statedef 703]
type = A
movetype = I
physics = N
anim = 703
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 703, ParentVarSet]
type = ParentVarSet
trigger1 = (!Time)
var(0) = 8
ignorehitpause = 1

[State 703, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Command != "holdfwd")

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type = S
movetype = H
physics = N
anim = 5200
facep2 = 1

[State 5201, 1]
type = Posset
trigger1 = Time = 0
y = 0

[State 5201, 2]
type = Velmul
trigger1 = 1
x = .8125

[State 5201, 3]
type = Velset
trigger1 = Time = 0
x = -9.75
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5]
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5201, 1]
type = Velset
trigger1 = Animtime = 0
x = 0

[State 5201, 7]
type = ChangeState
trigger1 = Animtime = 0
trigger2= animelemtime(animelemno(0))>=4 && !animelemtime(animelemno(0)+1)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forced P2 Recovery
[StateDef 5025]
type = A
Movetype = H
physics = N
velSet = 0,0
faceP2 = 1

[State 5025, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 5025, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y, 5020, 5000)

;---------------------------------------------------------------------------
; P2 Safe fall
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, End]
type = SelfState
trigger1 = 1
value = ifElse(pos y < -20, 5210, 5200)
;---------------------------------------------------------------------------
;Super Jump
[Statedef 7000]; change these for the number that you want
type = A
movetype = I
physics = N
anim = 40 ; these is the jump anim
velset = 0,0
ctrl = 0

[State 0, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 0, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 0, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 0, 4]
type = explod
trigger1 = time = 2
anim = 5410
pos = 0,20
ownpal = 1
sprpriority = 3

[State 0, 5]
type = VelSet
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.65
;y = const(velocity.jump.y)*1.7 ; you can change these value, to make it fit how you want the superjump

[State 0, 6]
Type = Playsnd
trigger1 = time = 2
Value = 30,0

[State 0, 7]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, Debug Info]
type = DisplayToClipboard
trigger1 = roundstate > 0
text = "AI = %d, Super Jump = %d, SJ Direction = %d, Dampener = %f"
params = var(59), var(12), var(13), fVar(10)

[State -2, Null]
type = Null
trigger1 = (!Time) && (Var(1) = 0)
trigger1 = ((Command = "holdfwd") && (StateNo = 20)) ^^ ((Command = "holddown") && (StateNo = [10,11]))
trigger1 = (Var(0) := 8)
trigger2 = (Command != "holdfwd") && (Command != "holddown") && (Var(1) = 1)
trigger2 = (Var(1) := 0)
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0)
var(0) = -1
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = ((StateNo = 50) || (StateNo = 702)) && (Command = "holdfwd") && (NumHelper(703) = 0)
helpertype = Normal
name = "Air Parry"
id = 703
pos = 0,0
postype = p1
facing = 0
stateno = 703
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SA, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holdfwd") && (Command != "holdback")
attr = C, AA, AP
stateno = 700
ignorehitpause = 1

[State -2, HitOverride]
type = HitOverride
triggerall = ((StateNo = 50) || (StateNo = 702)) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SCA, AA, AP
stateno = 702
ignorehitpause = 1

[State -2, Throws Allowed]
type = Varset
trigger1 = 1
var(10) = 0

[State -2, Throws Disallowed]
type = Varset
trigger1 = (enemynear,stateno=[150,155])
trigger2 = (enemynear,movetype=H && enemynear,statetype!=A)
trigger3 = (enemynear,stateno=[5020,5040]) && !(enemynear,hitfall)
trigger4 = ((enemynear,stateno=0) || (enemynear,stateno=52)) && (enemynear,prevstateno=[5000,5040]) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger5 = (enemynear,stateno=0) && (enemynear,prevstateno=52) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger6 = (enemynear,stateno=40) && (enemynear,time>=1 || enemynear,prevstateno=0 || enemynear,prevstateno=52)
var(10) = 1

[State -2, P2 Recovery]
type = TargetState
trigger1 = NumTarget(600)
trigger1 = (Target(600), StateNo = 5020) && (Target(600), Alive) && (Target(600), HitFall)
ID = 600
value = 5025
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -20 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Damage Dampener]
type = varset
trigger1 = numenemy
fvar(10) = ifelse(enemynear,gethitvar(hitcount)<3, 24,ifelse(enemynear,gethitvar(hitcount) >=24, 2, 26-enemynear,gethitvar(hitcount))) / 24.0

[State -2, Reset Damage Dampener]
type = varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1

[State -2, VarAdd(13): CooldownTimer]
type = VarAdd
trigger1 = var(13)>0 && stateno != 2000 ;Where var(x) has a value greater than zero and character not in StateDef 2000
v = 13
value =-1

[State -2, VarAdd(14): CooldownTimer]
type = VarAdd
trigger1 = var(14)>0 && stateno != 1400 ;Where var(x) has a value greater than zero and character not in StateDef 1400
v = 14
value =-1

[State -2, VarAdd(15): CooldownTimer]
type = VarAdd
trigger1 = var(15)>0 && stateno != 2400 ;Where var(x) has a value greater than zero and character not in StateDef 2400
v = 15
value =-1

[State -2, VarAdd(16): CooldownTimer]
type = VarAdd
trigger1 = var(16)>0 && stateno != 2100 ;Where var(x) has a value greater than zero and character not in StateDef 2100
v = 16
value =-1

[State -2, VarAdd(17): CooldownTimer]
type = VarAdd
trigger1 = var(17)>0 && stateno != 2200 ;Where var(x) has a value greater than zero and character not in StateDef 2200
v = 17
value =-1

[State -2, VarAdd(18): CooldownTimer];Taunt cooldown
type = VarAdd
trigger1 = var(18)>0 && stateno != 195 ;Where var(x) has a value greater than zero and character not in StateDef 195
v = 18
value =-1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
value = 40, 0

[State -3, VarSet]
type = VarSet
trigger1 = Command = "QCFx"
v = 5
value = 1

[State -3, VarSet]
type = VarSet
trigger1 = Command = "QCFy"
v = 5
value = 2

[State -3, GetHit Sound]
type = PlaySnd
triggerall = Alive && time = 1
triggerall = Stateno = 5000 || Stateno=5010 || Stateno=5020 || Stateno=5070
trigger1 = Enemynear, Hitdefattr = SCA,SA,HA
trigger2 = Gethitvar(Animtype)>= 2 && random < 500
trigger3 = Gethitvar(Animtype)= 1 && random < 300
trigger4 = Gethitvar(Animtype)= 0 && random < 250
value = 5000,0+(random%5)
channel = 1
ignorehitpause = 1
persistent = 0

[State -3, Prevent Undergound Juggles]
type= TargetBind
trigger1 = movehit = 1
trigger1 = numtarget = 1 && numenemy
trigger1 = (target,time<= 1) && (target,ID = enemynear,ID)
trigger1 = !(target,hitshakeover) && (target, hitfall) && (target, pos y> 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, EX PalFX]
type = PalFX
trigger1 = !(GameTime % 2)
trigger1 = StateNo = 1001 || Stateno = 1110
add = 80,60,0
mul = 256, 230, 155
time = 1
ignorehitpause = 1
persistent = 0

[State -3, Jump AfterImage]
type = AfterImage
triggerAll = Time = 1
trigger1 = StateNo = 50 && (var(2) = 2 || var(2) = 3)
time = 14
length = 8
timeGap = 1
frameGap = 4
palBright = 0,0,0
palContrast = 150,150,150
palPostBright = 0,0,0
palAdd = 0,0,0
trans = Add
