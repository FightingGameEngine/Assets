; States file for {character} (amalgam)
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
; {move name} (Amalgam Hyper -- QCF + HP+HK)  -- states 4000-4200
;   {move description}
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Roll Fwd
[Statedef 8300]
type = S
movetype = I
physics = N
ctrl = 0
anim = 831
velset = 0, 0

[State 700, start]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 700, 1]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 700, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 4

[State 700, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Roll  Back
[Statedef 8301]
type = S
movetype = I
physics = N
ctrl = 0
anim = 832
velset = -8, 0

[State 705, start]
type = VelSet
trigger1 = AnimElem = 2
x = -8

[State 705, 1]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 705, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 4

[State 705, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Amalgam HYper start
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4100
sprpriority = -1







[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S10,1
pos = 10,-70
unhittable = 1


; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S4001,0
channel = 0

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 61
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 901
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 900
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10004
name = "Left Arrow"
ID = 10004
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10005
ID = 10005
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10000
ID = 10000
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 9998
ID = 9998
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 9997
ID = 9997
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 2010, 1]
type = Helper
ID =4110
helpertype = normal
name = "Wonderman"
pos = -250, -27
postype = p1
stateno = 4110
trigger1 = time = 0
value = 4110




[State 1000, 7]
type = Changestate
trigger1 = Time = 24
value = 4350

[State 1000, 7]
type = Changestate
trigger1 = Animtime = 0
ctrl = 1
value = 0

;---------------------------------------------------------------------------
;Amalgam HYper Thanos comming
[Statedef 4110]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 10,0
anim = 9999
sprpriority = 0


;[State 2060, 7]; names
;type = PlaySnd
;trigger1 = time = 0
;channel = 8
;value = 1,0

[State 2000, 1];ghosts bike
type = Explod
trigger1 = time = 0
anim = 4307
pos = -50,0
vel = 10,0
postype = p1
removetime = 24
sprpriority = 1

[State 2000, 1];ghosts bike
type = Explod
trigger1 = time = 27
triggerall = parent, movetype = H
anim = 4307
pos = -50,0
vel = 10,0
postype = p1
removetime = 50
sprpriority = 1

[State 2011, ]
type = DestroySelf
Trigger1 = time = 27 ;removed when the flame over
ignorehitpause = 0

;---------------------------------------------------------------------------
;Amalgam HYper fusion
[Statedef 4350]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 4102
sprpriority = 0

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 4103
pos = -10,-35
vel = 0,0
postype = p1
removetime = 6
sprpriority = -2


[State 2060, 7]
type = PlaySnd
trigger1 = time = 1
value = 4000,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
triggerall = P2StateType != A
triggerall = P2Life > 0
attr = S, HA
animtype  = Hard
damage    = 0
pausetime = 2,2
hitsound   = s30,0
guardflag = H,M,A,L                   ;Flags on how move is to be guarded against
hitflag = HMAFL
sparkno = -1
guardsound = 15,0
ground.type = Low
ground.slidetime = 60
kill = 0
ground.hittime  = 20
ground.velocity = -2,-2
guard.velocity = -7
air.velocity = -2,-2
airguard.velocity = -5, -4
P1stateno = 4001
P2stateno = 4002

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
triggerall = P2StateType = A
triggerall = P2Life > 0
attr = S, HA
animtype  = Hard
damage    = 0
pausetime = 2,2
hitsound   = s2,2
guardflag = H,M,A,L                   ;Flags on how move is to be guarded against
hitflag = HMAFL
sparkno = -1
guardsound = 15,0
ground.type = Low
ground.slidetime = 60
kill = 0
ground.hittime  = 20
ground.velocity = -2,-2
guard.velocity = -7
air.velocity = -2,-2
airguard.velocity = -5, -4
P1stateno = 4001
P2stateno = 4009



[State 2060, 0]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 4300
pos = 0,0
postype = back
bindtime = 999
removetime = 150
supermove = 150
pausemovetime = 204
sprpriority = 3

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 9997
pos = 0,0
postype = back
bindtime = 999
removetime = 175
supermove = 150
pausemovetime = 204
sprpriority = -2


[State 2000, 8]
type = SuperPause
trigger1 = time = 0
time = 157
sound = -1,-1
pos = 0,-50
darken = 1
poweradd = -3000





[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
ID = 9997
ignorehitpause = 1

[State 1000, 7]
type = Changestate
trigger1 = Time = 36
value = 4351





;---------------------------------------------------------------------------
;Amalgam HYper
[Statedef 4001]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4010
sprpriority = -1

[State 2060, 7]; names
type = PlaySnd
trigger1 = time = 1
value = 4000,1





[State 861, 1]
type = explod
Trigger1 = animelem = 21
Trigger2 = animelem = 24
Trigger3 = animelem = 27
Trigger4 = animelem = 30
anim = 4310
pos = 0,0
postype = back
sprpriority = 10
removetime = 21
bindtime = -1

[State 2060, 7]; names
type = PlaySnd
Trigger1 = animelem = 21
Trigger2 = animelem = 27
value = 210,0

[State 2060, 7]; names
type = PlaySnd
Trigger1 = animelem = 24
Trigger2 = animelem = 30
value = 210,1

[State 230, 2]
type = HitDef
trigger1 = animelem = 21
trigger2 = animelem = 24
trigger3 = animelem = 27
attr = S, HA
animtype  = Hard
damage    = 15,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = -1
hitsound = S2,1
guardsound = S3,0
sparkno = S9992
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
[State 2010, 0]
type = playsnd
trigger1 = time = 100
value = 10,14

[State 230, 2]
type = HitDef
trigger1 = animelem = 30
attr = S, NA
animtype  = Medium
damage    = 30
priority = 6, Hit
guardflag = HA
pausetime = 12,12
sparkxy = -15,-59
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
kill = 0
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 200
ground.velocity = -15,0
air.velocity = 0,0



[State 4001, 7]
type = Changestate
trigger1 = Time = 133
value = 4089

;------------------
; Hit by mid punch
; (a custom gethit state)
; See State 1020 for details
[Statedef 4211]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1020, 1] ;Custom animation
trigger1 = time = 0
type = pause
time = 50

[State 1020, 1] ;Custom animation
trigger1 = 1
type = NotHitBy
value = SCA

[State 1020, 1] ;Custom animation
type = ChangeAnim
trigger1 = time = 1
value = 5002

[State 1020, 2] ;Custom animation
type = Changestate
trigger1 = animtime = 0
value = 0

;------------------
; Hit by Strong punch
; (a custom gethit state)
; See State 1020 for details
[Statedef 4212]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1020, 1] ;Custom animation
trigger1 = 1
type = NotHitBy
value = SCA

[State 1020, 1] ;Custom animation
type = ChangeAnim2
trigger1 = time = 1
value = 211

[State 821, 1]
type = VelSet
trigger1 = Time = 0
x = 4.3
y = -9
 
[State 821, 2]
type = VelAdd
trigger1 = Time > 0
y = .4
 

 
[State 821, 5]
type = PosAdd
trigger1 = Time = 3
x = 10
 
[State 821, 6]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
;Amalgam HYper
[Statedef 4050]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4306
sprpriority = -1

[State 2010, 0]
type = playsnd
trigger1 = time = 1
value = 4000,0


[State 2000, 1]
type = Explod
trigger1 = animelem = 21
anim = 4103
pos = -10,-35
vel = 0,0
postype = p1
removetime = 4
sprpriority = -2



[State 2060, 7]; names
type = PlaySnd
trigger1 = time = 15
value = 4000,1



[State 4000, 4]
type = Explod
trigger1 = time = 50
anim = 4309
pos = 0,0
vel = -4,0
postype = p1
facing = -1
removetime = 175
sprpriority = 5

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 50
ID = 9997
ignorehitpause = 1

[State 4001, 7]
type = Changestate
trigger1 = Time = 50
ctrl = 1
value = 0


;---------------------------------------------------------------------------
;Amalgam HYper gethit in air
[Statedef 4009]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,7
anim = 40
sprpriority = 0


[State 1000, 7]
type = velset
trigger1 = time = [0,10]
value = 0,7

[State 1000, 7]
type = Changeanim2
trigger1 = time = 0
value = 4101

[State 1000, 7]
type = velset
trigger1 = pos Y >= -1
value = 0,0



[State 1000, 7]
type = changestate
trigger1 = pos Y >= -1
value = 4002

;---------------------------------------------------------------------------
;Amalgam HYper gethit
[Statedef 4002]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 40
sprpriority = 0

[State 861, 0]
type = hitadd
Trigger1 = time = 0
value = 1



[State 1000, 7]
type = Changeanim2
trigger1 = time = 0
value = 4101

[State 1000, 7]
type = Changeanim
trigger1 = time = 12
value = 5300

[State 1000, 7]
type = selfstate
trigger1 = time = 200
value = 0

;---------------------------------------------------------------------------
;Amalgam HYper gethit
[Statedef 4012]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 40
sprpriority = 0

[State 1000, 7]
type = lifeadd
trigger1 = time = 0
value = -40

[State 3011, 0]
type = PalFX
trigger1 = Time = 1
time = 20
add = 256,10,10
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 1000, 7]
type = Changeanim2
trigger1 = time = 0
value = 4101

