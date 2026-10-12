;---------------------------------------------------------------------------

;Swamp Hands
[Statedef 1000]
type = S
movetype= A
physics = N
juggle = 4
anim = 1000
poweradd = 160
ctrl = 0
velset = 0,0


[State 1000]
type = PlaySnd
trigger1 = animelem = 7
value = 8200,0

[State 1000]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = random<=400
value = 210,2

[State 810]
type = EnvShake
trigger1 = AnimElem = 7
time = 25


[State 1000]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype = Heavy
damage = 50, 0
getpower = 50,15
guardflag = MA
hitflag = MAFD
priority = 6, Hit
pausetime = 15,15
sparkno = S8222
sparkxy = -13,-45
guard.sparkno = S10066
hitsound = s8000,3
guardsound = s2,1
guard.slidetime = 25
guard.hittime = 25
guard.ctrltime = 25
guard.velocity = -25
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 0,0
air.velocity = 0,7
airguard.velocity = 0,7
;palfx.time = 30             ;flashing black
;palfx.add = 40,40,40
;palfx.mul = 100,100,100
;palfx.sinadd = 80,80,80,5
;palfx.color = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "Ground"
ID = 1003
stateno = 1003
pos = 0,11
postype = p2    ;p2,front,back,left,right
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 1
size.yscale = .5


[State 1000]
type = StateTypeSet
trigger1 = animelem = 4
statetype = C
movetype = A
physics = C

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------
;Ground Helpa
[StateDef 1003]
type = S 
movetype = A
sprpriority = -1
physics = S ;N
anim = 1001
ctrl = 0
hitcountpersist =1

[State 777, pos]
type = posset
trigger1 = !time
y = 11


[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S660,0

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1010, hitdef]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = M
guardflag = M
animtype = light
air.animtype = light
fall.animtype = light
damage = 15,0
guardflag = MF
pausetime = 0,15
hitsound = S8600,0
guardsound = 6,0
sparkno = S34543535
sparkxy = 0,0  
guard.sparkno = 12321312
ground.type = low               
ground.slidetime = 0; 40
ground.hittime  = 0            
ground.velocity = 0
guard.velocity = 0 
air.type = Low                  
kill = 0


[State 1210, Width]
type = Width
trigger1 = 1
player = -25,-25

[State 1210, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, TargetState]
type = TargetState
trigger1 = movehit
value = 1006
ignorehitpause=1


[State 1003]
type = ChangeState
trigger1 = AnimTime = 0 
value = 1005

[State 1003]
type = ChangeState
trigger1 = moveguarded
value = 1005

[State 1003]
type = ChangeState
trigger1 = movehit
value = 1004

;hitstate
[StateDef 1004]
type = S 
movetype = I
sprpriority = -1
physics = N ;N
anim = 1003
ctrl = 0
hitcountpersist =1

[State 1221, a0]
type = PosSet
trigger1 = !time
y = 11



[State 1220, ]
type = BindToTarget
trigger1 = 1
pos = 0,11, foot
ignorehitpause =0 
persistent =0


[State 1215, Width]
type = Width
trigger1 = 1
player = -25,-25

[State 1215, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1220, a4]
type = nothitby
trigger1 = 1
value = SCA
ignorehitpause = 1


[State 1101, 0]
type = Explod 
trigger1 = animelem = 1
sprpriority = 1
anim = 1002
postype = P2
pos = 0, 1
removeongethit = 0
removetime = 116
pausemovetime = 0
shadow = 0,0,0
bindtime = 1
scale = 1,.9



