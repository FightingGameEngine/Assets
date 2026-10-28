;---------------------------------------------------------------------------
; light_punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = light
damage    = 20, 1
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; light_kick
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40, 1
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-14
hitsound   = S5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_punch_far
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 12
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 220, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 220, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Heavy
damage    = 75, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4  
air.velocity = -4,0

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_far
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 12
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 220, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 85, 1
guardflag = MA
pausetime = 5,9
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4   
air.velocity = -4,-6

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_close
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 12
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 240

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 80, 1
guardflag = MA
pausetime = 14,8
sparkno = 2
sparkxy = -15,-70
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -9   
air.velocity = -1,-9
fall = 1

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_punch_close
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 12
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 250

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1

[State 250, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 75, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -8,0

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; light_punch_crouch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 400

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 20, 1
guardflag = MA
pausetime = 3,3
sparkno = 0
sparkxy = -15,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 400, 3]
type = CtrlSet
trigger1 = Time = 6
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; light_kick_crouch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 410

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 30, 1
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-10
hitsound   = S5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; strong_punch_crouch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 12
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 420

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Heavy
damage    = 70, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -15,-30
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_crouch
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 430

[State 430, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
animtype  = heavy
damage    = 85, 1
guardflag = L
pausetime = 8,8
sparkno = 2
sparkxy = -25,-10
hitsound   = S5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1  
air.velocity = -1,0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; light_punch_air
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 2

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype  = Medium
damage    = 20, 1
guardflag = MA
pausetime = 5,5
sparkno = 1
sparkxy = -25,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; light_kick_air
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 610

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype  = Medium
damage    = 32, 1
guardflag = MA
pausetime = 5,5
sparkno = 1
sparkxy = -25,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 610, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; strong_punch_air
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype  = Heavy
damage    = 80, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-30
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3, 5  
air.velocity = -3,5
fall = 1

[State 620, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_air_below
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 630

[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype  = Heavy
damage    = 100, 1
guardflag = MA
hitflag = MAF
pausetime = 9,9
sparkno = 2
sparkxy = -25,-50
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.2    
air.velocity = -1.2, -9

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_air_below_followup
[Statedef 635]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 630

[State 635, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0

[State 635, 1]
type = VelSet
trigger1 = Time = 0
x = 0

[State 635, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype  = Heavy
damage    = 20, 1
guardflag = MA
hitflag = MAF
pausetime = 9,9
sparkno = 2
sparkxy = -25,-50
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.2    
air.velocity = -1.2, -9

[State 635, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; strong_kick_air_above
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
anim = 640

[State 640, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
animtype  = Medium
damage    = 80, 1
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = 2
sparkxy = -25,-30
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 640, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; hammer
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 6

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 0

[State 1000, 2.5]
type = PlaySnd
trigger1 = AnimElem = 7
value = 7, 3

[State 1000, 3]
type = VelSet
trigger1 = animelem = 5
x = 18

[State 1000, 3]
type = EnvShake
trigger1 = time = 40
time = 15

[State 1000, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 25
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1000, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Heavy
damage    = 145, 1
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -15,-15
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5,9
air.velocity = -5,9
fall = 1

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; uppercut
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1110
ctrl = 1

; uppercut#2
[Statedef 1110]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,-11,0
anim = 1110

[State 1110, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 6

[State 1110, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 1110, 2.5]
type = VelSet
trigger1 = Time < 4
x = 9

[State 1110, 2.5]
type = VelSet
trigger1 = Time >= 4
x = 2

[State 1110, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1110, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 30, 1
guardflag = MA
pausetime = 10,4
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-7   
air.velocity = -1,-7
fall = 1

[State 1110, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

; uppercut#2_after_spin
[Statedef 1120]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,-11,0
anim = 1110

[State 1120, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 6

[State 1120, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 1120, 2.5]
type = VelSet
trigger1 = Time < 4
x = 9

[State 1120, 2.5]
type = VelSet
trigger1 = Time >= 4
x = 2

[State 1120, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1120, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 7, 1
guardflag = MA
pausetime = 10,4
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-7   
air.velocity = -1,-7
fall = 1

[State 1120, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; double_upper
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 1200

[State 1200, 1]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 7, 1

[State 1200, 2]
type = VelSet
trigger1 = AnimElem = 5
x = 9

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 0, 0
guardflag = MA
pausetime = 8,0
sparkno = -1
sparkxy = -25,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = 0  
air.velocity = 0,0
p2stateno = 1210

[State 1200, 4]
type = TargetBind
trigger1 = Time = 16
trigger1 = movehit = 1
pos = 30,0
time = 35

[State 1200, 5]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 75, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-9  
air.velocity = -4,-9
fall = 1

[State 1200, 6]
type = ChangeState
trigger1 = AnimElem = 4
trigger1 = p2stateno != 1210
value = 0
ctrl = 1

[State 1200, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; hit by double_upper!
[Statedef 1210]
type    = A
movetype= H
physics = N
velset = 0,0,0

[State 1210, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 5000

[State 1210, 2]
type = Selfstate
trigger1 = Time > 35
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; spin_start
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1300, 1]
type = VarSet
trigger1 = Time = 0
v = 15
value = 5

[State 1300, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1310
ctrl = 1

; spin_motion
[Statedef 1310]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 15
ctrl = 0
velset = 0,0,0
anim = 1310

[State 1310, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 1310, 2]
type = PosAdd
trigger1 = Time > 0
x = 4

[State 1310, 2.5]
type = VarAdd
trigger1 = Time = 0
v = 15
value = -1

[State 1310, 3]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1310, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 30, 1
guardflag = MA
pausetime = 2,14
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-2   
air.velocity = -2,-2
fall = 1

[State 1310, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) > 0
value = 1310
ctrl = 0

[State 1310, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) = 0
value = 1320
ctrl = 0

; spin_end
[Statedef 1320]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 1320

[State 1320, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; combo_breaker
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 1400

[State 1400, 1]
type = PlaySnd
trigger1 = time = 1
value = 7, 4

[State 1400, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 6

[State 1400, 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 0

[State 1400, 2.5]
type = PlaySnd
trigger1 = AnimElem = 7
value = 7, 3

[State 1400, 3]
type = EnvShake
trigger1 = time = 10
time = 15

[State 1400, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 25

[State 1400, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Heavy
damage    = 125, 1
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -15,-15
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5,-9   
air.velocity = -5,-9
fall = 1

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Charge
[Statedef 1500]
type    = S
physics = N
ctrl = 0
velset = 0,0,0

[State 1500, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 1500, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 1500

[State 1500, 2]
type = poweradd
trigger1 = Time = [0, 999999]
value = 2

[State 1500, 3]
type = poweradd
trigger1 = Time = [30, 999999]
value = 2

[State 1500, 4]
type = poweradd
trigger1 = Time = [90, 999999]
value = 2

[State 1500, 5]
type = poweradd
trigger1 = Time = [120, 999999]
value = 2

[State 1500, 6]
type = GameMakeAnim
trigger1 = TimeMod = 9, 0
value = 130
pos = 0, 0

[State 1500, 6]
type = PlaySnd
trigger1 = TimeMod = 14, 0
value = 7,11
volume = -50

[State 1500, 7]
type = ChangeState
trigger1 = power >= 3000
value = 0
ctrl = 1

[State 1500, 8]
type = ChangeState
trigger1 = command != "charge"
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; throw
[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 900

[State 900, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, ST
animtype  = Heavy
damage    = 0, 0
guardflag = MA
pausetime = 8,1
sparkno = -1
sparkxy = -25,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = -5,-8   
air.velocity = -5,-8
p2stateno = 910
fall = 1

[State 900, 2]
type = TargetBind
trigger1 = Time = 1
pos = 30,0
time = 13

[State 900, 4]
type = PosAdd
trigger1 = Time = 8
x = 50

[State 900, 2]
type = TargetBind
trigger1 = Time = 8
pos = -30,0
time = 16

[State 900, 2]
type = TargetBind
trigger1 = Time = 13
pos = 20,-10
time = 18

[State 900, 5]
type = HitDef
trigger1 = AnimElem = 4
attr = S, ST
animtype  = Heavy
damage    = 0, 0
guardflag = MA
pausetime = 2,2
sparkno = -1
sparkxy = -25,-55
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = -2,-12    
air.velocity = -2,-12
fall.damage = 65
fall = 1
fall.recover = 0

[State 900, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; get throw!
[Statedef 910]
type    = A
movetype= H
physics = N
;velset = 0,0,0

[State 910, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 5001

[State 910, 3]
type = Selfstate
trigger1 = Time = 60
value = 5035
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Super#1
[Statedef 4000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4000
poweradd = 0

[State 4000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -25, -45
anim = 100
time = 44

[State 4000, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = F20,0

[State 4000, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4000, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4000, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4000, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4000]
type = Explod
trigger1 = Time = 0
anim = 10001
id = 10001
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44

[State 4000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 7

[State 4000, 2]
type = PosAdd
trigger1 = Time > 14
x = 9

[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 45, 1
guardflag = MA
pausetime = 4,14
sparkno = 2
sparkxy = -15,-45
getpower = 0
givepower = 30
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7,-3 
air.velocity = -7,-3
fall = 1
fall.recover = 0

[State 4000, 4]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = Heavy
damage    = 45, 1
guardflag = MA
pausetime = 8,54
sparkno = 2
sparkxy = -15,-45
getpower = 0
givepower = 30
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7,-3
air.velocity = -7,-3
fall = 1
fall.recover = 0

[State 4000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 4010
ctrl = 0

[Statedef 4010]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4010

[State 4010, 5]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 65, 1
guardflag = MA
pausetime = 48,8
sparkno = 2
sparkxy = -15,-45
getpower = 0
givepower = 30
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -13,-3   
air.velocity = -13,-3
fall = 1
fall.recover = 0

[State 4010, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super#2
[Statedef 4100]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 1300
poweradd = 0

[State 4100, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -7, -22
anim = 102
time = 44

[State 4100, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = F20,0

[State 4100, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4100, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4100, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 84

[State 4100, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4100]
type = Explod
trigger1 = Time = 0
anim = 10001
id = 10001
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44

[State 4100, 1]
type = VarSet
trigger1 = Time = 0
v = 15
value = 18

[State 4100, 1.5]
type = VarSet
trigger1 = Time = 0
v = 16
value = 0

[State 4100, 1.5]
type = PlaySnd
trigger1 = Time = 3
value = 7, 7

[State 4100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 4110
ctrl = 1

[Statedef 4110]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0,0
anim = 4110

[State 4110, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 2

[State 4110, 1.5]
type = PlayerPush
trigger1 = 1
value = 0

[State 4110, 2]
type = VelSet
trigger1 = Time >= 0
trigger1 = Var(15) > 4
y = -1

[State 4110, 2]
type = VelSet
trigger1 = Time >= 0
trigger1 = Var(15) <= 4
y = 0

[State 4110, 2.5]
type = VarAdd
trigger1 = Time = 0
v = 15
value = -1

[State 4110, 4]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Heavy
damage    = 11, 1
guardflag = MA
pausetime = 4,0
getpower = 0
givepower = 30
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity =2,-1.8     
air.velocity = 2,-1.8
fall = 1
fall.recover = 0

[State 4110, 4.5]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 11, 1
guardflag = MA
pausetime = 4,0
getpower = 0
givepower = 30
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity =-2,-1.8     
air.velocity = -2,-1.8
fall = 1
fall.recover = 0

[State 4110, 5]
type = VarSet
triggerall = movehit = 1
trigger1 = Time = 1
trigger2 = Time = 2
trigger3 = Time = 5
trigger4 = Time = 6
v = 16
value = 1

[State 4110, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) > 0
value = 4110
ctrl = 0

[State 4110, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) = 0
trigger1 = Var(16) > 0
value = 50
ctrl = 1

[State 4110, 8]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(16) <= 0
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
; Super#3
[Statedef 4200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4200
poweradd = 0

[State 4200, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 18, -16
anim = 100
time = 44

[State 4200, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = F20,0

[State 4200, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4200, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4200, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 84

[State 4200, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4200]
type = Explod
trigger1 = Time = 0
anim = 10001
id = 10001
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44

[State 4200, 1]
type = VarSet
trigger1 = Time = 0
v = 15
value = 15

[State 4200, 1.5]
type = PlaySnd
trigger1 = Time = 3
value = 7, 7

[State 4200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 4210
ctrl = 1

[Statedef 4210]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4210

[State 4210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 2

[State 4210, 2]
type = PosAdd
trigger1 = Time >= 0
x = 4

[State 4210, 2.5]
type = VarAdd
trigger1 = Time = 0
v = 15
value = -1

[State 4210, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 16, 1
guardflag = MA
pausetime = 4,24
getpower = 0
givepower = 30
sparkno = 2
sparkxy = -15,-45
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-1   
air.velocity = -2,-1
fall = 1
fall.recover = 0

[State 4210, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) > 0
value = 4210
ctrl = 0

[State 4210, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(15) = 0
value = 1200
ctrl = 0
