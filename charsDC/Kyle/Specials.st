;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------

;ringbeam
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 8
anim = 918
pos = 40,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 192, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "truenos"
ID = 191
stateno = 1301
pos = 40,-107
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 192, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 143,58
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

[State 1001, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "rayo"
ID = 9000
stateno = 9000
pos = -20,-85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.yscale = 0.7
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------
;rayo
[Statedef 9000]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 1001
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

[State 3010, 1]
type = BindToRoot
trigger1 = 1
pos = 40,-107
time = -1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 24000,11

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = floor(100 + (root,var(41))/(1+(root,Var(19)/5.0))), 37
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = 0,0
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

[State 191, Helper]
type = Helper
trigger1 = Movehit = 1
ID = 8222		
stateno = 8222
pos = -10,-95
postype = p2
facing = 1
ownpal = 1
                                          
[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1001
pos = 0,0

[State 99]
type = DestroySelf
triggerall = IsHelper(9000)
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H
trigger3 = movereversed

;--------------------------------------------------------------
;truenos
[Statedef 1301]
type = S
ctrl = 0
anim = 1012

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 1
add = 256,-50,-50
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,170,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1 
add = 200,50,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 200,200,200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 220,50,75
mul = 200,50,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 50,0,150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1 
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 24000,4

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1195, end]
type = DestroySelf
trigger1 = time = 15

;--------------------------------------------------------------
;trueno
[Statedef 1300]
type = S
ctrl = 0
anim = 7009

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = 0,50,240
mul = 120,224,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 1 
add = 200,0,2
mul = 256,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1 
add = 240,150,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 150,25,-200
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
add = 256,50,200
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 50,5,150
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 24000,4

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 15

;---------------------------------------------------------------------------
[Statedef 10011]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 7055

[State 1006, 7]
type = changestate
trigger1 = animtime = 0
value = 1001
ctrl = 1

;---------------------------------------------------------------------------

;missile
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 7005
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 190,9

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 8
anim = 918
pos = 40,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1001, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "armadura"
ID = 1303
stateno = 1303
pos = 0,-2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.9
size.yscale = 1
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = time = 45
value = 1011
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1011]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0, 0
anim = 7056

[State 1006, 7]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;Missle
[Statedef 9001]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 7000
sprpriority = 3

[state 10050, noshadow]; aura has no shadow
type = assertspecial
triggerall = alive
trigger1 = 1
flag = noshadow

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

[State 3210, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3210, VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State 3210, VarSet]
type = VarSet
trigger1 = IsHelper
fv = 2
value = (EnemyNear, Const(size.mid.pos.y))

[State 3210, VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -6)
x = -0.075

[State 3210, VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 6)
x = 0.075

[State 3210, VelAdd]
type = VelAdd
trigger1 = (FVar(2) > Pos Y) && (Vel Y < 6)
y = 0.075

[State 3210, VelAdd]
type = VelAdd
trigger1 = (FVar(2) < Pos Y) && (Vel Y > -6)
y = -0.075

[State 3210, VelSet]
type = VelSet
trigger1 = (FVar(2) = Pos Y)
y = 0

[State 1006, 3]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SP
damage = floor(100 + (root,var(41))/(1+(root,Var(19)/5.0))), 37
guardflag = MA
pausetime = 2,2
hitsound = S15,14
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
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 3313		
stateno = 3313
pos = 0,-50
postype = p2
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

;-----
; KFM's "angled projectiles" code
[State 3010, blah]
type = VarSet
trigger1 = Vel X != 0
fv = 3
value = ((atan(Vel Y/Vel X) + (3*pi/2)) *(-180/Pi)) - 90

[State 3010, blah]
type = VarSet
trigger1 = Vel X = 0
fv = 3
value = ((atan(Vel Y) + (3*pi/2)) *(-180/Pi)) - 90

[State 3010, blah]
type = AngleSet
trigger1 = 1
value = FVar(3)

[State 0, Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State 3010, blah]
type = AngleDraw
trigger1 = 1
;-----

