;---------------------------------------------------------------------------
;---{Special Attacks}---
;---------------------------
;Standinig Web-Shot (light)
[statedef 1000]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 5,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = 1
x = 4
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 40,3
pausetime = 0,0
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = 0
guard.velocity = 0
air.velocity = 0
getpower  = 40
givepower = 20
fall = 1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1001
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1006]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1006
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1007]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1007
sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = numtarget != 0 && time = 0
trigger1 = (target,const(size.head.pos.y) <= -70)
anim = 1007
ID = 1007
pos = 0,0
bindtime = -1
removetime = -1
scale = ifelse((target,const(size.ground.back)+target,const(size.ground.back))>80,1.5,1.25),1.25
sprpriority = 8
shadow = -1,-1,-1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 2
pos = 0,0,foot

[State 0, Gravity]
type = Gravity
trigger1 = target,stateno = 1002
trigger2 = target,stateno = 1012
trigger3 = target,stateno = 1022
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = prevstateno = 1005 && p2stateno != [1001,1002]
trigger2 = prevstateno = 1015 && p2stateno != [1011,1012]
trigger3 = prevstateno = 1025 && p2stateno != [1021,1022]
trigger4 = prevstateno = 1105 && p2stateno != [1001,1002]
trigger5 = prevstateno = 1115 && p2stateno != [1011,1012]
trigger6 = prevstateno = 1125 && p2stateno != [1021,1022]
trigger7 = prevstateno = 1206 && p2stateno != [1001,1002]
value = 1008

[Statedef 1008]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1008
sprpriority = 5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 1007
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1001]
type = U
movetype = H
physics = U
ctrl = 0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
trigger2 = pos y >= -5
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1002
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 10 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 10
trigger1 = Pos Y = 0
value = 1004

[Statedef 1002]
type = S
movetype = H
physics = A
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 10 && pos y < 0
value = 1003
ctrl = 0

[Statedef 1003]
type = A
movetype = H
physics = A
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5035

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5030
ctrl = 0

[Statedef 1004]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5005
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
trigger2 = pos y >= 0
y = 0

[State 0, ChangeState]
type = SelfState
trigger1 = time = 4
value = 0
ctrl = 1

;Standinig Web-Shot (medium)
[statedef 1010]
type = S
movetype = I
physics = S
anim = 1010
poweradd = 60
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1015
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1015]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = 1
x = 5.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 50,5
pausetime = 0,0
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1011
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1011]
type = U
movetype = H
physics = U
ctrl = 0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1012
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 20 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 20
trigger1 = Pos Y >= 0
value = 1004

[Statedef 1012]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 20 && pos y < 0
value = 1003
ctrl = 0

;Standinig Web-Shot (fierce)
[statedef 1020]
type = S
movetype = I
physics = S
anim = 1020
poweradd = 70
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1025
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1025]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1005
velset = 8,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 2

[State 0, ]
type = VelSet
trigger1 = 1
x = 7.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
guard.dist = 85
damage = 60,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1021
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 2
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit = 1
value = 1007

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1021]
type = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1022
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 35 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 35
trigger1 = Pos Y = 0
value = 1004

[Statedef 1022]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 35 && pos y < 0
value = 1003
ctrl = 0

;-----------------------------------
;Jumping Web-Shot (light)
[statedef 1100]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 50
velset = -1,-3
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1105
ownpal = 1


[Statedef 1105]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1105
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1105
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1105
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1105
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1105
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1105
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1001
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1106]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1106
velset = 0,0
sprpriority = 5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S6,1

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Jumping Web-Shot (medium)
[statedef 1110]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 60
velset = -1,-4
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1115
ownpal = 1


[Statedef 1115]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 5,5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1115
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1115
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1115
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1115
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1115
x = 3.5
y = 3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1115
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
guard.dist = 85
damage = 50,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1011
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

;Jumping Web-Shot (medium)
[statedef 1120]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 70
velset = -1,-5
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1125
ownpal = 1

[Statedef 1125]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 7,7
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1125
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1125
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1125
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1125
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1125
x = 5.5
y = 5.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1125
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 60,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 40
guard.slidetime = 40
ground.hittime = 40
guard.hittime = 40
air.hittime = 40
ground.velocity = -1
guard.velocity = -3
air.velocity = -1,0
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1021
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

;-----------------------------------
;Wall Cling (back)
[statedef 1200]
type = A
movetype = I
physics = A
anim = 1200
velset = 0,0
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1200
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1200
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1200
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[Statedef 1201] 
type    = A
movetype= I
physics = A
anim = 1201
velset = 4,-10
ctrl = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

;Web-Shot (wall)
[Statedef 1205]
type    = A
movetype= A
physics = N
poweradd= 50
anim = 1205
velset = 0,0
ctrl = 0

