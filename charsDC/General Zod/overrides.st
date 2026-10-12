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

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
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


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 3000,7]; cor do modo blindado
type = PalFX
triggerall = !ishelper
;triggerall = life > 0
trigger1 = (gametime%40)=0 && var(21)
time = 50
add = 10,10,20
color = 128
sinadd = 30,30,40,3
ignorehitpause=1

[State -2, Time]
type=assertspecial
trigger1= alive
flag=timerfreeze


[State 0, VarSet]
type = null;VarSet
trigger1 = lose
v = 20    ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State -1, megaBeam]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = life>0
triggerall = life<600
triggerall = StateType = S
triggerall = stateno != 3000
triggerall = var(21) = 0
triggerall = movetype != H
trigger1 = var(20)=1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3002)>0 && life <= 0
id =  3002
;ignorehitpause =
;persistent =

;ignorehitpause =
;persistent =

[State 0, LifeAdd]
type = LifeAdd
triggerall= var(21)
triggerall = life > 15
triggerall = life < 500
triggerall = helper(3001),anim = 3001
trigger1 = timemod = 3,1
value = 1

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

[State -2, Explod]
type = Explod
trigger1 =  (anim = 120 || anim = 130 || anim = 140 || anim = 150) && numexplod(125)=0
anim = 125
ID = 125
pos = 25,-90
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 120 && anim != 130 && anim != 140 && anim != 150 && numexplod(125)>0
id = 125


[State -2, Explod]
type = Explod
trigger1 =  (anim = 121 || anim = 131 || anim = 141 || anim = 151) && numexplod(126)=0
anim = 125
ID = 126
pos = 30,-60
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 121 && anim != 131 && anim != 141 && anim != 151 && numexplod(126)>0
id = 126


[State -2, Explod]
type = Explod
trigger1 =  (anim = 122 || anim = 132 || anim = 142 || anim = 152) && numexplod(127)=0
anim = 125
ID = 127
pos = 30,-85
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 122 && anim != 132 && anim != 142 && anim != 152 && numexplod(127)>0
id = 127


[State 0, Explod]
type = Explod
trigger1 = anim = 20 && numexplod(2000)=0
anim = 1172
ID = 2000
pos = -48,-32
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 20 && numexplod(2000)>0
id = 2000

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 240 && numexplod(241)>0
id = 241

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 420 && numexplod(421)>0
id = 421




[State 0, Explod]
type = Explod
trigger1 = anim = 20 && numexplod(2001)=0
anim = 1172
ID = 2001
pos = 10,-30
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 20 && numexplod(2001)>0
id = 2001

;--

[State 0, Explod]
type = Explod
trigger1 = anim = 21 && numexplod(2002)=0
anim = 1173
ID = 2002
pos = -28,-40
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 21 && numexplod(2002)>0
id = 2002


[State 0, Explod]
type = Explod
trigger1 = anim = 21 && numexplod(2003)=0
anim = 1173
ID = 2003
pos = 40,-30
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 21 && numexplod(2003)>0
id = 2003

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = time < 350
trigger1 = lose && var(21)
flag = roundnotover
flag2 = nobardisplay

[State 0, Explod]
type = Explod
triggerall = lose && var(21)
trigger1 = numexplod(3052)=0
anim = 3052
ID = 3052
pos = 0,250
postype = left;,right
bindtime = -1
removetime = -1
scale = 2,2
sprpriority = 100
ownpal = 1
removeongethit = 0
ontop = 1

[State 0, Explod]
type = Explod
triggerall = lose && var(21)
trigger1 = numexplod(3053)=0
anim = 3053
ID = 3053
pos = 0,0
postype = left;,right
bindtime = -1
removetime = -1
scale = 2,2
sprpriority = 100
ownpal = 1
removeongethit = 0
ontop = 0




;---stance newmode
[State 0, Explod]
type = Explod
triggerall = P2Dist X > -20
trigger1 = anim = 3010 && numexplod(3011)=0
anim = 3011
ID = 3011
pos = -40,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 3010 && numexplod(3011)>0
id = 3011


[State 0, Explod]
type = Explod
triggerall = P2Dist X > -20
trigger1 = anim = 3010 && numexplod(3012)=0
anim = 3011
ID = 3012
pos = -20,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 3010 && numexplod(3012)>0
id = 3012

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = anim = 3010 && P2Dist X < -20
id = 3011

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = anim = 3010 && P2Dist X < -20
id = 3012


[State 0, Explod]
type = Explod
trigger1 = anim = 5300 && numexplod(1103)=0
anim = 1103
ID = 1103
pos = -28,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 3051 && numexplod(3051)=0
anim = 1102
ID = 3051
pos = 0,-40
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 3051 && numexplod(3051)>0
id = 3051


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 5300 && numexplod(1103)>0
id = 1103

;-------------
[State 0, Explod]
type = Explod
triggerall = numexplod(51)=0
trigger1 = anim = 41
trigger2 = anim = 42
trigger3 = anim = 43
anim =51
ID = 51
pos = -27,-12
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(52)=0
trigger1 = anim = 41
trigger2 = anim = 42
trigger3 = anim = 43
anim =51
ID = 52
pos = 13,-18
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 41 && anim != 42 &&anim != 43 &&numexplod(51)>0
id = 51

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 41 && anim != 42 &&anim != 43 &&numexplod(52)>0
id = 52



 ; Super Armor controllers
[State -3, Increment Counter]
type = VarAdd
trigger1 = Stateno = 9000
v = 4
value = 5

[State -3, Decrement Counter]
type = VarAdd
trigger1 = (StateNo != 9000) && (Var(4) > 0)&& (MoveType != H)
v = 4
value = -1
ignorehitpause = 1

[State -3, Save StateNo]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(5) = StateNo

[State -3, Save Ctrl]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(6) = Ctrl

[State -3, Record Turn]
type = VarSet
triggerall = WinKO
trigger1 = Anim = [5,6]
v = 18
value = 1


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3002) > 0 && lose
id = 3002
;ignorehitpause =
;persistent =

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

;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 5000,0

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5001  ; standing hard hit high
trigger2 = anim = 5011  ; stand hard hit low
trigger3 = anim = 5021  ; crouching hard hit
persistent = 0
value = 5000,0

[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 0) && (var(50) = 0)
value = 200,3

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 0
v = 50
value = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(21)
flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