[State 1000, End]
type = ChangeState
trigger1 = time = 150
value = 3313
ctrl = 1

[State 1006, 7]
type = DestroySelf
trigger1 = Movehit = 1

;--------------------------------------------------------------
;Cannon
[Statedef 1303]
type = S
ctrl = 0
anim = 7819

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = 0,50,256
mul = -100,200,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 1 
add = 50,-150,-150
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,120,0
mul = 250,220,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 140,10,-200
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
add = 150,0,100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1 
add = 50,0,100
mul = 256,256,256
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
trigger1 = animelem = 6
helpertype = normal ;player
name = "Missle"
ID = 9001
stateno = 9001
pos = 70,-97
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.6
size.yscale = 0.6

[State 1001, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Blast"
ID = 70000	
stateno = 70000
pos = 57,-93
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S15,26

[State 1200, EnvShake]
type = EnvShake
trigger1 = animelem = 7
time = 20
freq = 60
ampl = -4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S15,16

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 50

;--------------------------------------------------------------
;rayo
[Statedef 70000]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 70000
sprpriority = 4

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,0,256
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFX]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1 
add = 212,180,0
mul = 237,135,71
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 115,-7,-238
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 131,22,100
mul = 256,63,127
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1 
add = 100,0,193
mul = 120,114,138
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 60,60,60
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 3010, 1]
type = BindToRoot
trigger1 = 1
pos = 40,-107
time = -1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 24000,11

[State 0, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = floor(100 + (root,var(41))/(1+(root,Var(19)/5.0))), 37
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = 0,0
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

[State 191, Helper]
type = Helper
trigger1 = Movehit = 1
ID = 8222		
stateno = 8222
pos = -10,-95
postype = p2
facing = 1
ownpal = 1
                                          
[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 1303
pos = 100,-93

[State 99]
type = DestroySelf
triggerall = IsHelper(70000)
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H
trigger3 = movereversed

;-----------------------------------------------------------------
;quick fists
[StateDef 1004]
type = S
movetype = A
physics = S
anim = 24400
ctrl = 0
juggle= 10
velset = 0,0
poweradd = 60
sprpriority = 2

[State 192, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 110,8
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 191, Helper]
type = Helper
trigger1 = animelem = 7
ID = 1005
stateno = 1005
pos = -30,0
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 192, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 21,3
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 1005, changestate]
type = changestate
trigger1 = time = 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Kyle's Stand
[Statedef 1005]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7800
sprpriority = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,0,256
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFX]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1 
add = 212,180,0
mul = 237,135,71
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 115,-7,-238
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 150,150,150
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1 
add = 131,22,100
mul = 256,63,127
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1 
add = 100,0,193
mul = 120,114,138
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 60,60,60
sinadd = 0,0,0,10
invertall = 0
color = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 8400, 3

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 7 
attr = S,SA
damage = floor(8 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 1,1
sparkno = -1
sparkxy = -25,-120 + floor(random/20)
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = -2
air.velocity = -2,-1
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit = 1
ID = 8222		
stateno = 8222
pos = -30,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 10055
time = 1
ignorehitpause = 1

[State 1006, 7]
type = Changestate
trigger1 = time = 70
value = 10055
ctrl = 1

;---------------------------------------------------------------------------
;Stand Disappear
[Statedef 10055]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 78800
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,16

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = -10,-50,250
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,10
palfx.time = 30

[State 0, PalFX]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 250,50,0
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 250,-80,-200
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

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
add = 250,-70,250
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 100,-120,240
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -200,-230,-250
palfx.mul = 200,256,200
palfx.add = 0,40,0
palfx.time = 30

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------

;Goku start
[Statedef 1006]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 24000
sprpriority = 1

[State 192, Helper]
type = helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "trueno"
ID = 1007
stateno = 1007
pos = 18,2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 191, Helper]
type = Helper
trigger1 = animelem = 9
ID = 11065
stateno = 11065
pos = 50,-85
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 12, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;trueno
[Statedef 1007]
type = S
ctrl = 0
anim = 7009


