;---------------------------------------------------------------------------
;-------------Basic Moves------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                     
velset = 0,0                    
ctrl = 0 
anim = 200         
poweradd = 20       
sprpriority = 2 
  
[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA                 
damage = 23, 0           
animtype = Light   
guardflag = MA      
hitflag = MAF        
priority = 3, Hit          
pausetime = 8, 8           
sparkno = 0                  
sparkxy = -15, -86
hitsound = S2,0
guardsound = S3,0
ground.type = High        
ground.slidetime = 10         
ground.hittime  = 12        
ground.velocity = -5         
air.velocity = -3    
airguard.velocity = -6   
ground.cornerpush.veloff = -9
air.fall = 1
fall.recovertime = 16
air.type = High         
air.hittime = 12            

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 210, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-70
hitsound = S2, 1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 1
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1


[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 60, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 2
sparkxy = -5, -80
hitsound = S2, 2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1


[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Standing light kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 230, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 12,12
sparkno = 0
sparkxy = -10,-37
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -9
air.fall = 1
fall.recovertime = 16

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing medium kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-70
hitsound = S2, 1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 250, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60, 0
animtype  = Heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 12, 15
sparkno = 2
sparkxy = -5, -80
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
guard.velocity = -18
air.type = low
air.velocity = 0,-16


[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 400, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 23
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = MA
pausetime = 10,11
sparkno = 0
sparkxy = -10,-42
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;Crouching medium punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 410, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-60
hitsound = S2, 1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 10
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 420, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 420, uni]
type = HitDef
trigger1 = Time = 0
attr = C, NA
projID = 421
projanim = 421
projhitanim = 421
guardflag = MA
damage    = 72
hitflag = MAF
guardflag = M
pausetime = 8,12
sparkno = 2
sparkxy = -10,-25
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -18
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1

[State 250, 3]
type = ChangeState
trigger1 = Movehit
trigger1 = command = "holdup"
trigger1 = time > 8
trigger1 = time < 12
value = 1045
ctrl = 1

[State 421, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Launcher - (hit state 1)
[Statedef 226]
type    = S
movetype= H
physics = N
velset = 0,0

[State 226, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 0
value = 5012

[State 226, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = A

[State 226, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 227

;---------------------------------------------------------------------------
; Launcher - (hit state 2)
[Statedef 227]
type    = A
movetype= H
physics = N
ctrl = 0

[State 227, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.65

[State 227, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = -16

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = ifelse(AnimExist(5051),5051,5050)

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 26 && AnimExist(5061)
value = 5061

[State 227, SelfState]
type = SelfState
trigger1 = Time = 35
value = 5040

;---------------------------------------------------------------------------
;Crouching light kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 430, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 28
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = 0
sparkxy = -10,-8
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-50
hitsound = S2, 1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26
fall = 1

[State 441, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick

[Statedef 450]
type=C
movetype=A
physics=C
anim=450
velset=0,0
poweradd=70
juggle=4
sprpriority=1
ctrl=0

[State 450, snd]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 450, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 450, hit]
type=hitdef
trigger1 = Time = 0
attr = C, NA
damage    = 60
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 2
sparkxy = -5,-10
hitsound = S2,1
guardsound = S3,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 450, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 11


;---------------------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
animtype = light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 7,8
sparkno = 1
sparkxy = -10,-58
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4
guard.velocity = -10.6
airguard.velocity = -6
air.type = low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4, -4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 611, uni]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 72
animtype = Medium
guardflag = HA
hitflag = MAFD
sprpriority = 4
pausetime = 2,12
sparkno = 1
sparkxy = -10,-55
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -9,1
guard.slidetime = 13
guard.velocity = -8.6
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-2)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Strong Punch A
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 1x]
type = PlaySnd
trigger1 = animelem = 4
value = 2,2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 2

[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 72
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2
sparkxy = -10,-15
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -15,19
air.hittime = 20
yaccel = 0.5
down.velocity = -4,-4
p2facing = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0


[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 26
animtype = Light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -5,-35
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-6,-5)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
animtype = Medium
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -5,-65
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -9
guard.velocity = -8.5
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-3)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 2

[State 650, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 70
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-70
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 17
ground.hittime = 21
ground.velocity = -7
guard.velocity = -13
airguard.velocity = -6
air.type = Low
air.velocity = -15,2
p2facing = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
; Falling from air attack
[Statedef 660]
type    = A
movetype= I
physics = A
anim = 660
ctrl = Var(3)
sprpriority = 1

[State 660, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -5

[State 660, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdback"
x = -2.5

[State 660, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdfwd"
x = 2.5

[State 660, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 660, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