[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8600,0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S660,1


[State 1002]
type = Destroyself
trigger1 = AnimTime = 0


;no hit state
[StateDef 1005]
type = S 
movetype = I
sprpriority = -1
physics = S ;N
anim = 1004
ctrl = 0
hitcountpersist =1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S660,0

[State 1002]
type = Destroyself
trigger1 = AnimTime = 0

;p2 hitstate
[Statedef 1006]
type = S
movetype = H
physics = S
ctrl = 0

[State 0, VelSet]
type = PosSet
trigger1 = !time
y = 0

[State 7600, Stuck]
type = ChangeAnim2
trigger1 = !time 
value = 1005

[State 7696, return to normal gethit]
type = selfstate
trigger1 = Time >= 90 
value = 5000
ctrl = 0



;--------------------------------------------
;Pisotón x
[Statedef 1050]
type    = S
movetype= A
physics = S
anim = 1050
ctrl = 0

[state 1051, land explod]
type = helper
trigger1 = animelem = 5 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 70,10
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S8200,0


[State 1002]
type = PlaySnd
trigger1 = AnimElem = 1
value = 210,3

[State 1002]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400,2

[State 1002]
type = ScreenBound
trigger1 = AnimElem >= 4
value = 1

[State 1002]
type = EnvShake
trigger1 = AnimElem = 4
time = 50
ampl = -5
freq = 100
phase = 1


[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1051
projanim = 1051
projhitanim = 1054 ;ground end
projremanim = 1054
projcancelanim = 1054
projscale = 1,1
projremove = 0
projremovetime = 61
velocity = 3,0
remvelocity = 2,0
attr = S, SA
damage = 90,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 7, Hit
getpower = 0
pausetime = 10, 10
guard.sparkno = s8001
sparkno = s8022
sparkxy = -25, -10
hitsound = S8000,2
guardsound = S2,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 50,10
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
air.hittime  = 20
ground.velocity = 2,-10
air.velocity = 2,-10
guard.velocity = -4
fall = 1
fall.animtype = Hard
fall.recover = 0
down.bounce = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4
p2stateno = 5070



[State 1002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;pisotón y
[Statedef 1051]
type    = S
movetype= A
physics = S
anim = 1050
ctrl = 0

[state 1051, land explod]
type = helper
trigger1 = animelem = 5 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 70,10
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S8200,0


[State 1002]
type = PlaySnd
trigger1 = AnimElem = 1
value = 210,3

[State 1002]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400,2

[State 1002]
type = ScreenBound
trigger1 = AnimElem >= 4
value = 1

[State 1002]
type = EnvShake
trigger1 = AnimElem = 4
time = 50
ampl = -5
freq = 100
phase = 1


[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1052
projanim = 1052
projhitanim = 1054 ;ground end
projremanim = 1054
projcancelanim = 1054
projscale = 1,1
projremove = 0
projremovetime = 61
velocity = 5,0
remvelocity = 2,0
attr = S, SA
damage = 90,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 7, Hit
getpower = 0
pausetime = 10, 10
guard.sparkno = s8001
sparkno = s8022
sparkxy = -25, -10
hitsound = S8000,2
guardsound = S2,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 50,10
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
air.hittime  = 20
ground.velocity = 2,-10
air.velocity = 2,-10
guard.velocity = -4
fall = 1
fall.animtype = Hard
fall.recover = 0
down.bounce = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4
p2stateno = 5070



[State 1002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;pisotón z
[Statedef 1052]
type    = S
movetype= A
physics = S
anim = 1050
ctrl = 0

[state 1051, land explod]
type = helper
trigger1 = animelem = 5 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 70,10
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S8200,0


[State 1002]
type = PlaySnd
trigger1 = AnimElem = 1
value = 210,3

[State 1002]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400,2

[State 1002]
type = ScreenBound
trigger1 = AnimElem >= 4
value = 1

[State 1002]
type = EnvShake
trigger1 = AnimElem = 4
time = 40
ampl = -5
freq = 100
phase = 1


[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1053
projanim = 1053
projhitanim = 1054 ;ground end
projremanim = 1054
projcancelanim = 1054
projscale = 1,1
projremove = 0
projremovetime = 61
velocity = 7,0
remvelocity = 2,0
attr = S, SA
damage = 90,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 7, Hit
getpower = 0
pausetime = 10, 10
guard.sparkno = s8001
sparkno = s8022
sparkxy = -25, -10
hitsound = S8000,2
guardsound = S2,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
offset = 50,10
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
air.hittime  = 20
ground.velocity = 2,-10
air.velocity = 2,-10
guard.velocity = -4
fall = 1
fall.animtype = Hard
fall.recover = 0
down.bounce = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4
p2stateno = 5070



[State 1002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grundy Smash!
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = 80

[State 210, voice]
type = PlaySnd
trigger1 = time = 2
trigger1 = random<=400
value = 210,1

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "Smash x"
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "Smash y"
v = 41
value = 2

[State 0, VarSet]
type = VarSet
triggerall = command = "Smash z"
trigger1 = time = 0
trigger2 = var(59)
v = 41
value = 4

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 1101
ctrl = 0

[StateDef 1101]
type = S
movetype = A
physics = N
anim = 1101
ctrl = 0
poweradd = 0


[State 0, Dust]
type = Explod
trigger1 = Time =0
anim = 8333
ID = 8333
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = 0,0
sprpriority = 20
ownpal = 1
scale= .5,.5
bindtime = 1
removetime = 30
persistent = 1

[State 0, Dust]
type = Explod
trigger1 = Time%2=0
anim = 102
ID = 102
pos = 0,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -2,0
sprpriority = 20
ownpal = 1
scale= 2.5,1

[State 40, 1]
type = AfterImage
trigger1 = !time
time = 15
length =7
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add





[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s54,17


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8 + var(41)


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MAF
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = S8222
guard.sparkno = s8001
sparkxy = 30, -60
hitsound = s8000,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5,-9
air.type = Low
air.hittime = 15
air.velocity = -5,-7
envshake.time = 7
envshake.ampl = 4
fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1= time = 10 + 3*var(41)
value = 1102
ctrl = 0


[StateDef 1102]
type = S
movetype = A
physics = N
anim = 1102
ctrl = 0
velset = var(41),0
poweradd = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;____________________________________________________
;Grundy Smash UF Close
[Statedef 1110]
type    = U
movetype= A
physics = N
juggle = 0;  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1110
sprpriority = 0
;facep2 = 1


[State 1480]
type = PlayerPush
trigger1 = 1
value = 0


[State 0, Dust]
type = Explod
trigger1 = Time%2=0
anim = 102
ID = 102
pos = 0,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -2,0
sprpriority = 20
ownpal = 1
scale= 2.5,1

[State 40, 1]
type = AfterImage
trigger1 = !time
time = 15
length =7
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MAF
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = S8222
guard.sparkno = s8001
sparkxy = 30, -60
hitsound = s8000,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5,-9
air.type = Low
air.hittime = 15
air.velocity = -5,-7
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 210, voice]
type = PlaySnd
trigger1 = time = 2
trigger1 = random<=400
value = 210,1


[State 1480]
type = PlaySnd
trigger1 = AnimElem = 3
value = s54,17


[State 1480]
type = VelSet
trigger1 = AnimElem = 3
x = 9
y = -9

[State 1480]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1480]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4


[State 1480]
type = ChangeState
trigger1 = Time = 20 && StateType != A
value = 1114
ctrl = 0


[State 1480]
type = ChangeState
trigger1 = Time = 20 && StateType = A
value = 1115
ctrl = 0


;---------------------------------------------------------------------------
;Grundy Smash UF Mid
[Statedef 1111]
type    = U
movetype= A
physics = N
juggle = 0;  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1110
sprpriority = 0
;facep2 = 1


[State 1490]
type = PlayerPush
trigger1 = 1
value = 0



[State 0, Dust]
type = Explod
trigger1 = Time%2=0
anim = 102
ID = 102
pos = 0,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -2,0
sprpriority = 20
ownpal = 1
scale= 2.5,1

[State 40, 1]
type = AfterImage
trigger1 = !time
time = 15
length =7
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MAF
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = S8222
guard.sparkno = s8001
sparkxy = 30, -60
hitsound = s8000,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5,-9
air.type = Low
air.hittime = 15
air.velocity = -5,-7
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 210, voice]
type = PlaySnd
trigger1 = time = 2
trigger1 = random<=400
value = 210,1


[State 1480]
type = PlaySnd
trigger1 = AnimElem = 3
value = s54,17



[State 1490]
type = VelSet
trigger1 = AnimElem = 3
x = 11
y = -11

[State 1490]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1490]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4



[State 1490]
type = ChangeState
trigger1 = Time = 27 && StateType != A
value = 1114
ctrl = 0


[State 1490]
type = ChangeState
trigger1 = Time = 27 && StateType = A
value = 1115
ctrl = 0


;---------------------------------------------------------------------------
;Grundy Smash UF Far
[Statedef 1112]
type    = U
movetype= A
physics = N
juggle = 0;  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1110
sprpriority = 0
;facep2 = 1


[State 1500]
type = PlayerPush
trigger1 = 1
value = 0



[State 0, Dust]
type = Explod
trigger1 = Time%2=0
anim = 102
ID = 102
pos = 0,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -2,0
sprpriority = 20
ownpal = 1
scale= 2.5,1

[State 40, 1]
type = AfterImage
trigger1 = !time
time = 15
length =7
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MAF
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = S8222
guard.sparkno = s8001
sparkxy = 30, -60
hitsound = s8000,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5,-9
air.type = Low
air.hittime = 15
air.velocity = -5,-7
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 210, voice]
type = PlaySnd
trigger1 = time = 2
trigger1 = random<=400
value = 210,1


[State 1480]
type = PlaySnd
trigger1 = AnimElem = 3
value = s54,17



[State 1500]
type = VelSet
trigger1 = AnimElem = 3
x = 13
y = -13

[State 1500]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1500]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4



[State 1500]
type = ChangeState
trigger1 = Time = 30 && StateType != A
value = 1114
ctrl = 0


[State 1500]
type = ChangeState
trigger1 = Time = 30 && StateType = A
value = 1115
ctrl = 0

;-----------------------------------------
; Grundy Smash UF  End
[Statedef 1114]
type    = U
movetype= I
physics = S
juggle = 0;  = 3
;poweradd= 60
ctrl = 0
;velset = 0,0
anim = 1111
sprpriority = 0
;facep2 = 1


[State 1531]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0


;------------------------------------------------------------------------------------------------------------
; Grundy Smash U  End
[Statedef 1115]
type = A
movetype = I
physics = A
anim = 1112
ctrl = 0
sprpriority = 0
;poweradd= 65
velset = 0,0
;facep2 = 1


[State 1532]
type = null;StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1532]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 1532]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;Rest In Peace (Special Throw)
[Statedef 1200]
type    = S
movetype= A
physics = S
sprpriority=7
anim = 1200
ctrl = 0

