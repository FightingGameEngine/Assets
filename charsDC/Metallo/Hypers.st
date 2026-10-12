;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;Gatling Gun
[StateDef 3000]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3000
poweradd = 20


[State 3000, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3000, d]
type = removeexplod
trigger1 = !time
id = 104




[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1






[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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



;-----------=[ FX end ]=-----------------

[State 3000, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3001
ctrl = 0

;---------------------------------------------------------------------------------------------
;Gatling Gun (cont)

[StateDef 3001]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3001
poweradd = 20



[state 3000, 1]
type = Playsnd
trigger1 = animelem = 1
value =  12


[State 3000, Shoot]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 3003
velset = -1,0
pos = 0,-0
id = 3003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1

[State 3000, Shoot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3003
velset = -.5,0
pos = 0,-0
id = 3003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 3000, Shoot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3003
velset = -.5,0
pos = 0,-0
id = 3003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1








[State 3001, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4

[State 3001, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4


[State 3001, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4






[State 3001, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 0,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 3001, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 0,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 3001, 2]
type = Projectile
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 500,500
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0




[State 3001, 3]
type = Projectile
trigger1 = AnimElem = 29
projanim = 3002
projhitanim = 3004
projremanim = 3004
projcancelanim = 3004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S13,0
guardsound = S14,0
sparkno = s7703;s9999
sparkxy = 500,500
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0




[State 3000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Missile Laungher
[StateDef 3300]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3300
poweradd = 20


[State 3300, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3300, d]
type = removeexplod
trigger1 = !time
id = 104




[State 3300, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3300, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1






[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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



;-----------=[ FX end ]=-----------------

[State 3300, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3301
ctrl = 0

;---------------------------------------------------------------------------------------------
;Missile Laungher (cont)

[StateDef 3301]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3301
poweradd = 20



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
trigger5 = animelem = 12
trigger6 = animelem = 14
trigger7 = animelem = 16
trigger8 = animelem = 18
trigger9 = animelem = 20
trigger10 = animelem = 22
value = 17


[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 3303
velset = -1,0
pos = 0,-0
id = 3303
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1

[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3303
velset = -.5,0
pos = 0,-0
id = 3303
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3303
velset = -.5,0
pos = 0,-0
id = 3303
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 3305
velset = -1,0
pos = 0,-0
id = 3305
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1


[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3305
velset = -.5,0
pos = 0,-0
id = 3305
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 3300, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3305
velset = -.5,0
pos = 0,-0
id = 3305
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1











[State 3301, 1]
type = Projectile
trigger1 = AnimElem = 4
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4

[State 3301, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4


[State 3301, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -8,-12
air.juggle = 3
air.fall = 1
down.velocity = -7,-13
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4









[State 3301, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 0,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -8,-12
air.juggle = 3
air.fall = 1
down.velocity = -7,-13
down.hittime = 30
down.bounce = 0


[State 3301, 2]
type = Projectile
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 500,500
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -8,-12
down.hittime = 30
down.bounce = 0

[State 3301, 3]
type = Projectile
trigger1 = AnimElem = 29
projanim = 3302
projhitanim = 3304
projremanim = 3304
projcancelanim = 3304
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S18,0
guardsound = S21,0
sparkno = s7703;s9999
sparkxy = 500,500
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
fall = 1
down.velocity = -8,-12
down.hittime = 30
down.bounce = 0






[State 3300, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Circular Saw
[Statedef 3700]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
anim = 3700
ctrl = 0
sprpriority = 2


[State 3700, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3700, d]
type = removeexplod
trigger1 = !time
id = 104


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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

[State 3700, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 3700]
type = PlaySnd
trigger1 = AnimElem = 1
value = 19
persistent = 0

[State 3700, HitDef]
type = HitDef
trigger1 = Time % 7 = 0 && Time < 145 ;95
attr = S, NA
damage = 12,5
guardflag = MAFD
pausetime = 1,4
hitsound = S20,0
guardsound = S14,0
sparkno = 2
sparkxy = -18, -76
animtype = Hard
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -2
down.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
down.velocity = -2,-1
down.hittime = 20
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 3700, HitDef]
type = HitDef
trigger1 = animelem=36
attr = S, NA
damage = 12
guardflag = MA
pausetime = 4,2
hitsound = S20,0
guardsound = S14,0
sparkno = 2
sparkxy = -18, -76
animtype = Hard
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1, -1
guard.velocity = -5
air.velocity = -1,-1
down.velocity = -1,-1
down.hittime = 20
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0







[State 3700, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;-------------------------------------------------------------------------------
;Kryptonite Beam
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2


[State 3200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3200, d]
type = removeexplod
trigger1 = !time
id = 104


[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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

;----------

type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1





[state 3200, 1]
type = Playsnd
trigger1 = animelem = 1
value =  24




[State 3200, hit]
type = Projectile
trigger1 = AnimElem = 5
projanim = 3201
projremovetime = 80
projhits = 32
projmisstime = 3
projshadow = 0
projpriority = 6
projid = 3201
attr = A, SA
damage = 12,6
animtype = Heavy
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = S25,0
guardsound = S14,0
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,-2
guard.velocity = -5
air.velocity = -5,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
palfx.time = 40
palfx.mul = 0,204,51
palfx.sinadd = 102,255,153,5
palfx.invertall = 0
palfx.color = 15
fall = 1










[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;-------------------------------------------------------------------------------
;Giant Hammer
[Statedef 3500]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 2

[State 3500, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3500, d]
type = removeexplod
trigger1 = !time
id = 104




[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1






[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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





[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 10
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 31
volume = 255



[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 183
animtype = back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s32,0
guardsound = S14,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 0, Explod]
type = Explod
trigger1 = time = 40
anim = 3505
pos = 150,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 3500]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;-------------------------------------------------------------------------------
;Maximus Kriptonite Combination
[statedef 3600]
type = S
movetype = A
physics = S
anim = 3600
velset = 0,0
ctrl = 0

[State 3600, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3600, d]
type = removeexplod
trigger1 = !time
id = 104




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40



[State 0, ]
type = SuperPause
trigger1 = animelem = 1
time = 20
sound = S8889, 0
pos = 7, -55
darken = 1
poweradd = -1000



[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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





[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
movetype = A

[State 0, ]
type = VelSet
trigger1 = time = 7
x = 7

[State 0, ]
type = VelSet
trigger1 = time >= 7
x = 4.5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 && palno!= 6
value = 3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 && palno = 6
value = 50,5
channel = 1
lowpriority = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 3
value = 8400,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 4
value = 8400,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 1
value = ifelse(palno=6,1,2),1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 210,210,210
time = 4
under = 0
ignorehitpause = 1
persistent = 1

[State 0, ]
type = MoveHitReset
trigger1 = movecontact = 1
persistent = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
priority = 6,Hit
damage = 13,1
pausetime = 2,15
guard.pausetime = 2,2
sparkxy = -30,-79
guard.sparkno = 41
hitsound = S42,0
guardsound = S14,0
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0

[State 0, ]
type = HitDef
trigger1 = animelem = 16
trigger2 = animelem = 20
trigger3 = animelem = 22
trigger4 = animelem = 26
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
air.type = low
priority = 6,Hit
damage = 20,2
pausetime = 2,15
guard.pausetime = 2,2
sparkxy = -30,-79
guard.sparkno = 41
hitsound = S43,0
guardsound = S14,0
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0


[State 3600]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 20
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3605

[statedef 3605]
type = S
movetype = A
physics = S
anim = 3605
velset = 5,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
trigger1 = palno != 10
time = 2
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
time = 4
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 3

[State 0, ]
type = PosAdd
trigger1 = movehit = 1
trigger1 = backedgedist <= -60
x = -100
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
fall.animtype = back
priority = 4,Hit
damage = 30,15
pausetime = 4,15
guard.pausetime = 2,2
sparkxy = -60,-79
guard.sparkno = 41
hitsound = S44,0
guardsound = S14,0
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
ground.velocity = -8,-8
guard.velocity = -5
air.velocity = -8,-8
airguard.velocity = -5
yaccel = 0.5
getpower = 0,0
forcestand = 1
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 3600]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5



[State 3600, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Super Demolition Cannon
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 2


[State 4000, c]
type = removeexplod
trigger1 = !time
id = 102

[State 4000, d]
type = removeexplod
trigger1 = !time
id = 104


[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1



[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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






type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1



[state 3200, 1]
type = Playsnd
trigger1 = animelem = 1
value =  55





[State 4000, hit]
type = Projectile
trigger1 = AnimElem = 5
projanim = 4001
projremovetime = 60
projhits = 32
projmisstime = 3
projshadow = 0
projpriority = 6
projid = 4001
attr = A, SA
damage = 12,3
animtype = Heavy
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = S56,0
guardsound = S14,0
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,-2
guard.velocity = -5
air.velocity = -5,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
fall = 1
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 249,217,70
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15





[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Demolition Ball
[Statedef 4100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 2

[State 4100, c]
type = removeexplod
trigger1 = !time
id = 102

[State 4100, d]
type = removeexplod
trigger1 = !time
id = 104




[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1






[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
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
anim = 10007
name = "Left Arrow"
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
name = "Right Arrow"
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
name = "Super Portrait"
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
name = "Hyper Explod Background"
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
name = "Black Background"
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





[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 10
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =




[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61
volume = 255



[State 4100, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
damage = 180,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4,6
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = S60,0
guardsound = S14,0
ground.type = High
ground.slidetime = 27
ground.hittime  = 23
ground.velocity = -12,-9
air.type = Low
forcestand = 1
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0










[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 59
volume = 255




[State 3500]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






;-------------------------------------------------------------------------------
;P2 Custom Hyper Statedef
[Statedef 10210]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0

[State 850, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5002


[State 10210, 3]
type = Selfstate
trigger1 = time = 88
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 100
value = 5050
ctrl = 1

; END

;-------------------------------------------------------------------------------








