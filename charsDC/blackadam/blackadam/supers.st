
;-----------------------------------------------------
;-----------------------------------------------------
; foolsdrop
[StateDef 1010]
type = S
movetype = A
physics = N
anim = 1010
ctrl = 0
velset = 0,0
poweradd = -1000
;time = 40

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
sound = S10,1
pos = 10,-70


[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


; [State 3000, Hyper Explode]
; type = Explod
; trigger1 = animelem = 1
; anim = 10006
; postype = p1
; pos = 19,-80
; ownpal = 1
; sprpriority = 5
; supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10003
ID = 10003
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
anim = 10004
ID = 10004
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
anim = 10000
ID = 10000
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
sprpriority = -2
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10006
ID = 10006
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
anim = 115
ID = 115
pos = -60,-5
postype = left
bindtime = -1
removetime = 15 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -5
ownpal = 1
scale = 1.1,1.1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-
getpower = 0       ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 7     ;Draw p1's sprite in front of p2
hitsound = S1, 1                    ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1115       ;On success, KFM changes to state 810
p2stateno = 5011       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.damage = 0


[State 3300, SuperPause]
type = SuperPause
trigger1 = time = 1
Time = 30
pos = 9999,-9951
sound = 8889,0
movetime = 20

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 2
value = 6,2
volume = 200
channel = 1




[State 0, Explod]
type = Explod
trigger1 =  time = 4
anim = 9999
ID =  9999
pos = 0,0
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
supermove = -1
pausemove
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1010, VelSet]
type = Velset
trigger1 = animelem = 2
x = 13





[State 1010, changestate]
type = ChangeState
trigger1 = time = 60
value = 0
ctrl = 1

;---------------------------------------------------------------
[StateDef 1115]
type = S
movetype = A
physics = N
anim = 1116
ctrl = 0
velset = 0,0
time = 500

[State 3300, 1] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3300, 2] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 3310, assertspecial]
type = assertspecial
trigger1 = time = [0,170]
flag = noBG
flag2 = noFG
ignorehitpause = 1


[State 0, ScreenBound]
type = ScreenBound
trigger1 =  time = 1
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 1010, BindToTarget]
type = BindToTarget
trigger1 = time = 0
pos = -10,28


[State 0, Explod]
type = Explod
trigger1 =  time = 0
anim = 20008
ID =  20008
pos = -15,0
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
supermove = -1
pausemove
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 100
anim = 20018
ID =  20018
pos = -15,0
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = 120
supermove = -1
pausemove
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Darken BG]
type = AllPalFX
trigger1 = time < 125
time = 1
mul = floor(256 - 256/125 * time), floor(256 - 256/125 * time),floor(256 - 256/125 * time)
;sinadd = 0,0,0,10
;invertall = 0
color = 256
;ignorehitpause =
;persistent =

[State 0, Stay Dark]
type = AllPalFX
trigger1 = time = 125
time = 100
;add = 0,0,0
mul = 0,0,0
;sinadd = 0,0,0,10
;invertall = 0
color = 256
;ignorehitpause =
;persistent =

[State 1115, Fade in]
type = allpalfx
trigger1 = time > 224
trigger1 = time < 326
mul = floor(256 * (time-225)/100), floor(256 * (time-225)/100), floor(256 * (time-225)/100)
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 230
value = 6,1
volume = 255
channel = 1
ampl = 100



[State 1115, explod]
type = explod
anim = 100011
pos = floor(p2dist x), 0
sprpriority = -3
trigger1 = p2stateno = 1060




[State 0, PosSet]
type = PosSet
trigger1 = time = 150
x = -60
y = 0
;ignorehitpause =
;persistent =



