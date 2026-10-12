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
; Hyper 1
[StateDef 3000]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
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
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,100
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID =1005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,150
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

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
; end DCvM stuff
;-------------------

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) % 5 = 1
value = 1000,2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 3
projhits = 10
ProjID = 3010
projanim = 3010
projremovetime = 44
offset = 40,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 25,2
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
fall = 1
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State -3, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1030
ID = 1030
pos = -55,-95
postype = p1
bindtime = -1
sprpriority = -1
scale = 0.5,0.5


[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3100]
type = A
movetype = A
physics = N
anim = 3100
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
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
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -2000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,100
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,150
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

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
; end DCvM stuff
;-------------------

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) % 10 = 1
value = 1000,5
channel = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 3
projhits = 10
ProjID = 3110
projanim = 3110
projcancelanim = 1020
projremovetime = 51
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 50,2
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
fall = 1
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0



[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 65
value = 0
ctrl = 1

;-------------------------------------------------------------------------

; Hyper 1
[StateDef 3200]
type = A
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
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
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,100
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,150
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

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
; end DCvM stuff
;-------------------

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = S9,1

[State 200, swoosh]
type = velset
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
x = 6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem = 4 || animelem = 5 || animelem = 6
attr = S, NA
damage = 50
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
pausetime = 8,8
sparkxy = 0,-99
animtype = light
ground.type = High
ground.slidetime = 200
ground.hittime  = 200
ground.velocity = -6
guard.velocity = -6
air.velocity = -6,-3

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 40
value = 3210
ctrl = 1

[StateDef 3210]
anim = 1100
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 700,0

[State 200, swoosh]
type = velset
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
x = 6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 100
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-99
animtype = heavy
ground.type = High
ground.slidetime = 200
ground.hittime  = 200
ground.velocity = -20,0
guard.velocity = -6
air.velocity = -6,-3
fall = 0

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 2000
ctrl = 1

[StateDef 2000]
anim = 2000
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 3075,AfterImage]
type = AfterImage
trigger1 = AnimElem = 6
time = 35
length = 16
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 1
palfx.color = 1
timegap = 1
framegap = 2
trans = add1


[State 230, swoosh]
type = velset
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
x = -7

[State 230, swoosh]
type = velset
trigger1 = animelem = 6 || animelem = 7 || animelem = 8
x = 25

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = animelem = 7 || animelem = 8
attr = C, NA
damage = 25
guardflag = MA
hitflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-100
animtype = Light
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -20,-5
guard.velocity = -2
air.velocity = -2,-3
fall = 1

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype = A
physics = N
ctrl = 0
poweradd = 70*(1000+var(24))/1000*!(var(15)||var(16))
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
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
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -2000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,100
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,150
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

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
; end DCvM stuff
;-------------------

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0


[State 902, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 3320

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1900,var(12)
channel = 0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,100
channel = 19

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0,100
channel = 20

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 7.5

[State 1100, ChangeState]
type = ChangeState
triggerall = time > 4
Trigger1 = P2BodyDist X <= 15
value = 3310

[State 901, State End]
type = ChangeState
trigger1 = Time >= 56+(9*var(5))
value = 1901

; Hyper 1
[StateDef 3310]
type = A
movetype = A
physics = N
anim = 3300
ctrl = 0
velset = 0,0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem = 3
attr = S, NA
damage = 25
guard.damage = 5
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
pausetime = 8,8
sparkxy = 0,-99
animtype = light
ground.type = High
ground.slidetime = 200
ground.hittime  = 200
ground.velocity = 0
guard.velocity = 0
air.velocity = -6,-3
ground.cornerpush.veloff = 0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem = 5
attr = S, NA
damage = 30
guard.damage = 5
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
pausetime = 8,8
sparkxy = 0,-25
animtype = medium
ground.type = low
ground.slidetime = 200
ground.hittime  = 200
ground.velocity =  0
guard.velocity = 0
air.velocity = -6,-3
ground.cornerpush.veloff = 0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem =  9
attr = S, NA
damage = 30
guard.damage = 5
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
pausetime = 8,8
sparkxy = 0,-50
animtype = heavy
ground.type = High
ground.slidetime = 200
ground.hittime  = 200
ground.velocity =  0
guard.velocity = 0
air.velocity = -6,-3
ground.cornerpush.veloff = 0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem = 12
attr = S, NA
damage = 50
guard.damage = 15
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
pausetime = 8,8
sparkxy = 0,-99
animtype = medium
ground.type = low
ground.slidetime = 200
ground.hittime  = 200
ground.velocity =  0
guard.velocity = 0
air.velocity = -6,-3
ground.cornerpush.veloff = 0

[State 200, HitDef]
type = HitDef
trigger1 =  animelem = 17
attr = S, NA
damage = 50
guard.damage = 15
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
pausetime = 8,8
sparkxy = 0,-27
animtype = heavy
ground.type = High
ground.slidetime = 200
ground.hittime  = 200
ground.velocity =  0
guard.velocity = 0
air.velocity = -6,-3
ground.cornerpush.veloff = 0

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 3075,AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 60
length = 16
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
timegap = 2
framegap = 4
trans = add1

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 60
value = 3330
ctrl = 1

[StateDef 3330]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,1
channel = 0

[State 200, swoosh]
type = velset
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
y = -3
x = 2.5

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 100
guard.damage = 25
hitflag = MAFD
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-99
animtype = heavy
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
air.slidetime = 200
air.hittime = 200
ground.velocity = -1.5,-9.5
guard.velocity = -1
air.velocity = -3,-3

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 1100, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 670
ctrl = 1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

[StateDef 660]
anim = 660
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = velset
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
y = -9

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, grunt]
type = pause
trigger1 = animelem = 5
time = 30

[State 200, nohitby]
trigger1 = 1
type = NotHitBy
value = SCA

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 92
guard.damage = 15
hitflag = MAFD+
guardflag = MA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -10,-50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,9
fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[StateDef 670]
anim = 670
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 0

[State 650, swoosh]
type = velset
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
x = -3.2
y = -7

[State 650, swoosh]
type = velset
trigger1 = animelem = 5
y =  7

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------------------------
; Hyper 1
[StateDef 3400]
type = A
movetype = A
physics = N
anim = 3400
ctrl = 0
velset = 0,0

[State 3000, PlaySnd]
type = velset
trigger1 = animelem = 3 || animelem = 4 ||animelem = 5
trigger2 = animelem = 6 || animelem = 7 ||animelem = 8
y = -5

[State 3000, PlaySnd]
type = velset
trigger1 = animelem = 9
y = 0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =9
value = 700,1
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) % 10 = 1
value = 1000,0
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
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -3000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
sprpriority = -3
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,100
postype = back
bindtime = 999
removetime = 40
supermove = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,-50
postype = back
bindtime = 999
removetime = 40
supermove = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,50
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,150
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

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
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 0,9
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 0,-9
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -6,-6
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -6,6
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 6,-6
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 6,6
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 3,3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 3,-3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -3,3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -3,-3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 9,3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = 9,-3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -9,3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
Projhits = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremovetime = 44
velocity = -9,-3
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = heavy
priority = 5,Hit
damage = 75
pausetime = 8,8
sparkno = S-1
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 12||AnimElem =15 ||AnimElem = 18
trigger2 = AnimElem =21 || AnimElem = 24||AnimElem =27 ||AnimElem = 30
value = 1000,3
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 700,1
channel = 0

[State -3, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3410
ID = 3410
pos = 0,-95
postype = p1
bindtime = -1
sprpriority = -1



[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 200
value = 50
ctrl = 1


;-------------------------------------------------------------------------------