[State 0,0]
type = PosFreeze
triggerall = Stateno = 1205
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1205
value = 0

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1205
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,1

[State 0, ]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "web-ball"
ID = 1005
pos = 30,-10
postype = p1
facing = 1
stateno = 1206
ownpal = 1

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1209

[Statedef 1206]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1206
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1206
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1206
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1206
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1206
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1206
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1206
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1021
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
trigger2 = moveguarded = 1
value = 1106

[State 0, ]
type = Changestate
trigger1 = moveguarded = 1
value = 1006

[Statedef 1209]
type    = A
movetype= I
physics = A
anim = 1209
velset = 0,0
ctrl = 0

[State 0,]
type = PosFreeze
triggerall = Stateno = 1209
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1209
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1209
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

; Wall Cling (front)
[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1210
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1210
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1210
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
triggerall = time >= 1
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

;-----------------------------------
;Web-Swing (light)
[statedef 1300]
type = A
movetype = A
physics = A
anim = 1300
poweradd = 50
juggle = 4
facep2 = 1
velset = 1,-5
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 54
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 54
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 24
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 26
x = 8

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 17
trigger3 = animelem = 18
trigger4 = animelem = 19
trigger5 = animelem = 22
trigger6 = animelem = 23
trigger7 = animelem = 25
x = 12

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,5
pausetime = 10,10
guard.pausetime = 8,7
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -3,-4
guard.velocity = -4
air.velocity = -2,-3
airguard.velocity = -3
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -2,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 15
fall.envshake.time = 18
fall.envshake.ampl = -10
p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 28
anim = 1301

[State 0, ]
type = VelSet
trigger1 = animelem = 28
x = 3
y = -3

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 0;ifelse((!var(20)||var(25)),1,0)

[Statedef 1302]
type = A
movetype = H
physics = A
ctrl = 0
sprpriority = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 0
x = -4
y = -6

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5030
ignorehitpause = 1

[State 0, SelfState]
type = SelfState
trigger1 = time = 2
value = 5030

[statedef 1305]
type = A
movetype = A
physics = A
anim = 46
velset = 3,-8
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 34     ;fv =
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_a"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-50,50])
value = 1300
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_b"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-75,75])
value = 1310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_c"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-125,125])
value = 1320
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (medium)
[statedef 1310]
type = A
movetype = A
physics = A
anim = 1310
poweradd = 60
juggle = 4
facep2 = 1
velset = 2,-10
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos =floor(10*const(size.xscale)) ,0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 60
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 60
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 29
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = 24

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 22
trigger3 = animelem = 24
trigger4 = animelem = 25
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 21
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 23
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 26
x = 35

[State 0, ]
type = PosAdd
trigger1 = animelem = 27
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 28
x = 8

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 60,5
pausetime = 13,13
guard.pausetime = 8,7
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -2,-5
guard.velocity = -4
air.velocity = -2,-3
airguard.velocity = -3
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -2,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 15
fall.envshake.time = 18
fall.envshake.ampl = -10
p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 31
anim = 1311

[State 0, ]
type = VelSet
trigger1 = animelem = 31
x = 3
y = -7

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 0;ifelse((!var(20)||var(25)),1,0)

;Web-Swing (fierce)
[statedef 1320]
type = A
movetype = A
physics = A
anim = 1320
poweradd = 70
juggle = 5
facep2 = 1
velset = 3,-15
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 62
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 62
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 13
trigger3 = animelem = 28
trigger4 = animelem = 30
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 20
trigger4 = animelem = 21
trigger5 = animelem = 23
trigger6 = animelem = 26
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
x = 11

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
trigger2 = animelem = 18
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 22
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 24
x = 18

[State 0, ]
type = PosAdd
trigger1 = animelem = 25
trigger2 = animelem = 27
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 29
x = 8

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 70,5
pausetime = 14,14
guard.pausetime = 8,7
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-35
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -3,-6
guard.velocity = -4
air.velocity = -2,-3
airguard.velocity = -3
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -3,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 15
fall.envshake.time = 18
fall.envshake.ampl = -10
p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 32
anim = 1321

[State 0, ]
type = VelSet
trigger1 = animelem = 32
x = 3
y = -9

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 0;ifelse((!var(20)||var(25)),1,0)

;-----------------------------------------
[statedef 1350]
type = A
movetype = H
physics = N
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeState
trigger1 = hitshakeover
trigger2 = time >= 5
value = 1351
ignorehitpause = 0
persistent = 0

[Statedef 1351]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5030
ignorehitpause = 1
persistent = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = vel y< 0
trigger1 = backedgedist <= 5
trigger2 = frontedgedist <= 5
value = 1352
ctrl = 0

[State 0, ChangeState]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0
value = 5101
ctrl = 0

[statedef 1352]
type = A
movetype = H
physics =N
facep2 = 1
vel = 0,0
ctrl = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 75
ampl = -8
phase = 90
ignorehitpause = 1
persistent = 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 0
value = 6
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 2
y = -4
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = f71
pos = -(backedgedist),const(size.mid.pos.y)
facing = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5010 && time = 5
value = 5030
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0
value = 5101
ctrl = 0

;-----------------------------------
;Spider-Sting (light)
[statedef 1400]
type = A
movetype = A
physics = N
anim = 1400
poweradd = 50
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time <= 6
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
y = -2
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = time > 6
x = 8
y = -8
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time > 10 && vel x > 0
x = -1

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, Gravity]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = vel y != 0
trigger3 = vel y !=  0 && pos y <= 0
trigger4 = pos y != 0
trigger5 = time > 6
statetype = A
physics = A
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
facing = -1
vel = 2,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 795
ID = 790
pos = floor(50*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
priority = 6,Hit   ;Hit,Miss,Dodge
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 10,8
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-6
guard.velocity = -3
air.velocity = -0.25,-4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower  = 40
givepower = 20
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-3,3]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = var(0) && random <=250
value = 1425

