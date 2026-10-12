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

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 5
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 5
Time = 60
;anim =-1;s3012
pos = 20,-115
sound = S10,0
poweradd = -1000
darken = 0
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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

; end DCvM stuff
;-------------------
[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal; player
name =  "heli"
ID = 3020
stateno = 3020
pos = 0,-240
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermove = 999
pausemove = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 50,3
channel = 0
volume = 250


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 76
value = 3001
ctrl = 0


; flip to heli
[StateDef 3001]
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 3001
velset = -7,-3
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2


[State 3110, back to stance]
type = ChangeState
trigger1 = backedgebodydist < 10
value = 3002
ctrl = 0


; Stand Hard Punch
[StateDef 3002]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3002
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -60

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)


[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)-25

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 3005
ID = 3005
pos = 68,-72
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 90
supermove
pausemove
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = numexplod(3005)!=0
trigger1 =  timemod = 5,1
value = 171,3
channel = -1



[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal ;player
name =  "tiros"
ID = 3010
stateno = 3010
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 21273]
type = Projectile
triggerall = numhelper(3010) > 0
trigger1 = timemod = 3,1;AnimElem = 2, = 1
damage =1,0
attr = S, SP
hitsound = S2,0
hitflag = MA
guardflag = MA
projid = 21282
projanim = 3014
projshadow = -1
projheightbound = -250,0
projedgebound = 40
projstagebound = 40
;projhitanim = (8200+random%2)
projremanim = 3015
projmisstime = 0
projpriority = 4
remvelocity = 0,0
getpower = 0,0
projhits = 1
projremove = 1
pausetime = 5,7
velocity = -1+random%4,-1-random%2
accel = 0,0.3
offset = 22,-70
sparkno = S(8200+random%2)
guard.sparkno = S8430
sparkxy = -10,-10+floor(p2dist y)
hitsound   = S9,0
guardsound = S4,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -7
airguard.velocity = -7
air.type = Low
air.velocity = -3,-7
air.juggle = 0
projsprpriority = 5
getpower = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 150
value = 0,3

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 150
value = 40
ctrl = 1


[StateDef 3010]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 9999;3003
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

;animtype = light          ;light,medium,hard,back,up,diagup
;ground.type = High      ;Low,Trip,None

[State 1000, 2]
type = Projectile
trigger1 = timemod = 2,1;AnimElem = 10
ProjID = 221
projanim = 3003
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
velocity = 18,12-random%8
offset = 15,-84
; HitDef
attr = A,HP
hitflag = MAFD
guardflag = MAF         ;HLA
animtype = hard
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,0
getpower = 0,0
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,-1
fall = 1
envshake.time = 7
envshake.ampl = 4

[State 1000, 2]
type = Projectile
trigger1 = timemod = 2,1;AnimElem = 10
ProjID = 221
projanim = 3003
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
velocity = 18,12-random%8
offset = 15,-84
; HitDef
attr = A,HP
hitflag = MAFD
guardflag = MAF       ;HLA
animtype = back
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,0
getpower = 0,0
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S2,0
guardsound = S3,0
ground.type = low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-2
air.velocity = -4,0.5
fall = 1
envshake.time = 7
envshake.ampl = 4



[State 3110, back to stance]
type = destroyself
trigger1 = time = 90

[StateDef 3020]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 9999
sprpriority = -5
velset = 0,0



[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)-25



[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3010
ID = 3018
pos = -25,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,2.5
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
trigger1 = time = 0
anim = 3012
ID = 3019
pos = -25,-200
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,2.5
;accel = 0,0
removetime = -1
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -9
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3018)=1
trigger1 = numexplod(3010)=1
trigger2 = parent,movetype!=A
id = 3018

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3019)=1
trigger1 = numexplod(3010)=1
trigger2 = parent,movetype!=A
id = 3019


[State 0, Explod]
type = Explod
triggerall = numexplod(3010)=0
trigger1 = parent,stateno = 3002
anim = 3010
ID = 3010
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
triggerall = numexplod(3012)=0
trigger1 = parent,stateno = 3002
anim = 3012
ID = 3012
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
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
triggerall = numexplod(3013)=0
trigger1 = parent,stateno = 3002
anim = 3013
ID = 3013
pos = 4,62
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 110,110,110
ownpal = 0
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3013)=1
trigger1 = parent,stateno != 3002
id = 3013
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 50,1
trigger2 = time = 0
trigger3 = time = 1000
value = 171,6
channel = -1



