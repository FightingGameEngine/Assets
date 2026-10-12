; States file for {character} -- Hypers
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

;-------------------------------
;prep time----newhyper

[StateDef 9997]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 9500
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8000,2
channel = 0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 9997, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 9997, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 6
Time = 60
;anim =-1;s3012
pos = -4,-45
;sound = S1000,0
poweradd = -1000


[State 9997, AfterImage]
type = AfterImage
trigger1 = AnimElem = 2
time = 750
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  65,105,225
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = none;add1;AS250D250;none
Length = 15;20
FrameGap = 4

;---------------------------------

;[State 0, LifeAdd]
;type = LifeAdd
;trigger1 = time = 0
;value = 200

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 200


;---------------------------------

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3301)=0
anim = 3301
id = 3301
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 11    ;fv = 10
value = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------
;----3601---- ninjutsu hyper
[Statedef 3601]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 9001
ctrl = 0
sprpriority = 2

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S8000,1
pos = 0,-80
darken = 1
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 1
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 3110, Sound]
type = PlaySnd
trigger1 = Time = 12
value = 1000,0 


[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
x = 5

[State 3600, AfterImage]
type = AfterImage
trigger1 = AnimElem = 2
time = 126
trans = add1
timegap = 2
framegap = 2
length = 8
palbright = 12,12,12
palcontrast = 25,25,112
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1

[State 3600, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 3]
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 4]
type = HitDef
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
trigger3 = AnimElem = 18
trigger4 = AnimElem = 19
trigger5 = AnimElem = 20
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 3600, 5]
type = HitDef
trigger1 = AnimElem = 21
trigger2 = AnimElem = 22
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 3600, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1


;--------------------------------------------------------------------------------------------
;----3600---- justice buster
[Statedef 3600]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 9000;<------num
ctrl = 0
sprpriority = 2

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S1000,0
pos = 0,-80
darken = 1
poweradd = -1000

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8000,2
channel = 0

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 1
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 3600, VelSet];<------num
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
x = 5

[State 3600, AfterImage];<------num
type = AfterImage
trigger1 = AnimElem = 2
time = 126
trans = add1
timegap = 2
framegap = 2
length = 8
palbright = 12,12,12
palcontrast = 25,25,112
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1

[State 3600, 1];<------num
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 2];<------num
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 3];<------num
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 3600, 4];<------num
type = HitDef
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
trigger3 = AnimElem = 18
trigger4 = AnimElem = 19
trigger5 = AnimElem = 20
attr = S, NA
damage = 13
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = s1040
guard.sparkno = s6767
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 3600, End];<------num
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3000]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

 voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8000,2
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S1000,00
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 1
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

; DCvM hyper portrait/BG
;[State 3000, superportrait]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10000
;ID = 10000
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermovetime = 40
;pausemovetime = 40
;sprpriority = 3
;ownpal = 1

;[State 3000, portraitBG]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10005
;ID = 10005
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermove = 40
;pausemovetime = 40
;sprpriority = -2
;ownpal = 1

;[State 3000, superBG]
;type = Helper
;trigger1 = AnimElem = 3
;name = "Super BG"
;ID = 8005
;stateno = 8005
;postype = back
;facing = 1
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999
;ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) % 10 = 1
value = 9,2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 90 = 1
ProjID = 3010
projanim = 1009
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 1.5, (3 - Random/333)
accel = 1, 0
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Bats Hyper
;---------------------------------------------------------------------------
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 2150
ctrl = 0
sprpriority = 5

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1



; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 1
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

; DCvM hyper portrait/BG
;[State 3000, superportrait]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10001
;ID = 10001
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermovetime = 40
;pausemovetime = 40
;sprpriority = 3
;ownpal = 1

;[State 3000, portraitBG]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10005
;ID = 10005
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermove = 40
;pausemovetime = 40
;sprpriority = -2
;ownpal = 1

;[State 3000, superBG]
;type = Helper
;trigger1 = AnimElem = 3
;name = "Super BG"
;ID = 8005
;stateno = 8005
;postype = back
;facing = 1
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999
;ownpal = 1

[State 3000, Gas]
type = Explod
trigger1 = animelem = 3
anim = 2152
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 2
supermovetime = 40

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 15,1
animtype = Light
hitflag = MA
guardflag = N
priority = 4, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 75
ground.velocity = 0,0
air.type = Low
air.hittime = 80
air.velocity = 0,0