[State 860, voz ]
type = PlaySnd
trigger1 = animelem=4
trigger1 = random<=400
value = 200, 1
channel = 0

[State 860, voz ]
type = PlaySnd
trigger1 = animelem=4
value = 8400, 2

[State 850, 1]
type = HitDef
Trigger1 = !Time
attr = S, ST          ;Attributes: Standing, Normal Throw
hitflag = M  
guardflag = M       ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
hitsound = S8600, 0
pausetime = 0,15
guard.sparkno = s8001
guardsound =6,0                    ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1201       ;On success, KFM changes to state 810
p2stateno = 1203       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.damage = 0


[State 860, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0
;-----------

;success
[Statedef 1201]
type    = S
movetype= A
physics = N
poweradd = 60
sprpriority=0
anim = 1201

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 75
;ignorehitpause = 
;persistent = 

[State 860,a0]
type = Helper
trigger1 = !time
StateNo = 3598
id = 3599
name = "camera1"
pos = 160,0

[State 860,a0]
type = Helper
trigger1 = !time
StateNo = 3598
id = 3598
name = "camera2"
pos = -160,0


[State 860, voz ]
type = PlaySnd
trigger1 = animelem=4
trigger1 = random<=400
value = 210, 0
channel = 0

[State 860, voz ]
type = PlaySnd
trigger1 = animelem=6
value = 8400, 2


[State 860, a9] 
type =  VelAdd
trigger1= animelem = 3
y = -6

[State 0, VelMul]
type = VelMul
trigger1 = animelem = 3
y = 1.9
;ignorehitpause = 
;persistent = 



[State 860, a9] 
type =  Velset
trigger1= animelem=6
y = 0
x = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 


[State 860, Bind 1]
type = TargetBind
trigger1 = animelem = 1
pos = 117, 0

[State 860, Bind 1]
type = TargetBind
trigger1 = animelem = 2
pos = 39, -0.500

[State 860, Bind 2]
type = TargetBind
trigger1 = animelem = 3
pos = 2, -161

[State 860, Bind 3]
type = TargetBind
trigger1 = AnimElem = 4 
pos = 2, -161

[State 860, Bind 4]
type = TargetBind
trigger1 = AnimElem = 5 
pos = -54, -82


[State 860, Bind 4]
type = TargetBind
trigger1 = AnimElem = 6
pos = 63.5, -26


[State 860, a9]
type = TargetState
trigger1 = AnimElem = 6
value = 1204

[State 860, a4 ]
type = PlaySnd
trigger1 = animelem=6
value = 54, 18
volume = 250


[State 860, p2] ;explodpedr
type = helper
triggerall = NumTarget > 0
trigger1 = target, stateno=5100
helpertype = normal
stateno = 1205
ID = 1205
name = "floor"
postype = p2
pos = -35,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 810, a4 ]
type = PlaySnd
triggerall = NumTarget > 0
trigger1 = target, stateno=5100
value = 8200, 0
volume = 250
persistent = 0

