; States file for {character} -- Overrides and Common states
; ;---------------------------------------------------------------------------

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
; Walk - overridden for start/stop moving interstitial anims
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3a] ; customized: start walking fwd
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 18 && Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 18

[State 20, 3b]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim = 18 && AnimTime = 0
value = 20

[State 20, 4a] ; customized: start walking back
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 22 && Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 22

[State 20, 4b]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim = 22 && AnimTime = 0
value = 21

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && Vel X = 0
value = 0
ctrl = 1

[State 0, 2]
type = PosSet
trigger1 = 1
y = 7*sin(Time*pi/50)
;------------------------------------------------------
; Stand - overridden for start/stop moving interstitial anims
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, a] ; customized: stop walking fwd
type = ChangeAnim
trigger1 = Anim = 20 && Vel X > 0
value = 19

[State 0, b] ; customized: stop walking back
type = ChangeAnim
trigger1 = Anim = 21 && Vel X <= 0
value = 23

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5 && Anim != 19 && Anim != 23
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
trigger3 = (Anim = 18 || Anim = 19) && AnimTime = 0 ;done with "stop moving fwd" anim
trigger4 = (Anim = 22 || Anim = 23) && AnimTime = 0 ;done with "stop moving back" anim
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 0, 2]
type = PosSet
trigger1 = 1
y = 7*sin(Time*pi/50)
;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

; customize starts here
[State 140, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 138


; customize ends here

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S


; shield construct helper state
[Statedef 9120]
type = A
physics = N
movetype = I
ctrl = 0
anim = 138


[State 9120, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HA
slot = 1
stateno = 9120
time = 1
forceair = 0

[State 9120, PosSet]
type = PosSet
trigger1 = parent, statetype = S
x = parent, pos x
y = parent, pos y

[State 9120, PosSet]
type = PosSet
trigger1 = parent, statetype = C
x = parent, pos x
y = parent, pos y - 100


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

[State 1120, 3]
type = MakeDust
trigger1 = Time >= 0
pos = 0, 0

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

[State 100, Afterimage]
type = AfterImage
trigger1 = AnimElem = 1
length = 13
PalBright   =  0, 0, 0
PalContrast =  65, 99, 69
PalAdd      = 10,10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 15

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1
;--------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = S
anim = 105
sprpriority = 1
ctrl = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)

[State 105, Flash]
type = Explod
trigger1 = time > 4 && (time%2) = 1
anim = 113
ID = 113
postype = P1
pos = 10,-51
bindtime = 1
vel = -2.2
ownpal = 1
random = 40,78
scale = 0.5,0.5
removetime = -2
sprpriority = 2

[State 1120, 3]
type = MakeDust
trigger1 = Time >= 0
pos = 30, 0

[State 100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, Afterimage]
type = AfterImage
trigger1 = AnimElem = 1
length = 13
PalBright   =  0, 0, 0
PalContrast =  65, 99, 69
PalAdd      = 10,10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 15

[State 100, 4]
type = ChangeState
trigger1 = command != "holdback"
value = 0


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

; remove shield construct if no longer guarding
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = Anim != [120,152]
id = 138

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
value = 110,6

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1


;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
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
value = S100,6

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
;------------------------------------------------
[State -3, shield]
type = Explod
triggerall = NumExplod(138) = 0
trigger1 = Anim = [120,159]
anim = 138
ID = 138
pos = 0, ifelse(statetype = C, 30, 0)
bindtime = 999
removetime = -2
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1
scale= 0.8,0.8


[State -3, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(138) = 1
trigger1 = StateType = C
ID = 138
pos = 0,30

[State -3, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(138) = 1
trigger1 = StateType != C
ID = 138
pos = 0,0

[State -3, skull]
Type = Explod
triggerall = movetype != H || Stateno != [1500,1505]
triggerall = Roundstate != 0 || Stateno != [190,192]
triggerall = Stateno != [180,181]
trigger1 = time%12=0 && !Var(10)
anim = 8990+random%2
pos = 0,-80
ownpal = 1
sprpriority = 5
ignorehitpause = 1
random = 50,80
vel = -Vel X/20,0
scale = .25,.25
accel = ifelse(Vel X<0,0.05,ifelse(Vel X>0,-0.05,0)),ifelse(random<500,-0.05,-0.1)
facing = 1
removetime = 30
supermove = 9999999
pausemovetime = 999999

[State -3, skull]
Type = Explod
triggerall = RoundState =2  && !Lose
triggerall = movetype != H || Stateno != [1500,1505]
trigger1 = time%8=0 && Var(10)
anim = 8993
pos = 0,-80
ownpal = 1
sprpriority = 5
ignorehitpause = 1
random = 50,80
vel = -Vel X/20,0
scale = .1,.1
accel = ifelse(Vel X<0,0.05,ifelse(Vel X>0,-0.05,0)),ifelse(random<500,-0.05,-0.1)
facing = 1
removetime = 30
supermove = 9999999
pausemovetime = 999999
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

