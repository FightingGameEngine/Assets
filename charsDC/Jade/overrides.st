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
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

; reset superjump direction var
[State 0, VarSet]
type = VarSet
trigger1 = Var(0) != 0
v = 0
value = 0

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
;---{Super Jump}---
[Statedef 700]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Time = 0
v = 0
value = 0

[State 0, ]
type = VarSet
trigger1 = command = "holdfwd"
v = 0
value = 1

[State 0, ]
type = VarSet
trigger1 = command = "holdback"
v = 0
value = -1

[State 0, ]
type = explod
trigger1 = time = 1
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
x = ifelse(var(0)=0, const(velocity.jump.neu.x), ifelse(var(0)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 701
ctrl = 1

[Statedef 701]
type    = A
physics = A
ctrl = 1
anim = 41
;velset = 0, -15

[State 0, ]
type = explod
trigger1 = time = 0
anim = F700
postype = p1
pos = 0,0 ;const(size.head.pos.y)-40
vel = 0,1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

[State 0, ]
type = explod
trigger1 = vel y <= -0.5 && numexplod(701) <= 5 && timemod = 3,1
anim = F701
id = 701
postype = p1
pos = const(size.mid.pos.x),const(size.mid.pos.y)-20
random = 20+const(size.air.back)+const(size.air.front),15
vel = var(50),1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 0, ]
type = VelAdd
triggerall = Vel X >= -2
trigger1 = command = "holdback"
x = -0.1

[State 0, ]
type = VelAdd
triggerall = Vel X <= 2.5
trigger1 = command = "holdfwd"
x = 0.25

[State 0, ]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 4

[State 0, ]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -3.5

[State 0, ]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 0, ]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 7711]
type = turn
trigger1 = p2dist x < -5
;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
;trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

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

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
;trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52
;---------------------------------------------------------------------------
;--[Super Animations]------------------
;---------------------------------------------------------------------------
[Statedef 8000]
type = S
movetype = I

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = invisible
flag3 = noshadow

[State 8018, muteki]
type = NotHitBy
trigger1 = 1
value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 105
ID = 105
pos = 0,60
postype = back
bindtime = -1
removetime = 45
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 9005
ID = 9005
pos = -300,60
postype = back
bindtime = 1
vel = 13,0
accel = -0.3,0
removetime = 45
supermove = 60
pausemovetime = 60
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 100
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1

[State 0, ]
type = Explod
trigger1 = time = 12
anim = 101
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 102
ontop = 1
ownpal = 1
supermove = -1
pausemovetime = -1

[State 0, ]
type = Null
trigger1 = time = 0
name = "Super BG"
ID = 8005
stateno = 8005
postype = front
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------
;Super BG
;-------------------------------------------------------------
[Statedef 8005]
type = A
physics  = N
sprpriority = 5

[State 8018]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noFG

[State 8018, muteki]
type = NotHitBy
trigger1 = 1
value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1

[State 8018, 3]
type = PosSet
trigger1 = 1
y = 0
x = -160

[State 0, ]
type = EnvColor
trigger1 = timemod = 10,1
value = ceil (random/1),0,ceil (random/1)
time = 10
under = 1
ignorehitpause = 1

[State 8005, hyperBG2]
type = Explod
trigger1 = Time = 0
anim = 9999
ID = 9999
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999995
bindtime = -1
ownpal = 1

[State 8018,1]
type = Explod
trigger1 = time= 1
anim = 110
ID = 110
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = -1
vel = 0, 0
postype = p1
pos = 0, 0
sprpriority = -999998
bindtime = -1
ownpal = 0
scale = 2,1

[State 8018,1]
type = Explod
trigger1 = time= 1
anim = 115
ID = 110
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999999
bindtime = -1
ownpal = 0
scale = 1.0,1.0

[State 8018, Assert]
type = assertspecial
trigger1 = Animtime != 0
flag = noshadow

[State 8018, 6]
type = ChangeState
Trigger1 = Time = 20
value = 8006
ctrl = 0

[Statedef 8006]
type = A
physics  = N
sprpriority = 5

