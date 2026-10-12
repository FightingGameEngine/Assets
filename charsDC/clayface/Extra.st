;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hit Overrides and Extra States
;---------------------------------------------------------------------------
[StateDef 9000]
type = S
movetype= H
physics = S


[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Super BG Helper
;-------------------------------------------------------------------------------

[Statedef 8008]
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



[State 8005, hyperBG2]
type = Explod
trigger1 = Time = 0
anim = 10010
ID = 10010
supermovetime = 999999
pausemovetime = 999999
removetime = -1
removeongethit = 0
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999995
bindtime = -1
ownpal = 1


[State 8018, Assert]
type = assertspecial
trigger1 = Animtime != 0
flag = noshadow

[State 8018, 6]
type = ChangeState
Trigger1 = Time = 20
value = 8009
ctrl = 0

[Statedef 8009]
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
Trigger2 = NumHelper(1901) = 1
Trigger3 = parent, stateno = 4002 && parent, time = 370
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
ID = 10010
ignorehitpause = 1

[State 80181, 7]
type = DestroySelf
Trigger1 = Time = 20

