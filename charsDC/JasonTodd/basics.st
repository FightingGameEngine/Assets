; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
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
type =  ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - just standing
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 181,0 + ((Random * 3) / 1000)
channel = 0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,150]
flag = RoundNotOver

;-----------------------
; Winpose #2 - just standing #2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 182,0 + ((Random * 3) / 1000)
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = RoundNotOver

;-----------------------------
[Statedef 183] ;robin
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 183,0 + ((Random * 2) / 1000)
channel = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = RoundNotOver

;----------------------


[Statedef 184] ;tal pick up
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 184
trigger1 =  AnimElem = 5
value = 184,0 + ((Random * 2) / 1000)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
triggerall = time > 20
trigger1 = timemod = 50,1
value = 171,6
channel = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3010
ID = 3018
pos = -50,-200
postype = back;left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0.5,2.5
;accel = 0,0
removetime = 59
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 110,110,110
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 75
anim = 3010
ID = 3018
pos = -10,-50
postype = back;left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
;accel = 0,0
removetime = -1
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 110,110,110
ownpal = 1
removeongethit = 0


[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3017
ID = 3019
pos = -50,-200
postype = back;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0.5,2.5
;accel = 0,0
removetime = 59
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -9
ontop = 0
shadow = 110,110,110
ownpal = 1
removeongethit = 0


[State 0, Explod]
type = Explod
trigger1 = time = 75
anim = 3016
ID = 3019
pos = -10,-50
postype = back;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
;accel = 0,0
removetime = 50
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -9
ontop = 0
shadow = 110,110,110
ownpal = 1
removeongethit = 0


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;----------------------

[Statedef 185]  ;vs Catwoman?
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 14
value = 0,0

[State 0, PlaySnd] ;here kitty
type = PlaySnd
trigger1 = time = 0
value = 40,4
channel = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 14
anim = 1959
ID = 1959
pos = 40,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 6,-5
accel = 0,0.2
removetime = 60
scale = 1,1
sprpriority = 30
ownpal = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro
;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2name = "Catwoman"
value =  185
ctrl = 0


[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191] ;Cost change
type = S
ctrl = 0
;anim = 191
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 99190 + ((Random * 6) / 1000)
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd];Robin
type = PlaySnd
trigger1 =  Anim = 99194
trigger1 = time = 0
value = 23,0
channel = 0

[State 0, PlaySnd];new hood
type = PlaySnd
trigger1 =  Anim = 99195
trigger1 = time = 0
value = 23,1
channel = 0

[State 0, PlaySnd];Bats
type = PlaySnd
trigger1 =  Anim = 99191
trigger1 = time = 0
value = 23,2
channel = 0

[State 0, PlaySnd];hush
type = PlaySnd
trigger1 =  Anim = 99190
trigger1 = time = 0
value = 23,3
channel = 0

[State 0, PlaySnd];Nightwing
type = PlaySnd
trigger1 =  Anim = 99192
trigger1 = time = 0
value = 23,4
channel = 0

[State 0, PlaySnd];Redrobin
type = PlaySnd
trigger1 =  Anim = 99193
trigger1 = time = 0
value = 23,5
channel = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 18
range = 0,5


[State 0, Explod]
type = Explod
trigger1 = time = 72
anim = 186
ID = 186
pos = 0,0
postype = p1  ;p2,front,back,left,right
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = time = 72
value = 171,7


[State 0, Explod]
type = null; Explod
trigger1 = animelem = 1
anim = 1900 + var(18)
ID = 1900
pos = 0,0
postype = p1  ;p2,front,back,left,right
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 0
removeongethit = 1
shadow = 50,50,50