[State 1000, 7]
type = Changeanim
trigger1 = time = 12
value = 5300

[State 1000, 7]
type = selfstate
trigger1 = time = 200
value = 0

;---------------------------------------------------------------------------
;Amalgam HYper gethit
[Statedef 4022]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = -7,0
anim = 40
sprpriority = 0

[State 1000, 7]
type = lifeadd
trigger1 = time = 0
value = -60

[State 3011, 0]
type = PalFX
trigger1 = Time = 1
time = 20
add = 256,10,10
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 1000, 7]
type = Changeanim2
trigger1 = time = 0
value = 4101

[State 1000, 7]
type = Changeanim
trigger1 = time = 12
value = 5300

[State 1000, 7]
type = selfstate
trigger1 = time = 200
value = 0




;---------------------------------------------------------------------------
;Amalgam HYper fusion
[Statedef 4351]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 120
ctrl = 0
velset = 0,0
anim = 4303
sprpriority = 0

[State 2060, 7]
type = PlaySnd
trigger1 = time = 1
value = 4000,1

[State 4000, 4]
type = Explod
trigger1 = time = 34
anim = 4309
pos = 0,0
vel = -4,0
postype = p1
facing = -1
removetime = 175
sprpriority = 5

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 34
ID = 9997
ignorehitpause = 1

