
[StateDef 3500]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3500
velset = 0,0

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

[State 3075,AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 35
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

[State 1100, Flysnd]
type = playsnd
trigger1 = AnimElem = 1
value = 1000,6

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 3
y = -3

[State -3, sense bar]
type = Explod
triggerall = animtime = 0
trigger1 = numexplod(3505)=0
anim = 3505
id = 3505
pos = ifelse(TeamSide = 1,88, 230), 35
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1
scale = .5,.5



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510
ctrl = 0

[StateDef 3510]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State 4444, UpBorder]
type = PosSet
trigger1 = Pos Y < -200
y = -200

[State 4444, DownBorder]
type = PosSet
trigger1 = Pos Y > -5
y = -5

[State 0, PlaySnd]
type = PlaySnd
triggerall = prevstateno = 3500
trigger1 = time = 30
value = 171,8

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y < -300
y = -300

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno = 3599
trigger1 = time = 0
value = 3510

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3599
time = 2
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = command != "holdback"
trigger1 =  command = "holdfwd"
x = 3

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = command != "holdfwd"
trigger1 =  command = "holdback"
x = -3

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y > -300
triggerall = command != "holddown"
trigger1 =  command = "holdup"
y = -2

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y < 0
triggerall = command != "holdup"
trigger1 =  command = "holddown"
y = 2

;----AI----

[State 0, VelSet]
type = VelSet
triggerall = var(59)
trigger1 = p2bodydist x > 15
x = 6

[State 0, VelSet]
type = VelSet
triggerall = var(59)
trigger1 =  p2bodydist x < 15
x = -3

[State 0, VelSet]
type = VelSet
triggerall = var(59)
triggerall = pos y > -300
trigger1 =  p2bodydist y < 15
y = -2

[State 0, VelSet]
type = VelSet
triggerall = var(59)
triggerall = pos y < 0
trigger1 =  p2bodydist y > 15
y = 2
;----------

[State 0, VelSet]
type = VelSet
trigger1 =  command != "holddown" && command != "holdup"
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =  command != "holdfwd" && command != "holdback"
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3511
trigger1 =  vel x > 0
value = 3511

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3512
trigger1 =  vel x < 0
value = 3512

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3513
trigger1 =  vel x = 0
trigger1 = vel y < 0
value = 3513

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3510
trigger1 =  vel x = 0
trigger1 = vel y >= 0
value = 3510

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "qcf_x"
value = 3520
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "qcf_y"
value = 3525
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "qcf_z"
value = 3527
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "qcb_x"
trigger2 = command = "qcb_x"
trigger3 = command = "qcb_x"
value = 3530
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "x"
value = 3540
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "y"
value = 3550
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "z"
value = 3560
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "a"
value = 3570
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "b"
value = 3580
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "c"
value = 3590
ctrl = 0

[State 0, Turn]
type = Turn
trigger1 = P2Dist x < -10

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = win
trigger2 = lose
trigger3 = stateno = 50
id = 3505

[State 0, ChangeState]
type = ChangeState
trigger1 = numexplod(3505) = 0
trigger2 = command = "start"
value = 50
ctrl = 0

[Statedef 3599]
type    = S
movetype= H
physics = N
velset = -3,0
anim = 3599

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510
ctrl = 0


[Statedef 3530]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3530
poweradd = 55
sprpriority = 2
velocity = 0,0

[State 3075,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
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

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -3
y = -5

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 7

[State 0, VelSet]
type = velset
trigger1 = animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y > -300
triggerall = command != "holddown"
trigger1 =  command = "holdup"
y = -2

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y < 0
triggerall = command != "holdup"
trigger1 =  command = "holddown"
y = 2

[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3600
ID = 3600
removetime = 125
pos = 45,-52
postype = p1
bindtime = -1
sprpriority = 3
scale = .5,.5

[State -3, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3601
ID = 3601
removetime = 125
pos = 45,-52
postype = p1
bindtime = -1
sprpriority = -3
scale = .5,.5

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 4
value = 1000,5

[State 650, HitDef]
type = HitDef
trigger1 = Time  = 0
attr = A,NA
damage = 75,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = s7772
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,3
air.fall = 1
fall = 1
air.hittime = 25
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3535

[State 650, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3536

[Statedef 3535]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3536
poweradd = 55
sprpriority = 2

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3600

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3601

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -3
y = -3

[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510

[Statedef 3536]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 1310
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
y = -5

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3600

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3601

[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510

;-------------------------------------------------------------------------------

[Statedef 3520]
type = S
movetype = A
physics = S
anim = 3520
ctrl = 0
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 0

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 4,3
offset = 30,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
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

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1


[Statedef 3525]
type = S
movetype = A
physics = S
anim = 3525
ctrl = 0
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 0

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 5,2
offset = 40,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
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

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1


[Statedef 3527]
type = S
movetype = A
physics = S
anim = 3527
ctrl = 0
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || Animelem = 6
value = 1000,2
channel = 0

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 4,3
offset = 30,-80
trigger1 = AnimElem = 6
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
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

[State 1000, fireball]
type = projectile
projscale = .5,.5
projanim = 1010
projhitanim = 1020
projcancelanim = 1020
projremovetime = 90
velocity = 5,2
offset = 40,-80
trigger1 = AnimElem = 3
numhits = 1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy
damage = 50,5
pausetime = 4,4
sparkno = s-1
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

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 3540]
anim = 3540
ctrl = 0
type = S
movetype = A
physics = S
velset = 3,0
poweradd = 30

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

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
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -20,-63
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "y"
value = 3550
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "z"
value = 3560
ctrl = 0

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 3550]
anim = 3550
ctrl = 0
type = S
movetype = A
physics = S
velset = 3,0
poweradd = 65

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -20,-90
animtype = Medium
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "z"
value = 3560
ctrl = 0

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1


;-------------------------------------------------------------------------------

[StateDef 3560]
anim = 3560
ctrl = 0
type = S
movetype = A
physics = S
velset = 6,0
poweradd = 65

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -20,-90
animtype = Medium
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 3570]
anim = 3570
ctrl = 0
type = S
movetype = A
physics = S
velset = 3,0
poweradd = 25

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-100
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "b"
value = 3580
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "c"
value = 3590
ctrl = 0

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 3580]
anim = 3580
ctrl = 0
type = S
movetype = A
physics = S
velset = 6,0
poweradd = 65

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -12
guard.velocity = -5
air.velocity = -3,-6

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "c"
value = 3590
ctrl = 0

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 3590]
anim = 3590
ctrl = 0
type = S
movetype = A
physics = S
velset = 6,0
poweradd = 96

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -10,-75
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-5
guard.velocity = -4
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1