[State 0, StateTypeSet]
type = Changestate
trigger1 = vel y > 0 && pos y > 0
value = 52
persistent = 1

;Spider-Sting (medium)
[statedef 1410]
type = A
movetype = A
physics = N
anim = 1400
poweradd = 60
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time <= 6
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
y = -2
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = time >= 6
x = 10
y = -9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 10 && vel x >0
x = -1

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, Gravity]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = vel y != 0
trigger3 = vel y !=  0 && pos y <= 0
trigger4 = pos y != 0
trigger5 = time > 6
statetype = A
physics = A
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
facing = -1
vel = 2,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 795
ID = 790
pos = floor(50*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
priority = 6,Hit   ;Hit,Miss,Dodge
hitflag = MAF
guardflag = MA
damage = 40,10
pausetime = 11,9
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-40
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-8
guard.velocity = -3
air.velocity = -0.25,-4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower  = 40
givepower = 20
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-4,4]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = var(0) && random <=250
value = 1425

[State 0, StateTypeSet]
type = Changestate
trigger1 = vel y > 0 && pos y > 0
value = 52
persistent = 1

;Spider-Sting (fierce)
[statedef 1420]
type = A
movetype = A
physics = N
anim = 1400
poweradd = 70
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time <= 6
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
y = -2
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = time >= 6
x = 12
y = -12
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 10 && vel x > 0
x = -1

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, Gravity]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = vel y != 0
trigger3 = vel y !=  0 && pos y <= 0
trigger4 = pos y != 0
trigger5 = time > 6
statetype = A
physics = A
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
facing = -1
vel = 2,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 795
ID = 790
pos = floor(50*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
priority = 6,Hit   ;Hit,Miss,Dodge
damage = 50,10
pausetime = 11,9
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-50
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower  = 40
givepower = 20
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-6,4]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = var(0) && random <=250
value = 1425

[State 0, StateTypeSet]
type = Changestate
trigger1 = vel y > 0 && pos y > 0
value = 52
persistent = 1

[statedef 1425]
type = A
movetype = A
physics = A
anim = 1405
velset = 0,-1
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 12
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-30
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,14
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
persistent = 0
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-30
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;---------------------------
;Web-Throw (light)
[statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
postype = p1  ;p2,front,back,left,right
vel = 0.25,0
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = s17020 + (random % 8)
hitsound = S6,1
guard.sparkno = S1507
getpower  = 40
givepower = 20
p1stateno = 1501
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = s17020 + (random % 8)
guard.sparkno = S1507
hitsound = S6,1
getpower  = 40
givepower = 20
p1stateno = 1502
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = s17020 + (random % 8)
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 200
getpower  = 40
givepower = 20
p1stateno = 1503
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = s17020 + (random % 8)
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 230
getpower  = 40
givepower = 20
p1stateno = 1504
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = s17020 + (random % 8)
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 250
getpower  = 40
givepower = 20
p1stateno = 1505
p2stateno = 1508

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 230,-52
postype = p1
facing = 1
stateno = 1506
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1500
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1501]
type = S
movetype = A
physics = S
anim = 1501
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = numtarget <= 0
value = 0
ctrl = 1

[State 0, ]
type = TargetBind
trigger1 = stateno = 1501
time = 1
pos = floor(-115*const(size.xscale)),-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1502

[statedef 1502]
type = S
movetype = A
physics = S
anim = 1502
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1502
time = 1
pos = floor(175*const(size.xscale)),-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1503

[statedef 1503]
type = S
movetype = A
physics = S
anim = 1503
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = numtarget <= 0
value = 0
ctrl = 1

[State 0, ]
type = TargetBind
trigger1 = stateno = 1503
time = 1
pos = floor(215*const(size.xscale)),-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1504