[State 80180]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noBG
flag3 = noFG

[State 80180, 3]
type = posset
trigger1 = 1
y = 0
x = -160

[State 0, ]
type = EnvColor
trigger1 = timemod = 10,1
value = ceil (random/1),0,ceil (random/1)
time = 10
under = 1
ignorehitpause = 1

[State 8018,1]
type = Explod
trigger1 = timemod = 4,1 && numexplod(111) <= 20
anim = 111
ID = 111
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = 320, 0
random = 20,500
ontop = 1
bindtime = 1
ownpal = 1

[State 8018,1]
type = Explod
trigger1 = timemod = 4,1 && numexplod(112) <= 20
anim = 112
ID = 112
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = 320, 0
random = 20,500
ontop = 1
bindtime = 1
ownpal = 1

[State 80180, muteki]
type = NotHitBy
trigger1 = Time = 0
value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1

[State 80180, Assert]
type = assertspecial
trigger1 = Animtime != 0
flag = noshadow

[State 80180, 6]
type = ChangeState
Trigger1 = parent,movetype != A
value = 8007
ctrl = 0

[Statedef 8007]
type = A
physics  = N
sprpriority = 5

[State 80181]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 80181, 3]
type = PosSet
trigger1 = 1
y = 0
x = -160

[State 80181, Assert]
type = assertspecial
trigger1 = Animtime != 0
flag = noshadow

[State 80181, muteki]
type = NotHitBy
trigger1 = Time = 0
value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1

[State 0, ]
type = RemoveExplod
trigger1 = time >= 10
ID = 110
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = time >= 10
ID = 9999
ignorehitpause = 1

[State 80181, 7]
type = DestroySelf
Trigger1 = Time = 20




;---------
; Triangle Jump
[Statedef 7730]
type = A
movetype = I
physics = N
anim = 7730
;velset = -2*Vel X,-7
ctrl = 0
velset = 0,0



[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)
;ignorehitpause =
;persistent =


[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)


 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 7730 && animtime = 0
value = 7735


[State 0, VelSet]
type = VelSet
trigger1 = anim = 7730 && animtime = 0
x = 4.5
y = -5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =  vel x != 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A

[State 600, EndState]
type = Changeanim
trigger1 =  vel x != 0
value = 7735
ctrl = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 7735
x = 4.5
y = -9

[State 600, EndState]
type = ChangeState
trigger1 = anim = 7735
trigger2 = (pos y > -5); && prevstateno != 105
trigger3 = win
value = 50
ctrl = 1


;---[Super Pause State EXP]-------
;[State 0, ]
;type = SuperPause
;trigger1 = time = 0
;time = 40
;sound = S20,0
;pos = 0,0
;darken = 1
;poweradd = -1000

;[State 0, ]
;type = Helper
;trigger1 = time = 0
;name = "Orb"
;ID = 8000
;pos = 0,0
;postype = p1
;stateno = 8000
;supermovetime = 40
;pausemovetime = 1
;ownpal = 1

;[State 0, ]
;type = Helper
;trigger1 = time = 0
;name = "Super BG"
;ID = 8005
;pos = 0,0
;postype = back
;stateno = 8005
;supermovetime = 40
;pausemovetime = 1
;ownpal = 1


[Statedef 832]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 6,0
ctrl = 0
anim = 888
sprpriority = -1

[State 832, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 832, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 832, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 62
ID = 62
pos = 40,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 832, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 832, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[Statedef 855]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -6,0
ctrl = 0
anim = 889
sprpriority = -1

[State 855, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 855, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 855, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 62
ID = 62
pos = 40,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 855, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 855, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0



;---------------------------------------------------------------------------
; Recovery Roll - Variable "Reset"

[State -2, 1]
type = VarSet
trigger1 = (StateNo != 5050) && (StateNo != 5071)
v = 30
value = 0
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
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

[State -2, Explod]
type = Explod
trigger1 =  (anim = 0)  && numexplod(2)=0
anim = 2
ID = 2
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=0 && numexplod(2)>=0
id = 2

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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

