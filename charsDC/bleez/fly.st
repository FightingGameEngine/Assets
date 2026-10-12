; FLY MODE
;---------------------------------------------------------------------------

[Statedef 1]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,-3
anim = 41
juggle = 0
poweradd = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 61
ID = 61
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
;------------------------
; FLY TIMER
[State 1032, 7]
type = VarSet
trigger1 = Time = 0
V = 5
Value =1000

;----------------

[State 9000, 1]
type = Velset
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
y = -3


[State 9000, 2]
trigger1 = time = 20
type = ChangeState
value = 9001
ctrl = 0
;==========================================================
;===========================================================
[Statedef 9001]
type    = A
movetype= I
ctrl = 0
anim = 1
velset = 0,1


[State 9001, green Afterimage]
type = AfterImage
trigger1 = time = 1

length = 10
framegap = 2
PalBright= -10, 200, -10
PalAdd= 255,0,20
Trans = add
time = 200

[State 9001, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -400
trigger6 = Pos Y > -30
x = 0
y = 0
;This part makes a charcter looks like flying.


[State 9001, Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 1
value = 1

[State 9001, GoUpAnim]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 0
value = 45
[State 9001, GoDownAnim]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 0
value = 46

[State 9001, GoBackAnim]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 0
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 105
[State 9001, GoForwardAnim]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 0
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 100

[State 9001,Turn]
type = Turn
trigger1 = P2bodydist X < -40
[State 9001,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 51
ctrl = 1

[State 9001,GoUp2]
type = VelSet
trigger1 = command = "holdup"
y = -3
[State 9001,GoDown2]
type = VelSet
trigger1 = command = "holddown"
y = 3
[State 9001,GoBack2]
type = VelSet
trigger1 = command = "holdback"
x = -3
[State 9001,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
x = 3

[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y < -200
y = -200
[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y > 0
y = -20


 ; FLY MODE END
[State 9001, 6]
trigger1 = command = "fly"
trigger2 = Var(5) <= 0
trigger3 = Win = 1
trigger4 = Lose = 1
type = ChangeState
value = 50
ctrl = 1

[State 9001, 0]
type = ChangeState
trigger1 = command = "qcf_x"
value = 99700
ctrl = 1

[State 9001, 1]
type = ChangeState
trigger1 = command = "qcf_y"
value = 99700
ctrl = 1

[State 9001, 6]
type = ChangeState
trigger1 = command = "qcf_z"
value = 99700
ctrl = 1

[State 9001, 6]
type = ChangeState
trigger1 = command = "qcf_a"
value = 1201
ctrl = 1
;---------------------------------------------------------------------------
; X button
[State 9001, 6]
trigger1 = command = "x"
type = ChangeState
value = 99600
ctrl = 1

;---------------------------------------------------------------------------
; Y button
[State 9001, 6]
type = ChangeState
trigger1 = command = "y"
trigger2 = movecontact = 1
trigger2 = stateno = 99600
trigger3 = movecontact = 1
trigger3 = stateno = 99601
value = 99602
ctrl = 1

;---------------------------------------------------------------------------
; Z button
[State 9001, 6]
type = ChangeState
trigger1 = command = "z"
trigger2 = movecontact = 1
trigger2 = stateno = 99600
trigger3 = movecontact = 1
trigger3 = stateno = 99601
trigger4 = movecontact = 1
trigger4 = stateno = 99602
trigger5 = movecontact = 1
trigger5 = stateno = 99603
value = 99604
ctrl = 1

;---------------------------------------------------------------------------
; A button
[State 9001, 6]
type = ChangeState
trigger1 = command = "a"
trigger2 = movecontact = 1
trigger2 = stateno = 99600
value = 99601
ctrl = 1

;---------------------------------------------------------------------------
; B button
[State 9001, 6]
type = ChangeState
trigger1 = command = "b"
trigger2 = movecontact = 1
trigger2 = stateno = 99600
trigger3 = movecontact = 1
trigger3 = stateno = 99601
trigger4 = movecontact = 1
trigger4 = stateno = 99602
value = 99603
ctrl = 1

;---------------------------------------------------------------------------
; C button
[State 9001, 6]
type = ChangeState
trigger1 = command = "c"
trigger2 = movecontact = 1
trigger2 = stateno = 99600
trigger3 = movecontact = 1
trigger3 = stateno = 99601
trigger4 = movecontact = 1
trigger4 = stateno = 99602
trigger5 = movecontact = 1
trigger5 = stateno = 99603
trigger6 = movecontact = 1
trigger6 = stateno = 99604
value = 99605
ctrl = 1

;---------------------------------------------------------------------------
; COSPIR SANGUE VOANDO
[StateDef 99700]
type = A
movetype = A
physics = S
anim = 2814
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S50,1
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,1
freqmul= 1.3
[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1022
ID =  1022
pos = 40,-90
removetime = -2
scale = 0.5,0.2
sprpriority = 0
ontop = 1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1010
projcancelanim = 1020
velocity = 6,6
projscale = 0.5,0.3
offset = 40,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S1010
guard.sparkno = 0
hitsound = S50,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;FLY_X
[Statedef 99600]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 400
velset= 0,0
poweradd = 20

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,13

[State 99600, 2]
type = HitDef
trigger1 = AnimElem = 1
persistent = 0
attr = A, NA
damage    = 40
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound   = S2,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -3
air.velocity = -2,-3

[State 600, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_Y
[Statedef 99602]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 410
velset= 0,0
poweradd = 30

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 405, 6]
type = PlaySnd
trigger1 = Time = 8
value = 0,19

[State 99600, 2]
type = HitDef
trigger1 = AnimElem = 1

persistent = 0
attr = A, NA
damage    = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound   = S2,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-3


[State 99602, 6]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 99602, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_Z
[Statedef 99604]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 420
velset= 0,0
poweradd = 50

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 405, 6]
type = PlaySnd
trigger1 = Time = 14
value = 0,19

[State 405, 6]
type = PlaySnd
trigger1 = Time = 4
value = 0,7

[State 99604, 2]
type = HitDef
trigger1 = AnimElem = 1

persistent = 0
attr = A, NA
damage    = 60
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkxy = -10,-70
hitsound   = S2,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -8.5,8
air.fall = 1

[State 99604, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_A
[Statedef 99601]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 630
velset= 0,0
poweradd = 20

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 99601, 2]
type = HitDef
trigger1 = AnimElem = 1

persistent = 0
attr = A, NA
damage    = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkxy = -10,-70
hitsound   = S2,0
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -3
air.velocity = -1,-3

[State 99601, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_B
[Statedef 99603]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 640
velset= 0,0
poweradd = 30

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,6

[State 99603, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
persistent = 0
attr = A, NA
damage    = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkxy = -10,-70
hitsound   = S2,1
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-8
air.fall = 1

[State 99603, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_C
[Statedef 99605]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 650
velset= 0,0
poweradd = 50

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 405, 6]
type = PlaySnd
trigger1 = Time = 0
value = 0,7

[State 99605, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
persistent = 0
attr = A, NA
damage    = 65
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkxy = -10,-70
hitsound   = S2,2
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.type = Low
air.velocity = -10,8
air.fall = 1

[State 99605, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;----------------------------

