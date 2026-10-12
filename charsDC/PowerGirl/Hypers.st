;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1 -- Heat Vision
;---------------------------------------------------------------------------
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, 3]
type = poweradd
trigger1 = time = 0
value = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3110]
type = Playsnd
trigger1 = animelem = 1
value = 12, 4


[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Heat Vision"
ID = 3010
stateno = 3010
pos = 0, -1250
size.yscale = 1.0
ownpal = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 2

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 0,-125

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 10,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 0,10
getpower = 0,0
givepower = 0,0
hitsound = s8000,2
guardsound = S3,0
sparkno = S8222
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,64,0

[State 3000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=3000


;---------------------------------------------------------------------------
; Hyper 2 - Krypton fury - 1
;---------------------------------------------------------------------------
[Statedef 3100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3100
poweradd = -1000

[State 1610, 2]
type = SuperPause
trigger1 = time = 7
time = 2
sound = S2,7
anim = S6140
;pos = -3, -89
movetime = 2

[State 1610, 2a]
type = SuperPause
trigger1 = time = [8,40]
time = 2
anim = -1
sound = -1
movetime = 2
p2defmul = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

;[State 3000 superbg 0.1] (use BG Code instead for basic hypers not using changestates)
;type = helper
;trigger1 = Animelem = 5
;bindtime = -1
;sprpriority = -5
;removetime = -1
;removeongethit = 1
;pausemovetime = 60
;stateno = 9744

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 0, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 1610, 3]
type = PlaySnd
trigger1 = time = 20
value = 2, 8

[State 1610, 5]
type = AssertSpecial
trigger1 = time > 7
flag = NoBG
flag2 = NoFG
ignorehitpause = 1

[State 2000, 4]
type = ChangeState
trigger1 = animtime = 0
value = 3110
ctrl = 0

;----------------------------------------
;Krypton fury - 2
;----------------------------------------

[Statedef 3110]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3110

[State 1610, a]
type = Veladd
trigger1 = time = 0
x = 15

[State 1610, a]
type = Velset
trigger1 = animelem = 7
x = 0

[State 1610, 3]
type = PlaySnd
trigger1 = animelem = 7
value = 4, 23


[State 220, 5]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
pausetime = 13, 14
animtype = High
damage = 50
sparkno = 3
sparkxy = -5, -80
hitsound = S2, 2
guardsound = S0, 12
ground.velocity = -6, 0
ground.hittime = 10
air.velocity = -7, -1
air.hittime = 12
ground.type = Hard
guard.slidetime = 16
guard.hittime = 18
guard.velocity = -9
givepower = 60
getpower = 80
p1stateno = 3120
envshake.time = 10
envshake.ampl = 6

[State 3000, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------
;Krypton fury - 3
;----------------------------------------

[Statedef 3120]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3120

[State 1610, 3]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 9
value = 4, 9

[State 1610, 3]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4, 19

[State 1610, 3]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4, 8
volume = 140

[State 220, 5]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 9
trigger4 = AnimElem = 21
trigger5 = AnimElem = 25
attr = S, NA
hitflag = MAF
guardflag = MA
pausetime = 2, 3
animtype = High
damage = 40
sparkno = 3
sparkxy = -5, -80
hitsound = S2, 2
guardsound = S0, 12
ground.velocity = 0, 0
ground.hittime = 25
air.velocity = -.10, -1
air.hittime = 30
ground.cornerpush.veloff = 0
ground.type = Hard
guard.slidetime = 16
guard.hittime = 18
guard.velocity = -9
givepower = 60
getpower = 80
envshake.time = 10
envshake.ampl = 6
kill = 0

[State 220, 5]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
attr = S, NA
hitflag = MAF
guardflag = MA
pausetime = 3, 4
animtype = Heavy
damage = 40
sparkno = 3
sparkxy = -5, -80
hitsound = S2, 2
guardsound = S0, 12
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
ground.hittime = 25
air.velocity = .10, -1
air.hittime = 30
ground.type = Hard
guard.slidetime = 16
guard.hittime = 18
guard.velocity = -9
givepower = 60
getpower = 80
envshake.time = 10
envshake.ampl = 6
kill = 0

[State 220, 5]
type = HitDef
trigger1 = AnimElem = 29
attr = S, NA
hitflag = MAF
guardflag = MA
pausetime = 3, 20
animtype = High
damage = 30
sparkno = 3
sparkxy = -5, -80
hitsound = S2, 2
guardsound = S0, 12
ground.velocity = .70, 0
ground.hittime = 30
air.velocity = 0, -4
ground.cornerpush.veloff = 0
air.hittime = 30
ground.type = Low
guard.slidetime = 16
guard.hittime = 18
guard.velocity = -9
givepower = 60
getpower = 80
envshake.time = 10
envshake.ampl = 6
kill = 0

[State 220, 5]
type = HitDef
trigger1 = AnimElem = 13
attr = S, HA
damage = 30,5
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 14, Hit
getpower = 0
pausetime = 10, 6
guard.sparkno = S7047
sparkno = s7012
sparkxy = -25, 0
hitsound = S1,0
guardsound = S2,0
p2sprpriority = -1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-13
guard.velocity = -4
fall = 1
fall.animtype = Hard
fall.recover = 0
down.bounce = 0
air.recover = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4
p2stateno = 5070

[State 995, 1]
type = Screenbound
trigger1 = animelem = 37
value = 0

[State 2000, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



; END