[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 200
value = 182
;elem = 1
;ignorehitpause =
;persistent =


[State 1010, changestate]
type = ChangeState
trigger1 = time = 400
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
; hit by KFM's throw HitDef. The important thing here is to use a
; ChangeAnim2 controller. The difference between ChangeAnim2 and
; ChangeAnim is that ChangeAnim2 changes the player's animation to
; an action in the AIR file of the attacker (in this case, kfm.air),
; whereas ChangeAnim always changes the player to an action in his
; own AIR file. Look at Action 820 in kfm.air for some extra
; comments.
[Statedef 5011]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 4
anim = 5001
time = 200

[State 0, TargetFacing]
type = TargetFacing
trigger1 = time = 0
value = 1
ID = -1
;ignorehitpause =
;persistent =




[State 820, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 160
x = 0
y = -400
;ignorehitpause =
;persistent =

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 160
value = 1
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 300
value = 1055
ctrl = 0
;anim =
;ignorehitpause =
;persistent =










;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, a3]
type = SelfState
trigger1 = time = 300 ;!gethitvar(isbound)
value = 5050

[State 820, saf]
type = SelfState
trigger1 = p2movetype = H
value = 5050

; frozen by an iceball: P2 custom state, air/ground anim determiner
;  Frozen: anim 7990
;  Frozen in midair: anim 7991
[StateDef 1050]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0

[State 1050, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
;triggerall = prevstateno != [1050,1060]
trigger1 = (time = 0) && (!AnimExist(7990))
time = 60
add = 0,64,128
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 1050, drain power]
type = PowerAdd
trigger1 = Time = 0
value = -75

[State 1050, falling (if frozen in air)]
type = ChangeState
trigger1 = pos y < 0
value = 1055

[State 1050, KOed by iceball]
type = ChangeState
trigger1 = life <= 0
value = 5050    ;1057

[State 1050, ground freeze, has anim]
type = ChangeAnim
triggerall = AnimExist(7990)
trigger1 = (time = 0) && (pos y >= 0)       ; StateType != A
value = 7990

[State 1050, ground freeze, no anim]
type = ChangeAnim2
triggerall = !AnimExist(7990)
trigger1 = (time = 0) && (pos y >= 0)
ctrl = 0
value = 1050

[State 1050, back to normal]
type = ChangeState
trigger1 = time = 60
;trigger2 = prevstateno != [1050,1060]
value = 1060
ctrl = 1

; Iceball: P2 custom falling state (if frozen in air)
[StateDef 1055]
type    = A
MoveType = H
physics = N
ctrl = 0
VelSet = 0,0

[State 1055, 0]
type = null
trigger1 = time = 10
x = 0
y = 7

[State 1055, 1]
type = velset
trigger1 = time = 20
x = 0
y = 20

[State 1055, air freeze, has anim]
type = ChangeAnim
trigger1 = (time = 0) && (AnimExist(7991))
value = 7991

[State 1055, can go offscreen]
type = screenbound
trigger1 = 1

[State 1055, gravity]
type = gravity
trigger1 = 1

[State 1055, ice shatters when hit ground]
type = ChangeState
trigger1 = (pos y >= 10)
value = 1060


; Iceball: P2 custom falling state (if KO'ed by the ball)
[StateDef 1057]
type    = A
MoveType = H
physics = A
ctrl = 0
VelSet = -4,-3

[State 1057, air freeze, has anim]
type = ChangeAnim
trigger1 = (time = 0) && (AnimExist(7991))
value = 7991

[State 1057, air freeze, no anim]
type = ChangeAnim2
trigger1 = (time = 0) && (!AnimExist(7991))
ctrl = 0
value = 1051


; P2 custom state: coming "unfrozen"
[StateDef 1060]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 0

[State 1060, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1060, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1060, flat on yer back]
type = SelfState
trigger1 = (time = 5) && (PrevStateNo = 1055)
value = 5100    ;0

[State 1060, hit]
type = lifeadd
trigger1 = time = 0
value = -200

[State 1060, back to standing]
type = SelfState
trigger1 = (time = 5) && (PrevStateNo != 1055)
value = 0
ctrl = 1

;------------------------------------
[StateDef 1130]
type = S
movetype = A
physics = N
anim = 10001
ctrl = 0
velset = 0,0
time = 40
poweradd = -1000

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
sound = S10,1
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S6,4
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
value = S6,5
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S13,0
volume = 255
channel = -1

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


; [State 3000, Hyper Explode]
; type = Explod
; trigger1 = animelem = 1
; anim = 10006
; postype = p1
; pos = 19,-80
; ownpal = 1
; sprpriority = 5
; supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10003
ID = 10003
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
anim = 10004
ID = 10004
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
anim = 10000
ID = 10000
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
sprpriority = -2
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10006
ID = 10006
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6


; [State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
; type = Explod
; trigger1 = AnimElem = 2
; anim = 115
; ID = 115
; pos = -60,-5
; postype = left
; bindtime = -1
; removetime = 10 ;infinite time
; supermove = 40
; pausemovetime = 40
; removeongethit = 1
; sprpriority = -2
; ownpal = 1
; scale = 1.1,1.1
; 

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 190
ID = 190
pos = -11,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 10090
ID = 10090
pos = 10,55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 60
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 100010
ID = 100010
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 100011
ID = 100011
pos = 0,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 10080
ID = 10080
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
scale = 3,3
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 18 || time = 21
anim = 10070
ID = 10070
pos = 0,70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 10080
ID = 10080
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
scale = 3,3
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 38 || time = 41
anim = 10070
ID = 10070
pos = 20,70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 10080
ID = 10080
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
scale = 3,3
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 58 || time = 61
anim = 10070
ID = 10070
pos = 0,70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
removeongethit = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 1128
;elem = 1
;ignorehitpause =
;persistent =
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
value = 1129

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 0, Projectile]
type = null;Projectile
trigger1 = time = 55 && anim = 1129
ProjID = 1130
projanim = 1130
projhitanim = 1130
projremanim = 1130
projscale = 1,1
projremove = 1
projremovetime = 120
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 210
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 67,-24
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S, SP
hitflag= MAFD
guardflag = MA
damage = 2,3
pausetime = 0,9
fall = 1
ground.type = Heavy
ground.slidetime = 0
ground.hittime  = 16
ground.velocity = -3,-5
air.animtype = hard
air.velocity = -2.5
air.hittime = 20
air.fall = 0
down.velocity = -1
givepower = 0,0
getpower = 0,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
palfx.time = 30
palfx.add = 103,52,-35
palfx.mul = 394,276,326
palfx.sinadd = 0,0,0,1
palfx.invertall = 0
palfx.color = 256
palfx.invertall = 0
envshake.time = 10
envshake.freq = 180
envshake.ampl = 2
removeongethit = 1


[State 0, Projectile]
type = null;hitdef
trigger1 = time = 1
attr = S, SP
hitflag= MAFD
guardflag = MA
damage = 2,3
pausetime = 0,9
fall = 1
ground.type = Heavy
ground.slidetime = 0
ground.hittime  = 16
ground.velocity = -3,-5
air.animtype = hard
air.velocity = -9.5
air.hittime = 20
air.fall = 0
down.velocity = 3
givepower = 0,0
getpower = 0,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
palfx.time = 30
palfx.add = 103,52,-35
palfx.mul = 394,276,326
palfx.sinadd = 0,0,0,1
palfx.invertall = 0
palfx.color = 256
palfx.invertall = 0
envshake.time = 10
envshake.freq = 180
envshake.ampl = 2
removeongethit = 1
p2stateno = 7696

 [State 3110, Helper]
 type = Helper
 trigger1 = anim = 1129
 trigger1 = AnimElem = 3
 name = "Electrity"
 ID = 1137
 stateno = 1137
 postype = p1
 offset = 67,-15
 ownpal = 1

[State 10006, end]
type = changestate
value = 0
trigger1 = time = 370
ctrl = 1

;--------------------------------------
;Adamtackle
[StateDef 1131]
type = S
movetype = A
physics = N
anim = 1131
ctrl = 0
velset = 0,0
time = 40
poweradd = -1000


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
sound = S10,1
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = time = 20
anim = 918
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


; [State 3000, Hyper Explode]
; type = Explod
; trigger1 = animelem = 1
; anim = 10006
; postype = p1
; pos = 19,-80
; ownpal = 1
; sprpriority = 5
; supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10003
ID = 10003
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
anim = 10004
ID = 10004
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
anim = 10000
ID = 10000
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
sprpriority = -2
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10006
ID = 10006
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

; [State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
; type = Explod
; trigger1 = AnimElem = 2
; anim = 115
; ID = 115
; pos = -60,-5
; postype = left
; bindtime = -1
; removetime = -1 ;infinite time
; supermove = 40
; pausemovetime = 40
; removeongethit = 1
; sprpriority = -2
; ownpal = 1
; scale = 1.1,1.1
; 

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 7
y = 0
;ignorehitpause =
;persistent =

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-
getpower = 0,0
givepower = 0,0         ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
pausetime = 9,9        ;No spark
p1sprpriority = 7     ;Draw p1's sprite in front of p2
hitsound = S1, 1                    ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1
ground.velocity = 20,0        ;Force p2 to face KFM
p1stateno = 1132       ;On success, KFM changes to state 810
p2stateno = 10007       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.damage = 0
numhits = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1131
trigger1 = time = 35
value = 1011
;elem = 1
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1011
x = 2
y = 0
;ignorehitpause =
;persistent =


[State 800, 2]
type = ChangeState
Trigger1 = Time = 60
value = 0
ctrl = 1
;--------------------------------------------
;ground punches
[StateDef 1132]
type = S
movetype = A
physics = N
anim = 1132
ctrl = 0
velset = 0,0
time = 40
poweraDD = -1000

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 50
pos = 60,0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 5
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 20
x = 0
y = 0
;ignorehitpause =
;persistent =


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 7 || animelem = 11 || animelem =14 || animelem = 23
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MLAFD        ;HLAFD+-
guardflag = MA         ;HLA
;affectteam = E          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
getpower = 0,0
givepower = 0,0
;priority = 4,Hit
damage = 30,10
pausetime = 4 ,0
;guard.pausetime = 0,0
sparkno = S9992
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S2,2
guardsound = S2,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 1
p1getp2facing = 0
fall = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
id = 0
chainID = -1
nochainID = -1
hitonce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1;5
palfx.time = 0
envshake.time = 0
p2stateno = 10007

[State 0, Explod]
type = Explod
trigger1 =  animelem = 7 || animelem = 11 || animelem =14 || animelem = 23
anim = 100010
ID = 100010
pos = 27,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
;supermove = 0
;pausemove = 0

[State 1011, EnvShake]
type = EnvShake
trigger1 = animelem = 7 || animelem = 11 || animelem =14 || animelem = 23
time = 70
freq = 80
ampl = 4

[State 1132, loop anim]
type = Changeanim
trigger1 = time < 120 ;adjust this number to determine approximately how long the punching animation loops
trigger1 = animelem = 19
value = 1132
elem = 2

[State 800, 2]
type = ChangeState
Trigger1 = Animtime = 0
value = 1135
ctrl = 0

;------------------------------------------
;Custom gethit
[Statedef 10007]
type = L
movetype = H
physics = N
anim = 5110
velset = 0,0

[State 10005, end]
type = selfstate
value = 5110
trigger1 = time = 260


;------------------------------------------
;dodgebackafterpunches
[StateDef 1135]
type = S
movetype = A
physics = N
anim = 21
ctrl = 0
velset = 0,0
time = 40

[State 0, Explod]
type = Explod
trigger1 =  projhit = 1
anim = 100010
ID = 100010
pos = 25,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
;supermove = 0
;pausemove = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -6
y = 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 20
value = 1136
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[statedef 1136]
type = S
movetype = A
physics = S
anim = 1123
time = 28
sprpriority = 3
ctrl = 0

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 100011
ID =  100011
pos = 35,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 4
anim = 1125
ID = 1125
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = stateno = [5000,5101]
anim = 10020
ID = 10020
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -3,-6
accel = 0,0
random = 0,0
removetime = 24
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 12
ID = 1125
pos = 30,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 16
ID = 1125
pos = 40,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 20
ID = 1125
pos = 40,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =


[State 0, Explod]
type = ModifyExplod
trigger1 = animelem = 6
anim = 1125
ID = 1125
pos = 0,-145
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelem = 8
ID = 1125
pos = -60,-145
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelem = 9
ID = 1125
pos = 90,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 999
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 10
id = 1125
;ignorehitpause =
;persistent =





[State 0, Projectile]
type = Projectile
trigger1 =  animelem = 10
ProjID = 1125
projanim = 1125
projhitanim = 10020
projcancelanim = 10020
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,10
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 120,-100
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S, NA
damage = 50,10
hitflag = MLAFD
pausetime = 20,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-30
animtype = hard
ground.type = hard
ground.slidetime = 8
ground.hittime  = 6
ground.velocity = -20
guard.velocity = 2
air.velocity = -14
fall = 1
;p2stateno = 5100

;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 10007
ctrl = 0
;anim =
;ignorehitpause =
;persistent =






[State 0, VelSet]
type = velset
trigger1 = animelem = 6
x = 0
y = -2
;ignorehitpause =
;persistent =





[State 10006, end]
type = changestate
value = 948
trigger1 = animtime = 0
ctrl = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = stateno = [5000,5101]
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = stateno = [5000,5101]
value =  10020
ctrl = 0
;anim =
;ignorehitpause =
;persistent =
;----------------------------------------------------------------------------
; Electrity Helper
[StateDef 1137]
type = S
movetype = A
physics = N
anim = 1130
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 67,-24

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 210, 2]
type = HitDef
trigger1 = animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem =14
trigger3 = animelem = 15 || animelem = 16 || animelem = 17 || animelem = 18 || animelem = 19 || animelem = 20 || animelem = 21
trigger4 = animelem = 22 || animelem = 23 || animelem = 24 || animelem = 25 || animelem = 26 || animelem = 27 || animelem = 28
trigger5 = animelem = 29 || animelem = 30 || animelem = 31 || animelem = 32 || animelem = 33 || animelem = 34 || animelem = 35
trigger6 = animelem = 36 || animelem = 37 || animelem = 38 || animelem = 39 || animelem = 40 || animelem = 41 || animelem = 42
trigger7 = animelem = 43 || animelem = 44 || animelem = 45 || animelem = 46 || animelem = 47 || animelem = 48 || animelem = 49
trigger8 = animelem = 50 || animelem = 51 || animelem = 52 || animelem = 53 || animelem = 54 || animelem = 55 || animelem = 56
trigger9 = animelem = 57 || animelem = 58 || animelem = 59 || animelem = 60 || animelem = 61 || animelem = 62 || animelem = 63
trigger10 = animelem = 64 || animelem = 65 || animelem = 66 || animelem = 67 || animelem = 68 || animelem = 69 || animelem = 70
trigger11 = animelem = 71 || animelem = 72 || animelem = 73 || animelem = 74 || animelem = 75 || animelem = 76 || animelem = 77
trigger12 = animelem = 78 || animelem = 79 || animelem = 80 || animelem = 81 || animelem = 82 || animelem = 83 || animelem = 84
trigger13= animelem = 85 || animelem = 86 || animelem = 87 || animelem = 88 || animelem = 89 || animelem = 90 || animelem = 91
trigger14 = animelem = 92 || animelem = 93 || animelem = 94 || animelem = 95 || animelem = 96 || animelem = 97 || animelem = 98
trigger15 = animelem = 99 || animelem = 100 || animelem = 101 || animelem = 102 || animelem = 103 || animelem = 104 || animelem = 105
trigger16 = animelem = 106 || animelem = 107 || animelem = 108 || animelem = 109
attr = S, SP
hitflag= MAFD
guardflag = MA
damage = 3,3
pausetime = 0,9
ground.type = Heavy
ground.slidetime = 0
ground.hittime  = 16
ground.velocity = 0
air.animtype = hard
air.velocity = -2.5
air.hittime = 20
air.fall = 0
down.velocity = -1
givepower = 0,0
getpower = 0,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
palfx.time = 30
palfx.add = 103,52,-35
palfx.mul = 394,276,326
palfx.sinadd = 0,0,0,1
palfx.invertall = 0
palfx.color = 256
palfx.invertall = 0
envshake.time = 10
envshake.freq = 180
envshake.ampl = 2
;p2stateno = 7696 ;Remove this to remove electrocuted state from Electric Strike move

[State 23000]
type = DestroySelf
trigger1 = root, stateno !=1130

;--------------------------------
; ;Captain Nazi
; [Statedef 10002]
; type = S
; movetype = I
; physics = N
; anim = 0
; velset = 0,0
; ctrl = 0
; poweradd = -3000
; 
; [State 3000, Hyper Dust]
; type = Explod
; trigger1 = animelem = 4
; anim = 10001
; postype = p1
; pos = 0,0
; ownpal = 1
; sprpriority = 5
; supermovetime = 40
; 
; [State 3000, Hyper Circle]
; type = Explod
; trigger1 = animelem = 1
; anim = 10066
; postype = p1
; pos = 19,-80
; ownpal = 1
; sprpriority = 5
; supermovetime = 40
; 
; 
; ; [State 3000, Hyper Explode]
; ; type = Explod
; ; trigger1 = animelem = 1
; ; anim = 10006
; ; postype = p1
; ; pos = 19,-80
; ; ownpal = 1
; ; sprpriority = 5
; ; supermovetime = 40
; 
; 
; [State 3000, superportrait]
; type = Explod
; trigger1 = AnimElem = 1
; trigger1 = facing = 1
; anim = 10003
; ID = 10003
; pos = 0,35
; facing = 1
; postype = back
; bindtime = 999
; removetime = 70
; supermovetime = 40
; pausemovetime = 40
; sprpriority = -2
; ownpal = 1
; 
; [State 3000, superportrait]
; type = Explod
; trigger1 = AnimElem = 1
; trigger1 = facing = -1
; anim = 10004
; ID = 10004
; pos = 0,35
; facing = -1
; postype = back
; bindtime = 999
; removetime = 70
; supermovetime = 40
; pausemovetime = 40
; sprpriority = -2
; ownpal = 1
; 
; [State 3000, superportrait]
; type = Explod
; trigger1 = AnimElem = 1
; anim = 10000
; ID = 10000
; pos = 0,35
; postype = back
; bindtime = 999
; removetime = 70
; supermovetime = 40
; pausemovetime = 40
; sprpriority = -1
; ownpal = 1
; 
; 
; [State 3000, superportrait]
; type = Explod
; trigger1 = AnimElem = 1
; anim = 10009
; ID = 10009
; pos = 15,10
; postype = back
; bindtime = 999
; removetime = 60
; supermovetime = 40
; pausemovetime = 40
; sprpriority = -2
; ownpal = 1
; scale = .7,.7
; 
; [State 3000, superportrait black]
; type = Explod
; trigger1 = AnimElem = 1
; anim = 10006
; ID = 10006
; pos = 15,10
; postype = back
; bindtime = 999
; removetime = 60
; supermovetime = 40
; pausemovetime = 40
; sprpriority = -4
; ownpal = 1
; scale = .6,.6
; 
; 
; [State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
; type = Explod
; trigger1 = AnimElem = 2
; anim = 115
; ID = 115
; pos = -60,-5
; postype = left
; bindtime = -1
; removetime = -1 ;infinite time
; supermove = 40
; pausemovetime = 40
; removeongethit = 1
; sprpriority = -2
; ownpal = 1
; scale = 1.1,1.1
; 
; [State 10002, make helper]
; type = helper
; postype = front
; pos = 100, 0
; facing = -1
; ownpal = 1
; stateno = 10003
; trigger1 = time = 0
; 
; [State 10002, invincible]
; type = nothitby
; value = SCA
; trigger1 = 1
; 
; [State 10002, end]
; type = changestate
; value = 10004
; trigger1 = time = 30
; 
; ;Nazi
; [Statedef 10003]
; type = S
; movetype = A
; physics = N
; anim = 20006
; velset = 6,0
; 
; [State 10003, wait]
; type = velset
; x = 0
; trigger1 = time = 25
; 
; [State 10003, supersound]
; type = playsnd
; value = 10,1
; trigger1 = time = 29
; 
; [State 10003, darken screen]
; type = bgpalfx
; color = 0
; trigger1 = time = 29
; time = 90
; 
; [State 10003, superpause]
; type = superpause
; time = 60
; darken = 0
; trigger1 = time = 29
; 
; [State 10003, gogogo]
; type = velset
; x = 8
; trigger1 = time = 30
; 
; [State 10003, collision]
; type = hitdef
; trigger1 = abs(pos x - root, pos x) < 60
; attr = S, HA
; hitflag = MAFD
; getpower = 0,0
; givepower = 0,0
; damage = 400,10
; p2stateno = 10005
; 
; [State 10003, flash]
; type = allpalfx
; add = 300, 300, 300
; time = 5
; trigger1 = movehit
; 
; [State 10003, bang]
; type = playsnd
; value = 30, 0
; trigger1 = movehit
; volume = 64
; channel = 1
; 
; [State 10003, boom]
; type = playsnd
; value = 5,8
; trigger1 = movehit
; channel = 3
; 
; [State 10003, fizzle]
; type = explod
; anim = 10002
; postype = left
; pos = 160, 100
; ontop = 1
; scale = 1.75,1.75
; ownpal = 1
; trigger1 = movehit
; 
; [State 10003, destroyself]
; type = destroyself
; trigger1 = movehit
; 
; ;BA dash
; [Statedef 10004]
; type = S
; movetype = I
; physics = N
; velset = 8,0
; anim = 1000
; ctrl = 0
; 
; [State 10004, invincible]
; type = nothitby
; value = SCA
; trigger1 = 1
; 
; [State 10004, end]
; type = changestate
; value = 10006
; trigger1 = p2movetype = H
; 
; [State 10004, failsafe end]
; type = changestate
; value = 0
; trigger1 = time = 15
; ctrl = 1

;Custom gethit
[Statedef 10005]
type = L
movetype = H
physics = N
anim = 5110
velset = 0,0

[State 10005, end]
type = selfstate
value = 5110
trigger1 = time = 100

;BA finish
[Statedef 10006]
type = S
movetype = I
physics = N
anim = 182
velset = 0,0
ctrl = 0

[State 10006, jump to position]
type = posset
value = 130,0
trigger1 = time = 3

[State 10006, darken everything]
type = allpalfx
add = -255 + 4*(time - 84), -255 + 4 * (time - 84), -255 + 4 * (time - 83)
trigger1 = time > 82
trigger1 = time < 146
time = 1

[State 10006, end]
type = changestate
value = 0
trigger1 = time = 146
ctrl = 1


