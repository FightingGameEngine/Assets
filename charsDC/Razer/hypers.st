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
type = S
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1000,0
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
sprpriority = -1
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

[State 0, sKULLmASK]
type = Explod
trigger1 = AnimElem = 3
anim = 1020
pos = 3,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100000
removetime = 60
pausemovetime = 0
scale = 1,1
sprpriority = 3
removeongethit = 1

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = 10,-85
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
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
offset = 10,-84
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
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
offset = 10,-86
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
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

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

; Hyper 2
[StateDef 3100]
type = S
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 3,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1000,0
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
sprpriority = -1
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
ProjID = 3030
projanim = 1030
projhitanim = 1030
projremovetime = 100
velocity = 0,0

offset = 0,0
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
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

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

;------SUPER LASER
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
value = S1000,2
channel = 0

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
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
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
trigger1 = AnimElem = 2
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
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S9,1
volume = 0
channel = -1
[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 3201
ProjID = 3200
projhitanim = 3200
projhits = 999
projmisstime = 5
projremovetime = 100
projremanim = 3202
projpriority = 10
offset = 40,-70
velocity = 0
attr = S, SP
damage = 10
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 4,4
;hitsound   = 5,2
sparkxy = 500,500
;guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time > 120 && !NumProjID(3200)
value = 0
ctrl = 1

;

[StateDef 3205]
type = A
movetype = A
physics = N
anim = 3205
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1000,2
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
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
trigger1 = AnimElem = 2
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

[State 0, 1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 3201
ProjID = 3200
projhitanim = 3200
projhits = 999
projmisstime = 5
projremovetime = 100
projremanim = 3202
projpriority = 10
offset = 40,-82
velocity = 0
attr = S, SP
damage = 10
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 4,4
;hitsound   = 5,2
sparkxy = 500,500
;guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time > 120 && !NumProjID(3200)
value = 9100
ctrl = 1
