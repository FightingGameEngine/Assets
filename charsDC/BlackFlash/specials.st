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
guard.sparkno = 0
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
;-----------------------------------------------------------------------------
;Sneak Attack!
[StateDef 2000]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim=2000

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 1
value = 272,2
channel = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 1
value = 272,2
channel = 0

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 0

[State xxx, VarSet]
type = VarSet
triggerall = var(59)!=1
trigger1 = time =0
var(15) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State xxx, VarSet]
type = VarSet
triggerall = var(59)=1
trigger1 = time =0
value = ifelse(p2bodydist x<=75,0,p2bodydist x>=76 && p2bodydist x<=155 ,1,2))
ignorehitpause = 1

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
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
x = -20

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 8
x = 200

[State 0, Turn]
type = Turn
trigger1 =  Animelem = 8


[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 9
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 2;5;1
value = ,AP;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT;value2 = S,NA
time = 12;22;7;32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1= time = 25
value = 2001

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Sneak Attack Punch
[StateDef 2001]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2001
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2
channel=4
[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel=5
[state 2600, Dash punch]
type = velset
trigger1 = animelem = 2
x = 40

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
damage = ifelse(var(15)=2,90,ifelse(var(15)=1,85,80)),15
attr = S, ST
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = MA;HA
pausetime = 3,7
sparkxy = -10,-50+floor(P2Dist Y)
hitsound   = S2,6;2
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -22,-8
air.velocity = -22,-4
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
fall.envshake.time = 32
fall.envshake.ampl = 8

;[State 0, NotHitBy]
;type = NotHitBy
;trigger1 = AnimElem = 1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
;time = 32
;ignorehitpause =
;persistent =

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;Flash Kick
[StateDef 2500]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 0

[State xxx, VarSet]
type = VarSet
triggerall = var(59)!=1
trigger1 = time =0
var(15) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State xxx, VarSet]
type = VarSet
triggerall = var(59)=1
trigger1 = time =0
value = ifelse(p2bodydist x<=75,0,p2bodydist x>=76 && p2bodydist x<=155 ,1,2))
ignorehitpause = 1

[State xxx, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(15)=2,2510,ifelse(var(15)=1,2505,2500))
ignorehitpause = 1

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
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
x = -30

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 5;1
value = , AA,AT;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 27;32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = backedgebodydist<=10
value = 2501

