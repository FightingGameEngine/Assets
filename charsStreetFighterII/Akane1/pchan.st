;---------------------------------------------------------------------------
; pchan
[Statedef 2700]
type = S
movetype = I
anim = 2700
velset = 0,0,0

[State 2700, 2]
type = changeanim
trigger1 = 1
trigger1 = var(29) = 1
value = 2702

[State 2700, 3]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2700, ANGRY]
type = ChangeState
trigger1 = parent, stateno >= 5000
trigger1 = parent, stateno < 5900
trigger1 = parent, life > 0
trigger1 = Random < 100
value = 2735

[State 2700, WIN]
type = ChangeState
triggerall = RootDist X <= 38
triggerall = RootDist X >= 35
trigger1 = win = 1
value = 2740

[State 2700, BLINK]
type = ChangeState
trigger1 = Time = 0
trigger1 = Random < 250
value = 2750

[State 2700, RIGHT]
type = ChangeState
triggerall = RootDist X > 38
trigger1 = Random < 20
trigger1 = parent, life > 0
value = 2720

[State 2700, LEFT]
type = ChangeState
triggerall = RootDist X < 35
trigger1 = Random < 20
trigger1 = parent, life > 0
value = 2721

[State 2700, RIGHT_LOST]
type = ChangeState
triggerall = RootDist X > 38
trigger1 = parent, life <= 0
value = 2725

[State 2700, LEFT_LOST]
type = ChangeState
triggerall = RootDist X < 35
trigger1 = parent, life <= 0
value = 2726

[State 2700, 8]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 2700, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 2700

;---------------------------------------------------------------------------
; Run Forward
[Statedef 2720]
type = A
movetype = I
anim = 2701
velset = 2,0,0

[State 2720, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 0

[State 2720, 1]
type = MakeDust
trigger1 = TimeMod = 10, 0
pos = -5,-2
spacing = 1

[State 2720, 2]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2720, 3]
type = Velset
trigger1 = RootDist X < 38
x = 0

[State 2720, 4]
type = ChangeState
trigger1 = RootDist X < 38
trigger2 = Vel X = 0
value = 2700

;---------------------------------------------------------------------------
; Run Backward
[Statedef 2721]
type = S
movetype = I
anim = 2703
velset = -2, 0, 0

[State 2721, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 1

[State 2721, 1]
type = MakeDust
trigger1 = TimeMod = 10, 0
pos = -5,-2
spacing = 1

[State 2721, 1]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2721, 1]
type = Velset
trigger1 = RootDist X > 35
x = 0

[State 2721, 1]
type = ChangeState
trigger1 = RootDist X > 35
trigger2 = Vel X = 0
value = 2700

;---------------------------------------------------------------------------
; Run Forward_LOST
[Statedef 2725]
type = A
movetype = I
anim = 2701
velset = 2,0,0

[State 2725, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 0

[State 2725, 1]
type = MakeDust
trigger1 = TimeMod = 10, 0
pos = -5,-2
spacing = 1

[State 2725, 2]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2725, 3]
type = Velset
trigger1 = RootDist X < 38
x = 0

[State 2725, 4]
type = ChangeState
trigger1 = RootDist X < 38
value = 2760

;---------------------------------------------------------------------------
; Run Backward_LOST
[Statedef 2726]
type = S
movetype = I
anim = 2703
velset = -2, 0, 0

[State 2726, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 1

[State 2726, 1]
type = MakeDust
trigger1 = TimeMod = 10, 0
pos = -5,-2
spacing = 1

[State 2726, 1]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2726, 1]
type = Velset
trigger1 = RootDist X > 35
x = 0

[State 2726, 1]
type = ChangeState
trigger1 = RootDist X > 35
value = 2761

;---------------------------------------------------------------------------
; BLINK
[Statedef 2750]
type = S
movetype = I
anim = 2750
velset = 0,0,0

[State 2750, 3]
type = changeanim
trigger1 = Time = 0
trigger1 = var(29) = 1
value = 2851

[State 2750, 4]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2750, 5]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 2750, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 2700

;---------------------------------------------------------------------------
; HIT!
[Statedef 2735]
type = S
movetype = I
anim = 2730
velset = 0,0,0

[State 2735, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = var(29) = 1
value = 2731

[State 2735, 2]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2735, 3]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 2735, 4]
type = ChangeState
trigger1 = Time = 12
value = 2700

;---------------------------------------------------------------------------
; WIN!
[Statedef 2740]
type = S
movetype = I
anim = 2740
velset = 0,0,0

[State 2740, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = var(29) = 1
value = 2741

[State 2740, 2]
type = SprPriority
trigger1 = Time >= 0
value = -2

[State 2740, 3]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 2740, 4]
type = ChangeState
trigger1 = Time = 1000
value = 2700

;---------------------------------------------------------------------------
; LOST_Forward
[Statedef 2760]
type = A
movetype = I
anim = 2701
velset = 0,0,0

[State 2760, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 0

[State 2760, 1]
type = Velset
trigger1 = Time < 10
trigger2 = Time > 40
x = 1

[State 2760, 1]
type = Velset
triggerall = Time > 9
triggerall = Time < 41
trigger1 = Time < 15
trigger2 = Time > 35
x = 2

[State 2760, 1]
type = Velset
trigger1 = Time > 14
trigger1 = Time < 36
x = 4

[State 2760, 1]
type = Posset
trigger1 = Time < 10
trigger2 = Time > 40
y = 0

[State 2760, 1]
type = Posset
triggerall = Time > 9
triggerall = Time < 41
trigger1 = Time < 15
trigger2 = Time > 35
y = 2

[State 2760, 1]
type = Posset
trigger1 = Time > 14
trigger1 = Time < 36
y = 4

[State 2760, 1]
type = MakeDust
trigger1 = TimeMod = 10, 0
pos = -5,-2
spacing = 1

[State 2760, 2]
type = SprPriority
trigger1 = Time >= 0
value = 12

[State 2760, 4]
type = ChangeState
trigger1 = RootDist X < -55
value = 2761

; LOST_Backward
[Statedef 2761]
type = A
movetype = I
anim = 2702
velset = 0,0,0

[State 2761, 1]
type = Varset
trigger1 = Time = 0
v = 29
value = 0

[State 2761, 1]
type = Velset
trigger1 = Time < 10
trigger2 = Time > 40
x = -1

[State 2761, 1]
type = Velset
triggerall = Time > 9
triggerall = Time < 41
trigger1 = Time < 15
trigger2 = Time > 35
x = -2

[State 2761, 1]
type = Velset
trigger1 = Time > 14
trigger1 = Time < 36
x = -4

[State 2761, 1]
type = Posset
trigger1 = Time < 10
trigger2 = Time > 40
y = 0

[State 2761, 1]
type = Posset
triggerall = Time > 9
triggerall = Time < 41
trigger1 = Time < 15
trigger2 = Time > 35
y = -2

[State 2761, 1]
type = Posset
trigger1 = Time > 14
trigger1 = Time < 36
y = -4

[State 2761, 2]
type = SprPriority
trigger1 = Time >= 0
value = -12

[State 2761, 4]
type = ChangeState
trigger1 = RootDist X > 55
value = 2760
