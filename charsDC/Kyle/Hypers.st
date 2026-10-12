;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3000
sprpriority = -1

[State 3000, 20]
type = VarSet
trigger1 = 1
v = 17
value = 0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  animelem = 2
Time = 36
pos = -40, -112
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  animelem = 2
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

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = animelem = 2
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = animelem = 2
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,14

[State 1001, Helper]
type = Helper
trigger1 = animelem = 17
helpertype = normal ;player
name = "Heat Vision"
ID = 9002
stateno = 9002
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.2
size.yscale = 0.7 


[State 2400]
type = Explod
trigger1 = animelem = 17
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

[State 2400]
type = Explod
trigger1 = animelem = 17
anim = 8301
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

;[State 1001, Helper]
;type = Helper
;trigger1 = animelem = 14
;helpertype = normal ;player
;name = "carga2"
;ID = 1304
;stateno = 1304
;pos = -35,-50
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 1
;size.xscale = 0.5
;size.yscale = 0.5
;spriority = 5
;ignorehitpause = 1

[State 1000, 11]
type = Width
trigger1 = Time = [46, 130]
player = 30, 10

[State 1000, End]
type = ChangeState
trigger1 = time = 130
value = 0
ctrl = 1

;--------------------------------------------------------------
;carga2
[Statedef 1304]
type = S
ctrl = 0
anim = 7713

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 7,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1 
add = 114,-28,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 144,0,100
mul = 183,20,170
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -71,-74,27
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 50,50,50
sinadd = 0,0,0,1
invertall = 0
color = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 190,9

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 21
;--------------------------------------------------------------
;wave
[Statedef 9002]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3010
sprpriority = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -144,-200,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 23,-24,-166
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 47,-103,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1 
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 118,0,100
mul = 162,64,106
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8 
time = -1 
add = -39,-200,22
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -100,-100,-100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0,Envshake]
type = envshake
trigger1 = !time
freq = 200
ampl = -5
time = 60

[State 3010, 1]
type = BindToRoot
trigger1 = 1
pos = 40,-67
time = -1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 190,21

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 24000,1

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
trigger10 = AnimElem = 15
trigger11 = AnimElem = 16
trigger12 = AnimElem = 17
trigger13 = AnimElem = 18
trigger14 = AnimElem = 19
trigger15 = AnimElem = 20
trigger16 = AnimElem = 21
trigger17 = AnimElem = 22
trigger18 = AnimElem = 23
trigger19 = AnimElem = 24
trigger20 = AnimElem = 25
trigger21 = AnimElem = 26
trigger22 = AnimElem = 27
trigger23 = AnimElem = 28
trigger24 = AnimElem = 29
trigger25 = AnimElem = 30
trigger26 = AnimElem = 31
trigger27 = AnimElem = 32
trigger28 = AnimElem = 33
trigger29 = AnimElem = 34
trigger30 = AnimElem = 35
trigger31 = AnimElem = 36
trigger32 = AnimElem = 37
attr = SCA, HP
damage = 8
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = S8200+random%2
guard.sparkno = S8100
sparkxy = -30,-55
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
fall=1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0

[State -2, RemoveExplod]
type = RemoveExplod
;trigger1 = movehit 
trigger1 = Parent, MoveType = H
id = 1005

[state 9002, end]
type = DestroySelf
triggerall = IsHelper(9002)
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H
trigger3 = movereversed
;---------------------------------------------------------------------------
;samuraiblades 1
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2

[State 1223,0]
type = PalFX
trigger1 = palno = 2 & animelem >=6
time = -1
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3 & animelem >=6
time = -1
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4 & animelem >=6
time = -1
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5 & animelem >=6
time = -1
add = 143,2,-139
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6 & animelem >=6
time = -1 
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7 & animelem >=6
time = -1
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8 & animelem >=6
time = -1 
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9 & animelem >=6
time = -1
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 36
;anim =-1;s3012
pos = 25, -90
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 190,15