[State 0, ChangeState]
type = ChangeState
trigger1 = parent,movetype!=A
trigger2 = time = 1000
value = 3021
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[StateDef 3021]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 3010
sprpriority = -15
velset = -0.5,-3

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
x = -100

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3010

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3012

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0;floor(pos y)


[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)-40

[State 0, Explod]
type = null;Explod
trigger1 = time = 0
anim = 3010
ID = 3014
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -0.5,-3
;accel = 0,0
removetime = 150
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
trigger1 = time = 0
anim = 3012
ID = 3015
pos = 0,0;-10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1;1
vel = 0,0;-0.5,-3
;accel = 0,0
removetime = 150
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -9
ontop = 0
shadow = 110,110,110
ownpal = 1
removeongethit = 0

[State 3110, back to stance]
type = destroyself
trigger1 = time = 150



; auto combo-------------------------------------
[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

[State 0, ChangeState]
type = ChangeState
triggerall = NumHelper(3990)>0
triggerall = time = 0
trigger1 =  helper(3990),pos x = [pos x - 35, pos x + 35]
value = 3900
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 2
Time = 60
;anim =-1;s3012
pos = 0,-45
sound = S10,0
poweradd = -1000
darken = 0

[State 3401]
type = AfterImage
trigger1 = animelem = 3
time = 20
length = 7
palbright = 30,30,30
palpostbright = 10,10,10
palcontrast =60,60,60
paladd = 0,0,0
palmul = 1,1,1
palcolor = 0
timegap = 2
framegap = 3


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff
;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 22

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0



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
sparkxy = -10,-60
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
getpower = 0,0
air.hittime = 25
air.velocity = -5,0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3101
ctrl = 0


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[StateDef 3101]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3101
velset = 0,0

[State 0, PlaySnd] ;punishment
type = PlaySnd
trigger1 = AnimElem = 49
value = 50,0
channel = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 13
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 34
trigger10 = animelem = 28
value = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 13
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 34
trigger10 = animelem = 28
x = 6

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 44
x = 18

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5 = animelem = 11
trigger6 = animelem = 14
trigger7 = animelem = 18
trigger8 = animelem = 20
trigger9 = animelem = 35
trigger10 = animelem = 29
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 36
trigger2 = animelem = 30
trigger3 = animelem = 46
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 33
x = 2

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
trigger5 = animelem = 14
trigger6 = animelem = 17
trigger7 = animelem = 19
attr = S,NA
damage = 15
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 4,4
sparkno = 2
getpower = 0,0
sparkxy = -10,-60
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 25
air.velocity = -1,-2

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 23
trigger2 = animelem = 25
attr = S,NA
damage = 15
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 4,4
sparkno = 2
sparkxy = -10,-60
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0,0
air.type = Low
getpower = 0,0
air.hittime = 25
air.velocity = -1,-2

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 28
attr = S,NA
damage = 50
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-60
hitsound = s2,2
guardsound = s3,0
ground.type = Low
ground.slidetime = 28
ground.hittime = 28
ground.velocity = -10,0
air.type = Low
getpower = 0,0
air.hittime = 25
air.velocity = -1,-2
;p2stateno = 3102

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 33
attr = S,NA
damage = 50
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-70
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 58
ground.hittime = 58
ground.velocity = -11,0
air.type = Low
getpower = 0,0
air.hittime = 25
air.velocity = -1,-2
p2stateno = 3102


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = 171,3



[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 43
anim = 223
ID = 223
pos = 84,-74
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 43
ProjID = 221
projanim = 228
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 18,0
offset = 64,-74
getpower = 0,0
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 4,4
air.hittime = 25
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,0
air.velocity = -2,-5

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 45
value = 171,10


[State 240, HitDef]
type = HitDef
trigger1 = animelem = 45
attr = S,NA
damage = 50
animtype = Medium
hitflag = MAFD
guardflag = L
getpower = 0,0
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-60
hitsound = s171,8
guardsound = s3,0
ground.type = Low
ground.slidetime = 28
ground.hittime = 28
ground.velocity = -10,0
air.type = Low
air.hittime = 25
air.velocity = -5,0
p2stateno = 3102





[State 3040, RUN SHADOW]
type = AfterImage
trigger1 = time = 0
time = 200
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 15
FrameGap = 4

[State 0, VarSet]
type = VarSet
triggerall = time > 10 && power >= 1000
trigger1 = (command = "akuma")
v = 41    ;fv = 10
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = numexplod(3154)=0
trigger1 = var(41) = 1
value = 9,1


[State 0, Explod]
type = Explod
trigger1 = numexplod(3154)=0
trigger1 = var(41) = 1
anim =  3154
ID = 3154
pos = 10,-110
postype = p1  ;p2,front,back,left,right
bindtime = 1
facing = facing
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0




[State 0, ChangeState]
type = ChangeState
triggerall = animtime = 0
trigger1 = var(41) = 1
value = 3120
ctrl = 0


[State 0, ChangeState]
type = ChangeState
triggerall = time > 84
trigger1 = enemynear,movetype!=H
trigger2 = win
value = 0
ctrl = 1




[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3110
ctrl = 0



[StateDef 3102]
type    = A
physics = N
movetype = H
ctrl = 0
velset = -3,0
anim = 5002

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 15;anim = 5002 && animtime = 0
value = 5300

[State 0, VelSet]
type = VelSet
trigger1 = anim = 5300
x = 0


[State 0, SelfState]
type = SelfState
trigger1 = time = 130
value = 0
ctrl = 1
;anim =
;ctrl =
;ignorehitpause = 0
;persistent = 1


[State 0, SelfState]
type = SelfState
triggerall = time = 0
trigger1 = pos y != 0
value = 5100




[StateDef 3110]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3110
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 171,4


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 8
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
trigger1 = AnimElem = 8
ProjID = 221
projanim = 228
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
damage = 50,0
pausetime = 4,4
getpower = 0,0
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-4
air.velocity = -4,-5
fall = 1
air.fall = 1



[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 3120]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3120
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 0
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
triggerall = !Var(29)
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
triggerall = !Var(29)
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

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 0
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 0
Time = 60
;anim =-1;s3012
pos = 0,-85
sound = S10,0
poweradd = -1000
darken = 0

; end DCvM stuff
;-------------------
[State 0, Helper]
type = Helper
trigger1 = time = 3
helpertype = normal ;player
name = "talia"
ID =  3150
stateno = 3150
pos = -30,-200
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 220, back to stance]
type = ChangeState
trigger1 = time = 40
value = 3110
ctrl = 0


[StateDef 3150]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3150
velset = 1,10
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > 0
value =  3151
ctrl = 0

[StateDef 3151]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3151
velset = 0,0
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[State -3, Landing Dust]
type = Explod
trigger1 = time = 0
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


[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value =  171,4

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 8
anim = 3153
ID = 223
pos = 64,-70
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 8
ProjID = 221
projanim = 228
projhitanim = 222
projremanim = 222
projcancelanim = 222
velocity = 18,0
offset = 64,-70
getpower = 0,0
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 270,20
pausetime = 4,4
;postype = P2
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





[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  3152
ctrl = 0

[StateDef 3152]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3152
velset = -9,-4
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.15

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 80

;--------------------------------------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;--------------------------------------
;---------------------------------------------------------------------------
; NEWSPAPER
[StateDef 3004]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 999990
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 1
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 1
Time = 60
;anim =-1;s3012
pos = -30,-80
sound = S10,0
poweradd = -3000
darken = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 6

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 0
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
triggerall = !Var(29)
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
triggerall = !Var(29)
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

; end DCvM stuff
;-------------------

[State 800, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HT
hitflag = MAF
damage = 0
pausetime = 0,0
hitsound = S2,1
guardsound = S3,0
sparkno = 2
sparkxy = 10,-79
animtype = Medium
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-6
getpower = 0,0
p2stateno = 93005

[State 800, 1]
type = ChangeState
trigger1 = Movehit = 1
value = 3005
ctrl = 0

[State 3110, back to stance]
type = ChangeState
trigger1 =  AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Newspaper Hyper
[StateDef 3005]
type = S
movetype = A
physics = N
velset = 0,0
anim = 999992;0;999992
ctrl = 0

[State 0, PlaySnd];tellyou a story
type = PlaySnd
triggerall= enemy,name !="Batman"
trigger1 = time = 50
value = 183,2
channel = 0

[State 0, PlaySnd];Batman alt
type = PlaySnd
triggerall= enemy,name ="Batman"
trigger1 = time = 50
value = 40,0
channel = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag =  noFG
flag2 = noshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noautoturn
flag2 = timerfreeze
flag3 = nofg

[State 0, PosSet]
type = PosSet
trigger1 = time = 1
x = -5
y = 0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, Turn]
type = Turn
trigger1 = Time > 1
trigger1 = Facing = -1
;ignorehitpause =
;persistent =

[State 0, BG]
type = Explod
trigger1 = time = 2
anim = 999994
ID = 999994
pos = 160,240;5,20 155,220
postype = left;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = 99999999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, BG]
type = Explod
trigger1 = time = 2
anim = 299994
ID = 299994
pos = 160,240;0,0;5,20
postype = left;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = -99999999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Comicpages]
type = Explod
trigger1 = time = 2
anim = 999995
ID = 999995
pos = 160,240;0,0;5,20
postype = left;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = 999999999999
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;999999
[State 0, Comicpages BG]
type = Explod
trigger1 = time = 2
anim = 999999
ID = 999999
pos = 160,240;0,0;5,20
postype = left;p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Jason]
type = Explod
trigger1 = time = 2
anim = 999996
ID = 999996   ;155,220
pos = 231,113   ;56
postype = left;,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;102

[State 0, ModifyExplod jason1]
type = ModifyExplod
trigger1 = time = 102
ID = 999996
pos = 115,272
postype = left;,right  155,220
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod jason2]
type = ModifyExplod
trigger1 = time = 201
ID = 999996
pos = 241,225   ;155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 300
id = 999996
;ignorehitpause =
;persistent =