[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = 0,50,240
mul = 120,224,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = 1 
add = 200,0,2
mul = 256,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1 
add = 240,150,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 150,25,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 200,200,200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 256,50,200
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 50,5,150
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 24000,4

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 15


;---------------------------------------------------------------------------
;  Flying Goku Helper
;---------------------------------------------------------------------------
[Statedef 11065]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0,0
anim = 7802

[State 0, MakeDust]
type = MakeDust
trigger1 = Time%3 = 0
pos = -20,-10+random%20
spacing = 3

[state 100, 4]
type = explod
trigger1 = animelem = 3
id = 100
anim = 6014
postype = p1
pos = -60,0
ownpal = 1
bindtime = -1
scale = 0.4,0.4
sprpriority = 5
persistent = 0
removeongethit = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = 0,50,240
mul = 100,150,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 50,-150,-150
mul = 256,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,50,0
mul = 200,200,50
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 200,-20,-200
mul = 150,150,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 6
time = -1
add = 100,100,100
mul = 200,200,200
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 120,-100,40
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -65,-104,25
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 0,0,0
mul = 75,75,75
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1006, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 5

[State 1006, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
animtype = Medium
guardflag = MA
damage = floor(48 + var(41)/(1+(Var(19)/5.0))), 13
pausetime = 0, 0
sparkno = S8220+random%1
sparkxy = 0,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit = 1
ID = 8222		
stateno = 8222
pos = 50,-15
postype = p1
facing = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S191,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S8000,5

[State 1006, 7]
type = DestroySelf
trigger1 = AnimElem = 10

;------------------------------------------------------------------
; airbeam
[Statedef 1010]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 190,9

[State 192, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "truenos"
ID = 191
stateno = 1301
pos = 40,-107
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 192, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 40,13
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1001, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "rayo"
ID = 9000
stateno = 9000
pos = -20,-85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.yscale = 0.7
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 2000
ctrl = 1
;---------------------------------------------------------------------------------------------------------------
;samuraiHit
[StateDef 1500]
type    = S
movetype= A
physics = N
poweradd= 50
ctrl = 0
velset = 0,0
anim = 7805

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 143,2,-139
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
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S2000,0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S2000,3

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7 && random <= 500
value = S5,3

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11 && random <= 500
value = S5,1

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 7
x = 4

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 11
x = 0

[State 1120, 1]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3,3
sparkno = -1
hitsound = S3040,0+random%3
guard.sparkno = 40
sparkxy = 20,-85
guardsound = F6,0
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
fall = 0
fall.recover = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit =1
ID = 8222	
stateno = 8222
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 1120, end]
type = ChangeState
trigger1 = Movehit
value = 1501
ctrl = 1

[State 1120, end]
type = ChangeState
trigger1 = animtime = 0
value = 10066
ctrl = 1


;---------------------------------------------------------------------------
;second Swing
[StateDef 1501]
type    = S
movetype= A
physics = N
poweradd= 50
ctrl = 0
velset = 0,0
anim = 7806

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1
add = 0,50,256
mul = 87,158,148
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 3
time = -1
add = 109,-45,-45
mul = 256,256,256
sinadd = -6,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 163,87,-63
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 143,2,-139
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
add = 125,25,101
mul = 256,10,150
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = 42,2,116
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1100,1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S2000,0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && random <= 500
value = S5,3

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 2
x = 4

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 7
x = 0

[State 1120, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
damage = floor(60 + var(41)/(1+(Var(19)/5.0))), 8
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3,3
sparkno = -1
hitsound = S3040,0+random%3
guard.sparkno = 40
sparkxy = 20,-85
guardsound = F6,0
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
fall = 0
fall.recover = 0

[State 191, Helper]
type = Helper
trigger1 = Movehit =1
ID = 8222		
stateno = 8222
pos = -25,-120 + floor(random/20)
postype = p2
facing = 1
ownpal = 1

[State 1120, end]
type = ChangeState
trigger1 = animtime = 0
value = 10066
ctrl = 1

;---------------------------------------------------------------------------
;rabbit (Start)
[Statedef 2300]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 24001
sprpriority = 1

[State 192, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 106,12
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 191, Helper]
type = Helper
trigger1 = animelem = 8
ID = 11066
stateno = 11066
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 12, End]
type = ChangeState
trigger1 = animtime =0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rabbit Helper
;---------------------------------------------------------------------------
[Statedef 11066]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7710

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1 
add = 0,50,240
mul = 50,152,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,98,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 104,-4,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 150,0,129
mul = 175,20,170
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -5,-68,71
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

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 5

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 7
anim = 7712
pos = 80,0
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5,.5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8400, 2

[State 1020, 1]
type = VelSet
trigger1 = AnimElem = 2
y = 0
x = 4

[State 2201, 4]
type = HitDef
trigger1 = Time = 0 && p2stateno != [5100, 5120]
attr = S, SA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2,2
sparkno = s8200
hitsound = s8000,2
guard.sparkno = 40
sparkxy = 0,-120
guardsound = F6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
fall = 1
fall.recover = 0

[State 2201, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 2201, 6]
type = VelSet
trigger1 =  AnimElem = 8
x = 0
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 11067
time = 1
ignorehitpause = 1

[State 2201, 7]
type = changestate
trigger1 = animtime = 0
value = 11067
ctrl = 1

;---------------------------------------------------------------
;Rabbit destroy
[Statedef 11067]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 77110

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,16

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1 
add = 0,50,240
mul = 50,152,175
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 240,98,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 104,-4,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 150,0,129
mul = 175,20,170
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -5,-68,71
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

[State 2201, 7]
type = DestroySelf
trigger1 = Animelem = 4

;---------------------------------------------------------------------------
;Sharks
[Statedef 2401]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 2400
ctrl = 0

[State 192, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "trueno"
ID = 190
stateno = 1300
pos = 21,3
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 2400, spinner]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "Spinner"
ID = 24000
pos = p2bodydist x -0,0
postype = p1
ownpal = 1
stateno = 24001
size.xscale = 0.4
size.yscale = 0.4

[State 2400, spinner]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "Spinner"
ID = 24001
pos = p2bodydist x --100,0
postype = p1
ownpal = 1
stateno = 24000
size.xscale = 0.4
size.yscale = 0.4

[State 105, 3]
type = ChangeState
trigger1 = time = 80
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;bite
[Statedef 24000] 
type = A
movetype = A
physics = N
anim = 7706
ctrl = 0
sprpriority = 4
velset = 0,0
hitcountpersist = 1

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -239,-65,69
mul = 196,202,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 215,138,0
mul = 207,190,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 98,-17,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 89,-200,39
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -38,-43,57
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 40,40,40
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 2400]
type = Explod
trigger1 = animelem= 1
anim = 7510
scale = 0.8,0.8
ownpal = 0

[State 24000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24000)
value = S15,15

[State 24000]
type = PlaySnd
trigger1 = animelem = 10||animelem = 12 && isHelper(24000)
value = S2000,5

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
trigger1 = animelem = 9 || animelem = 10||animelem = 11||animelem = 12
attr = S, SP
numhits = 7
damage = 1
guardflag = MA
pausetime = 2,2
hitsound = S3040,0+random%3
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100
sparkxy = 0, -30; (enemynear,pos y)
animtype = Heavy
ground.type = High               
ground.slidetime = 0
ground.hittime  = 25             
ground.velocity = 0
air.type = High                  
air.velocity = -4, -2           
air.hittime = 25
envshake.time = 2
envshake.ampl = 2
envshake.time = 9
envshake.ampl = 5
palfx.invertall = 1

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8222		
stateno = 8222
pos = -30, -30
postype = p1
facing = 1
ownpal = 0

[State 2201, 7]
type = changestate
trigger1 = Time = 35
value = 77066
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;bite
[Statedef 24001] 
type = A
movetype = A
physics = N
anim = 7706
ctrl = 0
sprpriority = 4
velset = 0,0
hitcountpersist = 1

[State 24000]
type = PlaySnd
trigger1 = animelem = 10||animelem = 12 && isHelper(24000)
value = S2000,5

[State 0, Turn]
type = Turn
trigger1 = time = 1
;ignorehitpause = 
;persistent = 

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -239,-65,69
mul = 196,202,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 215,138,0
mul = 207,190,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 98,-17,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 89,-200,39
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -38,-43,57
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 40,40,40
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 2400]
type = Explod
trigger1 = animelem= 1
anim = 7510
scale = 0.8,0.8
ownpal = 0

