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
;Last Laugh! Start
[StateDef 3000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 6681


[State 211, Gas]
type = Helper
trigger1 = Time = 12
helpertype = Normal
name = "Gas"
postype = p1
pos = 0,-75
stateno = 6689
ownpal = 1
persistent = 0


[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S80,0
volume = 300


; hide lifebars
[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3010, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
anim = s888
pos = 0,-80
darken = 1
poweradd = -3000

[State 2000, Hyper Portrait]
type = explod
trigger1 = AnimElem = 2
anim = 9971
id = 9971
postype = back
sprpriority = -1
supermovetime = -1
removetime = 55
pos = 0,0
bindtime = -1
removeongethit = 1
scale = 1,1
ownpal = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 2
time = 200
add = 0,0,0
mul = 0,0,0
;sinadd = 0,0,0,10
;invertall = 0
;color = 256
;ignorehitpause = 
;persistent = 


[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

;---------------------------------------------------------------------------
;Gas
[Statedef 6689]
type = A
movetype = A
physics = N
anim = 4450
velset = 3, 0
sprpriority = 6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
flag = unguardable
;flag2 = noairguard
;flag3 = roundnotover
;ignorehitpause = 
;persistent = 
;-----------------------
;flag = nobardisplay
;flag = noBG
;flag = noFG
;flag = nostandguard
;flag = nocrouchguard
;flag = noairguard
;flag = noautoturn
;flag = nojugglecheck
;flag = nokosnd
;flag = nokoslow
;flag = noshadow
;flag = globalnoshadow
;flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable


[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = -1
sparkxy = 0, 15
hitsound = S-1, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = -10
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 0
palfx.time = 100
palfx.mul = 200,256,200
palfx.add = 0,30,0
p2stateno = 5666
kill = 0


[Statedef 5666]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = 0

[State 907, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 907, 3]
type = SelfState
trigger1 = Time = 200 ;time in dizzy
ctrl = 1
value = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S15,3

[State 519,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503

;Last Laugh! Finish
[StateDef 3001]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 6680
poweradd = 60

[State 3000, 1]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
x = -3

[State 195,]
type = Explod
trigger1 = AnimElem = 16
anim = 666
ID = 666
scale = 1,1
sprpriority = 3
removeongethit = 1

[State 195,]
type = Explod
trigger1 = AnimElem = 3
anim = 6650
ID = 6650
scale = 1.4,1.4
sprpriority = 3
removeongethit = 1
pos = -10,20

[State 3000]
type = HitDef
attr = A, SA
trigger1 = AnimElem = 15
damage = 300
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
hitsound   = S0,3
guardsound = S4,0
sparkno = -1
guard.sparkno = S8430
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -9,-4
air.velocity = -9,-4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 20,10
kill =1


[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S90,0
volume = 300

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 15
value = S120,0
volume = 300

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S130,0
volume = 300


[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;--------------------------------------------------------------------------
; Murder!!
[StateDef 4049]
type = c
movetype= A
physics = c
velset = 0,0
ctrl = 0
anim = 4049
poweradd = 96


[State 3100, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3100, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

; hide lifebars
[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3010, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
anim = s888
pos = 0,-80
darken = 1
poweradd = -1000

[State 2000, Hyper Portrait]
type = explod
trigger1 = AnimElem = 1
anim = 9971
id = 9971
postype = back
sprpriority = -1
supermovetime = -1
removetime = 55
pos = 0,0
bindtime = -1
removeongethit = 1
scale = 1,1
ownpal = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 1
time = 260
add = 0,0,0
mul = 0,0,0
;sinadd = 0,0,0,10
;invertall = 0
;color = 256
;ignorehitpause = 
;persistent = 



[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 2
x = 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 2
flag = unguardable

[State 30100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,0
volume = 255


[State 3100, HitDef]
type = HitDef
attr = A, SA
trigger1 = animelem = 2
damage = 25
guardflag = MA
pausetime = 5,5
hitsound = S2,1
guardsound = S3,0
sparkno = S6001
sparkxy = 0,-90
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = 0
air.velocity = -3,-6
envshake.time = 10
envshake.ampl = 9
kill = 0
p2stateno = 4044


[State 4049, 2]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
value = 4050

[State 4049, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 4044]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5080

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = 0

[State 907, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 907, 3]
type = SelfState
trigger1 = Time = 100 ;time in dizzy
ctrl = 1
value = 0

[StateDef 4050]
type = c
movetype= A
physics = c
velset = 0,0
ctrl = 0
anim = 4050
poweradd = 96

[State 3100, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3100, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 30100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 12
value = S120,0
volume = 255

[State 30100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = S100,0
volume = 255

[State 30100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S90,0
volume = 255

[State 3100, HitDef]
type = HitDef
attr = A, SA
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
damage = 45
guardflag = MA
pausetime = 5,5
hitsound = S2,1
guardsound = S3,0
sparkno = S9995
sparkxy = -35,-10
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = 0
air.velocity = -3,-6
envshake.time = 10
envshake.ampl = 9
p2stateno = 4044
kill = 0

[State 3100, HitDef]
type = HitDef
attr = A, SA
trigger1 = animelem = 12
damage = 25
guardflag = MA
pausetime = 5,5
hitsound = S2,1
guardsound = S3,0
sparkno = S9995
sparkxy = -35,-10
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,15
guard.velocity = 0
air.velocity = -3,-6
envshake.time = 10
envshake.ampl = 9
fall = 1
kill = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 12
flag = unguardable
;flag2 = noairguard
;flag3 = roundnotover
;ignorehitpause = 
;persistent = 
;-----------------------
;flag = nobardisplay
;flag = noBG
;flag = noFG
;flag = nostandguard
;flag = nocrouchguard
;flag = noairguard
;flag = noautoturn
;flag = nojugglecheck
;flag = nokosnd
;flag = nokoslow
;flag = noshadow
;flag = globalnoshadow
;flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable

[State 1100, changestate]
type = ChangeState
trigger1 = animelem = 13
value = 105
ctrl = 1

;------------------------------------------------------------------------------
;--------------------------------------------------------------------------
; Cat Fight!
[StateDef 7557]
type = c
movetype= A
physics = c
velset = 0,0
ctrl = 0
anim = 4049
poweradd = 96


[State 7557, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 7557, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1


; hide lifebars
[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3010, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
anim = s888
pos = 0,-80
darken = 1
poweradd = -2000

[State 2000, Hyper Portrait]
type = explod
trigger1 = AnimElem = 1
anim = 9971
id = 9971
postype = back
sprpriority = -1
supermovetime = -1
removetime = 55
pos = 0,0
bindtime = -1
removeongethit = 1
scale = 1,1
ownpal = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 1
time = 260
add = 0,0,0
mul = 0,0,0
;sinadd = 0,0,0,10
;invertall = 0
;color = 256
;ignorehitpause = 
;persistent = 


[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 2
x = 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 2
flag = unguardable

[State 30100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,0
volume = 255

[State 3100, HitDef]
type = HitDef
attr = A, SA
trigger1 = animelem = 2
damage = 25
guardflag = MA
pausetime = 5,5
hitsound = S2,1
guardsound = S3,0
sparkno = S6001
sparkxy = 0,-90
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = 0
air.velocity = -3,-6
envshake.time = 10
envshake.ampl = 9
kill = 0
p2stateno = 4066


[State 4049, 2]
type = ChangeState
trigger1 = movehit = 1
value = 7558

[State 4049, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 4049, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 7558]
type = c
movetype= A
physics = c
velset = 0,0
ctrl = 0
anim = 7559
poweradd = 96

[State 3100, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3100, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 555, dust]
type = Explod
trigger1 = Animelem = 1
anim = 7557
ID = 7557
bindtime = 1
removetime = 150
scale = 1.3,1.3
sprpriority = 3
removeongethit = 1
persistent = 0
pos = 60,-60

[State 555, dust]
type = Explod
trigger1 = time = 10
anim = 7558
ID = 7558
bindtime = 1
removetime = 140
scale = .5,.5
sprpriority = 3
removeongethit = 1
persistent = 0
pos = 0,-130


[State 555, dust]
type = Explod
trigger1 = time = 12
anim = 7558
ID = 7558
bindtime = 1
removetime = 140
scale = .5,.5
sprpriority = 3
removeongethit = 1
persistent = 0
pos = 60,-10


[State 555, dust]
type = Explod
trigger1 = time = 15
anim = 7558
ID = 7558
bindtime = 1
removetime = 140
scale = .5,.5
sprpriority = 6
removeongethit = 1
persistent = 0
pos = 140,-130



[State 3100, HitDef]
type = HitDef
attr = A, SA
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
damage = 15
guardflag = MA
pausetime = 5,5
hitsound = S2,1
guardsound = S3,0
sparkno = S1
sparkxy = -35,-10
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = 0
air.velocity = -3,-6
envshake.time = 10
envshake.ampl = 9
p2stateno = 4066
kill = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
flag = unguardable
;flag2 = noairguard
;flag3 = roundnotover
;ignorehitpause = 
;persistent = 
;-----------------------
;flag = nobardisplay
;flag = noBG
;flag = noFG
;flag = nostandguard
;flag = nocrouchguard
;flag = noairguard
;flag = noautoturn
;flag = nojugglecheck
;flag = nokosnd
;flag = nokoslow
;flag = noshadow
;flag = globalnoshadow
;flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable

[State 1100, changestate]
type = ChangeState
trigger1 = animelem = 10
value = 7561
ctrl = 1

;-------------------------------------

;Joker Bomb
[StateDef 7561]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3333
poweradd = 60

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 1
x = -25

[State 211, Grenade]
type = Helper
trigger1 = Time = 12
helpertype = Normal
name = "Grenade"
postype = p1
pos = 0,-80
stateno = 7562
ownpal = 1
persistent = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S90,0
volume = 300

[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grenade
[Statedef 7562]
type = A
movetype = A
physics = N
anim = 3051
velset = 0, -3
sprpriority = 6

[state 503,1]
type = velmul
trigger1 = facing = 1 && screenpos x = [290,320]
trigger2 = facing = -1 && screenpos x = [0,30]
x = 0.9

[state 503,2]
type = velset
trigger1 = time = 0
x = 4
y = 1

[state 503,3]
type = velset
trigger1 = time = 2
x = 4
y = 4

[state 503,4]
type = velset
trigger1 = time = 2
x = 4
y = 4

[state 503,5]
type = veladd
trigger1 = root, stateno != 210
y = 0.1

[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 80, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = S7560
sparkxy = 0, 15
hitsound = S150, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = -9,-11
air.velocity = -1,-19
guard.velocity = -6
air.juggle = 1
air.fall = 0
fall = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S15,3

[State 508,8]
type = Envcolor
trigger1 = hitcount = 1
persistent = 0
ignorehitpause = 1
value = 255, 255, 255
time = 1
under = 0

[State -2, Bounce from the ground]
type = VelSet
trigger1 = (vel Y > -10) && (Pos Y >= -10) ;Triggers if y velocity is more than 0 and your pos is more or equal to 0
x = 4
y = -9

[State -2, Gravity]
type = VelAdd
trigger1 = (Vel Y < 0) && (Pos Y < 0) ; In air and going up
y = 1

[State 519,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503

;-----------------------------------------------------------------------------

;P2 State
[Statedef 4066]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5000

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = 0

[State 907, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 907, 3]
type = SelfState
trigger1 = Time = 260 ;time in dizzy
ctrl = 1
value = 0