[State 0, Jason part two]
type = Explod
trigger1 = time = 300
anim = 999997
ID = 999997
pos = 125,113  ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;trigger1 = time = 300
;999997
[State 0, Jason part three]
type = Explod
trigger1 = time = 391
anim = 999998
ID = 999998
pos = 254,242   ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;999991
[State 0, Jason Ronin01]
type = Explod
trigger1 = time = 2
anim = 9999991
ID = 9999991
pos = 79,225   ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod Robin02]
type = ModifyExplod
trigger1 = time = 102
ID = 9999991
pos = 195,272  ;155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod robin03]
type = ModifyExplod
trigger1 = time = 201
ID = 9999991
pos = 95,103 ;155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;trigger1 = time = 300
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 300
id = 9999991
;ignorehitpause =
;persistent =


[State 0, robin part two]
type = Explod
trigger1 = time = 300
anim = 9999992
ID = 9999992
pos = 230,200   ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, rob part three]
type = Explod
trigger1 = time = 391
anim = 9999993
ID = 9999993
pos = 56,100   ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;9999994
[State 0, bats01]
type = Explod
trigger1 = time = 2
anim = 9999994
ID = 9999994
pos = 135,235  ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999998
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod bats02]
type = ModifyExplod
trigger1 = time = 102
ID = 9999994
pos = 252,247  ;155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999998
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod bats03]
type = ModifyExplod
trigger1 = time = 201
ID = 9999994
pos = 148,120  ;155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999998
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