[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro
;-------------------------------------------------
[Statedef 192]  ;mask Intro
type = S
ctrl = 0
anim = 192
velset = 0,0


[State 191, 1]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 5
value = 9,1

[State 100, win]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 9
value = 20,0 + ((Random * 4) / 1000)
channel = 0

[State 191, 1]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 12
value = 0,2

[State 0, Explod]
type = Explod
trigger1 = animelem = 14
anim = 1929
ID = 1929
pos = 40,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 6,-5
accel = 0,0.2
removetime = 60
scale = 1,1
sprpriority = 30
ownpal = 1



[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = Intro

;----------------------------------
[Statedef 193] ;bike intro
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 171,2
channel = -1

[State 0, StopSnd]
type = StopSnd
triggerall = Anim = 196
trigger1 = animelem = 2
channel = -1
volume = 100

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 22,0 + ((Random * 2) / 1000)
channel = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 193
ID = 193
pos = -200,0
postype = p1  ;p2,front,back,left,right
vel = 4,0
removetime = 60
scale = 1,1
sprpriority = -9
shadow = 50,50,50
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 194
ID = 194
pos = -200,0
postype = p1  ;p2,front,back,left,right
vel = 4,0
removetime = 60
scale = 1,1
sprpriority = -10
shadow = 50,50,50
ownpal = 0
removeongethit = 1

;-------------------
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal; player
name =  "moto"
ID = 3990
stateno = 3990
pos = 35,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove = 999
pausemove = 999

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

;----moto begin----
[StateDef 3990]
type    = A
movetype= I
physics = N
juggle  = 4
ctrl = 0
anim = 197
sprpriority = -50
velset = 0,0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,anim = 3900 && parent,animelem = 2

;-----moto end------------------------
[Statedef 194] ;drop in news
type = S
ctrl = 0
anim = 199
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 2
value = 8,0

[State 100, win]
type = PlaySnd
trigger1 = Time = 87
value = 21,0 + ((Random * 3) / 1000)

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 198
ID = 198
pos = 40,0
postype = p1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = -15
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 28
value = 8,1

[State -3, Landing Dust]
type = Explod
triggerall = anim != 0
triggerall =  NumExplod(60) < 1
trigger1 = animelem = 28
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

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = anim!=0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,375]
flag = Intro
;///////////////////////////////////////////////////////////
; Taunt
[StateDef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 185
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2,0


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 10

[State 200, grunt]
type = PlaySnd
trigger1 = time = 0
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -15, -95
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
trigger1 = time = 0
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1


[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
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
ground.slidetime = 15
ground.hittime  = 15
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
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 200, grunt Hrd]
type = Null ;PlaySnd
trigger1 = time = 0
value = 1,4 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 171,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value =  171,5


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 223
ID = 223
pos = 84,-94
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 221
projanim = 221
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 18,0
offset = 64,-94
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 65,0
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-4
air.velocity = -4,-5
fall = 1
air.fall = 1

[State 0, VarSet]
type = VarSet
trigger1 = (command = "qcf_z")
v = 41    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time > 14
trigger1 = var(41) = 1
value = 1100
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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
trigger1 = time = 0
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0


[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -55
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
trigger1 = time = 0
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
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

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = time = 0
value = 1,4 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 3
x = 6

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 4
x = 3

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 5
x = 0

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -4,-3
fall= 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
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
trigger1 = time = 0
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 25
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
trigger1 = time = 0
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 45
animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-51
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

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = time = 0
value = 1,4 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 8
x = 8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0


[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
sparkno = 2
sparkxy = -20, -88
hitsound = S171,8
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
trigger1 = time = 0
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
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
trigger1 = time = 0
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35
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

[State 200, grunt Hrd]
type = PlaySnd
trigger1 = time = 0
value = 1,4 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 60
animtype = HARD
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -20
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = trip
ground.velocity = -2, -4
guard.slidetime = 11
guard.hittime = 24
guard.velocity = -10
fall = 1
fall.recover = 0
air.type = Low
air.hittime = 5
air.velocity = -4,3

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
trigger1 = time = 0
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -10, -75
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
trigger1 = time = 0
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 35
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
trigger1 = Time = 2
value = 0,0

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 4
value = 171,3


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 226
ID = 226
pos = 55,-55
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 15
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,8;8,8
sparkno = 0
sparkxy = -10,-70
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 1
air.velocity = -8,6;-4,5

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 227
projanim = 227
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 18,18
offset = 52,-55
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 65,0
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,4
air.velocity = -8,6;-4,5
fall = 1
air.fall = 1

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
value = 1,0 + ((Random * 2) / 1000)
volume = -200
channel = 0


[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -73
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -5.5
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
value = 1,2 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 45
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
value = 1,4 + ((Random * 2) / 1000)
volume = -200
channel = 0

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
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

 ;Throw 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 10,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 30,-50

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -5,-95

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -75,0

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 6
value = 830

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 8,2

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 4
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -70

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 8400
ID = 8400
pos = 0,0
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 8401
ID = 8401
pos = 0,0
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 0


[State 0, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 5
time = 15
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =


[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820


[Statedef 830]
type    = A
movetype= H
physics = N
velset = -2,-4
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 10

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;throw cabeçada

 ;Throw 1
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 860]
type    = S
movetype= A
physics = N
anim = 860
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -4,-2
fall= 1
air.fall = 1



[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 870


[State 801, ChangeState]
type = selfState
trigger1 = Time >= 100
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


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


;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 40001, Tile #1-7]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 60
pausemovetime = -1
supermovetime = -1
scale = 1.2,0.7
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root,movetype!=A;root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

;3005

;[State 40001, Comic]
;type = ChangeState
;trigger1 = root, stateno =3005
;value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40001, Glass Break]
type = null;Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-80)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = parent,anim != 3120
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = parent,anim != 3120
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

;--------
[State 40001, P1 PORTRAIT]
type = Explod
triggerall = parent,anim = 3120
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 156079
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = parent,anim = 3120
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 156079
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
; Medium Foward Recovery Roll

[Statedef 832]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 888
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


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

[State 832, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

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
velset = -8,0
ctrl = 0
anim = 889
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


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

[State 855, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

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