[State 3000, Distortion]
type = Explod
trigger1 = movecontact
anim = 2214
ID = 2214
pos = 160,120
postype = left
bindtime = 999
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
Persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact
value = 2151
ctrl = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Bats here - Batman watchs
;--------------------------------------------------------
[Statedef 2151]
type = S
movetype = I
physics = S
anim = 2151
sprpriority = 2
ctrl = 0

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Right
facing = -1
ownpal = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S99,0
channel = 0
volume = 250

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 60
value = S666666,22
channel = 2
volume = 255

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 60
value = S666666,23
channel = 3
volume = 150

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
; Crow Helper
;-----------------------------------------------------
[Statedef 2153]
type = A
movetype = A
physics = N
anim = 2153
sprpriority = 3

[State 3000, swoop down]
type = Velset
trigger1 = Time >=0 && time <=10
x = 2.5
y = 8

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,1
channel = 0

[State 3000, swoop down]
type = Velset
trigger1 = Time >=11 && time <=15
x = 4.5
y = 6

[State 3000, swoop down]
type = Velset
trigger1 = Time >=16 && time <=19
x = 5.5
y = 4

[State 3000, flying forward]
type = Velset
trigger1 = Time >=20
x = 8
y = -0.6

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 10,3
animtype = Medium
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = s8002
sparkxy = -15,0
;guard.sparkno = s8001
hitsound = s8000,0
guardsound = s8000,0
ground.type = High
ground.slidetime = 5
ground.hittime = 22
ground.velocity = -2.5,0
air.type = Low
air.hittime = 22
air.velocity = -2,0

[State 3000, DS]
type = DestroySelf
trigger1 = time = 62
;---------------------------------------
;Dragon Cannon - Start
[Statedef 4000]
type    = S
movetype= A
physics = S
poweradd= -1000
velset = 0, 0
ctrl = 0
anim = 4000
sprpriority = 3


[State 4000, Super Pause]
type = SuperPause
trigger1 = animelem = 4
time = 50
pos = 25, -57
anim = 4000
sound = s2000,5

[State 1100, assertspecial]
type = assertspecial
trigger1 = time = [0,50]
flag = noBG
flag2 = noFG
ignorehitpause = 1


[State 1100, Hyper Portrait]
type = explod
trigger1 = animelem = 4
anim = 950
postype = back
sprpriority = -3
supermovetime = -1
removetime = 50
pos = 0,90
bindtime = -1
removeongethit = 1
ownpal = 1


[State 2058, Hyper Initiation 1]
type = Explod
trigger1 = animelem = 4
anim = 920
postype = p1
pos = 5,-50
ownpal = 1
sprpriority = 5
supermovetime = 50

[State 1100, Hyper Initiation 2]
type = Explod
trigger1 = animelem = 4
anim = 921
postype = p1
pos = 5,-55
ownpal = 1
sprpriority = 5
supermovetime = 50
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)


