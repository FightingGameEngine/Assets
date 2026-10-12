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
;Start Around The World
[StateDef 3000]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3001

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
id =11001
anim =11001
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
id =11002
anim =11002
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0
channel=1
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel=2

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Hyper Portrait]
type = explod
trigger1 = Time = 0
anim = 10000
ID = 10000
postype = back
sprpriority = -2
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1
scale = .5,.5
ownpal = 1

[State 3010, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 3
x = 50

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 60
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = time=0
damage = 15,10
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 32,35
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S2,2
guardsound = S4,0
sparkno = S5565+random%4
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -9,-4
fall.recover = 0
envshake.time = 20
envshake.ampl = 8
p2stateno = 4058
kill = 0
getpower=0

[State 6600, 2]
type = ChangeState
trigger1 = movehit = 1
value = 3001

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = moveguarded
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Around The World
[StateDef 3001]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3002
poweradd=0

; hide lifebars
[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 70,1
channel=3

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 8,0
channel=4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 9932
ID = 9932
pos = -30,0
postype = back;,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 999999
ontop = 1
ownpal = 1
removeongethit = 0

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 2
x = -50

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 5
x = 0

[State 0, PosSet]
type = PosSet
triggerall=target,facing=-1
trigger1=animelem=6
x = 350
ignorehitpause =1
[State 0, PosSet]
type = PosSet
triggerall=target,facing=1
trigger1=animelem=6
x = -350
ignorehitpause =1

[State 6600, 2]
type = ChangeState
trigger1 = time = 110
value = 3002

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Finish Around The World 
[StateDef 3002]
type = S
movetype= A
physics = S
ctrl = 0
anim = 3003
facep2=1

[State 0, VelSet]
type = VelSet
trigger1=time=0
x = 80
ignorehitpause =1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0
ignorehitpause =1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 5
value = 1
movecamera = 1,0
ignorehitpause =1

[State 0, VelSet]
type = VelSet
trigger1=movehit
x = 0
ignorehitpause =1

; hide lifebars
[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, Pause]
Type = Pause
Trigger1 = time = [5,100]
Triggerall = MoveHit && target,life>1
time = 4
movetime = 1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2
channel=5
[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel=6

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 70,2

[State 0, PlayerPush]
type = PlayerPush
trigger1 =time<10
value = 0
ignorehitpause = 1

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = target,backedgebodydist<50 && time=0
damage = 220,20
attr = S, HA
hitflag = MAF
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 6,5
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S2,7
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = 75,-15
air.velocity = 70,-15
fall.recover = 0
envshake.time = 120
envshake.ampl = 8
fall.envshake.time = 44
fall.envshake.ampl = 12
fall = 1
kill = 1
getpower=0

[State 220, HitDef]
type = HitDef
trigger1 = target,backedgebodydist>=50 && time=0
damage = 220,20
attr = S, HA
hitflag = MAF
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 6,5
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S2,7
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -75,-15
air.velocity = -70,-15
fall.recover = 0
envshake.time = 120
envshake.ampl = 8
fall.envshake.time = 44
fall.envshake.ampl = 12
fall = 1
kill = 1
getpower=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
; New Hyper Speed Punch
[StateDef 3500]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,0
channel=1

[State 3010, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Hyper Portrait]
type = explod
trigger1 = Time = 0
anim = 10000
ID = 10000
postype = back
sprpriority = -2
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1
scale = .5,.5
ownpal = 1

[State 3010, superpause]
type = SuperPause
trigger1 = time=0
time = 60
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1


[state 2600, Dash punch]
type = velset
trigger1 = animelem = 2
x = -80

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 1,0

[State 6600, 2]
type = ChangeState
trigger1=backedgebodydist<=-80
value = 3501

[State 1100, end]
type = ChangeState
trigger1 = time=45
value = 101
ctrl = 0
;---------------------------------------------------------------------------
; Sneak Attack Punch
[StateDef 3501]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3100
poweradd=0

[State 3000, Explod]
type = Explod
trigger1 = time=0
id =11001
anim =11001
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Explod]
type = Explod
trigger1 = time=0
id =11002
anim =11002
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 0, Posadd]
type = Posadd
trigger1 =time=0
x = p2bodydist x+50
ignorehitpause =1

[State 0, Turn]
type = Turn
trigger1 =time=0
ignorehitpause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 =time=0
value = 1
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =time=2
x = 5
ignorehitpause =1

[State 876, Screenbound]
type = screenbound
trigger1 = Time <= 3
value = 0
movecamera = 1,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
value = 50,23
channel=4
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 50,23
channel=5

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
damage = 12,3
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,3
sparkxy = -10,-90+random%50
hitsound   = S2,2
guardsound = S4,0
sparkno = S5565+random%4

ground.type = Low
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -5
air.velocity = -9,-4
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
kill = 0
getpower=0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
damage = 12,3
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-90+random%50
hitsound   = S2,2
guardsound = S4,0
sparkno = S5565+random%4

ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,5
air.velocity = -9,-4
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
p2stateno = 4058
kill = 0
getpower=0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
damage = 12,3
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-90+random%50
hitsound   = S2,2
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,5
air.velocity = -9,-4
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
p2stateno = 4058
kill = 0
getpower=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3502

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; New Hyper Speed Punch
[StateDef 3502]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd=0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 2
x = -80

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 1,0

[State 6600, 2]
type = ChangeState
trigger1=backedgebodydist<=-80
value = 3503

[State 1100, end]
type = ChangeState
trigger1 = time = 21
value = 0
ctrl = 1

; Sneak Attack Punch
[StateDef 3503]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4000

[State 0, Posadd]
type = Posadd
trigger1 =time=0
x = p2bodydist x+50
ignorehitpause =1

[State 0, Turn]
type = Turn
trigger1 =time=0
ignorehitpause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 =time=0
value = 1
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =time=2
x = 1
ignorehitpause =1

[State 876, Screenbound]
type = screenbound
trigger1 = Time <= 3
value = 0
movecamera = 1,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
value = 50,23
channel=4
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 50,23
channel=5

[State 220, swoosh]
type = PlaySnd
triggerall=movehit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
value = 2,5
channel=1
ignorehitpause=1
[State 220, swoosh]
type = PlaySnd
triggerall=movehit
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 2,5
channel=2
ignorehitpause=1
[State 220, swoosh]
type = PlaySnd
triggerall=movehit
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = 2,5
channel=3
ignorehitpause=1
[State 220, swoosh]
type = PlaySnd
triggerall=movehit
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
value = 2,5
channel=4
ignorehitpause=1

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
damage = 12,3
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-90+random%50
hitsound   = S2,5
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -9,-4
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
p2stateno = 4058
kill = 0
getpower=0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
damage = 10,2
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-90+random%50
hitsound   = S2,5
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -9,-4
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
p2stateno = 4058
kill = 0
getpower=0

[State 6600, 2]
type = ChangeState
trigger1 = animtime = 0
value = 3504

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; New Hyper Speed Punch
[StateDef 3504]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 1,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,0
channel=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 2
x = -120

[State 6600, 2]
type = ChangeState
trigger1=backedgebodydist<=-60
value = 3505

[State 1100, end]
type = ChangeState
trigger1 = time=20
value = 101
ctrl = 0
;---------------------------------------------------------------------------
; Sneak Attack Punch
[StateDef 3505]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2001
poweradd =0

[State 0, Posadd]
type = Posadd
trigger1 =time=0
x = p2bodydist x+50
ignorehitpause =1

[State 0, Turn]
type = Turn
trigger1 =time=0
ignorehitpause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 =time=0
value = 1
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =time=2
x = 20
ignorehitpause =1

[State 876, Screenbound]
type = screenbound
trigger1 = Time <= 3
value = 0
movecamera = 1,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
damage = 35,5
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -50,-90+floor(P2Dist Y)
hitsound   = S2,7
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -15,-10
air.velocity = -10,-12
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 34
envshake.ampl = 6
fall.envshake.time = 44
fall.envshake.ampl = 8
getpower=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

;------------------------------------------------------------------------------
; HYPER FLASH!!!!
[StateDef 3600]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3600

[State 0, VarSet]
type = VarSet
trigger1 = time=0
var(9)=0
ignorehitpause =1

[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
id =11001
anim =11001
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
id =11002
anim =11002
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3010, superpause]
type = SuperPause
trigger1 = time=0
time = 60
movetime=15
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -3000

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6001
ID =  6001
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 10
scale = 1,1
sprpriority = 3
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6060
ID =  6060
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bind = 1
bindtime = 1
removetime = 80
pausemovetime = 10
scale = 1,1
sprpriority = 3
removeongethit = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = animelem = 3
value = 3601


[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; HYPER FLASH 2
[StateDef 3601]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3603

[State 3000, Explod]
type = Explod
trigger1 = time=0
id =11001
anim =11001
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Explod]
type = Explod
trigger1 = time=0
id =11002
anim =11002
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,0

 [state 2600, Dash punch]
type = velset
trigger1 = animelem = 3
x = 75

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 10
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = time=0
damage = 25,10
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S2,2
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -9,-4
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
p2stateno = 4058
kill = 0
getpower=0

[State 6600, 2]
type = ChangeState
trigger1 = movehit = 1
value = 3602

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = moveguarded
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; HYPER FLASH 3
[StateDef 3602]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3602

[State 876, Screenbound]
type = screenbound
trigger1 = Time <= 120
value = 1
movecamera = 0,320

[State 0, VarAdd]
type = VarAdd
trigger1 =animelem=5
v = 9
value = 1
ignorehitpause =1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Var(9) < 3 && animelem=19
value = 3602
elem = 1
ignorehitpause =1

[State 0, PosSet]
type = PosSet
trigger1 =time=0
x = 0
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =time=0
time = 2
pos = 60,-10
ignorehitpause =1

[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 6060
ID =  3660
pos = 15,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bind = 1
bindtime = 1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 3
removeongethit = 1
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 6060
ID =  3660
pos = 75,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bind = 1
bindtime = 1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 3
removeongethit = 1
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 6060
ID =  3660
pos = 125,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bind = 1
bindtime = 1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 3
removeongethit = 1
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name ="tornado"
ID = 6064
stateno = 6064
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale =1.5
size.yscale =1.5
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name ="wind"
ID = 13502
stateno = 13502
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale =1.5
size.yscale =1.5
ignorehitpause=1

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 200
length = 25
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 220, HitDef]
type = HitDef
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
trigger11 = animelem = 11
trigger12 = animelem = 12
trigger13 = animelem = 13
trigger14 = animelem = 14
trigger15 = animelem = 15
trigger16 = animelem = 16
trigger17 = animelem = 17
trigger18 = animelem = 18
trigger19 = animelem = 19
damage = 8,1
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 4,5
sparkxy = 10,-80+floor(P2Dist Y)
hitsound   = S0,4+random%2
guardsound = S4,0
sparkno = -1
p2stateno = 5667
ground.type = High
ground.slidetime = 6
ground.hittime  = 20
ground.velocity = 0,-6
air.velocity = 0,0
fall.recover = 0
envshake.time = 32
envshake.ampl = 8
kill = 0
getpower=0

[State 1230, Sparks]
type=explod
trigger1= movehit && numtarget
trigger1= (target,movetype=H) && !(target,time)
anim=5565+random%4
sprpriority=9999
postype=p2
pos=-10,-80
facing=-1
ownpal=1
random=10,25
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
persistent=1

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 20
damage = 15
attr = S, HA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = 10,-80+floor(P2Dist Y)
hitsound   = S0,3
guardsound = S4,0
sparkno = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,-20
air.velocity = -10,-10
fall.recover = 0
envshake.time = 50
envshake.ampl = 6
fall.envshake.time = 30
fall.envshake.ampl = 8
fall = 1
kill = 1
getpower=0

[State 1100, end]
type = ChangeState
trigger1 = animtime=0
trigger2 = animelem >=5 && !movehit
value = 101
ctrl = 0
;---------------------------------------------------------------------------
;Eat Dirt
[Statedef 3700]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3700
ctrl = 0
facep2 = 1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
id =11001
anim =11001
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
id =11002
anim =11002
pos = 0,0
postype = back
supermove = 99999
pausemovetime = 99999
sprpriority = -3
removetime = -1
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
scale = 0.5 , 0.5
ontop = 0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0
channel=1
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3 || Animelem=6
value = 0,2
channel=2

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Hyper Portrait]
type = explod
trigger1 = Time = 0
anim = 10000
ID = 10000
postype = back
sprpriority = -2
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1
scale = .5,.5
ownpal = 1

