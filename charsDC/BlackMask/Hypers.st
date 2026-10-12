;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
[Statedef 1800]
anim = 800
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
juggle = 1



[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1





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



[State 820, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 0, Miss
sparkno = -1
sprpriority = 1
p1facing = IfElse(Command = "holdback", -1, 1)
p2facing = 1
numhits = 0
p1stateno = 1822
p2stateno = 1825
guard.dist = 0
fall = 1

[State 820, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1822]
type = S
MoveType = A
physics = N
anim = 1822
poweradd = 60
sprpriority = 1

[State 270, Explod]
type = Explod
trigger1 = time = 25
anim = 10010
pos = 0,-10
postype = left
facing = 1
bindtime = -1
ignorehitpause = 0
sprpriority = -4
removeongethit = 1
scale = 1.1,1.1

[State 821, Grasp]
type = PlaySnd
trigger1 = AnimElem = 1; && anim = 820
value = 8600, 0
channel = 1


[State 822, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0; && anim = 822
pos = 34, -99

[State 822, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0; && anim = 822
pos = 40, -91

[State 822, Bind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0; && anim = 822
pos = 34, -99

[State 822, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0; && anim = 822
pos = 34, -99

[State 822, anim]
type = ChangeAnim
triggerall = time < 99
triggerall = Command = "a" || Command = "b" || Command = "c"
;triggerall = anim = 822
trigger1 = AnimElem = 2, < 0
trigger2 = AnimElem = 2, > 0
trigger2 = AnimElem = 3, < 0
value = anim ;822
elem = AnimElemNo(0) + 1

[State 822, anim]
type = ChangeAnim
triggerall = time < 99
;triggerall = anim = 822
trigger1 = AnimElem = 3, >= 0
value = 1822

[State 821, PlaySnd]
type = PlaySnd
;triggerall = anim = 822
trigger1 = AnimElem = 2
value = 1100, 1
channel = 1

[State 821, PlaySnd]
type = PlaySnd
;triggerall = anim = 822
trigger1 = AnimElem = 5
value = 77, 0
channel = 1

[State 821, damage]
type = TargetLifeAdd
;triggerall = anim = 822
trigger1 = AnimElem = 2
value = -20
kill = 0

[State 821, damage]
type = TargetLifeAdd
;triggerall = anim = 822
trigger1 = AnimElem = 5
value = -100
kill = 1

[State 821, AddHit]
type = HitAdd
;triggerall = anim = 822
trigger1 = AnimElem = 2
value = 1

[State 821, AddHit]
type = HitAdd
;triggerall = anim = 822
trigger1 = AnimElem = 5
value = 1

[State 821, Hit1]
type = explod
sprpriority = 2
;triggerall = anim = 822
trigger1 = AnimElem = 2
anim =  805
pos = 50, -85

[State 821, Hit1]
type = explod
sprpriority = 2
;triggerall = anim = 822
trigger1 = AnimElem = 5
anim =  805
pos = 50, -85

[State 822, Thrown]
type = TargetState
;triggerall = anim = 822
trigger1 = AnimElem = 5
value = 1826

[State 822, Finish]
type = ChangeState
;triggerall = anim = 822
trigger1 = time >= 99 && AnimTime = 0
value = 0
ctrl = 1

[Statedef 1825]
type = A
MoveType = H
physics = N
VelSet = 0, 0

[State 825, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1823



[Statedef 1826]
type = A
MoveType = H
physics = N
VelSet = -7, -10
poweradd = 20

[State 826, Change]
type = ChangeAnim2
triggerall = Enemy, Anim = 1822
trigger1 = Enemy, AnimElem = 5
value = 1826

[State 826, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 826, 2]
type = ChangeState
trigger1 = (vel y > 0) && (pos y >= -20)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;END







;-------------------------------------------------------------------------------
[StateDef 3000]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0




[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 73300, superpause]
type = SuperPause
trigger1 = time = 0
time = 40
sound = S8889,0
pos = 0,-50
anim = -1
darken = 1
poweradd = -1000
sprpriority=4


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



[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -30,-79
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
p1stateno = 2799     ;On success, KFM changes to state 810
p2stateno = 10210   ;If hit, p2 changes to state 820 in KFM's cns




[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Football Helper
[Statedef 10313]
type = S
anim = 1057
velset = -7, 0
movetype = A
physics = N
sprpriority = 1

[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 1


[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 2




[State 99]
type = DestroySelf
trigger1 = time = 100
;;----------------
[Statedef 10210]
type    = S
movetype= H
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 10210, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
trigger1 = Vel Y = 0
trigger1 = statetype != A
value = 5300

[State 10210, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = Vel Y = 0
trigger1 = statetype != A
value = 9010

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2


[State 9010, 034.1]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

[State 9010, 034.12]
type = VELSet
trigger1 = p2stateno =[0,9999]
Y = 0


[State 10210, 3]
type = Selfstate
trigger1 = time = 188
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 200
value = 5050
ctrl = 1


;-------------------------------------------------------------------------------
[Statedef 2799]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 2799


[State 270, Explod]
type = Explod
trigger1 = time = 50
anim = 10010
pos = 0,-10
postype = left
facing = 1
bindtime = -1
ignorehitpause = 0
sprpriority = -4
removeongethit = 1
scale = 1.1,1.1


[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 5
x = -7;13.5



[State 1010, football]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "car"
ID = 10313
pos = 250,0
postype = p1
stateno = 10313
ownpal = 1



[State 2799, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,4


[State 0, ]
type = ScreenBound
trigger1 = 1
value = 50




[State 3600, StateTypeSet]
type = StateTypeSet
trigger1 = time = 12
statetype = A
movetype = A
physics = N


[State 3600, PosSet]
type = PosSet
trigger1 = AnimElem = 12
x = IfElse(Facing=1,-800,1020)
y = 0

[State 3600, screenbound]  ; don't move the camera to follow
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 105
time = 20


[State 2799, next]
type = ChangeState
trigger1 =  time = 105
value = 2800
ctrl = 1




[Statedef 2800]
type    = S
movetype= A
physics = N
anim = 2801
sprpriority = -1
velset = 8
ctrl = 0



[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -1


[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 8018,1]
type = Explod
trigger1 = time= 0
anim = 2802
ID = 2802
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = 145
vel = 8, 0
postype = p1
pos = 0, 0
sprpriority = -2
bindtime = -1




[State 3605, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 0


[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
trigger2 = Time = 0
attr = S,HA
hitflag = MAFD
guardflag = MA
p1sprpriority = -2
priority = 4, Hit
pausetime = 8,8
damage = 20,2
animtype = high
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
;ground.slidetime = 8
;ground.hittime = 8
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0
p1stateno = 2899

[State 1010, football]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "car"
ID = 10314
pos = 0,0
postype = p1
stateno = 10314
ownpal = 1

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 300, 1]
type = ChangeState
Trigger1 = time = 79
value = 2899
ctrl = 1


[Statedef 2899]
type    = S
movetype= A
physics = N
anim = 2801
sprpriority = -3
velset = 8
ctrl = 0



[State 3605, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 0



[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0


[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
trigger2 = TimeMod = 2,1
attr = S,HA
hitflag = MAFD
guardflag = MA
p1sprpriority = -2
priority = 4, Hit
pausetime = 8,8
damage = 20,2
animtype = high
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
sparkno = s805
sparkxy = -15,-79
hitsound = s1100,1
guardsound = S8000,6
;ground.slidetime = 8
;ground.hittime = 8
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 8018,1]
type = Explod
trigger1 = time= 0
anim = 2802
ID = 2802
supermovetime = 999999
pausemovetime = 999999
removeongethit = 1
removetime = 24
vel = 8, 0
postype = p1
pos = 0, 0
sprpriority = -2
bindtime = -1

[State 1010, football]
type = Helper
trigger1 = time = 25
helpertype = normal
name = "car"
ID = 10315
pos = 0,0
postype = p1
stateno = 10315
ownpal = 1


[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 25
time = 8


[State 300, 1]
type = ChangeState
Trigger1 = time = 25
value = 70
ctrl = 0

;---------------------------------------------------------------------------

; Football Helper
[Statedef 10314]
physics=N
velset = 8,0
sprpriority = -3
anim = 2802







[State 99]
type = DestroySelf
trigger1 = root,StateNo != 2899

;-------------------------------------------------------------------------

; Football Helper
[Statedef 10315]
physics=N
velset = 8,0
sprpriority = -3
anim = 2802


[State 99]
type = DestroySelf
trigger1 = time = 65

 ;---------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1000
ctrl = 0
sprpriority = 2

[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3100, Sound]
type = PlaySnd
trigger1 = Time = 12
value = 8889,0

[State 3111, superpause]
type = SuperPause
trigger1 = time = 1
time = 20
sound = S8889,0
poweradd = -1000
sprpriority=4



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



[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,0




;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1002
ID = 1002
pos = 68,-33
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0




[State 1050, 1]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1001
projanim = 1001
projhitanim = 1001
projremanim = 1001
projcancelanim = 1001
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
getpower = 0,0
givepower = 0,0
velocity = 8,2
offset = 0,-108
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 140,5
pausetime = 4,4
sparkno = s805
guard.sparkno = s8005
hitsound = S5100,5
guardsound = S8000,6
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p1stateno = 33300
p2stateno = 10210


[State 0, VarAdd]
type = VarAdd
trigger1 = animelem = 3
v = 45    ;fv =
value = -1
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
triggerall = var(45) <= 0
trigger1 = time = 0
value = 1007
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 33300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3000
ctrl = 0
sprpriority = 2



[State 270, Explod]
type = Explod
trigger1 = time =0
anim = 10010
pos = 0,-10
postype = left
facing = 1
removetime = 250
supermove = 45
ignorehitpause = 0
sprpriority = -4
removeongethit = 1
scale = 1.1,1.1

[State 3100, Sound]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 13
trigger4 = animelem = 16
trigger5 = animelem = 20
trigger6 = animelem = 23
trigger7 = animelem = 29
trigger8 = animelem = 32
value = 1000,0

[State 1050, 1]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 20
trigger4 = animelem = 23
pos = 70,-100
postype = p1
stateno = 10550
helpertype = normal
name = "Special 1"
id = 1055
keyctrl = 0
ownpal = 1

[State 1050, 1]
type = Helper
trigger1 = animelem = 13
trigger2 = animelem = 16
trigger3 = animelem = 29
pos = 70,-95
postype = p1
stateno = 10550
helpertype = normal
name = "Special 1"
id = 10550
keyctrl = 0
ownpal = 1

[State 1050, 1]
type = Helper
trigger1 = animelem = 32
pos = 70,-95
postype = p1
stateno = 10555
helpertype = normal
name = "Special 1"
id = 10555
keyctrl = 0
ownpal = 1

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 20
trigger4 = animelem = 23
anim = 1002
ID = 1002
pos = 68,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0



;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem = 13
trigger2 = animelem = 16
trigger3 = animelem = 29
trigger4 = animelem = 32
anim = 1002
ID = 1002
pos = 80,-33
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0


[State 3100, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

[Statedef 10550]
type = S
movetype = A
physics = N
anim = 1001
velset = 6,.5
id = 1001
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1050, Afterimage]
type = Afterimage
trigger1 = time = 0
time    =  60
length  = 20
palbright = 130,130,130
framegap = 1
trans = addalpha
alpha = 100, 255

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1052
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 15,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0
p2stateno = 30316

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 15,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded


[Statedef 10555]
type = S
movetype = A
physics = N
anim = 1001
velset = 6,.5
id = 1001
ctrl = 0

[State 1050, No hit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1050, Afterimage]
type = Afterimage
trigger1 = time = 0
time    =  60
length  = 20
palbright = 130,130,130
framegap = 1
trans = addalpha
alpha = 100, 255

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1052
attr = SCA, NP, SP

[State 1050, HitDef]
type = HitDef
triggerall = root, stateno != 3000
trigger1 = time = 0
attr = S,NA
damage = 15,1
getpower = 0,0
givepower = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,14
sparkno = s805
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.type = Low
air.hittime = 0
air.velocity = 0,0
p2stateno = 30315

[State 210, HitDef]
type = HitDef
triggerall = root, stateno = 3000
trigger1 = time = 0
attr = S,NA
damage = 15,5
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 4, Hit
pausetime = 0,20
sparkno = s8022
sparkxy = -10,0
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-4
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded

[Statedef 2010]
type = A
movetype = I
physics = N
anim = 40
ctrl = 0
velset = 0,0


[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3301, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3301, jump velset]
type = VelSet
y = -10
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, gravity]
type = gravity
trigger1 = anim = 41

[State 3301, jump changeanim]
type = ChangeAnim
value = 41
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, jump statetypeset]
type = StateTypeSet
statetype = A
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, go to attack state]
type = ChangeState
value = 2017
trigger1 = vel y >= 0
trigger1 = anim = 41

[StateDef 2017]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 2010
ctrl = 0
sprpriority = 2

[State 3000, assertspecial]
type = assertspecial
trigger1 = time = [0,100]
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3111, superpause]
type = SuperPause
trigger1 = time = 1
time = 20
sound = S8889,0
poweradd = -1000
sprpriority=4


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


[State 73300, HyperBg]
type = Explod
trigger1 = time =35
anim = 10010
pos = 0,-10
postype = left
bindtime = -1
removetime = 45
removeongethit = 1
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

;the bullets
[State 0, Helper]
type = Helper
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
helpertype = normal ;player
name = "Bullet"
ID = 1234
stateno = 1234
pos = 60,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1

[State 250, 1]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
value = 1000, 0

[State 250, 2]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
value = 1000, 0

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
anim = 2002
ID = 2002
pos = 42,14
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
anim = 2002
ID = 2002
pos = 48,24
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1,0
accel = 0,0
random = 0,0
removetime = -2
supermove =999
pausemove =999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0





;the bullets
[State 0, Helper]
type = Helper
trigger1 = time = 15
trigger2 = time = 20
trigger3 = time = 25
trigger4 = time = 30
trigger5 = time = 35
trigger6 = time = 40
helpertype = normal ;player
name = "Bullet"
ID = 1234
stateno = 1234
pos = 57,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
bindtime = -1






[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70





;--------
;buletts
;--------
[Statedef 1234]
type = S
movetype = A
physics = N
ctrl = 0
anim = 10111
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time > 0
x = 15
y = 10




[State 200, 1]
type = HitDef
triggerall = p2statetype != A
trigger1 = time = 0
attr = S, HP
damage = 22,4
animtype = heavy
guardflag = MA
hitflag = MAFP
sparkno = s805
pausetime = 5,9;9,9
sparkxy = 10,0;-50
hitsound = s1, 9
guardsound = s4, 1
ground.type = Low
p2stateno = 30315



[State 0, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -90
trigger2 = movecontact;guarded


;--------
;shells
;--------
[Statedef 1051]
type    = S
movetype= A
physics = N
anim = 1003
sprpriority = 4

[State 251, AngleSet]
type = AngleAdd
trigger1 = 1
value = 15

[State 251, AngleSet]
type = AngleDraw
trigger1 = 1

[State 251, Velset]
type = Velset
trigger1 = time > 0
x = -4
y = -2

[State 251, Velset]
type = Velset
trigger1 = time > 10
x = -4
y = -.4

[State 251, Velset]
type = Velset
trigger1 = time > 20
x = -4
y = 1

[State 251, Velset]
type = Velset
trigger1 = time > 30
x = -2
y = 5

[State 251, VelSet]
type = VelSet
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
x = (vel x) / 2
y = (vel y) / -1.1

[state 1245, play snd]
type = playsnd
trigger1 = pos y > 0
value = 11,22
volume = 255
channel = 3

[State 227, ChangeState]
type = DestroySelf
trigger1 = time = 50;100

;P2 Custom Titan Hyper Statedef
[Statedef 30315]
type    = S
movetype= H
physics = N
velset = 0,0

[State 8560, Change]
type = ChangeAnim2
trigger1 = time = 0
value = 8560

[State 8560, next]
type = ChangeState
trigger1 = time = 17
value = 5071
ctrl = 1

;P2 Custom Titan Hyper Statedef
[Statedef 30316]
type    = S
movetype= H
physics = N
velset = 0,0

[State 8560, Change]
type = ChangeAnim2
trigger1 = time = 0
value = 8560

[State 8560, next]
type = ChangeState
trigger1 = time = 31
value = 5071
ctrl = 1
; END
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef -2
; Var(2) - StateDef -2
; Var(12) - StateDef 1015, 1016
; Var(45) - StateDef 1000, 1015, 1016, 3300, -2
; Var(46) - StateDef -2

;--------------------- Float Variable List ----------------------