;-----------------------------------------------------------------------------
[StateDef 2501]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2501

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 1
value = 272,3
Channel = 0
LowPriority = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0
channel=3
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel=4
[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 12
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

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
y = -20

[State 6600, 2]
type = ChangeState
trigger1 = time = 8
value = 2502

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[StateDef 2502]
type = A
movetype= A
physics = N
ctrl = 0
anim = 2502
poweradd = 90

[state 2600, Dash punch]
type = velset
trigger1 = time=0
x = ifelse(var(15)=2,30,ifelse(var(15)=1,18,10))
y = ifelse(var(15)=2,16,ifelse(var(15)=1,20,24))

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

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
damage = ifelse(var(15)=2,90,ifelse(var(15)=1,80,70))
attr = A, SA
hitflag = MA
animtype = Hard
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S2,6;5
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -9,-8
air.velocity = -9,-4
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
fall.envshake.time = 26
fall.envshake.ampl = 8

[State 2555, Hit Confirmation]
type = Helper
trigger1 = movehit
trigger1 = numhelper(2555) = 0
helpertype = Normal
name = "2555"
ID =  2555
postype = P1
pos = 0,0
stateno = 2555
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
sprpriority = 4

[State 220, back to stance]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 105
ctrl = 1

;---------------------------------------------------------------------------
; Hit Confirmation
[Statedef 2555]
type    = A;S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 2555
sprpriority = -4

[State 2555, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2555, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[State 2555, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------
;Flash Punches
[StateDef 2600]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 101
poweradd = 80


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 272,0
volume = 0

[State 200, swoosh]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 272,0

[State xxx, Dampener ]
type=attackmulset
trigger1 = time = 0 && enemynear,movetype=H
value=.7
ignorehitpause=1
[State xxx, Dampener ]
type=attackmulset
trigger1 = time = 0 && enemynear,movetype!=H
value=1
ignorehitpause=1

[State xxx, VarSet]
type = VarSet
triggerall = var(59)!=1
trigger1 = time =0
var(15) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State xxx, VarSet]
type = VarSet
triggerall = var(59)=1
trigger1 = time =0
var(15) = ifelse(random<300,1,2)
ignorehitpause = 1

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
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
x = ifelse(var(15)=2,25,ifelse(var(15)=1,20,15))

[State 0, NotHitBy]
type = null;NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = P2BodyDist X < 70
value = 2601

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[StateDef 2601]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3100

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
value = 1000,0;50,23

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 55
length = 25
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
trigger1 =  time= 0
anim =  989
ID =   989
pos = 30,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3

[State 0, zaku]
type = Explod
trigger1 = movehit
anim =  8280+random%4
pos = 0,-50
postype = p2  
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 1
trans = add


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
damage = 15,7;ifelse(var(15)=2,10,ifelse(var(15)=1,12,14)),2
attr = S,SA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = MA;HA
pausetime = 3,7
sparkxy = -10,-100+random%50
hitsound   = S0,4;2,2
guardsound = S4,0
sparkno = -1;S(8280+random%2);5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -5,-2
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
kill = 1

[State 6600, 2]
type = ChangeState
trigger1 =Var(15)=0
trigger1 = animelem = 6
trigger2 =Var(15)=1
trigger2 = animelem = 8
trigger3 =Var(15)=2
trigger3 = animelem = 10
value = 2602
ignorehitpause=1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
[StateDef 2602]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3150

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
x = -9

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

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 21
;ignorehitpause =
;persistent =

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------------------
; Mad dash
[Statedef 2650]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 2650
ctrl = 0
sprpriority = 2

[State 2000, 1]
type = PlaySnd
trigger1 = Time = 1
value = S272, 3

[State 2000, 2]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
x = 30

[State 0, Explod]
type = Explod
triggerall = Time > 0
trigger1 = Timemod = 2,0
anim = 7070
ID = 7070
pos = 20,0 + (random%3)
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = -.5,.5
sprpriority = 10000
ownpal = 1

[State 2000, 6]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Light
damage    = 0
priority  = 5
hitflag=MA
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S2000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0
p2stateno = 2651

; This is the tornado spin animation - it just covers the actual character sprite, so it may
; not look so good on larger characters.
[State 2000, Explod]
type = Explod
trigger1 = Movehit
anim = 13502
id = 8100
pos = 0,-10
postype = p2
sprpriority = 2
ownpal = 0
removetime = 60
scale = .4,.8

[State 2000, Explod]
type = Explod
trigger1 = Movehit
anim = 13502
id = 8100
pos = 0,-40
postype = p2
sprpriority = 2
ownpal = 0
removetime = 60
scale = .5,.8

[State 2000, Explod]
type = Explod
trigger1 = Movehit
anim = 13502
id = 8100
pos = 0,-70
postype = p2
sprpriority = 2
ownpal = 0
removetime = 60
scale = .7,.8

[State 2000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==================================
; Custom gethit for Spine
;==================================
[Statedef 2651]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0


[State 2000, 1]
type = lifeadd
trigger1 = time = 0
value = -70

[State 0, PosSet]
type = PosSet
trigger1 =time=0
y = 0
ignorehitpause =1

[State 2000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = S0, 0

[State 8100, CA]
type = changeanim2
trigger1 = time = 0
value = 2651

[State 8100, 8]
type = selfstate;ChangeState
trigger1 = time = 80;40
value = 5030
ctrl = 1
 ;------------------------------

; MultiKick
[StateDef 2700]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 100
poweradd = 80


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 272,1

[State 220, swoosh]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 272,1


[State xxx, Dampener ]
type=attackmulset
trigger1 = time = 0 && enemynear,movetype=H
value=.7
ignorehitpause=1
[State xxx, Dampener ]
type=attackmulset
trigger1 = time = 0 && enemynear,movetype!=H
value=1
ignorehitpause=1

[State xxx, VarSet]
type = VarSet
triggerall = var(59)!=1
trigger1 = time =0
var(15) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State xxx, VarSet]
type = VarSet
triggerall = var(59)=1
trigger1 = time =0
var(15) = ifelse(random<300,1,2)
ignorehitpause = 1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

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
type = velset
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
x = 25

[State 0, NotHitBy]
type = null;NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = P2BodyDist X < 70
value = 2701

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[StateDef 2701]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4000


[State 220, swoosh]
type = PlaySnd
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
value = 50,23



[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   989
pos = 50,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3

[state 2600, Dash punch]
type = afterimage
trigger1 = time = 0
time = 55
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
damage = 5,0;ifelse(var(15)=2,10,ifelse(var(15)=1,11,12)),2
attr = S, SA
hitflag = MA
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-80+random%50
hitsound   = S2,5
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = -9,-4
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
kill = 1

[State 6600, 2]
type = ChangeState
trigger1 =Var(15)=0
trigger1 = animelem = 8
trigger2 =Var(15)=1
trigger2 = animelem = 10
trigger3 =Var(15)=2
trigger3 = animelem = 12
value = 2602
ignorehitpause=1


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
[StateDef 2702]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3150

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[state 2600, Dash punch]
type = velset
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
x = -9

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

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 21;32
;ignorehitpause =
;persistent =

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================<SUPER FINISH>=============================
[Statedef 8900]
type=A
velset=0,0
anim=9988

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 40
ampl = 8

[State 8600, BG PalFX]
type=bgpalfx
trigger1= time<16
time=1
mul= 0, 0, 0
[State 8600, BG PalFX]
type=bgpalfx
trigger1= time=[16,24)
time=1
mul= 32*(time-16), 32*(time-16), 32*(time-16)

[State 8600, MvC]
type=explod
trigger1= !time
anim=8900
ID=8900
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8900)
ID=8900
trans= addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), 256


[State 8600, Circle]
type=explod
trigger1= !time
anim=8901
ID=8901
under=1
postype=left
pos=160,120
bindtime=-1
removetime=16
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8901)
ID=8901
scale= (.25*time), (.25*time)
trans= addalpha
alpha= 256 - (16*time), 256

[State 8600, Assert]
type=assertspecial
trigger1= time<16
flag=noFG
[State 8600, Assert]
type=assertspecial
trigger1= time<24
flag=nobardisplay

[State 8600, End]
type=removeexplod
trigger1= time>=24
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate<3

;---------------------------------------------------------------------------
; Swoosh
[StateDef 1220]
anim = 1220
ctrl = 0
type = A;S
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State when kicking]
type = changeanim
trigger1 = time = 0
trigger1 = stateno = 2701
value = 1221

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 1220,0
channel = 222