[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NP,SP
time = 20
;ignorehitpause = 0
;persistent =

[State 3050, 1]
type = ChangeState
trigger1 = animtime = 0
value = 4005
ctrl = 0


;--------------------------------------------
;Dragon Cannon - Stance
[Statedef 4005]
type    = S
movetype= A
physics = S
velset = 0, 0
ctrl = 0
anim = 4005
sprpriority = 3
poweradd = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 19,3
channel = 3


[State 4000, Hyper BG Left]
type = Explod
trigger1 = time = 0
anim = 901
postype=left
pos = 160,0
scale = 0.642,1
sprpriority = -2
bindtime = -1
removetime = 125
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
ignorehitpause = 1
shadow = 68,68,68

[State 4000, Hyper BG Right]
type = Explod
trigger1 = time = 0
anim = 900
postype=right
pos = -160,0
scale = 0.642,1
sprpriority = -2
bindtime = -1
removetime = 125
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
ignorehitpause = 1
shadow = 68,68,68


[State 4005, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 4005
stateno = 4015
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =

[State 4005, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 4005
stateno = 4030
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =




[State 4005, 1]
type = ChangeState
trigger1 = animtime = 0
value = 4010
ctrl = 0

;---------------------------------------
;Dragon Cannon - End
[Statedef 4010]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0, 0
ctrl = 0
anim = 4010
sprpriority = 3
poweradd = 0


[State 4010, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Hits)
[Statedef 4015]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 4030
sprpriority = 7
poweradd = 0


[State 4015, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 4015, 1]
type = HitDef
trigger1 = time%3 = 0
attr = S, HP			;Attribute: Standing, Normal Attack
damage = 25, 4			;Damage that move inflicts, guard damage
getpower = 0
animtype = back			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAFP			;Flags of conditions that move can hit
priority = 7, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,10			;Time attacker pauses, time opponent shakes
sparkno = S9992				;Spark anim no (Def: set above)
guard.sparkno = s935
sparkxy = -50, -20		;X-offset for the "hit spark" rel. to p2,
hitsound = s15,6			;Sound to play on hit
guardsound = s6300, 0			;Sound to play on guard
ground.type = high		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -5, -1.5		;Velocity at which opponent is pushed
;airguard.velocity = -5,-4	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = high			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5, -1.5		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
Fall = 1
Air.Fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 40,-70, -200
palfx.mul = 256,256,256
palfx.sinadd = 40,30,0
Palfx.color = 0
palfx.invertall = 1;palfx.time = 30
ignorehitpause = 1
envshake.time = 4
envshake.ampl = 4


[State 4015, HitFX]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 982
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4015, HitFX2]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 983
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Image)
[Statedef 4030]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 4030;4035; 4015
sprpriority = 7
poweradd = 0

[State 4030, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 15
trigger4 = time = 25
trigger5 = time = 35
trigger6 = time = 45
trigger7 = time = 55
trigger8 = time = 65
trigger9= time = 75
trigger10 = time = 85
value = 4000,15
volume = 16


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 15,0
volume = 16

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4035;4030
ID = 4015
pos = 70,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 95
vel = 0,0
accel = 0,0
random = 0,0
removetime = 95
scale = .9,.9
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =


[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4040;4030
ID = 4015
pos = -145,-10;-155,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
scale = .9,1
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4040;4030
ID = 4015
pos = -295,-10;-275,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 110
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
scale = .9,1
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;ignorehitpause =
;persistent =

;==========================================================================
;    King Of Figthers 2002 Unlimited Match HSDM Fondo y Broken Glass
;==========================================================================
;--------------------------------------HSDM 2002 UM------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Tile #1-7]
type = Explod
triggerall = !numexplod(15600)
trigger1 = !time
anim = 15600
ID = 15600
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 10
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 40001, Tile #1-7]
type = Explod
triggerall = !numexplod(15601) < 2
trigger1 = !time
trigger2 = (time%10) = 0
anim = 15600
ID = 15601
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 20
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #2-6]
type = Explod
triggerall = !numexplod(15610)
trigger1 = !time
anim = 15601
ID = 15610
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 20
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #2-6]
type = Explod
triggerall = !numexplod(15611) < 2
trigger1 = !time
trigger2 = (time%20) = 0
anim = 15601
ID = 15611
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 40
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #3-5]
type = Explod
triggerall = !numexplod(15620)
trigger1 = !time
anim = 15602
ID = 15620
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 40
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #3-5]
type = Explod
triggerall = !numexplod(15621) < 2
trigger1 = !time
trigger2 = (time%40) = 0
anim = 15602
ID = 15621
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 80
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Tile #4]
type = Explod
triggerall = !numexplod(15630)
trigger1 = !time
anim = 15603
ID = 15630
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 80
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 40001, Tile #4]
type = Explod
triggerall = !numexplod(15631) < 2
trigger1 = !time
trigger2 = (time%80) = 0
anim = 15603
ID = 15631
pos = 320,0
postype = left  ;p2,front,back,left,right
removetime = 160
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
bindtime = -1

;----------Aqui cambias a broken glass tiempo-------------

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[3000,4999]
trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

;----------Aqui regulas el tiempo-------------

;kof 2002 um part2
[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15600
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15610
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15611
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15620
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15621
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15630
[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15631

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 8010,0
volume = 200

[State 40001, Glass Break]
type = Explod
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
;--------------------------------------------------------------------------
;==========================================================================
;    King Of Figthers 2002 Unlimited Match HSDM Fondo y Broken Glass
;==========================================================================

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40003, VarSet]
type = VarSet
triggerall = enemy, numhelper(40003)
triggerall = !enemy, numhelper(40004)
trigger1 = enemy, authorname = "Vans"
trigger2 = enemy, authorname = "K.O.D"
trigger3 = enemy, authorname = "K.O.D & Vans"
trigger4 = enemy, authorname = "OrochiKOF97"
trigger5 = enemy, authorname = "Dark Saviour"
trigger6 = enemy, authorname = "Kung Fu Man"
trigger7 = enemy, authorname = "KoopaKoot"
trigger8 = enemy, authorname = "Anjel"
trigger9 = enemy, authorname = "Vans & Kung Fu Man"
var(0) = 1

[State 40003, VarSet]
type = VarSet
triggerall = teamside = 2
triggerall = enemy, numhelper(40004)
trigger1 = enemy, authorname = "Vans"
trigger2 = enemy, authorname = "K.O.D"
trigger3 = enemy, authorname = "K.O.D & Vans"
trigger4 = enemy, authorname = "OrochiKOF97"
trigger5 = enemy, authorname = "Dark Saviour"
trigger6 = enemy, authorname = "Kung Fu Man"
trigger7 = enemy, authorname = "KoopaKoot"
trigger8 = enemy, authorname = "Anjel"
trigger9 = enemy, authorname = "Vans & Kung Fu Man"
var(0) = 1

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
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