[statedef 1504]
type = S
movetype = A
physics = S
anim = 1504
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = numtarget <= 0
value = 0
ctrl = 1

[State 0, ]
type = TargetBind
trigger1 = stateno = 1504
time = 1
pos = floor(230*const(size.xscale)),-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1505

[statedef 1505]
type = S
movetype = A
physics = S
anim = 1505
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = numtarget <= 0
value = 0
ctrl = 1

[State 0, Width]
type = Width
trigger1 = time >= 0
edge = ifelse(time>=10,60,100),ifelse(time<=24,20,ifelse(time <=28,60,130))

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = floor(240*const(size.xscale)),-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = floor(220*const(size.xscale)),-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = floor(195*const(size.xscale)),-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = floor(180*const(size.xscale)),-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = floor(105*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = floor(25*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = floor(-105*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = floor(-155*const(size.xscale)),-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = floor(-110*const(size.xscale)),-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = floor(-5*const(size.xscale)),-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = floor(35*const(size.xscale)),-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = floor(140*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = floor(150*const(size.xscale)),-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = floor(20*const(size.xscale)),-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = floor(-140*const(size.xscale)),-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value =  -80

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = backedgedist > 0 && time >= 75
value = 1505
elem = 22
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1506]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1506
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1506
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1506
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1506
slot = 1
time = 1
stateno = 1507
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1506
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1506
x = 6
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1506
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 20,0
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = s17000
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1507

[Statedef 1507]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1507
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1508]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5000
velset = 0,0
sprpriority = 0

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1508
value = 0
movecamera = 1,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1508

[Statedef 1509]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5030
velset = -10,-1.25
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5030

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

;Web-Throw (medium)
[statedef 1510]
type = S
movetype = A
physics = S
anim = 1510
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = s17020 + (random % 8)
hitsound = S6,1
guard.sparkno = S1517
getpower  = 40
givepower = 20
p1stateno = 1511
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = s17020 + (random % 8)
guard.sparkno = S1517
hitsound = S6,1
getpower  = 40
givepower = 20
p1stateno = 1512
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = s17020 + (random % 8)
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 200
getpower  = 40
givepower = 20
p1stateno = 1513
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = s17020 + (random % 8)
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 230
getpower  = 40
givepower = 20
p1stateno = 1514
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = s17020 + (random % 8)
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 250
getpower  = 40
givepower = 20
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = floor(190*const(size.xscale)),-190
postype = p1
facing = 1
stateno = 1516
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1510
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1511]
type = S
movetype = A
physics = S
anim = 1511
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1511
time = 1
pos = floor(95*const(size.xscale)),-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1512

[statedef 1512]
type = S
movetype = A
physics = S
anim = 1512
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1512
time = 1
pos = floor(130*const(size.xscale)),-140

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1513

[statedef 1513]
type = S
movetype = A
physics = S
anim = 1513
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1513
time = 1
pos = floor(150*const(size.xscale)),-160

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1514

[statedef 1514]
type = S
movetype = A
physics = S
anim = 1514
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1514
time = 1
pos = floor(175*const(size.xscale)),-175

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[statedef 1515]
type = S
movetype = A
physics = S
anim = 1515
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, Width]
type = Width
trigger1 = time >= 0
edge = ifelse(time>=10,60,100),ifelse(time<=25,20,ifelse(time >=28,100,60))

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 2,2
channel = 1
lowpriority = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = floor(175*const(size.xscale)),-170

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = floor(160*const(size.xscale)),-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = floor(150*const(size.xscale)),-135

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = floor(145*const(size.xscale)),-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = floor(105*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = floor(25*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = floor(-105*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = floor(-155*const(size.xscale)),-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = floor(-110*const(size.xscale)),-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = floor(-5*const(size.xscale)),-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = floor(35*const(size.xscale)),-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = floor(140*const(size.xscale)),-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = floor(150*const(size.xscale)),-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = floor(20*const(size.xscale)),-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = floor(-140*const(size.xscale)),-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value = -80

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = backedgedist > 10 && time >= 75
value = 1515
elem = 22
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1516]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1516
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1516
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1516
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1516
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1516
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1516
x = 3.5
y = -3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1516
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 20,0
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = s17000
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1517

[Statedef 1517]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1517
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Web-Throw (fierce)
[statedef 1520]
type = S
movetype = A
physics = S
anim = 1520
poweradd = 70
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = s17020 + (random % 8)
hitsound = S6,1
guard.sparkno = S1527
getpower  = 40
givepower = 20
p1stateno = 1521
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = s17020 + (random % 8)
guard.sparkno = S1527
hitsound = S6,1
getpower  = 40
givepower = 20
p1stateno = 1522
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = s17020 + (random % 8)
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 200
getpower  = 40
givepower = 20
p1stateno = 1523
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = s17020 + (random % 8)
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 230
getpower  = 40
givepower = 20
p1stateno = 1524
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = s17020 + (random % 8)
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 250
getpower  = 40
givepower = 20
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = floor(20*const(size.xscale)),-265
postype = p1
facing = 1
stateno = 1526
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1520
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1521]
type = S
movetype = A
physics = S
anim = 1521
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1521
time = 1
pos = floor(20*const(size.xscale)),-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1522

[statedef 1522]
type = S
movetype = A
physics = S
anim = 1522
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1522
time = 1
pos = floor(20*const(size.xscale)),-145

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1523

[statedef 1523]
type = S
movetype = A
physics = S
anim = 1523
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1523
time = 1
pos = floor(20*const(size.xscale)),-195

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1524

[statedef 1524]
type = S
movetype = A
physics = S
anim = 1524
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1524
time = 1
pos = floor(20*const(size.xscale)),-255

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[Statedef 1526]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1526
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1526
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1526
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1526
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1526
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1526
x = 0
y = -6

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1526
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 20,0
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = s17000
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1527

[Statedef 1527]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1527
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------
;Spider-Sense (light)
[statedef 1600]
type = S
movetype = I
physics = S
anim = 1600
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 21
value = S,NP,SP
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = S,NA,SA,HA,HP,NT,ST,HT
value2 = CA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause =  1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 7,4
channel = 1
lowpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = floor(21*const(size.xscale)),-47
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = C,NA,SA
pausetime = 15,25
sparkno = s17020 + (random % 8)
hitsound = S5,8
p1stateno = 1605
p2stateno = 1606
snap = 10,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1605]
type = S
movetype = A
physics = N
anim = 1605
velset = 6,0
facep2 = 1
sprpriority = -1
ctrl = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 4
ignorehitpause = 1
persistent = 1