[State 3001, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 12

[state 100, 4]
type = explod
trigger1 = animelem = 6
id = 6014
anim = 6014
postype = p1
pos = -25,-25
ownpal = 1
bindtime = 1
scale = 1,1
sprpriority = 5
persistent = 0
removeongethit = 1

[State 3001, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = Hard
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
hitflag = MA
priority = 8, Hit
guardflag = MA
pausetime = 12,12
sparkno = s8310+random%1
getpower = 0,0
givepower = 0,0
sparkxy = -10,-80+floor(P2Dist Y)
guard.sparkno = S8100
hitsound = S3040,0+random%3
guardsound = S8500,0
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
p1stateno = 3002

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8222		
stateno = 8222
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 3001, goto Attack State]
type = ChangeState
trigger1 = time = 45
value = 10066
ctrl = 1

;---------------------------------------------------------------------------
; Samurai Finish/Miss
;---------------------------------------------------------------------------
[Statedef 10066]
type    = S
physics = S
anim = 100666

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S24000,8

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 5
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 5
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = 5
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = 5
add = 143,2,-139
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = 5 
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = 5
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = 5
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = 5
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 12, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------------------------------------

;samuraiblades 2
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 3002
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 22
trigger7 = animelem = 28
value = S2000,0+random%4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 40
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 40
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = 40
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = 40
add = 143,2,-139
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = 40 
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = 40
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = 40
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = 40
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 90
time = 1
pos = 60,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 12
value = 8400, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
trigger2 = animelem = 26 
value = 8400, 2

[State 3002, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 10
trigger4 = animelem = 16
trigger5 = animelem = 21
trigger6 = animelem = 29
attr = S, HA
animtype  = Hard
damage = floor(20 + var(41)/(1+(Var(19)/5.0))), 3
hitflag = MA
priority = 9, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8310+random%2
getpower = 0,0
givepower = 0,0
sparkxy = -45,-90
guard.sparkno = S8100
hitsound = S3040,0+random%3
guardsound = S8500,0
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

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8022		
stateno = 8022
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 3002, next]
type = changestate
trigger1 = animelem = 30
value = 3003
ctrl = 0

;----------------------------------------------
;samuraiblades 3
[StateDef 3003]
type = S
movetype = A
physics = S
anim = 3003
ctrl = 0
juggle= 10
velset = 0,0
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 9
value = S2000,0+random%4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 20
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3 
time = 20
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = 20
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = 20
add = 143,2,-139
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = 20 
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = 20
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = 20
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = 20
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 10
value = 8400, 3

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
attr = S,SA
damage = floor(10 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 3,2
sparkno = S8310+random%1
sparkxy = -30,-100 + floor(random/20)
guard.sparkno = S8100
hitsound = S3040,0+random%3
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1
air.type = Low
air.hittime = 4
air.velocity = -3,-1
guard.velocity = -5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0
p2stateno = 5300
fall = 0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 12
attr = S,SA
damage = floor(10 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 12,8
sparkno = S8310+random%1
sparkxy = -30,-100 + floor(random/20)
guard.sparkno = S8100
hitsound = S3040,0+random%3
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1
air.type = Low
air.hittime = 4
air.velocity = -3,-1
guard.velocity = -5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0
fall = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8002		
stateno = 8002
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 1005, changestate]
type = changestate
trigger1 = time = 21
value = 3004
ctrl = 0

;-------------------------------------------
;samuraiblades 4
[Statedef 3004]
type    = S
movetype= A
physics = S
anim = 7801
ctrl = 0
velset = 0,0

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 40
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 40
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = 40
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = 40
add = 143,2,-139
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = 40
add = 125,125,125
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = 40
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = 40
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = 40
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S191,13

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 1
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 40,40
sparkno = -1
sparkxy = -35,-100
guard.sparkno = s8001
hitsound = S3040,0+random%3
guardsound = S8500,0
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 50
envshake.freq = 70
envshake.ampl = -10
envshake.phase = -90

[State 191, Helper]
type = Helper
trigger1 = Movehit =1
ID = 8421		
stateno = 8421
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
ignorehitpause = 1
value = S3040,3

[state 3030,end]
type = changestate
trigger1 = animelem = 5
value = 10066
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

;--------------------------------------------------------------
;viento
[Statedef 1198]
type = S
ctrl = 0
anim = 7712

[State 1198, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 10

[State 1198, end]
type = DestroySelf
trigger1 = animelem = 2

;--------------------------------------------------------------------------
;sentinel
[Statedef 3200]
type = S
ctrl = 0
anim = 3005
velset = 0,0
movetype = I
physics = S
sprpriority = 100

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 12
Time = 36
pos = 40, -110
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 190,14

[State 3300,3]
type = helper
trigger1 = animelem = 8
ID = 3201
pos = 0, 0
postype = p1
stateno = 3201
name = "Sentinel"
ownpal = 1
keyctrl = 0

[State 3300,3]
type = ChangeState
trigger1 = time = 150
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; sentinel (Start)
[Statedef 3201]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 7714

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,15

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,256
mul = 200,171,165
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 47,-150,-150
mul = 300,300,300
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,146,0
mul = 226,205,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 81,-6,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 166,0,100
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,0,128
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 3301,3]
type = ChangeState
trigger1 = animtime = 0
value = 3202

;---------------------------------------------------------------------------
;sentinel atacando
[Statedef 3202]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 7715
sprpriority = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,256
mul = 200,171,165
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 47,-150,-150
mul = 300,300,300
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,146,0
mul = 226,205,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 81,-6,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 166,0,100
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,0,128
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 3306
time = 1
ignorehitpause = 1

[State 2400]
type = Helper
trigger1 = animelem = 3
stateno = 24400
id = 24400
postype = p1
pos = 57,-105
ownpal = 1
size.xscale = .8
size.yscale = .4

[State 1702,13]
type = ChangeState
trigger1 = Time = 100
value = 3203
ctrl = 1

;---------------------------------------------------------------------------
;sentinel(Saindo)
[Statedef 3203]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 7716

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,16

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,256
mul = 200,171,165
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 47,-150,-150
mul = 300,300,300
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,146,0
mul = 226,205,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 81,-6,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 166,0,100
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,0,128
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[state 1703,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 2
ignorehitpause = 1

[State 1703,4]
type = Destroyself
trigger1 = animtime=0

;------------------------------------------------------------------------------------------------------------
;Lightning 
[Statedef 24400] 
type = A
movetype = A
physics = N
anim = 1005
ctrl = 0
sprpriority = -4
velset = 0,0
hitcountpersist = 1

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 7707
ID = 455
pos = 100,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
sprpriority= 3
scale = 1,0.4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,0,256
mul = 150,200,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1 
add = 7,-200,-200
mul = 256,256,256
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 40,-70,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1 
add = 100,100,100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 100,-100,5
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,5,100
mul = 150,20,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = -100,-100,-100
mul = 100,100,100
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 24000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 191,5

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 190,11

[State 21500]
type = null;HitBy
trigger1 = 1
value = SCA,AP

[State 24000]
type = null;HitOverride
trigger1 = 1
stateno = 21500
attr = SCA,AP
slot = 0
time = -1

[State 0, HitDef]
type = HitDef
attr = S, SP
trigger1 = Time%5 = 0
trigger1 = hitcount < 23
trigger1 = moveguarded < 1
damage = floor(18 + var(41)/(1+(Var(19)/5.0))), 5
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = -10,-10;+floor(Parent,P2Dist Y)
hitsound   = S190, 9+random%1
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = -9
air.velocity = -9
guard.velocity = -9
airguard.velocity = -9
;fall.xvelocity = -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 10,5
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 2

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8222		
stateno = 8222
pos = -25,-120+random%20
postype = p2
facing = 1
ownpal = 1

[State 24000]
type = DestroySelf
trigger1 = animtime = 0   

;==========================================================================
;Rocket Charge
[StateDef 3100]
type = S
movetype = A
physics = S
anim = 7717
ctrl = 0
velset = 0,0

[State 192]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
 
[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 3101
ctrl = 0

;--------------------------------------------------
;Rocket Charge 2
[StateDef 3101]
type = S
movetype = A
physics = S
anim = 77177
ctrl = 0
velset = 0,0

[State 192]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3300,3]
type = helper
trigger1 = animelem = 5
helpertype = normal
ID = 3111
pos = 0, -15
postype = p1
stateno = 3111
name = "RocketCharge"
ownpal = 1
keyctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S9,8

[State 0, VelSet]
type = VelSet
trigger1 = time > 28 && time < 76
x = 14
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time > 75 && time < 146
x = 24
y = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem >= 2
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 100,10
sparkno = -1
sparkxy = 20,-100
hitsound = S8000,7    ;Low,Trip,None
sprpriority = 1
kill = 1
guard.kill = 1
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3,1
air.velocity = -3,1
air.hittime = 20
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
p2stateno = 1210

[State 192]
type = EnvShake
trigger1 = movehit
time = 12
ampl = 8
persistent = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit = 1
ID = 3112		
stateno = 3112
pos = 0,-80
postype = p2
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 120 && facing = 1
x = -100
y = -20

[State 0, PosSet]
type = PosSet
trigger1 = time = 120 && facing = -1
x = 100
y = -20

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 120
value = 3110
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 110 
flag = invisible

;------------------------------------------------------------------------------
;Rocket Charge - End
[StateDef 3110]
type = S
ctrl = 0
physics = N
anim = 3110
velset = 0,0
sprpriority = 0

[State 192]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 192]
type = PosSet
trigger1 = Time = 0
y = -240

[State 192]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 192]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3111
persistent = 0

[State 192]
type = VelSet
trigger1 = Anim = 3111
y = 0
persistent = 0

[State 192]
type = PosSet
trigger1 = Anim = 3111
y = 0
persistent = 0

[State 192]
type = PlaySnd
trigger1 = Anim = 3111
value = 52,3
persistent = 0

[State 192]
type = PlaySnd
trigger1 = Anim = 3111 && AnimElem = 6
value = 192,0

[State 220, back to stance]
type = ChangeState
trigger1 = Anim = 3111 && Time = 50
value = 0
ctrl = 1
;--------------------------------------------------------------
;Rocketcharge Helper
[Statedef 3111]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1984
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = S15,19

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 5
value = S191,4

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 3101
pos = -20,-15

[State 3312, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S24000,8

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 64,-48,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 25,25,25
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 172,0,127
mul = 136,37,88
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -37,-94,55
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 50,50,50
mul = 50,50,50
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1200, Explod]
type = Explod
trigger1 = time = 1
anim = 78033
ID = 78033
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 58
removetime = 25
sprpriority = 5
shadow = 0,0,0
trans = add
removeongethit = 1

[State 0, Explod]
type = explod
trigger1 = time = 1
anim = 2305
pos = -65,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 115
sprpriority = 4
removeongethit = 0
scale = 0.4,0.4

[State 0, Explod]
type = explod
trigger1 = time = 1
anim = 2310
pos = 50,160
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 110
sprpriority = 5
removeongethit = 0
velocity = -1 
scale = 0.3,0.3

[State 3470, FireB]
type = Explod
trigger1 = time = 50
ignorehitpause = 1
persistent = 1
id = 2222
anim = 6024
vel = 0,0
postype = left
facing = -1
pos = 130,110
random = 0,0
bindtime = -1
sprpriority = 5
ownpal = 1
scale = 2, 1
pausemovetime = 9999
supermovetime = 9999
scale = 0.4,0.4

[state 9002, end]
type = DestroySelf
trigger1 = Time = 100
;-------------------------------------------------------
;Rocket Charge Explod
[Statedef 3112]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 9014

[State 3312, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S24000,8

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = -84,-73,20
mul = 150,150,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 20,0,0
mul = 256,256,0
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 40,-33,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1  
add = 43,0,39
mul = 256,20,124
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -31,-104,7
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 50,50,50
mul = 50,50,50
sinadd = 0,0,0,10
invertall = 0
color = 0

[state 1703,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 2
ignorehitpause = 1

[State 1703,4]
type = Destroyself
trigger1 = animtime=0
;--------------------------------------------------------------
;cohete
[Statedef 9003]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 77177
sprpriority = 10

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = -84,-73,20
mul = 150,150,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 20,0,0
mul = 256,256,0
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 40,-33,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1  
add = 43,0,39
mul = 256,20,124
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -31,-104,7
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 50,50,50
mul = 50,50,50
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1006, 1]
type = VelSet
trigger1 = AnimElem = 1
y = -2
x = 20

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = S, SP
damage = 50
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -20,-95
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5
air.type = High
air.velocity = -4, -2
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5


[State 0,Envshake]
type = envshake
trigger1 = animelem = 2
freq = 200
ampl = -5
time = 60

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9003
pos = 0,0

[State -2, RemoveExplod]
type = RemoveExplod
;trigger1 = movehit
trigger1 = Parent, MoveType = H
id = 1005

[state 9002, end]
type = DestroySelf
triggerall = IsHelper(9003)
trigger1 = Time = 30
trigger2 = Parent, MoveType = H
trigger3 = movereversed

;---------------------------------------------------------------------------
;dragon
[Statedef 3005]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3004
ctrl = 0
sprpriority = 2

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 1
Time = 36
pos = -40, -110
sound = S8889,0
poweradd = -3000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =6
value = 190,16

[State 1001, Helper]
type = Helper
trigger1 = animelem =8 & anim =3004
helpertype = normal ;player
name = "zombi"
ID = 30054
stateno = 30054
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 3111
;elem = 1
;ignorehitpause = 
;persistent = 

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 1
value = 1
movecamera = 0,0 

[State 3005, goto Attack State]
type = ChangeState
trigger1 = time = 250
value = 0
ctrl = 1

;-----------------------------------------------------------------
;zombie
[Statedef 30054]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 7001
ctrl = 0
sprpriority = -2

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,256
mul = 200,171,165
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 47,-150,-150
mul = 300,300,300
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,146,0
mul = 226,205,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 81,-6,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 166,0,100
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,0,128
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1001, Helper]
type = Helper
trigger1 = Movehit = 1
helpertype = normal ;player
name = "dragon"
ID = 30055
stateno = 30055
pos = -200,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.3
size.yscale = 0.3


[State 3001, VelSet]
type = VelSet
trigger1 = animelem =2
x = 17

[state 100, 4]
type = explod
trigger1 = animelem = 2
id = 6014
anim = 6014
postype = p1
pos = 0,-25
ownpal = 1
bindtime = 1
scale = 1,1
sprpriority = 5
persistent = 0
removeongethit = 1

[State 3001, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = Hard
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
hitflag = MA
priority = 8, Hit
guardflag = MA
pausetime = 12,12
sparkno = S8200+random%2
getpower = 0,0
givepower = 0,0
sparkxy = -10,-80+floor(P2Dist Y)
p2stateno = 5300
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
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

[State 1006, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[state 9002, end]
type = changestate
trigger1 = Time = 80
value = 300544
ctrl = 0

;-----------------------------------------------------------------
;zombie disappear
[Statedef 300544]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 7002
ctrl = 0
sprpriority = -2

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = -10,-50,250
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,10
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 20,-200,-200
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 250,240,0
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 250,80,-250
palfx.mul = 250,-256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 200,200,200
palfx.mul = 200,256,200
palfx.add = 100,100,100
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 250,0,250
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,-150,240
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -180,-250,-250
palfx.mul = -200,-256,-200
palfx.time = 30


[state 9002, end]
type = destroyself
trigger1 = animtime = 0


;-----------------------------------------------------------------
;dragon appear
[Statedef 30055]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 6001
ctrl = 0
sprpriority = -2

[State 1001, Helper]
type = Helper
trigger1 = animelem = 43
helpertype = normal ;player
name = "Heat Vision"
ID = 1185
stateno = 1185
pos = -250,-250
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.2
size.yscale = 1.2 

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 1
anim = 8170
pos = -1,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 0.7,0.7

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 1
anim = 8171
pos = -1,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 0.7,0.7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S800,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = S191,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S191,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = S191,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = S24000,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 43
value = S24000,1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,0,220
mul = 175,175,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1  = palno = 3 
time = -1
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,161,0
mul = 220,201,70
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1 
add = 137,10,-174
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 200,0,100
mul = 175,100,125
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 84,21,114
mul = 224,169,231
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8222		
stateno = 8222
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 200
value = 3006
ctrl = 1

;-------------------------------------------------------------------------------
;Rocks
[statedef 30056]
type = a
movetype = i
physics = n
anim = 9999
velset = 0,0
sprpriority = -1

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
removetime = 42
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
removetime = 42
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = -60,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
removetime = 42
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[State 8706 Explod]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 60,0
postype = p1
bindtime = 1
removetime = 42
vel = (IfElse(Random <= 499,Random/80,Random/(-80))),Random/(-50)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
removetime = 100
scale = .7, .7

[state 8080, remove]
type = Destroyself
trigger1 = time = 100

;------------------------------------------------------------------------------
;wave
[Statedef 1185]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 1185
sprpriority = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -144,-200,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 23,-24,-166
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 47,-103,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1 
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 118,0,100
mul = 162,64,106
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8 
time = -1 
add = -39,-200,22
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -100,-100,-100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0,Envshake]
type = envshake
trigger1 = !time
freq = 200
ampl = -5
time = 60

[State 3010, 1]
type = BindToRoot
trigger1 = 1
pos = 50,-110
time = -1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 190,21

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 24000,1

[State 0, HitDef]
type = HitDef
attr = S, SP
trigger1 = Time%5 = 0
damage = floor(14 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = -10,-10;+floor(Parent,P2Dist Y)
hitsound   = S190, 9+random%1
guardsound = S8500,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = -9
air.velocity = -9
guard.velocity = -9
airguard.velocity = -9
;fall.xvelocity = -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 10,5
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 2

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0

[State -2, RemoveExplod]
type = RemoveExplod
;trigger1 = movehit 
trigger1 = Parent, MoveType = H
id = 1005

[state 9002, end]
type = DestroySelf
triggerall = IsHelper(1185)
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H
trigger3 = movereversed

;-------------------------------------------------------------------------------
;dragon fade away
[Statedef 3006]
type = A
movetype = A
physics = N
anim = 6420
ctrl = 0
sprpriority = -1
velset = 0,0
hitcountpersist = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,0,220
mul = 175,175,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1  = palno = 3 
time = -1
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,161,0
mul = 220,201,70
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1 
add = 137,10,-174
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 200,0,100
mul = 175,100,125
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 84,21,114
mul = 224,169,231
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 24000]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------------------------------
[StateDef 852]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7008
poweradd = 0
sprpriority = -3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0

[State 300, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
attr = SCA, HP
damage = floor(8 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = S8200+random%2
guard.sparkno = S8100
sparkxy = -30,-90
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
fall=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 120

;---------------------------------------------
;Call Missiles
[StateDef 3300]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 3300

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 5
Time = 36
pos = -20,-55
anim=-1
sound = S8889,0
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 0, PlaySnd] ;voice
type = PlaySnd
trigger1 = time = 10
value = S173,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S15,21

[State 191, Helper]
type = Helper
trigger1 = animelem = 7
ID = 3301
stateno = 3301
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 3300, dust]
type = Explod
trigger1 = Time = 90
removetime = 165
pos = -50,10
anim = 70234
scale = 0.5, 0.3
ontop = 1
removeongethit = 1

[State 3300, dust]
type = Explod
trigger1 = Time = 90
removetime = 165
pos = 50,10
anim = 70233
scale = 0.5, 0.3
ontop = 1
removeongethit = 1

[State 3300, End]
type = ChangeState
trigger1 = time = 120
value = 3101
ctrl = 0

;-----------------------------------------
;Missiles
[Statedef 3301]
type = S
movetype = A
physics = S
anim = 1984
ctrl = 0
juggle= 1
velset = 0,0
sprpriority = 2

[State 3312, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S24000,8

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 64,-48,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 25,25,25
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 172,0,127
mul = 136,37,88
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -37,-94,55
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 50,50,50
mul = 50,50,50
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 2220, Missile]
type = Helper
trigger1 = time = 8; animelem = 2
trigger2 = time = 60; animelem = 15
name = "Missile"
ID = 3301
stateno = 3311
pos = 5,-5;-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 16;animelem = 4
trigger2 = time = 36;animelem = 9
name = "Missile"
ID = 3301
stateno = 3311
pos = 5,-155;-170
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 24; animelem = 6
trigger2 = time = 76; animelem = 19
name = "Missile"
ID = 3301
stateno = 3311
pos = 55,-115;-130
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 32;animelem = 8
trigger2 = time = 20;animelem = 5
name = "Missile"
ID = 3301
stateno = 3311
pos = -55,-115;-130
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 40 ;animelem = 10
trigger2 = time = 12 ;animelem = 3
name = "Missile"
ID = 3301
stateno = 3311
pos = 55,-35;-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 48;animelem = 12
trigger2 = time = 68;animelem = 17
name = "Missile"
ID = 3301
stateno = 3311
pos = -55,-35;-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 56;animelem = 14
trigger2 = time = 52;animelem = 13
name = "Missile"
ID = 3301
stateno = 3311
pos = 75,-75;-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 64; animelem = 16
trigger2 = time = 28; animelem = 7
name = "Missile"
ID = 3301
stateno = 3311
pos = -75,-75;-90
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 2220, Missile]
type = Helper
trigger1 = time = 72 ;animelem = 18
trigger2 = time = 44;animelem = 11
name = "Missile"
ID = 3301
stateno = 3311
pos = -20,15;0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =99999
pausemovetime =99999
size.xscale = 0.5
size.yscale = 0.5

[State 1006, 7]
type = DestroySelf
trigger1 = time = 120

;----------------------------------------------------
;Missile Helper 1
[Statedef 3311]
type = A
movetype = A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
anim = 6000
sprpriority = 4

[State 3312, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S24000,8

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 64,-48,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 25,25,25
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 172,0,127
mul = 136,37,88
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -37,-94,55
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 50,50,50
mul = 50,50,50
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noshadow

[State 3311, DestroySelf]
type = changestate
trigger1 = time >=15;MoveContact || frontedgedist = 0
value = 3312

;-------------------------------------------------------------------------
;Missile Helper 2
[Statedef 3312]
type = A
movetype = A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
anim = 60001
sprpriority = 4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = -10,-50,250
mul = 120,224,150
sinadd = 85,55,110,10
time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 20,-200,-200
mul = 200,256,200
add = 0,40,0
time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 250,240,0
mul = 200,256,200
add = 0,40,0
time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 250,80,-250
mul = 250,-256,200
add = 0,40,0
time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 200,200,200
mul = 200,256,200
add = 100,100,100
time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 250,0,250
mul = 200,256,200
add = 0,40,0
time = 30

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,-150,240
mul = 200,256,200
add = 0,40,0
time = 30

[State 3312, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S190,19

[State 0, MakeDust]
type = MakeDust
trigger1 = (time % 3)=0
pos = 0,0
spacing = 3
  
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noshadow

[State 2210 VelSet]
type = VelSet
trigger1 = 1
x = ifelse(anim = 60001,10,ifelse(anim=60001,0,7))
y = ifelse(anim = 60001,0,ifelse(anim=60001,-6,6))

[State 3311 NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3311, Missile Hit]
type = HitDef
trigger1 = time = 0
attr = A, HP
damage = 18,2
getpower  = 0
priority = 7, hit
animtype  = up
hitflag = MAFPD
guardflag = MA
pausetime = 0,15
sparkno = -1;s971
;guard.sparkno = s5570
sparkxy = 0,0
hitsound   = s15,14
guardsound = S50,16
ground.type = Low
ground.slidetime = 6
guard.slide = -5
ground.hittime  = 18
ground.velocity = -2, -6
guard.velocity = -25
air.velocity = -2,-6
airguard.velocity = -13, -6
air.hittime  = 18
forcestand = 1
air.fall = 1
fall = 1                   ;Make p2 fall down
fall.recover = 0      ;40 ticks before p2 can recover from fall
down.velocity = -3,-3
down.hit = 1
ignorehitpause = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 3313		
stateno = 3313
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 3311, DestroySelf]
type = DestroySelf
trigger1 = MoveContact || frontedgedist <= -20
trigger2 = pos y > -5
ignorehitpause = 1

;-------------------------------------------------------
;MissileExplod
[Statedef 3313]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 3304
sprpriority = 4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,107,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 127,-3,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 100,100,100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 156,45,133
mul = 161,20,124
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 32,-19,103
mul = 255,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 80,80,80
sinadd = 0,0,0,1
invertall = 0
color = 0

[state 1703,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT
time = 2
ignorehitpause = 1

[State 1703,4]
type = Destroyself
trigger1 = animtime=0

;--------------------------------------------------------------
[Statedef 1210]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 1210

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 1
value = 5050

[State 1210, 1]
type = velset
trigger1 = time = [1,15]
x = 1
y = -5

[State 1210, 2]
type = velset
trigger1 = time = [16,25]
x = 1
y = -3

[State 1210, 3]
type = velset
trigger1 = time = [26,30]
x = 1
y = 4

[State 1210, 3]
type = velset
trigger1 = time = [31,40]
x = 1
y = 6

[State 1210, 4]
type = velset
trigger1 = time = [41,60]
x = 1
y = 10

[State 1210, 3]
type = ChangeState
trigger1 = pos y >= 5
value = 5050

;-------------------------------------------------------------------------------
; END
;-------------------------------------------------------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[2000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S115,2

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers
