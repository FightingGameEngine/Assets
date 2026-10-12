; States file for Etrigan(throws/grapples)
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
; Helpers:
;   0: superjump opponent position indicator
;   12: ice slick
;   15: ice maiden
; Explods:
;   10: ice shards when leaving "frozen" state 
;  300: ice shards for grapple/freeze/push
; 3510: Absolute Zero (blizzard) snow
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Throws / Grapples
; 
; Freeze & Push down  (F + HP when close)  -- states 300-304
;   Ice "reaches out and touches someone"... namely her opponent. >:)
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Freeze/push to the ground: strong punch + forward when near P2
[StateDef 300]
anim = 300
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 100

[State 300, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = MAF         ;Affect only ground people who are not being hit
guardflag = M
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
;mindist = 
;maxdist = 
;snap = 0,0
sprpriority = 1
p2facing = 1
p1stateno = 302
p2stateno = 303

[State 300, missed]
type = ChangeState
trigger1 = AnimTime = 0
value = 301
ctrl = 1


;-------------------------------------------
; Throw 1 (missed)
[StateDef 301]
anim = 301
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 302, hit]
type = PlaySnd
trigger1 = Time = 20
value = 100,1

[State 301, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------
; Throw 1 (hit)
[StateDef 302]
anim = 302
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 302, 0]
type = PlaySnd
trigger1 = Time = 0
value = 67,0

[State 302, hit]
type = PlaySnd
trigger1 = Time = 9
value = 12,1

[State 302, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = const(size.ground.front), 0

[State 302, blocks]
type = Explod
trigger1 = AnimElem = 1
anim = 305
ID = 300
postype = p2
bindtime = 100
;sprpriority = 0
ontop = 1
;shadow = 0,0,0
;ownpal = 0

[State 302, 2] ;Hit Ground spark (front)
type = Explod
trigger1 = AnimElem = 4, = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 302, 2] ;Hit Ground spark (back)
type = Explod
trigger1 = AnimElem = 4
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

;[State 302, targetstate]
;type = TargetState
;trigger1 = AnimElem = 4
;value = 304
;;ID = 
;;ignorehitpause = 0
;;persistent = 1


[State 302, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 302, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------
; Being grabbed (p2 custom hit state)
[StateDef 303]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 303, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 303

[State 303, 2] ; move to "pushed" state
type = ChangeState
trigger1 = AnimTime = 0
value = 304


;-------------------------------------------
; Being pushed (p2 custom hit state)
[StateDef 304]
type = A
movetype = H
physics = N
ctrl = 0

[State 304, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 304

[State 304, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 304, lifeadd]
type = LifeAdd
trigger1 = AnimTime = -1
value = -120
kill = 1

[State 304, dropped]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8910]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8910, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8910, 2]
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

[State 8910, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8910, done]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;call hitman
[Statedef 8999]
type    = S
movetype= I
physics = N
anim = 7999
ctrl = 0

[State 8999, 1]
type = velset
trigger1 = time >= 0
x = 0
y = 0

[State 8999, 1]
type = poweradd
trigger1 = time = 0
value = -500

[State 8999, 1]
type = Helper
trigger1 = Time = 0
trigger1 = facing = 1
trigger1 = numhelper(8999) = 0
helpertype = normal
name = "hitman"
id = 8999
postype = left
facing = 1
pos = 0,0
stateno = 8998
keyctrl = 0
ownpal = 1

[State 8999, 1]
type = Helper
trigger1 = Time = 0
trigger1 = facing = -1
trigger1 = numhelper(8999) = 0
helpertype = normal
name = "hitman"
id = 8999
postype = right
facing = -1
pos = 0,0
stateno = 8998
keyctrl = 0
ownpal = 1

[State 8999, End1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 8999, End2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X <= 100
value = 0
ctrl = 1

[State 8999, End3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X > 100
value = 1

;---------------------------------------------------------------------------
;enters
[Statedef 8998]
type    = A
movetype= A
physics = N
velset = 3,-5
ctrl = 0
anim = 8998

[State 8998, 1]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
stateno = 8995
time = -1

[State 8998, 1]
type = Playerpush
trigger1 = time >= 0
value = 1

[State 8998, 3]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 8998, 2]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 8998, 3]
type = ChangeState
Trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 8997
ctrl = 0

;---------------------------------------------------------------------------
;Fire the Gatling Gun.
[Statedef 8997]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 8999
ctrl = 0