[State 0, BindToTarget]
type = BindToTarget
trigger1 = animelem = 5
time = 1
pos = -20,0,Foot;"Mid","Head"
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,14
givepower = 30,12
animtype = diagup
air.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,0
pausetime = 6,6
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 0,-15
hitsound = S5,2
guardsound = S5,8
ground.type = Trip
ground.slide = 10
ground.hit = 10
air.hittime = 20
ground.velocity = 0,-5
air.velocity = 0,-5
snap = 40,0
getpower  = 40
givepower = 20

[State 0, VelSet]
type = Turn
trigger1 = animelem = 3

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1706
ctrl = 0

[Statedef 1606]
type    = U
movetype= H
physics = U
velset = 0,0
ctrl = 0

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 52
ctrl = 0

;Spider-Sense (medium)
[statedef 1610]
type = S
movetype = I
physics = S
anim = 1610
poweradd = 60
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 21
value = C,NP,SP
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = C,NA,SA,HA,HP,NT,ST,HT
value2 = SA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause =  1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 7,4
channel = 1
lowpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = floor(6*const(size.xscale)),-68
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = S,NA,SA
pausetime = 20,30
sparkno = s17020 + (random % 8)
hitsound = S5,8
p1stateno = 1615
p2stateno = 1606
pos = 0,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1615]
type = S
movetype = A
physics = S
anim = 1715
juggle = 3
facep2 = 1
sprpriority = -1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = 2,2
channel = 1
lowpriority = 1
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 2
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [2,8]
x = 5
y = -5
ignorehitpause = 1
persistent = 1

[State 0, BindToTarget]
type = BindToTarget
trigger1 = animelem = 2
time = 1
pos = 5,0,foot;Foot;"Mid","Head"
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,12
givepower = 32,14
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 40,0
pausetime = 17,17
guard.pause = 8,8
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 5,-40
hitsound = S5,2
guardsound = S5,8
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slide = 12
guard.slide = 12
ground.hit = 12
guard.hit = 2
air.hittime = 13
ground.velocity = -2,-6
guard.velocity = -8
air.velocity = -2,-6
airguard.velocity = -8
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
down.cornerpush.veloff = 10
guard.cornerpush.veloff = 10
airguard.cornerpush.veloff = 10
air.juggle = 2
sprpriority = 1
getpower  = 40
givepower = 20
p2facing = 1
forcestand = 1
fall = 1
down.bounce = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1706
ctrl = 0
persistent = 0

;Spider-Sense (Fierce)
[statedef 1620]
type = S
movetype = I
physics = S
anim = 1620
poweradd = 70
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 21
value = A,NP,SP
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time <= 21
value = A,NA,SA,HA,HP,NT,ST,HT
value2 = SC,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause =  1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 7,4
channel = 1
lowpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 795
ID = 790
pos = floor(-40*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
facing = -1
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = .75,.75
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = floor(-26*const(size.xscale)),-105
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = A,NA,SA
pausetime = 20,30
sparkno = s17020 + (random % 8)
hitsound = S5,8
p1stateno = 1625
p2stateno = 1606

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1625]
type = S
movetype = A
physics = S
anim = 1725
juggle = 3
facep2 = 1
sprpriority = -1
ctrl = 0

