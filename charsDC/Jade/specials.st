; States file for {character} -- Specials
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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Beam Helper
[Statedef 1005]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 1005
id = 1005
juggle  = 4

[State 1110, 2]
type = SprPriority
trigger1 = time = 1
value = 5

[State 251, HitDef]
type = HitDef
trigger1 = AnimElemTime(3) % 10 = 1
attr = S,NA
damage = 38,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = -1
sparkxy = -10, -40
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity =0,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;Ring Strike
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 999
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S500,7

[State 0, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal
name = "beam"
ID = 1005
stateno = 1005
pos = 80,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 1010, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 3
x= -4
y = -4

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 4
x= 0
y = 0



[State 0, Helper]
type = Helper
trigger1 =  ANIMELEM =4
helpertype = normal ;player
name = "feathers"
ID =  1110
stateno = 1110
pos = 50,-100
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 =  ANIMELEM =4
helpertype = normal ;player
name = "feathers"
ID =  1110
stateno = 1110
pos = 0,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 =  ANIMELEM =4
helpertype = normal ;player
name = "feathers"
ID =  1110
stateno = 1110
pos = 80,-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0


; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 270, Explod]
type = Explod
trigger1 = animelem =4
anim = 1101
ID = 1101
pos = -10,-60
sprpriority = -2
ontop = 0
facing = 1
bindtime = -1
ignorehitpause = 0
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------
;Beam Helper
[Statedef 1110]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1110
juggle  = 4
velset = 8,5


[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 17
ground.hittime  = 21
ground.velocity = -3
air.velocity = -4

[State 0, DestroySelf]
type = DestroySelf
trigger1 = movecontact
trigger2 = animtime = 0

;------------------------------
; Special 1
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 1
x= 8

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 3
x= 5

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 5
x= 5

; voice
[State 1000, PlaySnd]
type = velset
trigger1 = AnimElem = 7
x= 5

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0


; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 270, Explod]
type = Explod
trigger1 = animelem =2
anim = 1201
ID = 1201
pos = 72,-75
sprpriority = 1
ontop = 0
facing = 1
bindtime = -1
ignorehitpause = 0
removeongethit = 1



[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
attr = S, NA
damage = 15
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = -3
air.velocity = -4
ground.cornerpush.veloff = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1
[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0


; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 270, Explod]
type = Explod
trigger1 = animelem =2
anim = 1310
ID = 1310
pos = 5,-20
sprpriority = 2
ontop = 0
facing = 1
bindtime = -1
ignorehitpause = 0
removeongethit = 1



[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 150
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 17
ground.hittime  = 21
ground.velocity = -3
air.velocity = -4

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1
[StateDef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0


[State 0, Helper]
type = Helper
trigger1 = time = 17
helpertype = normal
name = "beam"
ID = 1415
stateno = 1415
pos = 40,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 = time = 32
helpertype = normal
name = "beam"
ID = 1415
stateno = 1415
pos = 40,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 270, Explod]
type = Explod
trigger1 = animelem =2
anim = 1410
ID = 1410
pos = -20,-60
sprpriority = -2
ontop = 0
facing = 1
bindtime = -1
ignorehitpause = 0
removeongethit = 1

[State 270, Explod]
type = Explod
trigger1 = animelem =2
anim = 1411
ID = 1411
pos = -20,-60
sprpriority = 2
ontop = 0
facing = 1
bindtime = -1
ignorehitpause = 0
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Beam Helper
[Statedef 1415]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 1415
id = 1005
juggle  = 4

[State 1110, 2]
type = SprPriority
trigger1 = time = 1
value = 5

[State 251, HitDef]
type = HitDef
trigger1 = AnimElemTime(3) % 10 = 1
attr = S,NA
damage = 50,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = -1
sparkxy = -10, -40
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity =0,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------
; Special 1
[StateDef 1500]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
poweradd = -1000

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "beam2"
ID = 1501
stateno = 1501
pos = 59,-105
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Beam Helper
[Statedef 1501]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 1501
id = 1501
juggle  = 4
velset = 0,0

[State 1110, 2]
type = SprPriority
trigger1 = time = 1
value = 5

[State 251, HitDef]
type = HitDef
trigger1 = AnimElemTime(3) % 10 = 1
attr = S,NA
damage = 120,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = -1
sparkxy = -10, -40
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity =0,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
Fall = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
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

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
