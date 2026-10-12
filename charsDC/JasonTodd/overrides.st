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
;Project X Run
; RUN_FWD
[Statedef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 8, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 0, Explod]
type = Explod
trigger1= animelem = 1
anim = 63
ID = 63
pos = 25,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 10
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
trigger1 = time>22;command != "holdfwd";Time = 135
value = 0
ctrl = 1

[Statedef 105]
type    = S
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = -5, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 62
ID = 62
pos = 10,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 100, 4]
type = ChangeState
trigger1 = time>15;command != "holdfwd";Time = 135
value = 0
ctrl = 1 ;

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, VarSet]
type = VarSet
triggerall = var(41) != 0
trigger1 =  ctrl
v = 41
value = 0



[State 0, VarSet]
type = VarSet
triggerall = var(42) != 0
trigger1 =  ctrl
v = 42
value = 0

[State 0, VarSet]
type = VarSet
triggerall = var(43) != 0
trigger1 =  ctrl
v = 43
value = 0




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

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3154)>0
trigger1 = ctrl
id = 3154
;------------------------------------------
[State -2, gethit light]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499
trigger1 = anim = 5000  ; standing weak hit high
trigger2 = anim = 5010  ; stand weak hit low
trigger3 = anim = 5020  ; crouching weak hit
persistent = 0
channel = 0
persistent = 1
value = 4,0
volume = -225

[State -2, gethit med]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499

trigger1 = anim = 5001  ; standing med hit high
trigger2 = anim = 5011  ; stand med hit low
trigger3 = anim = 5021  ; crouching med hit
trigger4 = anim = 5030  ; air hit
persistent = 0
channel = 0
persistent = 1
value = 4,1
volume = -225

[State -2, gethit hard]
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
triggerall = Random <= 350

trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
channel = 0
persistent = 1
value = 4,2
volume = -225;75
;--------------------------------------

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

[State 3401]
type = AfterImage
trigger1 = stateno != 3101
time = 0
length = 1
palbright = 30,30,30
palpostbright = 10,10,10
palcontrast =60,60,60
paladd = 0,0,0
palmul = 1,1,1
palcolor = 0
timegap = 2
framegap = 3


;damage dampenering
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.96, 0.92**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1



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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

