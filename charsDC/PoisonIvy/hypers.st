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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3200,1 + ((Random * 5) / 1000)

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2name = "Batman"
trigger1 = time = 0
value = 3200,0
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 6
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 6
Time = 60
;anim =-1;s3012
pos = 0,-120
sound = S10,0
poweradd = -1000
darken = 0

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

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
anim = 3001
ID = 3001
pos = 50,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 0.5,0.5
sprpriority = 20
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
anim =  3999
ID = 3999
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 500
removeongethit = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 10
helpertype = normal ;player
name = "monstro"
ID = 3010
stateno = 3010
pos = 50,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------monstro monster planta

[StateDef 3010]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3070
velset = 0,0
sprpriority = -8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,26

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 3012
ctrl = 0

[StateDef 3012]
type    = A
movetype = A
physics = N
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 3099
trigger1 = time = 0
trigger1 = anim != 3051
value = 3051

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,win
value = 3015
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,lose
trigger2 = parent,numexplod(3999)=0
value = 3090
ctrl = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3099
time = -1

[State 0, Turn]
type = Turn
trigger1 = P2Dist x < -10

[State 0, VelSet]
type = VelSet
triggerall = time > 10
trigger1 = P2Dist x > 40
x = 1.3 ;+ var(45)/2

[State 0, ChangeState]
type = ChangeState
trigger1 = p2dist x < 40
value = 3013
ctrl = 0


[StateDef 3013]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3060
velset = 0,0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 3099
trigger1 = time = 0
trigger1 = anim != 3060
value = 3060


[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3099
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,25


[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 90
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -15, -55
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity =  1, -9
air.fall = 0
air.velocity = -1, -9
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  3012
ctrl = 0



[StateDef 3099]
type    = A
movetype = I
physics = N
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3099
time = -1


[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 10
add = 164,11,0
mul = 358,256,256
ignorehitpause = 1


[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 46
value = gethitvar(damage)

[State 0, ChangeState]
type = ChangeState
triggerall = var(46) >= 190
trigger1 = time = 0
value = 3090
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(46) < 190
trigger1 = time = 0
value = 3012;prevstateno
ctrl = 0
;anim =
;ignorehitpause =
;persistent =
[StateDef 3090]
type    = A
movetype = H
physics = N
ctrl = 0
anim = 3091
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,28

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


[StateDef 3015]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 3050
velset = 0,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(46) = 1

;------------------
;----------------0-
[StateDef 3100]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3100,((Random * 5) / 1000)

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 5
Time = 60
;anim =-1;s3012
pos = 11,-120
sound = S8889,0
poweradd = -1000

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

 [State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "planta"
ID = 3110
stateno = 3110
pos = 95,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
facing = -1
supermovetime = 999999999999
pausemovetime = 999999999999

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3110]
type = A
movetype = A
physics = N
anim = 3110
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,63

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 111,54

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 220, HitDef]
type = HitDef
trigger1 = time =  0
attr = S, HA
damage =250,10
hitflag = MAF
guardflag = MA
pausetime = 0,1
hitsound = s2,2
guardsound = s3,0
sparkno = 1
;guard.sparkno = S6004
sparkxy = -40,-60
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-5
guard.velocity = -5
air.velocity = -5,-5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, ChangeState]
type = null;ChangeState
trigger1 = parent,stateno != 3100
value = 3111
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 3111]
type = A
movetype = A
physics = N
anim = 3111
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,6

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

;----------------0-
[StateDef 3200]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3200
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3400,((Random * 5) / 1000)

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 21,-110
sound = S8889,0
poweradd = -1000

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

[State 0, VarAdd]
type = VarAdd
triggerall = time > 10
trigger1 =  timemod = 2,1
v = 41    ;fv =
value = 10


[State 0, Explod]
type = Explod
triggerall = time > 10
trigger1 =  timemod = 2,1
anim = 30 + ((Random * 6) / 1000)
ID = 333
pos = var(41)+ (p2bodydist x) - 40,4-(Random/500)
postype = p1;
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1;0.75
sprpriority = 15
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 111,55

 [State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "trapplant"
ID = 3230
stateno = 3230
pos = 0,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
supermovetime = 999999999999
pausemovetime = 999999999999

 [State 0, Helper]
type = Helper
triggerall =  helper(3230),stateno = 3231
trigger1 = numhelper(3255)=0
helpertype = normal ;player
name = "espinhos"
ID = 3255
stateno = 3255
pos = 0,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
supermovetime = 999999999999
pausemovetime = 999999999999

 [State 0, Helper]
type = Helper
triggerall =  helper(3230),stateno = 3231
trigger1 = numhelper(3256)=0
helpertype = normal ;player
name = "espinhos2"
ID = 3256
stateno = 3256
pos = 30,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
supermovetime = 999999999999
pausemovetime = 999999999999

[State 0, ChangeState]
type = ChangeState
trigger1 = helper(3230), stateno = 3231
value = 3210
ctrl = 0



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3210]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3210
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 3000,0+((Random * 3) / 1000)

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3230]
type = A
movetype = A
physics = N
anim = 3230
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,40

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time =  0
attr = S, HA
damage =50,10
hitflag = MAF
guardflag = MA
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = 3
;guard.sparkno = S6004
sparkxy = -40,-60
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
p2stateno = 3250
p1stateno = 3231
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 3231]
type = A
movetype = A
physics = N
anim = 3233
velset = 0,0
sprpriority = 99

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 5


