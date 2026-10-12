; (Overrides and Common states)


;---------------------------------------------------------------------------
; Jump fall (after an attack)
[Statedef 48]
type    = A
physics = A

[State 48, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 48
;elem = 
;ignorehitpause = 0
;persistent = 1


;---------------------------------------------------------------------------
; Jump Up (overrides default by allowing for superjump)
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;--------------------------------
; Superjump-enabling code
; Original code by FlowaGirl (flowergirl@cutey.com / http://blargh.i-xcell.com)
[State 50: VelAdd]
type = VelAdd
trigger1 = (!Time) && (Var(0) = 1)
x = IfElse((Vel X) = 0,0,IfElse((Vel X) < 0,-2.5,2.5))
y = -6  ;-3

; allow slight fwd/back movement when doing a straight vertical superjump
[State 50: VelAdd]
type = VelAdd
triggerall = (Var(0) = 1)
trigger1 = command = "holdfwd"
x = 0.10

[State 50: VelAdd]
type = VelAdd
triggerall = (Var(0) = 1)
trigger1 = command = "holdback"
x = -0.10

[State 50: AfterImage]
type = AfterImage
trigger1 = (!Time) && (Var(0) = 1) ;&& (Vel X != 0)
time = 15
timegap = 4
framegap = 1
length = 10
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 110,110,110
trans = add
persistent = 0

[State 50: SuperJump Sparks]
type = Explod
trigger1 = (!Time) && (Var(0) = 1)
ID = 900
anim = 900
postype = p1
pos = 0,25
bindtime = 100
ontop = 1
ownpal = 1
removeongethit = 1

[State 50, PlaySnd]
type = PlaySnd
trigger1 = (!Time) && (Var(0) = 1)
value = S8, 0
;--------------------------------


;---------------------------------------------------------------------------
; Jump Land (overrides default by allowing for superjump)
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

;--------------------------------
; Superjump-enabling code
; Heavily hacked-up version of code originally by FlowaGirl
;  (flowergirl@cutey.com / http://blargh.i-xcell.com)
;[State 52: VarSet]
;type = VarSet
;trigger1 = Time = 0
;var(0) = 0
;--------------------------------

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Dash forward (overrides forward run)
[Statedef 100]
type    = A
physics = N
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)

[State 100, dust]
type = MakeDust
trigger1 = AnimTime

[State 100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dash backward (overrides backward run)
[Statedef 105]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 100, dust]
type = MakeDust
trigger1 = AnimTime

[State 105, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 105, 3]
type = ChangeState
trigger1 = AnimTime = 0 ;Vel Y > 0
;trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = N
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = vel x / 10
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)   -- customized to implement recovery roll
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050: Null]
type = Null
trigger1 = (!Time)
trigger1 = (Var(0) := 0)
trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
trigger2 = (Var(0) := 1)

[State 5050: ChangeState]
type = ChangeState
trigger1 = (Vel Y > 0) && (Pos Y >= IfElse((Anim = [5051,5059]) || (Anim = [5061,5069]),0,25))
value = IfElse(Var(0) = 1,800,5100)


;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)  -- customized to implement recovery roll
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071: Null]
type = Null
trigger1 = (!Time)
trigger1 = (Var(0) := 0)
trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
trigger2 = (Var(0) := 1)

[State 5071: ChangeState]
type = ChangeState
trigger1 = (Vel Y > 0) && (Pos Y >= 15)
value = IfElse(Var(0) = 1,800,5110)


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, jump landing sound]   ; custom jump-landing sound
trigger1 = stateno = 52
trigger1 = Time = 1
type = PlaySnd
persistent = 0
value = 8,1


; wall jump anim
[State -2, walljump Anim]
type = ChangeAnim
trigger1 = (StateNo = 40) && (Pos Y < 0) && (Time = 2)
value = 700

; wall jump spark (ice "piton")
[State -2, walljump Explod]
type = Explod
trigger1 = (StateNo = 40) && (Pos Y < 0) && (Time = 2)
anim = 705
ontop = 1
pos = 20, floor(ScreenPos Y)
postype = back

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = Alive && (Time = 1)
triggerall = Random < 200
trigger1 = stateno = [5000,5022] ; standing hard hit high
trigger2 = stateno = 5030   ; air hit
trigger3 = stateno = 5070   ; tripped
channel = 1
value = 4, ((Random * 2) / 1000)

; superjump opponent locator
[State -2, P2 locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -150) && (P2Dist Y > 50)
ID = 0
pos = Floor(P2Dist X), 20
postype = p1
stateno = 910
facing = -1


;--------------------------------------------------
; Level-up sounds
[State -2, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  1
value = 0

[State -2, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(1) < 1) && (RoundState = 2)
value = 12,1

[State -2, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  1
value = 1

[State -2, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(1) < 2) && (RoundState = 2)
value = 12,2

[State -2, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  1
value = 2

[State -2, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(1) < 3) && (RoundState = 2)
value = 12,3

[State -2, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  1
value = 3



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;[Statedef -3]
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
triggerall = Time = 1
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 70, 0


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper] 
type = Helper
triggerall = NumHelper(8920) < 1
triggerall = (WinKO) && (NumHelper(8900) = 0) ;&& (StateNo != 1210)
trigger1 = (StateNo = [200,2999]) && (Time >= 0) 
trigger2 = NumHelper(1205) = 1 || NumHelper(1206) = 1 || NumHelper(1207) = 1
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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