;trigger1 = time = 300
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 300
id = 9999994
;ignorehitpause =
;persistent =

[State 0, bats part two]
type = Explod
trigger1 = time = 300
anim = 9999995
ID = 9999995
pos = 255,210   ;56 155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, bats part three]
type = Explod
trigger1 = time = 391
anim = 9999996
ID = 9999996
pos = 75,120  ;56  155,220
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9999999
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 0, ChangeAnim Jason]
type = ChangeAnim
trigger1 = time =500
value = 9999997
;elem = 1
;ignorehitpause =
;persistent =

[State 0, ROBIN STAND]
type = Explod
trigger1 = time = 500
anim = 9999998
ID = 9999998
pos = 0,0  ;56
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = -1
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, SprPriority]
type = SprPriority
trigger1 = time > 500
value = -1
;ignorehitpause =
;persistent =

;9999999
[State 0, ROBIN STAND]
type = Explod
trigger1 = time = 500
anim = 9999999
ID = 9999999
pos = 0,0  ;56
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3110, back to stance]
type = ChangeState
trigger1 = Time = 600
value = 3200
ctrl = 0
;----------------------------
[StateDef 3200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3200
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 2
x = 6


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 3
x = 3


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 4
x = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3201
ID = 3201
pos = -10,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -5,-6
accel = 0,0.3
removetime = 60
scale = 1,1
sprpriority = -10
ownpal = 1


[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 2
value = 40,1

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 100
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -80
getpower = 0,0
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -15,-7
air.type = Low
air.hittime = 5
air.velocity = -4,-7
fall= 1
air.fall = 1
envshake.time = 10
envshake.ampl = 4

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Newspaper Hyper
[StateDef 3006]
type = S
movetype = A
physics = N
anim = 999992;999992
ctrl = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noFG

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time =501
;ignorehitpause =
;persistent =

;--------------------------
;p2 state new
[StateDef 93005]
type    = S
physics = N
movetype= H
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noautoturn
flag2 = nobardisplay
flag3 = noshadow




[State 0, Turn]
type = Turn
trigger1 = Time > 1
trigger1 = Facing = -1
;ignorehitpause =
;persistent =


[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 999993;999992
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PosSet0]
type = PosSet
trigger1 = time = 2
x = 5
y = 0

[State 0, PosSet2]
type = PosSet
trigger1 = time = 3
x = 5;36
y = -180

[State 0, PosSet3]
type = PosSet
trigger1 = time = 101
x = -107
y = -99

[State 0, PosSet4]
type = PosSet
trigger1 = time = 201
x = -25
y = -66

[State 0, PosSet4]
type = PosSet
trigger1 = time = 300
x = -70
y = -174

[State 0, PosSet5]
type = PosSet
trigger1 = time = 391
x = 10
y = -35

[State 0, PosSet5]
type = PosSet
trigger1 = time = 501
x = 10
y = 0



[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 500
value = -500
kill = 0
absolute = 1


[State 820, 2]
type = changestate
Trigger1 = Time = 501
;Trigger2 = time > 10
;Trigger2 = enemy, stateNo != 1032 ; && enemy, stateNo != 1039
value = 3210
ctrl = 0


[Statedef 3210]
type    = S
physics = S
movetype = H
ctrl = 0
anim = 5300

[State 0, Turn]
type = Turn
trigger1 = time = 0
;ignorehitpause =
;persistent =


[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = -70

[State 907, 3]
type = SelfState
trigger1 = Time = 300
ctrl = 1
value = 0


; Hyper 1 -- Mega beam
[StateDef 3900]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3900
velset = 0,0
sprpriority = 12

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 171,2
channel = 1



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 2
Time = 60
;anim =-1;s3012
pos = 40,-58
sound = S10,0
poweradd = -1000
darken = 0
movetime = 60

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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

; end DCvM stuff
;-------------------

[State 0, Explod]
type = Explod
triggerall = time > 6
trigger1 = timemod = 4,1
anim = 3901
ID = 3901
pos = -25,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 15
supermovetime = 999999999999
pausemovetime = 999999999999
ownpal = 1

[State 3040, RUN SHADOW]
type = AfterImage
trigger1 = time = 6
time = 80
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 15
FrameGap = 4

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 194
ID = 194
pos = 0,0
postype = p1  ;p2,front,back,left,right
vel = 0,0
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 10
shadow = 50,50,50
supermovetime = 999999999999
pausemovetime = 999999999999
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 10

[State 200, HitDef]
type = HitDef
trigger1 = timemod=2,1
attr = S,NA
damage = 37,3
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 3,3
sparkno = 0
getpower = 0,0
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -13,2
air.type = Low
air.hittime = 20
air.velocity = -20,1
fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =  time > 120
value = 3910
ctrl = 0

[StateDef 3910]
type    = A
movetype = A
physics = A
ctrl = 0
anim = 43

[State 0, ModifyExplod]
type = removeExplod
trigger1 = time = 0
ID = 194

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 194
ID = 195
pos = 0,2
postype = p1  ;p2,front,back,left,right
vel = 10,0
bindtime = 1
removetime = 300
scale = 1,1
sprpriority = 10
shadow = 50,50,50
supermovetime = 999999999999
pausemovetime = 999999999999
ownpal = 1
removeongethit =0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -5
y = -5
;ignorehitpause =
;persistent =









