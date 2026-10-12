; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
movetype = I
physics = N
anim = 101
sprpriority = 1
velset = const(velocity.run.fwd.x)* FVar(0)

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[state 2600, Dash punch]
type = afterimage
trigger1 = Time =0
time = 35
length = 15
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, Explod]
type = Explod
triggerall = Time > 0
trigger1 = Timemod = 2,0
anim = 7070
ID = 7070
pos = 20,0 + (random%3)
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = -.5,.5
sprpriority = 10000
ownpal = 1



[State 100, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1

; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State -1, ]
type = changestate
triggerall = roundstate = 2
trigger1 = var(59)
value = 0
ctrl = 1

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 10
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 20, 1]   ; regular
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = !ishelper
x = const(velocity.walk.fwd.x) * FVar(0)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = !ishelper
x = const(velocity.walk.back.x) * FVar(0)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State -1, ]
type = changestate
triggerall = roundstate = 2
trigger1 = var(59)
value = 0
ctrl = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * FVar(0)
y = const(velocity.jump.y) * FVar(1)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x) * FVar(0)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =   time = 0
id = 989
;ignorehitpause =
;persistent =


[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)* FVar(0)
y = const(velocity.run.back.y)* FVar(0)

[State 105, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1


[State -3,light grunt]
type = PlaySnd
triggerall= random < 400
triggerall= animelem=1,1
trigger1= stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2= stateno = 600 || stateno = 630
value = 60,1
channel=2
[State -3,light grunt]
type = PlaySnd
triggerall= random < 300
triggerall= animelem=1,1
trigger1= stateno = 210 || stateno = 240 || stateno = 410 || stateno = 440
trigger2= stateno = 610 || stateno = 640
value = 60,2
channel=2
[State -3,light grunt]
type = PlaySnd
triggerall= random < 250
triggerall= animelem=1,2
trigger1= stateno = 220 || stateno = 250 || stateno = 420 || stateno = 450
trigger2= stateno = 620 || stateno = 650
value = 60,3
channel=2
;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3

;--------------------------------
[State -3, Power up]
type = VarSet
trigger1 = 1
var(51) = 1

;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

; "Win by hyper" effect
[State -3, Explod]
type = Explod
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
sprpriority = -1
ownpal = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 46001
id = 8330

[State 731, StopSnd]
type = StopSnd
trigger1 = power = 3000
trigger2 = stateno != 46001
channel = 26

[State -3, hypers]
type = VarSet
triggerall = var(59)
trigger1 = life <= 350 
trigger1 = enemynear,life >= 750
trigger1 = power >= 2500;000
var(57) = 1

[State -3, hypers]
type = VarSet
triggerall = var(59)
triggerall = var(57) = 1
trigger1 = power < 2500;000
var(57) = 0

[State -3, hypers]
type = VarSet
triggerall = var(59)
trigger1 = roundno >= 2
trigger1 = roundstate = 1
trigger1 = power >= 2000
var(56) = 1

[State -3, hypers]
type = VarSet
triggerall = var(59)
trigger1 = var(56) = 1
trigger1 = power < 2000
var(56) = 0

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [0,10]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 5

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [11,30]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 15

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [31,60]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 30

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [61,100]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 50

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [101,150]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 75

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [151,200]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 100

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) = [201,300]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 150

[State -2, Hit Power Up]
type = Poweradd
triggerall = time = 0
triggerall = gethitvar(damage) > 300
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5080
value = 400




[State -2, ]
Type           = AfterImage
Trigger1       = stateno = 1220
Time           = 0


[state 8600, Behindguard Front]
type = helper
helpertype = normal
trigger1 = Life <= 400
trigger1 = numhelper(8600) = 0
name = "F"
ID = 8600
stateno = 8600
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1
size.yscale = 1

[state 8610, Behindguard Back]
type = helper
helpertype = normal
trigger1 = Life <= 400
trigger1 = numhelper(8610) = 0
name = "B"
ID = 8610
stateno = 8610
postype = p1
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1
size.yscale = 1


[State -3, 3320 one time only in one Match]
type = VarSet
trigger1 = stateno = 3320
var(55) = 1

[State -3, 3320 one time only in one Match]
type = VarSet
trigger1 = var(55) = 1
trigger1 = roundstate = 3 || roundstate = 4 || roundstate = 1
var(55) = 0


[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9


[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, gethits]         ; custom gethit sounds
type = null;PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,2999]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id = 6035

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,2999]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id =11001
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,2999]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id =11002

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = stateno = [3000,3999]
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause=1

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =stateno=[5000,5500]
id =989
ignorehitpause =1
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =stateno != 3602
id =3660
ignorehitpause =1
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =stateno != 3720
id =3800
ignorehitpause =1
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =stateno != 3722
id =3801
ignorehitpause =1



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