[State 801, b2]
type = EnvShake
triggerall = NumTarget > 0
trigger1 = target, stateno=5100
time = 13
ampl = -14
persistent=0

[State 860, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;no success
;-------------------------------------------------
[Statedef 1202]
type    = S
movetype= A
physics = S
sprpriority=0
anim = 1202

[State 860, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;targetstate
[Statedef 1203]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 870, a0]
type = PowerAdd
trigger1 = !time
value = 20


[State 870, aa]
type = AfterImage
trigger1 = animelem =6
length = 20
PalBright = 30,30,0
PalContrast = 70,70,20
PalAdd = -10,-10,-10
PalMul = .85,.85,.50
TimeGap = 1
FrameGap = 3
Trans = Add
time = 25


[State 870, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 1203

[State 870, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 870, a3]
type = SelfState;safe
trigger1 = time >= 200 ;!gethitvar(isbound)
trigger2 = p2movetype = H
value = 5050

[Statedef 1204]
type    = A
movetype= H
physics = N
velset = 0,0;2.8,-7
sprpriority = -2

;[State 821,a0 ]
;type = Posset
;Trigger1 = !Time
;x = ifelse(facing=1,-45,45)
;y = 10
;ignorehitpause = 0

[State 820, a2]
type = ScreenBound
trigger1 = time = [0,5]
value = 0


[State 871, a1] 
type = VelAdd
Trigger1 = time>=0
y = 1
x = -1

[State 871, a1] 
type = Velset
Trigger1 = !time
y = 6
x = -6

[State 0, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -120
kill = 1


[State 871, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;floor explod
[Statedef 1205]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = -7

[State 8706, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8706, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8707, b1]
type = Explod
trigger1 = !Time
anim = 1204
id = 1204
postype = p1
bindtime = -1
pos = 0, 0
sprpriority = -7
persistent = 0
scale = .8,.9
supermovetime = 999
pausemovetime = 999

[State 8706 Explod] 
type = Explod
trigger1 = time <= 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 0,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/120,Random/(-120))),Random/(-120)
accel = 0,.5
;removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority = 8
;ownpal = 1


[State 8706, a6]
type = destroyself
trigger1 = time >= 176;25

;--cam helpers
[Statedef 3598]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 3598, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3598, a0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3598, a1]
type = DestroySelf
trigger1 = time>=50
trigger2 = p2movetype!=H

[Statedef 3599]
type = S
movetype = I
physics = N
ctrl = 0
anim =8787
velset = 0,0

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3599, a0]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3599, a1]
type = DestroySelf
trigger1 = parent, stateno != [3500,3590]