[StateDef 3250]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 3250

[State 1000, changestate]
type = selfState
trigger1 = time = 150
value = 0
ctrl = 1

[Statedef 3255]
type = A
movetype = A
physics = N
anim = 3255
velset = 0,0
sprpriority = 99

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time =  0
attr = S, HA
damage =250,10
hitflag = MAF
guardflag = MA
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = 2
;guard.sparkno = S6004
sparkxy = -10,-50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
p2stateno = 3259
kill = !(root,var(58))|| 1*p2stateno=003


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 3256]
type = A
movetype = A
physics = N
anim = 3256
velset = 0,0
sprpriority = -15

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0


[StateDef 3259]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 3259

[State 1000, changestate]
type = selfState
trigger1 = time = 40
value = 5100
ctrl = 1


;------------------------

; Hyper 1 -- Mega beam
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3300,((Random * 5) / 1000)
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 4
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = -10,-110
sound = S10,0
poweradd = -1000
darken = 0

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

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 3320
ID = 3320
pos = 0,0
postype = back;,left,right
bindtime = -1
removetime = 300
scale = 0.5,0.5
sprpriority = 250
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

 [State 0, Helper]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal ;player
name = "spore"
ID = 3310
stateno = 3310
pos = 90 - random/5 ,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
facing = -1
supermovetime = 999999999999
pausemovetime = 999999999999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3300,5

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3310]
type = A
movetype = A
physics = N
anim = 3310
velset = 0,0
sprpriority = 99

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = parent,pos y + 55
x = parent,pos x

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = timemod =  33,2
attr = S, HA
damage =25,1
hitflag = MAF
guardflag = MA
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
;guard.sparkno = S6004
sparkxy = 1,1
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
guard.velocity = -5
air.velocity = 0,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
palfx.time = 15
palfx.add = 100,-1,100
palfx.sinadd = 111,10,115,30
Palfx.color = 0
kill = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  parent,numexplod(3320)=0


;----------3400
;----------------0-
[StateDef 3400]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3400
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3500,((Random * 8) / 1000)

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3401
ID = 3401
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 9
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1


[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 5,-90
sound = S8889,0
poweradd = -1000

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

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3403
ID = 3403
pos = -17,1
postype = p1;,front,back,left,right
vel = 0,0
accel = 0,0
facing = 1
vfacing = 1
bindtime = 1
removetime = 156
scale = .5,.5
sprpriority = -25
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 3402
ID = 3402
pos = p2bodydist x +10,0
postype = p1;,front,back,left,right
vel = 0,0
accel = 0,0
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -25
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 3404
ID = 3404
pos = p2bodydist x +10,0
postype = p1;,front,back,left,right
vel = 0,0
accel = 0,0
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 95
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 30
trigger1 = timemod = 5,1
value = 111,54+((Random * 4) / 1000)

 [State 0, Helper]
type = Helper
triggerall = time > 30
trigger1 = timemod = 4,1
helpertype = normal ;player
name = "planta"
ID = 3410
stateno = 3410
pos = 90 - random/5 ,0
postype = p2    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
facing = -1
supermovetime = 999999999999
pausemovetime = 999999999999

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3410]
type = A
movetype = A
physics = N
anim = 3410 + ((Random * 5) / 1000)
velset = 0,0
sprpriority = 55

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time =  0
attr = S, HA
damage =20,2
hitflag = MAF
guardflag = MA
pausetime = 5,5
hitsound = s2,2
guardsound = s3,0
sparkno = 1
;guard.sparkno = S6004
sparkxy = -10 + random/50,-50 + random/50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
kill = !(root,var(58))|| 1*p2stateno=003

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0




