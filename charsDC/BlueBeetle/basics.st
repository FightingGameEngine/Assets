; States file for (Character) -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,3

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,3

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181

;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 10
value = 171,2+random%3

[State 250, 3]
type = VelSet
trigger1 = Time = 80
x = -1
y = -4

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,160]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 0
value = 191

;-----------------------
; Intro #1
[Statedef 191]  ; intro selector
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 0

[State 170,0]
type = PlaySnd
trigger1 = Time = 60
value = S200,1

[State 170,0]
type = PlaySnd
trigger1 = Time = 110
value = S8,1

[State 181,0]
type = PlaySnd
trigger1 = time = 40
value = 171,9+random%2

[State 181, Landing Dust]
type = explod
trigger1 = anim = 193
anim = 6007
id = 6007
postype = p1
pos = 0,0
ownpal = 1
bindtime = 1
scale = 0.7, 0.7
sprpriority = -2
persistent = 0
removeongethit = 0

[State 191, 9]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time < 100
value = 0
movecamera = 0,1
;ignorehitpause = 0
;persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = facing = 1
trigger1 = !time; = 0
x = -472.5
y = -199

[State 0, PosSet]
type = PosSet
trigger1 = facing = -1
trigger1 = !time; = 0
x = 472.5
y = -199

[State 0, VelSet]
type = VelSet
trigger1 = time = 20
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = time > 20
trigger1 = time < 100
y = 1.9

[State 0, VelSet]
type = VelSet
trigger1 = time = 100
x = 0

[State 0, VelSet]
type = Veladd
trigger1 = anim = 191
trigger1 = time > 100
x = .015
y = .2

[State 0, VelSet]
type = VelSet
trigger1 = anim = 193
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y >= -7
value = 193

[State 52, 2]
type = PosSet
trigger1 = anim = 193
trigger1 = Time = 0
x = 0
y = 0

[State 191, 10]
type = ChangeState
trigger1 = time = 130
value = 199

;----------------------------------------------- 
[Statedef 199]; Move around before match 
type = S 
physics =S 
sprpriority = 0 
anim = 0
velset = 0,0

[State 199]
type = null;OffSet
trigger1 = Anim = [20,21]
y = -5

[State 199]
type = PosSet 
trigger1 = 1
y = 0 

[State 199]
type = VelSet 
trigger1 = Time = 0 
y = 0 


[State 199]
type = VelSet 
trigger1 = command = "holdfwd" 
x = 2.4 

[State 199]
type = VelSet 
trigger1 = command = "holdback" 
x = -2.0 

[State 199]
type = ChangeAnim 
trigger1 = command = "holdfwd" 
trigger1 = Anim != 20
value = 20

[State 199]
type = ChangeAnim 
trigger1 = command = "holdback" 
trigger1 = Anim != 21
value = 21

[State 199]
type = ChangeAnim 
trigger1 = command != "holdback" 
trigger1 = command != "holdfwd" 
trigger1 = Anim != 0 
value = 0

[State 199] 
type = VelSet 
trigger1 = command != "holdback" 
trigger1 = command != "holdfwd" 
x = 0 

[State 199]
type = VarSet 
trigger1 = roundstate != 2 
var(1) = floor(pos x) 

[State 199]
type = posset 
trigger1 = roundstate = 2 
trigger1 = var(1) != 0 
x = var(1) 

[State 199]
type = varset 
trigger1 = roundstate = 2 
var(1) = 0 

[State 199]
type = changestate 
trigger1 = ctrl 
value = ifelse((command = "holdfwd") || (command ="holdback"),20,0)


;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -5, -70
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,1