[State 220, swoosh]
type = null;PlaySnd
trigger1 = time = 0
value = 1220,0
channel = 222

[State 200, swoosh]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 271,1


[State 0, Explod]
type = Explod
trigger1 =  time= 0
anim =  989
ID =   988
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 37
pausemovetime = 0
scale = 1.2,.7
sprpriority = 3

[State ,RemoveExplod]
Type                       = RemoveExplod
Trigger1                   = 1
ID                         = 989
Persistent                 = 1
IgnoreHitPause             = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 3
anim =  1222
ID =   1222
pos = 20,0;-10,-35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 13;25
pausemovetime = 0
scale = .75,.75;.3,.3;.33,.331;1.2,.7
sprpriority = 2
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 =  animelem = 3
anim =  1223
ID =   1223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 16
pausemovetime = 0
scale = 1,1
sprpriority = 1
trans = add1

[State 220, HitDef]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 65
hitflag = MAF
guardflag = MA
pausetime = 2,7
hitsound = S2,2
guardsound = S3,0
sparkno = S9990+random%4
sparkxy = -10,-55
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
Guard.HitTime = 20
ground.velocity = -6,-8
guard.velocity = 5
air.velocity = -6,-5
envshake.time = 12
envshake.ampl = 6
fall = 1
air.fall = 1
fall.recover = 0;1
;fall.recovertime = 18;20

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 220, back to stance]
type = ChangeState
triggerall = var(59)
triggerall = AnimTime = -1
triggerall = movehit
trigger1 = power < 3000
trigger2 = power >= 3000 && Life > 500
value = 2580
ctrl = 0

[State 220, back to stance]
type = ChangeState
triggerall = var(59)
triggerall = moveguarded
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = animtime = -1
trigger1 = power < 3000
trigger2 = power >= 3000 && Life > 500
value = 431
ctrl = 0

[State 220, back to stance]
type = ChangeState
triggerall = var(59)
trigger1 = stateno != 100
trigger1 = power >= 3000 && life <= 500
trigger1 = movehit 
trigger1 = animtime = -1
value = 103
ctrl = 0

;-----------------------------------------------------------------------------
;Flash Kick - AI Combo
[StateDef 2580]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 0

[State xxx, VarSet]
type = VarSet
triggerall = var(59)!=1
trigger1 = time =0
var(15) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State xxx, VarSet]
type = VarSet
triggerall = var(59)=1
trigger1 = time =0
value = ifelse(p2bodydist x<=75,0,p2bodydist x>=76 && p2bodydist x<=155 ,1,2))
ignorehitpause = 1

[State xxx, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(15)=2,2510,ifelse(var(15)=1,2505,2500))
ignorehitpause = 1

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
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
x = -30

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 5;1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 27;32
;ignorehitpause =
;persistent =

[State 6600, 2]
type = ChangeState
trigger1 = backedgebodydist<=10
value = 2581

;-----------------------------------------------------------------------------
[StateDef 2581]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2501

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 1
value = 272,3
Channel = 0
LowPriority = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0
channel=3
[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel=4
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
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
y = -20

[State 6600, 2]
type = ChangeState
trigger1 = time = 8
value = 2582

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[StateDef 2582]
type = A
movetype= A
physics = N
ctrl = 0
anim = 2580
poweradd = 90

[state 2600, Dash punch]
type = velset
trigger1 = time=0
x = 30;ifelse(var(15)=2,30,ifelse(var(15)=1,18,10))
y = 20;ifelse(var(15)=2,16,ifelse(var(15)=1,20,24))

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

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
damage = ifelse(var(15)=2,90,ifelse(var(15)=1,80,70))
attr = A, SA
hitflag = MAF
animtype = Hard
priority  = 5, Hit
guardflag = HA
pausetime = 3,7
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S2,6;5
guardsound = S4,0
sparkno = S5565+random%4

ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -9,4
air.velocity = -9,8
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 14
envshake.ampl = 6
fall.envshake.time = 26
fall.envshake.ampl = 8

[State 2555, Hit Confirmation]
type = Helper
trigger1 = movehit
trigger1 = numhelper(2555) = 0
helpertype = Normal
name = "2555"
ID =  2555
postype = P1
pos = 0,0
stateno = 2555
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
sprpriority = 4

[State 220, back to stance]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 133
ctrl = 1