[State 24000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

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
trigger1 = animelem = 9 || animelem = 10||animelem = 11||animelem = 12
attr = S, SP
numhits = 7
damage = floor(7 + (root,var(41))/(1+(root,Var(19)/5.0))), 2
guardflag = MA
pausetime = 2,2
hitsound = S3040,0+random%3
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100
sparkxy = 0, -30; (enemynear,pos y)
animtype = Heavy
ground.type = High               
ground.slidetime = 0
ground.hittime  = 25             
ground.velocity = 0
air.type = High                  
air.velocity = -4, -2           
air.hittime = 25
envshake.time = 2
envshake.ampl = 2
envshake.time = 9
envshake.ampl = 5
palfx.invertall = 1

[State 191, Helper]
type = Helper
trigger1 = Movehit
ID = 8222		
stateno = 8222
pos = -30, -30
postype = p1
facing = 1
ownpal = 0

[State 2201, 7]
type = changestate
trigger1 = Time = 40
value = 770666
ctrl = 1

;---------------------------------------------------------------
;Shark 1 destroy
[Statedef 77066]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 77066

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,16

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -239,-65,69
mul = 196,202,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 215,138,0
mul = 207,190,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 98,-17,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 89,-200,39
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -38,-43,57
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 40,40,40
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 2201, 7]
type = DestroySelf
trigger1 = Animtime = 0

;----------------------------------------------------------
;Shark 2 destroy
[Statedef 770666]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 77066

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,16

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = -1 
add = -239,-65,69
mul = 196,202,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = palno = 3
time = -1
add = 75,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 4
time = -1
add = 215,138,0
mul = 207,190,120
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 5
time = -1
add = 98,-17,-200
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
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 7
time = -1
add = 89,-200,39
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1223,0]
type = PalFX
trigger1 = palno = 8
time = -1
add = -38,-43,57
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 1222,0]
type = PalFX
trigger1 = palno = 9
time = -1
add = 100,100,100
mul = 40,40,40
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 2201, 7]
type = DestroySelf
trigger1 = Animtime = 0


;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 Start
; (first implemented by SethZankuten for GLHal; borrowed and adapted by Buyog)
;==========================================================================
[Statedef 10050]; aura glow definition start
type = S
movetype = I
physics = N
sprpriority = -15
velset = 0,0
ctrl = 0
;
[State 10050, VarSet] ; grab Hal's palette number
type = VarSet
trigger1 = !Time
v = 10
value = parent,palno
;
[state 10050, noshadow]; aura has no shadow
type = assertspecial
triggerall = alive
trigger1 = 1
flag = noshadow
;
[state 10050, playerpush]; the aura can go right through you
type = playerpush
triggerall = alive
trigger1 = 1
time = -1
ignorehitpause = 1
persistent = 1
value = 0
;
[state 10050, nohit]; not able to hit the aura and vice versa
type = nothitby
triggerall = alive
trigger1 = 1
time = -1
persistent = 1
value = SCA
;
[State 10050, ChangeAnim]; makes the aura do what you do
type = ChangeAnim
triggerall = alive
trigger1 = selfanimexist(parent,anim)
elem = parent,animelemno(0)
value = parent, anim

;
[State 10050, bindtoroot]; binds the auras position to the player using it
type = bindtoroot
triggerall = alive
trigger1 = 1
facing = 1
pos = 0, 0
time = -1
ignorehitpause = 1
persistent = 1

; aura colors:
;palno=1:    0, 150,   0   ;green
;palno=2:    0,   0, 256   ;blue
;palno=3:   215,   0,   0   ;red
;palno=4:   215, 215,   0   ;yellow
;palno=5:   215, 106,   0   ;orange
;palno=8:   64,   0, 256   ;indigo
;palno=9:    0,   0,   0   ;black

[State 10050, color]; normal: green
type = PalFX
triggerall = var(10) = 1
trigger1 = 1
add = 0, 150, 0
mul = 125, 256, 0
sinadd = 10, 256, 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; warm alternates (red/yellow)
type = PalFX
triggerall = var(10) = [3,5]
trigger1 = 1
add = 215, IfElse(var(10)=3, 0, IfElse(var(10)=5, 106, 215)), 0
mul = 256, IfElse(var(10)=3, 64, IfElse(var(10)=5, 128, 256)),0
sinadd = 256, IfElse(var(10)=3, 10, IfElse(var(10)=5, 128, 256)), 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; cool alternates (orange) ;palno=5:   215, 106,   0   ;orange
type = PalFX
triggerall = var(10) = 8
trigger1 = 1
add = 215, IfElse(var(10)=7, 0, IfElse(var(10)=8, 106, 215)), 0
mul = 256, IfElse(var(10)=7, 64, IfElse(var(10)=8, 128, 256)),0
sinadd = 256, IfElse(var(10)=7, 10, IfElse(var(10)=8, 128, 256)), 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; cool alternates (blue) ;palno=2:    0,   0, 256   ;blue
type = PalFX
triggerall = var(10) = 2
trigger1 = 1
add = IfElse(var(10)=2,0,64), 0, 256
mul = IfElse(var(10)=2,0,64), 0, 256
sinadd = IfElse(var(10)=2, 0, 32), 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; cool alternates indigo) 64,   0, 256  
type = PalFX
triggerall = var(10) = 8
trigger1 = 1
add = 113, 0, 256
mul = 113, 0, 256
sinadd = IfElse(var(10)=7, 0, 32), 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; violet
type = PalFX
triggerall = var(10) = 7
trigger1 = 1
add = 217, 0, 217
mul = 217, 0, 217
sinadd = IfElse(var(10)=7, 0, 32), 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; White
type = PalFX
triggerall = var(10) = 6
trigger1 = 1
add = 256, 256, 256
mul = 256, 256, 256
sinadd = IfElse(var(10)=6, 0, 32), 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, black] ; no palfx necessary to get a black aura
type = Palfx ;PalFX
triggerall = var(10) = 9
trigger1 = 1
add = 0, 0, 0
mul = 0, 0, 0
sinadd = 64, 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, trans]; makes the aura see through
type = trans
triggerall = alive
trigger1 = 1
trans = addalpha
alpha = 256 - (15*time), (15*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State 10050, angledraw]; how big the aura radiates over time
type = angledraw
triggerall = alive
trigger1 = 1
value = 0
scale = 1 + (.0065*time), 1 + (0.0065*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State 10050, destroyself]; time to restart the hazing animations of the aura
type = Destroyself
triggerall = alive
trigger1 = time >= 15
;
;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 End
;==========================================================================

;-----------------------------------------------
;------------------------------------------------------------------------------------------
; Hit by  - shaking from the hit
; (a custom gethit state)

[Statedef 9020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9020, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9020, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9030

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9030]
type    = A
movetype= H
physics = N


[State 9030]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9030]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9030, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9030, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9027


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9027]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = null;Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

[State 9027, Sound]
type = null;PlaySnd
trigger1 = Time = 0
value = F7,0

[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9028

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9028]
type    = A
movetype= H
physics = N


[State 9028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9028, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------------------
; Plasma Sphere: finish
[StateDef 2350]
type    = S
movetype = I
physics = S
anim = 2350

[State 2350, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4