[State 1000, 7]
type = Changestate
trigger1 = Time = 34
ctrl = 1
value = 0

[Statedef 4089]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4011
sprpriority = -1

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S4000,2
channel = 0


[State 182]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3000, 0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 13
value = 3001, 0



[State 861, 1]
type = explod
Trigger1 = animelem = 14
anim = 4310
pos = 0,0
postype = back
sprpriority = 10
removetime = 21
bindtime = -1

[State 1000, 4]
type = Projectile
trigger1 = AnimElem = 14
ProjID = 4089
projanim = 4012
projhitanim = 4121
offset = 50, -120
velocity = 0, 0
projid = 1005
projremovetime = 36
projhits = 10
projpriority = 7
projmisstime = 2
attr = SC, HA
damage= 480,2
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 4,18
getpower = 0,0
givepower = 0,0
sparkno = s4122
guard.sparkno = S8001
sparkxy = 70,0
hitsound = S30,0
guardsound = S100,2
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5,-2
air.velocity = -10,-10
fall = 1
fall.recover = 0
air.fall = 1
air.fall.recover = 0
palfx.time = 20
palfx.add = 256,10,10
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10

[State 861, 0]
type = hitadd
Trigger1 = animelem = 1
value = 33


[State 1000, End]
type = ChangeState
trigger1 = Time = 156
value = 4050
ctrl = 1