;[State 8997, effect]
;type = Explod
;trigger1 = animelem = 7
;anim = 8999
;postype = p1
;pos = 0,0
;scale = .6,.6
;sprpriority = 2
;bindtime = 1
;ownpal = 1


[State 8997,1]
type = PlaySnd
trigger1=time=0
value = 8,2

[State 8997,2]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
value = 8,3

[State 8997,3]
type = PlaySnd
trigger1 = Time = 5
value = 8,2

[State 8997,3]
type = PlaySnd
trigger1 = Time = 8
value = 8,2

[State 8997,3]
type = PlaySnd
trigger1 = Time = 12
value = 8,2

[State 8997,3]
type = PlaySnd
trigger1 = Time = 16
value = 8,2

[State 8997, 4]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
attr = A, NA
animtype = hard
damage = 20,9
guardflag = H
pausetime = 0,8
sparkno = 12
guard.sparkno = S2927
sparkxy = -9,-75
ground.type = high
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -5.8
ground.velocity = -3,-3
air.type = trip
air.velocity = -3.1,-3.5
fall = 1

[State 8997, Win]
type = changestate
triggerall = time >= 60
trigger1 = win
trigger2 = RoundState = 4
value = 8989
ctrl = 0

[State 8997, 5]
type = ChangeState
trigger1 = animtime = 0
value = 8996

;---------------------------------------------------------------------------
; exits
[Statedef 8996]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 8995

[State 8996, 1]
type = VelSet
trigger1 = AnimElem = 1
x = -5
y = 2

[State 8996, 3]
type = DestroySelf
trigger1 = Time = 30

;---------------------------------------------------------------------------
; hitman gets hit
[Statedef 8995]
type    = A
movetype= H
physics = N

[State 4300, 5]
type = playsnd
trigger1 = time = 0
value = 91,4

[State 4300, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 4300, PalFX]
type = PalFX
trigger1 = time = 15
time = 15
add = 200,0,0
mul = 200,0,0
;sinadd = 0,0,0,10
invertall = 0
color = 256
;ignorehitpause =
;persistent =


[State 4300, 2]
type = ChangeAnim
trigger1 = Time >= 0
value = 8995

[State 4300, 3]
type = ChangeState
trigger1 = Time = 4
trigger2 = HitShakeOver = 1
value = 8994

;---------------------------------------------------------------------------
; hitman falls
[Statedef 8994]
type    = A
movetype= H
physics = N
velset = 0,0

[State 4301, 1]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 4301, 2]
type = ChangeState
trigger1 = Vel y > 0
trigger1 = Pos y >= 0
value = 8993

;---------------------------------------------------------------------------
; hitman hit bounce
[Statedef 8993]
type    = L
movetype= H
physics = N
anim = 8994

[State 4302, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4302, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 4302, 3]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 4302, 4]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = 1

[State 4302, 5]
type = HitFallDamage
trigger1 = Time = 3

[State 4302, 6]
type = PosFreeze
trigger1 = Time >= 0

[State 4302, 7]
type = ChangeState
trigger1 = Time = 3
value = 8992

[State 4302, 8]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
[Statedef 8992]
type    = L
movetype= H
physics = N

[State 4303, 0]
type = HitFallVel
trigger1 = Time = 0

[State 4303, 1]
type = PosSet
trigger1 = Time = 0
y = 20

[State 4303, 3]
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 4303, 4]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 8991

;---------------------------------------------------------------------------
;  lie down
[Statedef 8991]
type    = L
movetype= H
physics = N
anim = 8994
velset = 0,0

[State 4303, 4]
trigger1 = animtime = 0
type = ChangeState
value = 8990

;---------------------------------------------------------------------------
;  getup
[Statedef 8990]
type    = L
movetype= H
physics = N
anim = 8990
velset = 0,0

[State 8990, 1]
trigger1 = animtime = 0
type = ChangeState
value = 8996

;-------------------------------------------------
; Smokes
[Statedef 8989]
type = S
anim = 8990
velset = 0,0
ctrl = 0

[State 8989, effect]
type = Explod
trigger1 = animelem = 4
anim = F2
postype = p1
pos = 0,0
scale = .6,.6
sprpriority = 2
bindtime = 1
ownpal = 1

[State 8989, effect]
type = Explod
trigger1 = animelem = 7
anim = F2
postype = p1
pos = 0,0
scale = .6,.6
sprpriority = 2
bindtime = 1
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


