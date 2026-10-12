
;==================HYPER GRIFON ===================
[Statedef 1402]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 1402

; voice ==================
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S20,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S30,1
volume = 10
freqmul = 1.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S30,5
freqmul = 1.0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 140
sound = S10,1
pos = 0,-80
darken = 10
poweradd = -1000
;======================== NOME =======================
[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 22000
ID = 22000
postype = back  ;p2,front,back,left,right
removetime = -2
sprpriority = 0
removeongethit = 1
supermovetime = 35
;trans = add1
velocity = 10,0
scale = .5,.5
;========================EFEITOS=======================
[State 0, Explod]
type = Explod
trigger1 =  time = 3
anim = 8005
ID = 8005
postype = back  ;p2,front,back,left,right
removetime = -2
sprpriority = 0
removeongethit = 1
trans = add1
;=====================LOGO LANTERN AZUL==============
[State 0, Explod]
type = Explod
trigger1 =  time = 3
anim = 10000
ID = 10000
postype = back  ;p2,front,back,left,right
removetime = 150
removeongethit = 1
;trans = add1

;=================DANO ===============================
[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1404
projanim = 1404
projhitanim = 1404
projremanim = 1404
projcancelanim = 1404
projscale = 1,1
projremove = 1
projremovetime = 100
velocity = 0.1,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 5
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 50,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
; HitDef
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
;affectteam = E          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 5,0
;guard.pause,0
guard.sparkno = 0
sparkno = s9992
sparkxy = 30, -42
hitsound = s0,0
guardsound = s2,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.slide = 0
;guard.slide = 0
ground.hit = 5
;guard.hit = 0
air.hittime = 10
;guard.ctrl  = 0
;guard.dist = 320
;yaccel = 0.5
ground.velocity = 0,0
;guard.velocity = 0
air.velocity = 0,0


[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; =============================================================
; =============================================================
[Statedef 1403]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 1403

; voice ==================
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S20,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S30,1
volume = 10
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S30,4
freqmul = 1.5
; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 140
sound = S10,1
pos = 0,-80
darken = 10
poweradd = -1000
;======================== NOME =======================
[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 22000
ID = 22000
postype = back  ;p2,front,back,left,right
removetime = -2
sprpriority = 0
removeongethit = 1
supermovetime = 50
;trans = add1
velocity = 6,0
scale = .5,.5
;========================EFEITOS=======================
[State 0, Explod]
type = Explod
trigger1 =  time = 3
anim = 8005
ID = 8005
postype = back  ;p2,front,back,left,right
removetime = -2
sprpriority = 0
removeongethit = 1
trans = add1
;=====================LOGO LANTERN AZUL==============
[State 0, Explod]
type = Explod
trigger1 =  time = 3
anim = 10000
ID = 10000
postype = back  ;p2,front,back,left,right
removetime = 150
removeongethit = 1
;trans = add1

;=================DANO ===============================
[State 600, 1]
type = HitDef
trigger1 = 1403
attr = S, NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 1, Hit
pausetime = 10, 10
sparkno = s15
sparkxy = 0,-50
hitsound = 5, 0
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
[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


