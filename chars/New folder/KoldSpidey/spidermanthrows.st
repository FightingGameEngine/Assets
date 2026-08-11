;---------------------------------------------------------------------------
;---{Throw Attacks}---
;---------------------------
; Spider Toss 1
[Statedef 900]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 900
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 905
p2stateno = 906
sprpriority = 1
recover = 0
air.recover = 0
bounce.recover = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 905]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 905

[State 0, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 0, ]
type = Turn
trigger1 = animelem = 3

[State 0, ]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = 5,10
volume = 20
channel = 4

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = floor(65*const(size.xscale)),0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 5
pos = 0,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 15
pos = floor(30*const(size.xscale)),-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 15
pos = floor(55*const(size.xscale)),-107

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 15
pos = floor(65*const(size.xscale)),-100

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 1
pos = floor(65*const(size.xscale)),-75

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -75

[State 0, ]
type = TargetDrop
trigger1 = animelem = 7

[State 300, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 906]
type    = A
movetype= H
physics = N
velset = 0,0
facep2 = 1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 906

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 1
movecamera = 1,0

[State 0, ]
type = Turn
trigger1 = animelem = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = -10
y = .25

[State 0, Gravity]
type = Gravity
trigger1 = anim = 5050

[State 0, ]
type = ChangeAnim2
trigger1 = time = 40
value = 5050

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = Command = "recovery"
trigger2 = var(0)
value = 5200 ;HITFALL_RECOVER

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 && anim = 5050
value = 907

[Statedef 907]
type    = L
movetype= H
physics = C
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, VelSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = !time
value = -30
kill = 1
absolute = 0
persistent = 0
kill = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 5100
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 5100
value = 5110
persistent = 0

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61 + (sysvar(1) > 14)
pos = 0, 0
ontop = 1

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7,2; (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 75
ampl = -8
persistent = 0


[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive && animtime = 0
value = 5050

[State 0, ]
type = SelfState
trigger1 = time >= 20 && anim = 5110
trigger2 = backedgedist <= 20 && anim = 5110
value = 5120

; Spider Toss 2
[Statedef 910]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 900
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 915
p2stateno = 916
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 915]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 915

[State 0, Width]
type = Width
trigger1 = 1
edge = 75,20

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
movetype = A
physics = A

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = .25
y = -8.5

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = floor(60*const(size.xscale)),0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 6
pos = floor(35*const(size.xscale)),-15

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 3
pos = floor(15*const(size.xscale)),0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 3
pos = floor(-20*const(size.xscale)),0

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 3
pos = floor(-55*const(size.xscale)),-35

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 3
pos = floor(-55*const(size.xscale)),-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 3
pos = floor(50*const(size.xscale)),-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 1
pos = floor(60*const(size.xscale)),20

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 8
value = -75

[State 0, ]
type = TargetDrop
trigger1 = animelem = 9

[Statedef 916]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 916

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 0

[State 0, ]
type = Turn
trigger1 = animelem = 2
trigger2 = animelem = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = -4
y = 12

[State 0, Gravity]
type = Gravity
trigger1 = anim = 5050

[State 0, ]
type = ChangeAnim2
trigger1 = time = 40
value = 5050

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = Command = "recovery"
trigger2 = var(0)
value = 5200 ;HITFALL_RECOVER

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 && anim = 5050
value = 907

;---------------------------
; Spider Toss (air) 2
[Statedef 950]
type    = A
movetype= A
physics = A
anim = 950
juggle  = 0
ctrl = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = A, NT
hitflag = AF
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 955
p2stateno = 956
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 50
ctrl = 0

[Statedef 955]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 955

[State 0, Width]
type = Width
trigger1 = 1
edge = 60,30

[State 0, ]
type = Turn
trigger1 = animelem = 3

[State 0, ]
type = PosFreeze
trigger1 = time  <= 35
value = 1

[State 0, ]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 35
value = 0

[State 0, ]
type = Gravity
trigger1 = time > 35 && pos y < 0

[State 0, ]
type = VelSet
trigger1 = animelem = 6
x = -4
y = -10

[State 0, ]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = 5,10
volume = 20
channel = 4

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = floor(65*const(size.xscale)),0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 5
pos = 0,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 15
pos = floor(30*const(size.xscale)),-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 15
pos = floor(55*const(size.xscale)),-107

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 15
pos = floor(65*const(size.xscale)),-100

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 1
pos = floor(65*const(size.xscale)),-60

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -72

[State 0, ]
type = TargetDrop
trigger1 = animelem = 7

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -50 && pos y >= 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist > -50 && pos y >= 0
value = 50
ctrl = 1

[Statedef 956]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 906

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 0

[State 0, ]
type = Turn
trigger1 = animelem = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = -5
y = 10

[State 0, Gravity]
type = Gravity
trigger1 = anim = 5050

[State 0, ]
type = ChangeAnim2
trigger1 = time = 40
value = 5050

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = Command = "recovery"
trigger2 = var(0)
value = 5200 ;HITFALL_RECOVER

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 && anim = 5050
value = 907

; Spider Toss (air) 2
[Statedef 960]
type    = A
movetype= A
physics = A
anim = 950
juggle  = 0
ctrl = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = A, NT
hitflag = AF
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 915
p2stateno = 916
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 50
ctrl = 0