[State 3010, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -2000

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 35
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State xxx,Velocity]
type=VelSet
trigger1=animelemtime(2)>=0
x=const(velocity.run.fwd.x)*3

[State 3700, movetype]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 3700, 0]
type = varrandom
trigger1 = time = 0
v = 40
range = 2

[State 3700, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 0,0
guardflag = M
getpower = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkxy = -10,-60+floor(P2Dist Y)
hitsound   = S2,2
guardsound = S4,0
sparkno = -1
ground.type = Low
fall = 1
ground.slidetime = 18
ground.hittime  = 24
ground.velocity = 0
air.velocity = 0
airguard.velocity = -3.6,-2
guard.slidetime =22
guard.hittime  = 22
guard.velocity = -3
air.type = Low
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
;p2facing = 1
;p2stateno = 3731
;p2getp1state = 1
kill = 0
fall.recover = 0
ignorehitpause = 1
persistent = 0
envshake.time = 12
envshake.ampl = 6

[State 3750, 4]
type = targetstate
trigger1 = movehit = 1
value = 3731
ignorehitpause = 1
persistent = 0

[State 3700, 4]
type = changestate
trigger1 = movehit = 1
value = 3720
ignorehitpause = 1
persistent = 0

[State 3700,ChangeState]
type = changestate
trigger1 = moveguarded = 1
value = 3710
ignorehitpause = 1
persistent = 0

[State 3700, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Eat Dirt -miss
[Statedef 3710]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3710
ctrl = 0
facep2 = 1

[State 3710, movetype]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 3710, 10]
type = Velset
trigger1 = AnimElem = 1
x = 7.5

[State 3710, 10]
type = Velset
trigger1 = AnimElem = 2
x = 5.5

[State 3710, 10]
type = Velset
trigger1 = AnimElem = 3,=2
x = 0

[State 3710, 0]
type = varrandom
trigger1 = time = 0
v = 40
range = 2

[State 3700, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 0,0
guardflag = M
getpower = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkxy = -10,-60+floor(P2Dist Y)
hitsound   = S800,0
guardsound = S4,0
sparkno = -1

ground.type = Low
fall = 1
ground.slidetime = 18
ground.hittime  = 24
ground.velocity = 0
air.velocity = 0
airguard.velocity = -3.6,-2
guard.slidetime =22
guard.hittime  = 22
guard.velocity = -3
air.type = Low
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
;p2facing = 1
;p2stateno = 3731
;p2getp1state = 1
kill = 0
fall.recover = 0
ignorehitpause = 1
persistent = 0
envshake.time = 12
envshake.ampl = 6

[State 3710, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Eat Dirt -3
[Statedef 3720]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3720
ctrl = 0
facep2 = 1
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = 3800
ID = 3800
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 999
ownpal = 0

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 225
length = 45
timegap = 1
framegap = 1
paladd = 0,0,0
palbright   =   50,  50,  50
palcontrast = 128,128,128
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 0, Explod]
type = Explod
triggerall = Time > 0
trigger1 = Timemod = 2,0
anim = 7070
ID = 7070
pos = -20,0+random%3
postype = p2  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 10000
ownpal = 1

[State 1230, Sparks]
type=explod
trigger1 = Timemod = 8,0
anim=5565+random%4
sprpriority=999
postype=p2
pos=-20,-5
random=40,10
facing=-1
ownpal=1
scale=1.5,1.5
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
persistent=1

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = timemod = 7,0
value = 1
ignorehitpause =1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = timemod = 7,1
value =-7
kill = 0
ignorehitpause=1
persistent=1

[State 3720, PlaySnd]
type = PlaySnd
trigger1 = timemod = 7,0
value = 2,2
channel=12
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0
time = 55
ampl = 3+random%2

[State 3720, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 860,2
channel=4
[State 3720, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 860,2
channel=5
[State 3720, Width]
type = width
trigger1 = 1
edge = 25,0

[State 3720, 10]
type = Velset
trigger1 = AnimElem = 1
x = 45

[State 3720, 6]
type = TargetBind
trigger1 = animelem = 1
pos = 10,10
time = -1

[state 3720]
type = changestate
Trigger1 = frontedgedist < 12
trigger1 = time>=45
trigger2 = time=55
value = 3721
;---------------------------------------------------------------------------
;Eat Dirt -4
[Statedef 3721]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3770
ctrl = 0

[State 3770]
type = targetstate
trigger1 = time=0
value = 3790

[State 0, EnvShake]
type = EnvShake
trigger1 =animelem=1
time = 40
ampl = 6
[State 0, EnvShake]
type = EnvShake
trigger1 =animelem=5
time =70
ampl = 8
[State 0, Pause]
type = Pause
trigger1 = animelem=6
time = 60
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=6
value = S2,6
volume = 255
ignorehitpause =1
[State 1230, Sparks]
type=explod
trigger1 =animelem=5
anim=5565+random%4
sprpriority=999
postype=p2
pos=0,-50
facing=-1
ownpal=1
scale=1.5,1.5
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
persistent=1

[State 3770, Width]
type = width
trigger1 = AnimElem = 1, >= 0 && AnimElem = 4, <= 2
edge = 11,0

[State 3770, Width]
type = width
trigger1 = AnimElem = 5, >= 0 && AnimElem = 6, <= 13
edge = 77,0

[State 9060, Spark]
type = Explod
trigger1 = AnimElem = 4
anim = F72
pos = 0, floor (screenpos y) - 50
postype = front
sprpriority = -2
ID=17727

[State 3770,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
statetype = A
physics = N

[State 3770,VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = -5.2
y = -5

[State 3770, 4]
type = VelAdd
trigger1 = AnimElem = 10, > 0
y = .6

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 1
pos = -12,0
time = 2

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 2
pos = -32,-12
time = 1

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 3
pos = -36,0
time = 3

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 4
pos = -16,0
time = 2

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 5
pos = 62,0
time = 3

[State 3770, Sprite]
type = SprPriority
trigger1 = AnimElem >= 5
value = -1

[State 3770, 4]
type = targetlifeadd
trigger1 = animelem = 6
value = -100
kill = 0
ignorehitpause=1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 5
value = 1

[State 3770]
type = targetstate
trigger1 = animelem = 8
value = 3780

[State 105,1]
type = ChangeState
trigger1 = AnimElem = 7
value = 3722

;---------------------------------------------------------------------------
;Eat Dirt -3
[Statedef 3722]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3720
ctrl = 0
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = 3800
ID = 3801
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 999
ownpal = 0
facing = -1


[State 0, Turn]
type = Turn
trigger1 = time=0
;ignorehitpause =
;persistent =

[State 0, TargetState]
type = TargetState
trigger1 =time=1
value =3732

[State 0, Explod]
type = Explod
triggerall = Time > 0
trigger1 = Timemod = 2,0
anim = 7070
ID = 7070
pos = -20,0+random%3
postype = p2  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 10000
ownpal = 1
[State 1230, Sparks]
type=explod
trigger1 = Timemod = 8,0
anim=5565+random%4
sprpriority=999
postype=p2
pos=-20,-5
random=40,10
facing=-1
ownpal=1
scale=1.5,1.5
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
persistent=1

[State 0, HitAdd]
type = HitAdd
trigger1 = timemod = 7,0
value = 1
ignorehitpause =1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = timemod = 7,1
value =-7
kill = 0
ignorehitpause=1
[State 3720, PlaySnd]
type = PlaySnd
trigger1 = timemod = 7,0
value = 2,2
channel=12
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0
time = 55
ampl = 2+random%3
[State 3720, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 860,2
channel=4
[State 3720, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 860,2
channel=5

[State 3720, Width]
type = width
trigger1 = 1
edge = 30,0

[State 3720, 6]
type = TargetBind
trigger1 = animelem = 1
pos = 10,8
time = -1

[State 3720, 10]
type = Velset
trigger1 = AnimElem = 1
x = 55

[state 3720]
type = changestate
Trigger1 = frontedgedist < 12
trigger1 = time>=60
trigger2 = time=55
value = 3770
;-------------------------------------------------------------------------------
;Eat Dirt -target
[Statedef 3731]
type = S
movetype = H
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 3731,0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3737, 5]
type = posfreeze
trigger1 = 1

[State 3737, 5]
type = hitfallset
trigger1 = time = 0
value = 0

[State 3737,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3731

[State 3737,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3737,PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[state 3737]
type = changestate
Triggerall = P2StateNo != 3720
trigger1 = Time = 1
value = 5979
;-------------------------------------------------------------------------------
;Eat Dirt -target
[Statedef 3732]
type = S
movetype = H
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 0, Turn]
type = Turn
trigger1 = time=0

[State 3731,0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3737, 5]
type = posfreeze
trigger1 = 1

[State 3737, 5]
type = hitfallset
trigger1 = time = 0
value = 0

[State 3737,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3731

[State 3737,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3737,PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[state 3737]
type = changestate
Triggerall = P2StateNo != 3722
trigger1 = Time = 1
value = 5979

;---------------------------------------------------------
;Eat Dirt -target-2
[Statedef 5979]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = 4

[State 5979, 1]
type = Velset
trigger1 = Time = 0
y = -9		;fvar(11)		;-7.4
x = -4.72	;fvar(10)	;-3.6

[State 5979, 1]
type = VelAdd
trigger1 = Time > 0
y = .6

[State 5979, 2]
type = Changeanim
trigger1 = Time = 0
value = 5050

[State 5979, 3]
type = SelfState
trigger1 = Pos Y >= -8 && Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
;Eat Dirt -4
[Statedef 3770]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3771
ctrl = 0

[State 3770]
type = targetstate
trigger1 = time=0
value = 3791

[State 0, EnvShake]
type = EnvShake
trigger1 =animelem=1
time = 40
ampl = 8
[State 0, Pause]
type = Pause
triggerall=target,life>1
trigger1 = animelem=6
time = 100
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=5
value = S2,9
volume = 255
ignorehitpause =1
[State 1230, Sparks]
type=explod
trigger1 =animelem=5
anim=5565+random%4
sprpriority=999
postype=p2
pos=0,-50
facing=-1
ownpal=1
scale=1.5,1.5
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
persistent=1

[State 0, EnvShake]
type = EnvShake
trigger1 =animelem=5
time = 120
ampl = 10

[State 3770, Width]
type = width
trigger1 = AnimElem = 1, >= 0 && AnimElem = 4, <= 2
edge = 11,0

[State 3770, Width]
type = width
trigger1 = AnimElem = 5, >= 0 && AnimElem = 6, <= 13
edge = 77,0

[State 9060, Spark]
type = Explod
trigger1 = AnimElem = 4
anim = F72
pos = 0, floor (screenpos y) - 50
postype = front
sprpriority = -2
ID=17727

[State 3770,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
statetype = A
physics = N

[State 3770,VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = -5.2
y = -5

[State 3770, 4]
type = VelAdd
trigger1 = AnimElem = 10, > 0
y = .6

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 1
pos = -12,0
time = 2

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 2
pos = -32,0
time = 1

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 3
pos = -36,0
time = 3

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 4
pos = -16,0
time = 2

[State 3770, 6]
type = TargetBind
trigger1 = animelem = 5
pos = 52,-44
time = 3

[State 3770, Sprite]
type = SprPriority
trigger1 = AnimElem >= 5
value = 2

[State 3770, 4]
type = targetlifeadd
trigger1 = animelem =5
value = -150
kill = 1
ignorehitpause=1
[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 5
value = 1

[State 3770]
type = targetstate
trigger1 = animelem = 6
value = 3780

[State 105,1]
type = ChangeState
trigger1 = AnimElem = 2, > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 3775

;------------------------ Eat Dirt -finish
[Statedef 3775]
type = S
movetype = I
physics = S
anim = 3775
ctrl = 0
velset = 0, 0

[State 3775,0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3775, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3775, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3775,2]
type = MakeDust
trigger1 = Time >= 0
pos = -37, 0

[State 3775,3]
type = PlaySnd
trigger1 = Time = 0
value = 8, 1

[State 3775,4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------
;Target
[Statedef 3780]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3080, 1]
type = Velset
trigger1 = Time = 0
y = -7.4
x = -3.6

[State 3080, 1]
type = VelAdd
trigger1 = Time > 0
y = .6

[State 3080, 2]
type = Changeanim
trigger1 = Time = 0
value = 5050

[State 3080, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------
;Eat Dirt -target-4
[Statedef 3790]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = 2

[State 5979, 2]
type = Changeanim2
trigger1 = Time = 0
value = 3790

[State 5979, 3]
type = SelfState
trigger1 = time=90
value = 0
ctrl=1
;=======================================================================
;Eat Dirt -target-4
[Statedef 3791]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 =time > 20
x = -1
y = 5
ignorehitpause =1

[State 5979, 2]
type = Changeanim2
trigger1 = Time = 0
value = 3791

[State 5979, 3]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100
;---------------------------------------------------------------------------
[Statedef 4058]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4058  ;<=======custom animation

[State 0, SelfState]
type = SelfState
trigger1 = time=200
value = 0
ctrl=1

;-----------------------------------------------
;Custom state 4 P2
[Statedef 5667]
type    = A
physics = N
movetype = H
ctrl = 0

[State xxxx, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State xxxx, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time=0
value = 5666

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = -.5

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 0,320

[State 907, 3]
type = SelfState
trigger1 = animtime=0 ;time in dizzy
value = 5050

[Statedef 5666]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5006

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = 0

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 0,320

[State 907, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5006

[State 907, 3]
type = SelfState
trigger1 = Time = 200 ;time in dizzy
ctrl = 1
value = 0

;========================<Tornado>=============================
;Wind
[Statedef 6064]
physics=N
velset=0,0
anim=6064
sprpriority=2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause =1

[State 0, BindToRoot]
type = BindToRoot
trigger1 =time=0
pos = 60,0
ignorehitpause =1

[State 6064, AssertSpecial]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State End]
type=Changestate
trigger1= root,stateno!=3602
trigger2= root,stateno=3602 && root,animelem=20
value=6065
;---------------------------------------------------------------------------
[Statedef 6065]
physics=N
ctrl=0
sprpriority=99
velset=0,0

[State 6075, 1]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 3006, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 1500]
type = RemoveExplod
trigger1=1
id = 8020

[State 1500]
type = RemoveExplod
trigger1=1
id = 8021

[State 3000]
type = AssertSpecial
trigger1=1
flag =noshadow
ignorehitpause=1
persistent=1

[State 3000, DestroySelf]
type = PalFx
trigger1=time=[1,13]
add=-time*20,-time*20,-time*20
time=1

[State 6075, scale]
type=AngleDraw
trigger1=1
scale=.75-time/2,1

[State 3000, DestroySelf]
type = DestroySelf
trigger1=time>=14
;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 6071]
type = S
physics  = S
anim = 0
ctrl = 0

[state 2906,TURN]
type=turn
trigger1=ishelper(6071)
trigger1=facing!=root,facing
ignorehitpause=1

[State 4]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)

[State 4]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)

[State 4]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 3000, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 181, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1000,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 210, 3]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0

[State 210, 3]
type = PlayerPush
trigger1 =1
value = 0

[State 7110, Destroyself]
type = destroyself
trigger1 = Time = 80
trigger1 = p2life>=1

;-------------------------------------------------------------------------------
;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics=N
anim=9988
[State 7510, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7510, portrait]
type=explod
trigger1=!time
anim=7510
ID=7510
postype=back
pos=160,120
under=1
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7510, shrink]
type=modifyexplod
trigger1=time<45
ID=7510
scale=.5,.5
[State 7510, shrink]
type=modifyexplod
trigger1=time>=45
ID=7510
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7510, safety]
type=removeexplod
trigger1=time>=61
[State 7510, end]
type=destroyself
trigger1=time>=61

;========================<Wind>=============================
;Wind
[Statedef 13502]
physics=N
velset=0,0
anim=13502
sprpriority=9999

[State 0, BindToRoot]
type = BindToRoot
trigger1 =1
pos = 60,-60+random%60
ignorehitpause =1

[State 6064, AssertSpecial]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State End]
type=Changestate
trigger1= root,stateno!=3602
trigger2= root,stateno=3602 && root,animelem=20
value=13503
;---------------------------------------------------------------------------
[Statedef 13503]
physics=N
ctrl=0
sprpriority=99
velset=0,0

[State 6075, 1]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 3006, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 1500]
type = RemoveExplod
trigger1=1
id = 8020

[State 1500]
type = RemoveExplod
trigger1=1
id = 8021

[State 3000]
type = AssertSpecial
trigger1=1
flag =noshadow
ignorehitpause=1
persistent=1

[State 3000, DestroySelf]
type = PalFx
trigger1=time=[1,13]
add=-time*20,-time*20,-time*20
time=1

[State 6075, scale]
type=AngleDraw
trigger1=1
scale=.75-time/2,1

[State 3000, DestroySelf]
type = DestroySelf
trigger1=time>=14

