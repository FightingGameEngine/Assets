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
sprpriority = 3
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
sprpriority = -2
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
trigger1 = AnimElemTime(3) % 10 = 1
value = S9,1

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
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
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
priority = 5,Hit
damage = 10,1
pausetime = 4,4
sparkno = S9992
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
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
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
; Hyper 1
[StateDef 3100]
type = S
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
sprpriority = 3
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
sprpriority = -2
ownpal = 1

; end DCvM stuff
;-------------------

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) % 10 = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "superbeam"
ID = 3101
stateno = 3101
pos = -40,20
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 3000, back to normal]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3101]
type = S
movetype = A
physics = N
anim = 3101
ctrl = 0
velset = 0,0


[State 3000, logoFlurry]
type = hitdef
trigger1 = AnimElemTime(3) % 10 = 1
accel = 1.5, 0
offset = 0,0
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
sparkxy = 0,-70
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
air.velocity = 0

[State 3000, back to normal]
type = destroyself
trigger1 = Time = 80

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3200]
type = S
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

[State 270, Explod]
type = Explod
trigger1 = time = 70
anim = 185
ID = 185
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

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
sprpriority = 3
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
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 4
name = "ganthet"
pos = 90,-150
stateno = 3207
postype = p1
facing = 1
ownpal = 1
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 8
name = "ion"
pos = -10,-150
stateno = 3206
postype = p1
facing = 1
ownpal = 1
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
trigger1 = AnimElemTime(3) % 10 = 1
value = S9,1


[State 3000, back to normal]
type = ChangeState
trigger1 = ANIMTIME = 0
value = 3201
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 3201]
anim = 3201
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "superbeam2"
ID = 3203
stateno = 3203
pos = 10,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 270, Explod]
type = Explod
trigger1 = time = 95
anim = 185
ID = 185
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2
removeongethit = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3203]
type = S
movetype = A
physics = N
anim = 3204
ctrl = 0
velset = 0,0


[State 3000, logoFlurry]
type = hitdef
trigger1 = AnimElemTime(3) % 10 = 1
offset = 0,0
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 32,10
pausetime = 4,4
sparkno = S9992
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3
air.velocity = 0
ground.cornerpush.veloff = 0

[State 3000, back to normal]
type = destroyself
trigger1 = Time = 80
;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3206]
type = S
movetype = A
physics = N
anim = 3206
ctrl = 0
velset = 0,0
sprpriority = 5

[State 3000, back to normal]
type = velset
trigger1 = animelem =1
y = 3

[State 3000, back to normal]
type = velset
trigger1 = animelem =2
y = 0

[State 3000, back to normal]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3207]
type = S
movetype = A
physics = N
anim = 3207
ctrl = 0
velset = 0,0
sprpriority = 5

[State 3000, back to normal]
type = velset
trigger1 = animelem =1
y = 2

[State 3000, back to normal]
type = velset
trigger1 = animelem =2
y = 0

[State 3000, back to normal]
type = destroyself
trigger1 = animtime = 0
