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
anim = 2815

ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
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


; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,1
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S9,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1022
ID =  1022
pos = 40,-90
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
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1010
projcancelanim = 1020
velocity = 6,0
projscale = 0.5,0.3
offset = 40,-90
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
hitsound = S50,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1



[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 40
ctrl = 1


;=====================================================
; Hyper 2
[StateDef 3100]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0
ontop = 1
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
[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "kraken"
ID = 1030
stateno = 3101
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

[StateDef 3101]
anim = 1030
ctrl = 0
type = S
movetype = A
physics = S
velset = 1,0
poweradd = 30

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
trigger1 = animelem = 9
trigger2 = animelem = 14
trigger3 = animelem = 24
trigger4 = animelem = 25
trigger5 = animelem = 26
trigger6 = animelem = 27
attr = S, NA
damage = 30
guardflag = MA
pausetime = 10,28
hitsound = S4,2
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 1
ground.velocity = 1
guard.velocity = -2
air.velocity = -2,-3

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause =
;persistent =