[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1


[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -5
air.type = Low
air.hittime = 15
air.velocity = -3,-2

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
 ; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 1
sparkxy = -5, -70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = -6
fall = 1
p2stateno = 221
ground.cornerpush.veloff = -8


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 221]
type = A
movetype = H
physics = N
velset = 0,0
facep2 = 1
ctrl = 0

[State 221, PosFreeze]
type = PosFreeze
trigger1 = Time < 9

[State 221, NotHitBy]
type = NotHitBy
trigger1 = Time = 8
time = 8
value = SCA

[State 221, VelSet]
type = VelSet
trigger1 = !Alive
x = -6
y = -18

[State 221, SelfState]
type = SelfState
trigger1 = !Alive
value = 5050

[State 221, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 9
value = 5002

[State 221, VelSet]
type = VelSet
trigger1 = Time = 8
x = -19
y = -11

[State 221, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 8
value = 5050

[State 221, VelAdd]
type = VelAdd
trigger1 = Time > 8 && Pos Y < 0
y = .85

[State 221, ChangeState]
type = ChangeState
trigger1 = Time > 15
trigger1 = BackEdgeDist < 10
value = 222

[Statedef 222]
type = A
movetype = H
physics = N
anim = 5040
velset = 0
ctrl = 0

[State 222, VelAdd]
type = VelAdd
trigger1 = Pos Y < 0
y = .75

[State 222, EnvShake]
type = EnvShake
trigger1 = !Time
time = 10
ampl = -4

[State 222, VelSet]
type = VelSet
trigger1 = Pos Y > 0
y = 0

[State 222, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 222, SelfState]
type = SelfState
trigger1 = !Pos Y
value = 52

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,0

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -25
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2


[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,1


[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -15,-65
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 245, 24] 
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 200, grunt Hrd]
type = velset
trigger1 = time = [0,28]
x = 2

[State 200, grunt Hrd]
type = velset
trigger1 = time = 4
y=-3

[State 200, grunt Hrd]
type = velset
trigger1 = time = 12
y=0

[State 200, grunt Hrd]
type = velset
trigger1 = time = 18
y=3


[State 200, grunt Hrd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-60
hitsound = s2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,0

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,1


[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-45
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 16
ground.velocity = -3,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 2

[State 420, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
guardflag = L
pausetime = 9,9
sparkno = 2
sparkxy = -10, -98
hitsound = S2,2
guardsound = S3,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  =  30
air.hittime  =  30
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-12

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,0


[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10, -5
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
air.type = Low
air.hittime = 3
air.velocity = -1,1


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,1


[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = HARD
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -10
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
air.type = Low
air.hittime = 3
air.velocity = -1,1


[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
numhits = 2
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-20
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-2
air.type = Low
air.hittime = 15
air.velocity = -1,-2.5
fall = 1
fall.recover = 0

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = time = 0
value = 1,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,0


[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -10, -23
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0, -8.5

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,1

[State 200, grunt Med]
type = PlaySnd
trigger1 = AnimElem = 2
value = 174,1

[State 6192]
type = Explod
trigger1 = AnimElem = 2
anim = 3204
bindtime = -1
scale = 0.5,0.5
pos = 70,-42

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-80
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -3.5

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2


[State 620, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = 1,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2


[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 200, grunt]
type = PlaySnd
trigger1 = time = 0
value = 1,0


[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -4, -83
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -7.5
air.hittime = 25

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 200, grunt Med]
type = PlaySnd
trigger1 = time = 0
value = 1,1


[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -3.5
air.hittime = 25

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = time = 0
value = 1,2


[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -40
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

[StateDef 949]
type = A
movetype = I
physics = A
ctrl = 0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 174,5

[State 0, Explod]
type = Explod
trigger1 = time =0
anim =950
ID = 950
pos = -10,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time =0
anim =950
ID = 950
pos = 10,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
scale = 1,1
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 0, VarSet]
type = VarSet
trigger1 =  time = 0
v = 42
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = -10

[State 0, VelSet]
type = VelSet
trigger1 =  command = "holdfwd"
x = 3.5

[State 0, VelSet]
type = VelSet
trigger1 =  command = "holdback"
x = -3.5

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) ;&& (Vel X = 0)
value = 949

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 15
value = 1



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