[State 0, Width]
type = Width
trigger1 = time <= 18
edge = 0,0
player = 20,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = 2,2
channel = 1
lowpriority = 1
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [4,8]
x = 2
y = -8
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = vel x >= 0
x = -0.2
ignorehitpause = 1
persistent = 1

[State 0, BindToTarget]
type = BindToTarget
trigger1 = animelem = 3
time = 1
pos = 20,30,Head;Foot;"Mid","Head"
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,12
givepower = 32,14
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 40,0
pausetime = 17,17
guard.pause = 8,8
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 5,-40
hitsound = S5,2
guardsound = S5,8
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slide = 12
guard.slide = 12
ground.hit = 12
guard.hit = 2
air.hittime = 13
ground.velocity = -3,-8
guard.velocity = -8
air.velocity = -3,-8
airguard.velocity = -8
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
down.cornerpush.veloff = 10
guard.cornerpush.veloff = 10
airguard.cornerpush.veloff = 10
air.juggle = 2
sprpriority = 1
getpower  = 40
givepower = 20
p2facing = 1
forcestand = 1
fall = 1
down.bounce = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1706
ctrl = 0
persistent = 0

;---------------------------
;EX-Mode Attacks
;---------------------------
;Bounding Assault (light)
[statedef 1700]
type = S
movetype = I
physics = S
anim = 1700
poweradd = 50
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,NP,SP,NT,ST
stateno = 9000
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0 && prevstateno !=9000
anim = 790
ID = 790
pos = floor(20*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8
y = 0
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 12
trigger2 = p2bodydist x <= 50
value = 1705
ctrl = 1

[statedef 1705]
type = S
movetype = A
physics = S
anim = 1705
juggle = 3
sprpriority = -1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S2,(random >=500)+1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 3
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [3,8]
x = 3
y = -2
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,12
givepower = 32,14
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 40,0
pausetime = 7,7
guard.pause = 8,8
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 5,-40
hitsound = S5,2
guardsound = S5,8
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slide = 12
guard.slide = 12
ground.hit = 12
guard.hit = 2
air.hittime = 13
ground.velocity = -0.5,-4
guard.velocity = -8
air.velocity = -0.5,-4
airguard.velocity = -8
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
down.cornerpush.veloff = 10
guard.cornerpush.veloff = 10
airguard.cornerpush.veloff = 10
air.juggle = 2
sprpriority = 1
getpower  = 40
givepower = 20
p2facing = 1
forcestand = 1
fall = 1
down.bounce = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1706
ctrl = 0
persistent = 0

[statedef 1706]
type = A
movetype = I
physics = A
anim = 1706
vel = -2,-4
sprpriority = -1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time <= 3
x = -5
y = -4
ignorehitpause = 1
persistent = 1

;Bounding Assault (Medium)
[statedef 1710]
type = S
movetype = I
physics = S
anim = 1700
poweradd = 60
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,NP,SP,NT,ST
stateno = 9000
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0 && prevstateno !=9000
anim = 790
ID = 790
pos = floor(20*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 4
y = 0
persistent = 0

[State 1000,VelSet]
type = VelSet
trigger1 = time >= 8
x = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 24
trigger2 = p2bodydist x <= 30
value = 1715
ctrl = 1

[statedef 1715]
type = S
movetype = A
physics = S
anim = 1715
juggle = 3
sprpriority = -1
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(-10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = 0,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 795
ID = 790
pos = floor(20*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = 2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = .75,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S2,(random >=500)+1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 2
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [2,8]
x = 5
y = -5
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,12
givepower = 32,14
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 40,0
pausetime = 12,12
guard.pause = 8,8
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 5,-40
hitsound = S5,2
guardsound = S5,8
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slide = 12
guard.slide = 12
ground.hit = 12
guard.hit = 2
air.hittime = 13
ground.velocity = -2,-6
guard.velocity = -8
air.velocity = -2,-6
airguard.velocity = -8
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
down.cornerpush.veloff = 10
guard.cornerpush.veloff = 10
airguard.cornerpush.veloff = 10
air.juggle = 2
sprpriority = 1
getpower  = 40
givepower = 20
p2facing = 1
forcestand = 1
fall = 1
down.bounce = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1706
ctrl = 0
persistent = 0

;Bounding Assault (Fierce)
[statedef 1720]
type = S
movetype = I
physics = S
anim = 1700
poweradd = 70
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,NP,SP,NT,ST
stateno = 9000
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0 && prevstateno !=9000
anim = 790
ID = 790
pos = floor(20*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 && prevstateno !=9000
x = 5
y = 0
persistent = 0

[State 1000,VelSet]
type = VelSet
trigger1 = time >= 8
x = 8

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
trigger2 = p2bodydist x <= 10
value = 1725
ctrl = 1
                    z
[statedef 1725]
type = S
movetype = A
physics = S
anim = 1725
juggle = 3
sprpriority = -1
ctrl = 0

[State 0, Width]
type = Width
trigger1 = time <= 18
edge = 0,0
player = 20,0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = 2,0
facing = -1
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 795
ID = 790
pos = floor(40*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = 0,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 0.75,0.75
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S2,(random >=500)+1
volume = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [4,8]
x = 2
y = -10
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = vel x >= 0
x = -0.2
ignorehitpause = 1
persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,12
givepower = 32,14
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 40,0
pausetime = 16,16
guard.pause = 8,8
sparkno = s17020 + (random % 8)
guard.sparkno = 41
sparkxy = 5,-40
hitsound = S5,2
guardsound = S5,8
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slide = 12
guard.slide = 12
ground.hit = 12
guard.hit = 2
air.hittime = 13
ground.velocity = -3,-8
guard.velocity = -8
air.velocity = -3,-8
airguard.velocity = -8
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
down.cornerpush.veloff = 10
guard.cornerpush.veloff = 10
airguard.cornerpush.veloff = 10
air.juggle = 2
sprpriority = 1
getpower  = 40
givepower = 20
p2facing = 1
forcestand = 1
fall = 1
down.bounce = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1706
ctrl = 0
persistent = 0


;---------------------------
;EX-Mode Attacks
;---------------------------
;Spectactular Moves(light)
[statedef 1800]
type = A
movetype = I
physics = N
anim = 1800
poweradd = 50
sprpriority = -1
velset = backedgedist /-2 * (.35),-10
ctrl = 0

[State 0, Explod]
type = Explod
triggerall = pos y >= 0
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),5
facing = -1
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = backedgedist < -25
x = .45

[State 0, ChangeState]
type = ChangeState
trigger1 = backedgedist <= 5
trigger1 = pos y < -65
trigger2 = time >= 20
value = 1805
ctrl = 0

[statedef 1805]
type = A
movetype = I
physics = N
anim = 1805
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1806

[statedef 1806]
type = A
movetype = I
physics = N
anim = 1806
sprpriority = -1
velset = p2bodydist x/10,((p2bodydist y-50)/10)
ctrl = 0

[State 0, ]
type = VelAdd
triggerall = vel x >= 2
trigger1 = p2bodydist x <= 50
x = .5

[State 0, ]
type = VelAdd
triggerall = vel y != [-2,2]
trigger1 = p2bodydist y <= -10
y = .5

[State 0, CtrlSet]
type = Null
trigger1 = time >= 5
value = 1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = p2bodydist x <= 60
trigger2 = time >= 4
value = 1807
ctrl = 0

[statedef 1807]
type = A
movetype = A
physics = A
anim = 1807
sprpriority = -1
velset = vel x,vel y
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact
v = 21
value = 1
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 45,0
pausetime = 10,15
guard.pause = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = 41
hitsound = S5,3
guardsound = S5,8
ground.type = Low
air.type = Low
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -5,0
air.velocity = -5,-2
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
sprpriority = 1
getpower  = 40
givepower = 20
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 1
y = -4
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "x"
value = 600
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "y"
value = 610
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "z"
value = 620
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_a"
value = 1300
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_b"
value = 1310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_c"
value = 1320
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "a"
value = 630
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "b"
value = 640
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "c"
value = 650
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;Spectactular Moves(Medium)
[statedef 1810]
type = A
movetype = I
physics = N
anim = 1800
poweradd = 60
sprpriority = -1
velset = frontedgedist /2 * (.35),-10
ctrl = 0

[State 0, Explod]
type = Explod
triggerall = pos y >= 0
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),5
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value =0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = frontedgedist <= -25
x = .45

[State 0, ChangeState]
type = ChangeState
trigger1= frontedgedist <= 5
trigger1 = pos y < -65
trigger2 = time >= 20
value = 1815
ctrl = 0

[statedef 1815]
type = A
movetype = I
physics = N
anim = 1805
sprpriority = -1
facep2 = 1
velset = 0,0
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1816

[statedef 1816]
type = A
movetype = I
physics = N
anim = 1806
sprpriority = -1
velset = p2bodydist x/10,((p2bodydist y-50)/10)
ctrl = 0

[State 0, ]
type = VelAdd
triggerall = vel x >= 2
trigger1 = p2bodydist x <= 50
x = .5

[State 0, ]
type = VelAdd
triggerall = vel y != [-2,2]
trigger1 = p2bodydist y <= -10
y = .5

[State 0, ChangeState]
type = ChangeState
trigger1 = p2bodydist x <= 60
trigger2 = time >= 4
value = 1817
ctrl = 0

[statedef 1817]
type = A
movetype = A
physics = A
anim = 1807
sprpriority = -1
velset = vel x,vel y
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact
v = 21
value = 1
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 55,0
pausetime = 12,17
guard.pause = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = 41
hitsound = S5,3
guardsound = S5,8
ground.type = Low
air.type = Low
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -5,-2
air.velocity = -5,-4
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
sprpriority = 1
getpower  = 40
givepower = 20
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 1
y = -4
ignorehitpause = 1
persistent = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "x"
value = 600
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "y"
value = 610
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "z"
value = 620
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_a"
value = 1300
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_b"
value = 1310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_c"
value = 1320
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "a"
value = 630
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "b"
value = 640
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "c"
value = 650
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;Spectactular Moves(Fierce)
[statedef 1820]
type = A
movetype = I
physics = N
anim = 1800
poweradd = 70
sprpriority = -1
velset = 5,-20
ctrl = 0

[State 0, Explod]
type = Explod
triggerall = pos y >= 0
trigger1 = time = 0
anim = 795
ID = 790
pos = floor(10*const(size.xscale)),25
postype = p1  ;p2,front,back,left,right
facing = -1
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value =0
movecamera = 0,0

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = p2dist x/2 < -25
x = .45

[State 0, ChangeState]
type = ChangeState
trigger1 = screenpos y <= 10
trigger2 = time >= 20
value = 1825
ctrl = 0

[statedef 1825]
type = A
movetype = I
physics = N
anim = 1825
sprpriority = -1
facep2 = 1
velset = 0,0
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1826

[statedef 1826]
type = A
movetype = I
physics = N
anim = 1806
sprpriority = -1
velset = p2dist x/10,((p2dist y-50)/10)
ctrl = 0

[State 0, ]
type = VelAdd
triggerall = vel x >= 2
trigger1 = p2dist x <= 50
x = .5

[State 0, ]
type = VelAdd
triggerall = vel y != [-2,2]
trigger1 = p2dist y <= -10
y = .5

[State 0, ChangeState]
type = ChangeState
trigger1 = p2bodydist Y <= 60
trigger2 = time >= 4
value = 1827
ctrl = 0

[statedef 1827]
type = A
movetype = A
physics = A
anim = 1827
sprpriority = -1
velset = vel x,vel y
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact
v = 21
value = 1
ignorehitpause = 1
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = movecontact = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 5,Hit   ;Hit,Miss,Dodge
damage = 65,0
pausetime = 20,14
guard.pause = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = 41
hitsound = S5,3
guardsound = S5,8
ground.type = Low
air.type = Low
ground.slide = 10
guard.slide = 10
ground.hit = 10
guard.hit = 10
air.hittime = 20
ground.velocity = -4,-10
air.velocity = 0,-10
ground.cornerpush.veloff = 10
air.cornerpush.veloff = 10
sprpriority = 1
getpower  = 40
givepower = 20
ignorehitpause = 0
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = -2
y = -3
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "x"
value = 600
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "y"
value = 610
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "z"
value = 620
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_a"
value = 1300
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_b"
value = 1310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "qcb_c"
value = 1320
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "a"
value = 630
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "b"
value = 640
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact && command = "c"
value = 650
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; Super Armor
;---------------------------------------------------------------------------
[Statedef 9000]
type = U
movetype = H
physics = U

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 36
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, PalFX]
type = PalFX
trigger1 = !time
time = 5
add = 250,250,250
sinadd=100,100,100,5
ignorehitpause = 1

[State 9000, b1]
Type = BGPalfx
Trigger1 =1 && anim = 1700
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = Alive
trigger1 = 1
value = 1

[State 9000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP,AT
time = 1

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = Time < floor(gethitvar(hittime) * 0.8)
value = Anim
elem = AnimElemNo(0);3

[State 9000, VelSet]
type = VelSet
trigger1 = !Alive
x = gethitvar(xvel)
y = gethitvar(yvel)

[State 9000, End]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 9000, End]
type = ChangeState
trigger1 = Alive
trigger1 = Time >= floor(gethitvar(hittime) * 0.5)
value = var(35)
anim = Anim
elem = var(36)
ctrl = var(37)


;---------------------------------------------------------------------------
; Combo Recovery
;---------------------------------------------------------------------------
[Statedef 9500]
type = A
movetype = I
physics = S
anim = 46
velset = -2,-5
poweradd = -350
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 4
add = 255,255,255
mul = 256,256,256
ignorehitpause = 1
persistent = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 0
x = -7
y = -2
ignorehitpause = 1
persistent = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1
persistent = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time >= 20
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 1
value = 52
ignorehitpause = 1

