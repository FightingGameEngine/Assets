; States file for Bizarro -- Overrides and Common states
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
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, dust]
type = Explod
trigger1 =!time
anim = 702
ID = 702
pos = 0,0
postype = p1
bindtime = 1
sprpriority = 3
ownpal = 1

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

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
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S12,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

; "Win by hyper" effect
[State -3, Explod]
type = Explod
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(8900) = 0)
anim = 8900
ID = 8900
pos = 0,0
postype = left
bindtime = 100
sprpriority = -1
ownpal = 1
;==============================================================================================
;                               Solar Sheild Armor States
;==============================================================================================

[State -3, AssertSpecial]
type = AssertSpecial
trigger1 = var(1) > 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -3]
type = VarAdd
trigger1 = Var(1) > 0
V = 1
value = -1

[State -3,-1]
type = NotHitBy
triggerall = IsHelper = 0
trigger1 = Var(1) > 0
value = SCA, HTP

;---------------------------------------------------------------------------
; Flying Mode - Time Control
[State -3, 1]
type = VarSet
trigger1 = Var(13) = 1
v = 14
value = 1

[State -3, 2]
type = VarSet
trigger1 = Var(13) = 1 && Var(14) = 0
v = 15
value = 0

[State -3, 3]
type = VarAdd
trigger1 = Var(14) = 1
v = 15
value = 1

[State -3, 4]
type = VarSet
trigger1 = Var(15) > 900
v = 15
value = 0

[State -3, 5]
type = VarSet
trigger1 = Var(14) = 1 && Var(15) = 900
trigger2 = command = "3K"
trigger3 = RoundState = 3 
trigger4 = StateType != A
v = 13
value = 0

[State -3, 6]
type = VarSet
trigger1 = Var(14) = 1 && Var(15) = 900
trigger2 = command = "3K"
trigger3 = RoundState = 3 
trigger4 = StateType != A
v = 14
value = 0
