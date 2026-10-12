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
;triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
trigger2 = animelem =8
trigger3 = animelem =11
trigger4 = animelem =14
trigger5 = animelem =17
trigger6 = animelem =20
trigger7 = animelem =23
trigger8 = animelem =26
trigger9 = animelem =29
trigger10 = animelem =32
trigger11 = animelem =35
trigger12 = animelem =38
trigger13 = animelem =41
trigger14 = animelem =44
helpertype = normal ;player
name = "missi"
ID = 3010
stateno = 3010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 0, Helper]
type = Helper
trigger1 = animelem = 47
helpertype = normal ;player
name = "missi"
ID = 3011
stateno = 3011
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 178,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 178,4

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1003
ID =  1003
pos = 20,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 142
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 157
value = 3001
ctrl = 0

[StateDef 3001]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1009
velset = 0,0


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3010]
type = A
movetype = A
physics = N
anim = 1010
velset = 15,0
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT



[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 13,1
guardflag = MA
pausetime = 0,0
hitsound = s2,0
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
air.hittime  = 25
ground.velocity = -2,0
guard.velocity = -5
air.velocity = 0,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100
trigger2 = parent, anim != 3000

[Statedef 3011]
type = A
movetype = A
physics = N
anim = 1010
velset = 15,0
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add


[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 30,1
guardflag = MA
pausetime = 0,0
hitsound = s2,0
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 6
envshake.ampl = 3



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100
trigger2 = parent, anim != 3000


;3100
[StateDef 3100, melee hyper]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 1
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 1
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0

[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = animelem = 1
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = animelem = 1
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = animelem = 1
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 200,5

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,10
guardflag = MA
pausetime = 10,8
hitsound = S2,2
guardsound = 6,0
priority = 4,hit
sparkno = s9995
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 70
ground.velocity = 0
guard.velocity = -5
air.velocity = -4,4
kill = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 15
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3101
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3101]
anim = 3101
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = time < 113
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
stateno = 3252

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 164
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 2
trigger2 = animelem= 8
trigger3 = animelem= 13
trigger4 = animelem= 18
trigger5 = animelem= 24
trigger6 = animelem= 29
trigger7 = animelem= 35
trigger8 = animelem= 41
trigger9 = animelem= 45
trigger10 = animelem= 49
trigger11 = animelem= 53
trigger12 = animelem= 58
trigger13 = animelem= 62
trigger14 = animelem= 66
trigger15 = animelem= 70
trigger16 = animelem= 74
trigger17 = animelem= 76
trigger18 = animelem= 78
trigger19 = animelem= 80
trigger20 = animelem= 82
trigger21 = animelem= 84
value = 0,0
channel=-1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 2
trigger2 = animelem= 13
trigger3 = animelem= 24
trigger4 = animelem= 35
trigger5 = animelem= 45
trigger6 = animelem= 53
trigger7 = animelem= 62
trigger8 = animelem= 70
trigger9 = animelem= 76
trigger10 = animelem= 80
trigger11 = animelem= 84
value = 177,1
channel=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 90
value = S0,3
channel= -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 90
value = S177,3
channel= 0



[State 0, VelSet]
type = VelSet
trigger1 = animelem= 2
trigger2 = animelem= 8
trigger3 = animelem= 13
trigger4 = animelem= 18
trigger5 = animelem= 24
trigger6 = animelem= 29
trigger7 = animelem= 35
trigger8 = animelem= 41
trigger9 = animelem= 45
trigger10 = animelem= 49
trigger11 = animelem= 53
trigger12 = animelem= 58
trigger13 = animelem= 62
trigger14 = animelem= 66
trigger15 = animelem= 70
trigger16 = animelem= 74
trigger17 = animelem= 76
trigger18 = animelem= 78
trigger19 = animelem= 80
trigger20 = animelem= 82
trigger21 = animelem= 84
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 90
x = 0


[State 220, HitDef]
type = HitDef
trigger1 = animelem= 2
trigger2 = animelem= 8
trigger3 = animelem= 13
trigger4 = animelem= 18
trigger5 = animelem= 24
trigger6 = animelem= 29
trigger7 = animelem= 35
trigger8 = animelem= 41
trigger9 = animelem= 45
trigger10 = animelem= 49
trigger11 = animelem= 53
trigger12 = animelem= 58
trigger13 = animelem= 62
trigger14 = animelem= 66
trigger15 = animelem= 70
trigger16 = animelem= 74
trigger17 = animelem= 76
trigger18 = animelem= 78
trigger19 = animelem= 80
trigger20 = animelem= 82
trigger21 = animelem= 84
attr = S, NA
damage = 25,4
guardflag = MA
pausetime = 3,15
hitsound = S2,1
guardsound = 6,0
priority = 4,hit
sparkno = s9994
sparkxy = -20,-65-floor(random/100)
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 70
air.hittime  = 70
ground.velocity = -1,0
guard.velocity = -2
air.velocity = -4,4
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
kill = 0

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1


[State 220, HitDef]
type = HitDef
trigger1 = animelem= 90
attr = S, NA
damage = 40,4
guardflag = MA
pausetime = 15,15
hitsound = S2,2
guardsound = 6,0
priority = 4,hit
sparkno = s9995
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -10, -1
guard.velocity = -2
air.velocity = -4,4
envshake.time = 15
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall= 1
fall.recover = 0

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1
time = 2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 101
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause = 
;persistent = 



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1





;Scream air hypa
[StateDef 3150]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3150
velset = 0,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 200,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 8
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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
trigger1 = animelem = 5
anim = 1004
ID =  1004
pos = -13,-3
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 160
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
trigger2 = animelem =8
trigger3 = animelem =11
trigger4 = animelem =14
trigger5 = animelem =17
trigger6 = animelem =20
trigger7 = animelem =23
trigger8 = animelem =26
trigger9 = animelem =29
trigger10 = animelem =32
trigger11 = animelem =35
trigger12 = animelem =38
trigger13 = animelem =41
trigger14 = animelem =44
helpertype = normal ;player
name = "mussi"
ID = 3151
stateno = 3151
pos = 0,30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 1


[State 0, Helper]
type = Helper
trigger1 = animelem = 47
helpertype = normal ;player
name = "mussi"
ID = 3152
stateno = 3152
pos = 0,30
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 1



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 178,4


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 175
value = 1051
ctrl = 1

;helpers hyper diag
[Statedef 3151]
type = A
movetype = A
physics = N
anim = 1011
velset = 10,6
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add



[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 13,1
guardflag = MA
hitflag = MAF
pausetime = 0,0
hitsound = s2,0
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
air.hittime  = 25
ground.velocity = -2,0
guard.velocity = -5
air.velocity = -1,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100
trigger2 = parent, anim != 3150

;last scream
[Statedef 3152]
type = A
movetype = A
physics = N
anim = 1011
velset = 10,6
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AfterImage]
type = AfterImage
trigger1 =!time 
time = 999
length = 10
palcolor = 0
palbright = 0,0,0
palcontrast = 0,50,200
palpostbright =0,0,0
paladd =  0,-50,-200
palmul = 256,256,256
timegap = 2
framegap = 2
trans = add


[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT



[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 13,1
guardflag = MA
pausetime = 0,0
hitsound = s2,0
guardsound = s3,0
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 6
envshake.ampl = 3



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 100
trigger2 = parent, anim != 3150




;3200

[StateDef 3200, scream n2]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 0,-95
sound = S10,0
poweradd = -2000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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

[State 3300, Helper]
type = Helper
trigger1 =  time  = 11
name = "Power Explosion"
ID = 8700
pos = 7,-102
postype = p1
stateno = 3201

[State 191, Explod]
type = Explod
trigger1 = time= 75
anim = 8065
ID = 8065
pos = -10,-96
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1.5,1.5
sprpriority = 99
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 200,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 11
value = 178,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 75
value = 14001,0



[State 3200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;mega scream helper

[StateDef 3201]
anim = 3201
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 1

[State 8700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8700, BindToParent]
type = BindToParent
triggerall = IsHelper
trigger1 = parent,anim=3200
time = 1
pos = 0,-92



[State 8700, HitDef]
type = HitDef
trigger1 = TimeMod = 2,1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = Heavy
priority = 7,Hit
damage = 12,1
pausetime = 0,10
guard.pausetime = 0,10
sparkno = -1
guard.sparkno = 40
sparkxy = 0,0
hitsound = s2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-2
air.animtype = Back
air.velocity = -10,-2
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 1
fall = 1
fall.recover = 0
envshake.time = 6
envshake.ampl = 3



[State 8700, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 3200

;-------------
;hyper moto
[StateDef 3300]
type    = S
physics = S
ctrl = 0
anim = 3300
velset = 0,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 4
flag = noFG
ignorehitpause = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = time = 0
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0
movetime = 30



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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
;triggerall = !Var(29)
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


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 200,7


[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = 1
x = -11
y = -3

[State 3100, End]
type = ChangeState
trigger1 = animtime= 0
value = 3310
ctrl = 1

[StateDef 3310]
type    = S
movetype= A
physics = N
anim = 3310
ctrl = 0
velset = 18,0
sprpriority = 2

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S50,12


[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2000, 1]
type = PosSet
trigger1 = facing = 1
trigger1 = time = 0
x = -220
y = 0

[State 2000, 1]
type = PosSet
trigger1 = facing = -1
trigger1 = time = 0
x = 220
y = 0


[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 14

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3311
ID = 3311
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = 80
pausemovetime = 0
scale = 1,1
sprpriority = 1
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 2000, 8]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MAF
damage    = 85,2
priority  = 6
pausetime = 12,12
sparkno = s9995
sparkxy = -15,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -7,0
air.velocity = -6,0
fall = 1
fall.recover = 0
fall.recovertime = 200
down.hittime = 100
envshake.time = 7
envshake.ampl = 4
p2stateno = 3360


[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
trigger1 = abs(Pos x) > floor(Gamewidth/2 + 150) 
trigger2 = time = 80
value = 3320
ctrl = 1

[StateDef 3320]
type    = S
movetype= A
physics = N
anim = 3310
ctrl = 0
velset = 18,0
sprpriority = 2



[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3615, Turn]
type = Turn
trigger1 = Time = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT


[State 3615, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 14

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3311
ID = 3311
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = 80
pausemovetime = 0
scale = 1,1
sprpriority = 1
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 2000, 8]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MAFD
damage    = 85,3
priority  = 6
pausetime = 12,12
sparkno = s9995
sparkxy = -15,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -7,0
air.velocity = -6,0
fall = 1
fall.recover = 0
fall.recovertime = 200
down.hittime = 100
envshake.time = 7
envshake.ampl = 4
p2stateno = 3360



[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = Time > 0 && IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
trigger1 = abs(Pos x) > floor(Gamewidth/2 + 150) 
trigger2 = time = 80
value = 3330
ctrl = 1

[StateDef 3330]
type    = S
movetype= A
physics = N
anim = 3310
ctrl = 0
velset = 18,0
sprpriority = 2


[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 14

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT



[State 2000, 8]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MAFD
damage    = 120,3
priority  = 6
pausetime = 12,12
sparkno = s9995
sparkxy = -15,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -7,0
air.velocity = -6,0
fall = 1
fall.recover = 0
fall.recovertime = 200
down.hittime = 50
envshake.time = 7
envshake.ampl = 4
p2stateno = 3360



[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
trigger1 = abs(Pos x) > floor(Gamewidth/2 + 150) 
trigger2 = time = 80
value = 3340
ctrl = 1

[StateDef 3340]
type    = S
movetype= A
physics = N
anim = 3310
ctrl = 0
velset = 18,0
sprpriority = 2

[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3615, Turn]
type = Turn
trigger1 = Time = 0

[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 14

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3311
ID = 3311
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = 80
pausemovetime = 0
scale = 1,1
sprpriority = 1
shadow = 0,0,0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 2000, 8]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MAFD
damage    = 120,3
priority  = 6
pausetime = 12,12
sparkno = s9995
sparkxy = -15,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -7,0
air.velocity = -6,0
fall = 1
fall.recover = 0
fall.recovertime = 200
down.hittime = 15
envshake.time = 7
envshake.ampl = 4


[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = Time > 0 && IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
trigger1 = abs(Pos x) > floor(Gamewidth/2 + 150) 
trigger2 = time = 80
value = 3350
ctrl = 1

; -- end
[StateDef 3350]
type    = A
physics = A
anim = 3320

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3311
;ignorehitpause = 
;persistent = 


[State 3720, Turn]
type = Turn
trigger1 = Time = 0

[State 3720, VelSet]
type = VelSet
trigger1 = Time = 0
x = 9
y = -3

[State 3715, changestate]
type = ChangeState
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 0;3610

;custom laying on floor--------
[Statedef 3360]
type    = U
movetype= H  ;AvX adjustment
physics = N

[State 1005,2]
type = Gravity
trigger1 = movetype = H
trigger1 = Pos Y < 0

[State 1005,3]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 3720, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = Pos Y < 0
x = -3
y = 5

[State 5110, HitFallSet]
type = HitFallSet
trigger1 = Pos Y >= 0
value = 0

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0
trigger2 = Pos Y >= 0



[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim2
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != [5111,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5111

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim2
triggerall = time = 0
triggerall = anim != [5111,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5111 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0


[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)


[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim2
persistent = 0
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5111

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 5110, AvX ChangeState];AvX addition
type = ChangeState
trigger1 = time = 100
value = 5120
ctrl = 0



