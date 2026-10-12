; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;   3: timer on bgpalfx that continue through state transitions
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 0,0
time = 40



[State 1000, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = 20

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6,8
volume = 255

[State 1020, HitDef]
type = HitDef
trigger1 = Time = 0 || time = 5 || time = 10 || time = 15
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 0,-30
animtype = Heavy
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = 6
guard.velocity = -2
air.velocity = -14,10
fall = 0

[State 1020, HitDef]
type = HitDef
trigger1 = Time = 20
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 0,-30
animtype = Hard
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -20, -4
guard.velocity = -2
air.velocity = -14,10
fall = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 15
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =





[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1000, Explod]
type = Explod
trigger1 = time = 1
anim =  918
ID = 918
pos = 8,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 6 || time = 12 || time = 15
anim =  21000
ID = 21000
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 51
scale = .85,.85
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =





[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 2 || time = 4 || time = 6  || time = 8 || time =9
anim =  23392
ID = 223392
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 24
scale = 1,1
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =





[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1



;----------------------------------------
; Special 2
[StateDef 1011]
type = S
movetype = A
physics = N
anim = 1011
ctrl = 0
velset = 0,0
time = 40

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 6,8
volume = 255

[State 1000, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 20

[State 1011, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 50
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,-3
fall = 1

[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 6 || time = 12 || time = 15
anim =  21000
ID = 21000
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 51
scale = .85,.85
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =



[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1000, Explod]
type = Explod
trigger1 = time = 1
anim =  918
ID = 918
pos = 8,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =


[State 1000, Explod]
type = Explod
trigger1 = time = 1 || time = 2 || time = 4 || time = 6  || time = 8 || time =9
anim =  23392
ID = 223392
pos = 2,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 24
scale = 1,1
sprpriority = 0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =





[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1
;--------------------------------------------

; Special 3
[StateDef 1012]
type = A
movetype = A
physics = A
anim = 1117
ctrl = 0
velset = 0,0
time = 40

[State 191, 1]
type = PlaySnd
trigger1 = time = 0
value = 6,8
volume = 255

[State 1000, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 15
y = 8

[State 1011, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 50
guardflag = MAFD
pausetime = 20,20
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-3
guard.velocity = -2
air.velocity = -10,15
fall = 1



[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y = 0
value = 1118
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 =  movehit
value = 44
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 1
time = 20
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 4003, end]
type=changestate
trigger1=vel y>0&&pos y>=-ceil(vel y)
value=ifelse(anim=1117,1118,4013)

[State 4003, end]
type=changestate
trigger1= Movehit
value = 43
ctrl = 1

;----------------------------
[StateDef 1118]
type = S
movetype = A
physics = S
anim = 40
ctrl = 0
velset = 0,0
time = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S6,7
volume = 255



[State 0, Explod]
type = Explod
trigger1 = time = 3
anim = 100010
ID =  100010
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 19
vel = 0,0
accel = 0,0
random = 0,0
removetime = 19
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 100011
ID =  100011
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 50
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =



[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
;ignorehitpause =
;persistent =

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 1020, changestate]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1


;--------------------------\
;special 4
[StateDef 1013]
type = S
movetype = A
physics = S
anim = 1013
ctrl = 0
velset = 0,0
time = 40


[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 6,6
volume = 255

[State 1011, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 55
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,-3
fall = 1

[State 0, Explod]
type = Explod
trigger1 =  time = 15
anim = 61
ID = 61
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 40
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = time = 17
helpertype = normal ;player
name =  "ground"
ID = 23392
stateno = 23392
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, Helper]
type = Helper
trigger1 = time = 17
helpertype = normal ;player
name =  "ground"
ID = 23392
stateno = 23393
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;--------------------------
[statedef 23392]
type = S
movetype = A
anim = 23392
time = 30
sprpriority = 3

[State 191, 1]
type = PlaySnd
trigger1 = time = 1
value = 6,7
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 4
y = 0
;ignorehitpause =
;persistent =



[State 23392, HitDef]
type = HitDef
trigger1 = p2movetype!=h
attr = S, SA
damage = 40
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 1
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,0
fall = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 70
freq = 80
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 23392, Commit Suicide]
type = DestroySelf
trigger1 = time = 80

;------------------------

[statedef 23393]
type = S
movetype = A
anim = 23392
time = 60
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = -4
y = 0
;ignorehitpause =
;persistent =







[State 23392, HitDef]
type = HitDef
trigger1 =  p2movetype!=h
attr = S, SA
damage = 40
guardflag = MAFD
pausetime = 10,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,0
fall = 1

[State 23392, Commit Suicide]
type = DestroySelf
trigger1 = time = 80
;-------------------------------------
[statedef 1114]
type = S
movetype = A
physics = S
anim = 1114
ctrl = 0
velset = 0,0
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 6,3
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -17
;ignorehitpause =
;persistent =

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 6
ProjID =  190
projanim =  190
projscale = 2,2
projremove = 0
damage = 40,10
projremovetime = 74
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 15,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 10,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = low
ground.type = Hard
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 6
guard.velocity = -2
air.velocity = -2,0
fall = 1
p2stateno = 7696

[State 1114, flash from lightning]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 30
time = 3

;[State 1114, darken background]
;type = bgpalfx
;add = -100, -100, -100
;trigger1 = time = 33
;time = 44

;Uses var(3)
[State 1114, set bgdarkness timer]
type = varset
var(3) = 33
trigger1 = time = 34

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 6,5
channel = -1


;ignorehitpause =
;persistent =


[State 1020, changestate]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;-----------------------
; Shocked/electrocuted - custom P2 state
[Statedef 7696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-----------------------
; Burned - custom P2 state
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 5]
type = VelSet
trigger1 = Time = 0
x = -3
y = -4

[State 7697, changeAnim]
type = ChangeAnim
trigger1 = AnimExist(7697) && Anim != 7697
value = 7697

;Generated by Fighter Factory PalFX Editor
[State 7697, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 25
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 7697, gravity]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7697, 6]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTT        THROWS    TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

; CNS difficulty: medium-advanced
; Description: Throws are not difficult to make, although then can be
;     tedious at times. Throw attempt states have a HitDef of a
;     special format. The key parameters in a throw are p1stateno
;     and p2stateno. If the HitDef successfully connects, then
;     the attacker will change to the state number specified by
;     p1stateno, and the opponent will be change to the state
;     number assigned to p2stateno. The special thing about p2stateno
;     is that the opponent will be temporarily brought into the
;     attacker's state file. In this case, no matter who the
;     opponent is, he will be taken to state 820 of this file (kfm.cns)
;     and remain here until the end of the throw (look at his debug
;     information when he is being thrown; the text changes to yellow
;     to mean that he is in another player's state file).
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 4002
ctrl = 1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 7     ;Draw p1's sprite in front of p2
hitsound = S1, 1                    ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 4001       ;On success, KFM changes to state 810
p2stateno = 5010       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
fall.damage = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 4001]
type    = S
movetype= A
physics = N
anim = 4001
poweradd = 100
p1sprpriority = 1

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.

 [State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,13
volume = 255



[State 820, a3]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 810, a4 ]
type = PlaySnd
trigger1 = time = 35
value = 0, 2

[State 810, a5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6, 5

[State 4001, flash from lightning]
type = allpalfx
add = 300, 300, 300
trigger1 = time = 35
trigger2 = time = 83
time = 3

[State 4001, darken background]
type = bgpalfx
add = -100, -100, -100
trigger1 = time = 38
time = 44

[State 4001, lighten bg back]
type = bgpalfx
add = -100 + 3*(time - 86), -100 + 3*(time - 86), -100 + 3*(time - 86)
trigger1 = time > 85
trigger1 = time < 117
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 28, -40


[State 810, b1x] ;explod
type = Explod
trigger1= time = 20 ;time = 45
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 0
anim = 190
postype = p2
pos = 0, -30
sprpriority = -3
removetime = -2
persistent = 0


[State 810, a9]
type = TargetState
trigger1 = AnimElem = 8
value = 7696

[State 810, b3 ]
type = PlaySnd
trigger1 = p2movetype = H
trigger1 = time = 61
value = 6, 5

[State 810, b4]
type = ChangeState
trigger1 = Time = 150
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
[Statedef 5010]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 4
anim = 5010

[State 820, a1]
type = ChangeAnim2
Trigger1 = Time = 30
value = 7696

[state 5010, hit]
type = lifeadd
value = -15 - 1200/time
trigger1 = time = 30
trigger2 = time = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 6,5
channel = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 30
time = 100
freq = 100
ampl = 10
;phase = 90
;ignorehitpause =
;persistent =




;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, a3]
type = SelfState
trigger1 = time = 150 ;!gethitvar(isbound)
value = 5050

[State 820, saf]
type = SelfState
trigger1 = p2movetype = H
value = 5050




;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;  falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 9,4 ;2.8,-7

[State 821, Turn]
type = Turn
trigger1 = Anim = 820
trigger1 = AnimElem = 8

[State 821, a3]
type = LifeAdd
trigger1 = Time = 8
value = -100
persistent = 0

[State 821, a1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .6

[State 801, b2]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20
ampl = -7

[State 821, a2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, a3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER


[State 821, a4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

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


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
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
poweradd = -1000
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
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 =  time = 4
anim = 115
ID =  115
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
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =






[State 1010, VelSet]
type = Velset
trigger1 = time = 25
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
ownpal = 0
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
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Darken BG]
type = AllPalFX
trigger1 = time < 125
time = 1
mul = 256 - 256/125 * time, 256 - 256/125 * time, 256 - 256/125 * time
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
mul = 256 * (time-225)/100, 256 * (time-225)/100, 256 * (time-225)/100
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 230
value = 6,1
volume = 255
channel = 1
ampl = 100







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
type = VelSet
trigger1 = time = 10
x = 0
y = 7

[State 1055, 1]
type = VelSet
trigger1 = time = 20
x = 0
y = 12

[State 1055, air freeze, has anim]
type = ChangeAnim
trigger1 = (time = 0) && (AnimExist(7991))
value = 7991

;[State 1055, turn upsidedown]
;type = Angledraw
;trigger1 = 1
;scale = 1,-1

[State 1055, air freeze, no anim]
type = ChangeAnim2
trigger1 = (time = 0) && (!AnimExist(7991))
ctrl = 0
value = 1051

[State 1055, can go offscreen]
type = screenbound
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
; Helper1mary
[StateDef 20005]
type = S
movetype = A
physics = N
anim = 182
ctrl = 0
velset = 0,0
time = 60
poweradd = -500

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,11
volume = 200



[State 20005, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
Name = "Mary1"
ID =  22005
stateno = 22005
pos = 0,-40
postype = back    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermove
pausemove

[State 20005, can leave screen]
type = Screenbound
trigger1 = 1

[State 1010, changestate]
type = ChangeState
trigger1 = time = 80
value = 20006
ctrl = 1

;----------------------------------
;reenter screen
[Statedef 20006]
type = S
movetype = I
physics = N
anim = 100
ctrl = 0


[State 20006, move]
type = velset
x = const(velocity.run.fwd.x)
trigger1 = time = 0

[State 20006, can go offscreen]
type = screenbound
trigger1 = 1

[State 20006, end]
type = changestate
value = 0
trigger1 = (facing * pos x) > -110
ctrl = 1

;-----------------------------------
[StateDef 22005]
type = S
movetype = A
physics = N
anim = 20005
ctrl = 0
velset = 0,0
time = 40
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 14
;ignorehitpause =
;persistent =



[State 0, HitDef]
type = HitDef
trigger1 = 1
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF-        ;HLAFD+-
guardflag = MA         ;HLA
;affectteam = E          ;B,E,F
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
damage = 60,0
pause = 5,0
;guard.pause,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = low     ;Low,Trip,None
;air.type = High
ground.slide
;guard.slide
ground.hit
;guard.hit
air.hittime = 20
;guard.ctrl
;guard.dist = 320
;yaccel = 0.5
ground.velocity = -10,-2
;guard.velocity = 0
air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrl
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap =
sprpriority = 1
;p1facing =
p1getp2facing = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hit
down.bounce = 0
id = 0
chainID = -1
nochainID = -1
hitonce = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.
envshake.
fall.envshake.

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 200
;ignorehitpause =
;persistent =


;------------------------------------
; HelperIsis
[StateDef 20014]
type = S
movetype = A
physics = N
anim = 182
ctrl = 0
velset = 0,0
time = 60
poweradd = -500

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,12
volume = 200



[State 20014, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
Name = "Isis"
ID =  21014
stateno = 21014
pos = -10,-50
postype = back    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermove
pausemove

[State 1010, changestate]
type = ChangeState
trigger1 = time = 60
value = 0
ctrl = 1

;-----------------------------------
[StateDef 21014]
type = S
movetype = A
physics = N
anim = 20014
ctrl = 0
velset = 0,0
time = 100
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 20
y = 5
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = pos y = 0
value = 20004
;elem = 1
;ignorehitpause =
persistent =

[State 0, VelSet]
type = VelSet
trigger1 = anim = 20004
time = 20
y = 0
x = 0
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 25
value = 21004
;elem = 1
;ignorehitpause =
;persistent =




[State 0, VelSet]
type = VelSet
trigger1 = anim = 21004
x = 0
y = -20
;ignorehitpause =
;persistent =






[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
;affectteam = E          ;B,E,F
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
damage = 60,0
pause = 5,0
;guard.pause,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = high     ;Low,Trip,None
;air.type = High
ground.slide
;guard.slide
ground.hit
;guard.hit
air.hittime = 20
;guard.ctrl
;guard.dist = 320
;yaccel = 0.5
ground.velocity = 0,0
;guard.velocity = 0
air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrl
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap =
sprpriority = 1
;p1facing =
p1getp2facing = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hit
down.bounce = 0
id = 0
chainID = -1
nochainID = -1
hitonce = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.
envshake.
fall.envshake.

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 300
;ignorehitpause =
;persistent =

;--------------------------------------------------------------------------------
; HelperMary2
[StateDef 20015]
type = S
movetype = A
physics = N
anim = 182
ctrl = 0
velset = 0,0
time = 120
poweradd= -500

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S6,1
volume = 200



[State 20014, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
Name = "Mary2"
ID =  21015
stateno = 21015
pos = 0,-200
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermove
pausemove

[State 1010, changestate]
type = ChangeState
trigger1 = time = 120
value = 0
ctrl = 1

;-----------------------------------
[StateDef 21015]
type = S
movetype = A
physics = N
anim = 20015
ctrl = 0
velset = 0,0
sprpriority = 4
time = 20

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 10
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y = 0
value = 20025
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = anim = 20025
x = 0
y = 0

;-----------------------------

[StateDef 20025]
type = S
movetype = A
physics = N
anim = 20025
ctrl = 0
velset = 0,0
time = 20
sprpriority = 4

[State 0, PosSet]
type = PosSet
trigger1 = pos y = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 = p2movetype = A
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF-        ;HLAFD+-
guardflag = MA         ;HLA
;affectteam = E          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
priority = 7,Hit
damage = 0,0
pause = 5,0
;guard.pause,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.slidetime = 20
;guard.slide
ground.hittime = 20
;guard.hit
air.hittime = 20
;guard.ctrl
;guard.dist = 320
;yaccel = 0.5
ground.velocity = -5
;guard.velocity = 0
air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrl
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap =
sprpriority = 1
;p1facing =
p1getp2facing = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
fall = 0
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hit
down.bounce = 0
id = 0
chainID = -1
nochainID = -1
hitonce = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.
envshake.
fall.envshake.


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 =  time = 60
value = 20035
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



;-------------------------------

[StateDef 20035]
type = S
movetype = A
physics = N
anim = 20035
ctrl = 0
velset = 0,0
time = 100
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
y = -8
;ignorehitpause =
;persistent =



[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 100
;ignorehitpause =
;persistent =

;--------------------------------
Supercomb0
[StateDef 1119]
type = S
movetype = A
physics = N
anim = 1119
ctrl = 0
velset = 0,0
time = 119
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 7
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
;ignorehitpause =
;persistent =


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2 || animelem =  6 || animelem = 9 || animelem = 13 || animelem = 17 || animelem = 20 || animelem = 24 || animelem = 27 || animelem = 31
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA         ;B,E,F
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
damage = 10,0
pause = 15,8
;guard.pause,0
sparkno = S3000
guard.sparkno = S3100
sparkxy = 0,0
hitsound = S1,0
guardsound = S2,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.type = hard
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0
guard.velocity = -2
air.velocity = -14,10
fall = 0
kill = 0

[State 1020, HitDef]
type = HitDef
trigger1 = animelem = 34
attr = S, SA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S20003
sparkxy = 8,-90
animtype = back
ground.type = hard
ground.slidetime = 10
ground.hittime  = 3
ground.velocity = -10, -4
guard.velocity = -2
air.velocity = -14,10
fall = 1
p2stateno = 1120

[State 1119, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = animelem = 34
trigger1 = movehit
time = 3

[State 1119, bang]
type = playsnd
value = 30, 0
trigger1 = animelem = 34
trigger1 = movehit

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem  = 2
time = 119
length = 10
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
palmul = .65,.65,.75
timegap = 2
framegap = 1
;trans = "add" ;"none","add1","sub"
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =

;--------------------------------
;P2 bounce off walls
[statedef 1120]
type = A
movetype = H
physics = N
ctrl = 0
velset = -15, -5

[state 1120, screenbound]
type = screenbound
movecamera = 0,0
trigger1 = 1

[state 1120, reverse vel x]
type = velset
x = 5
trigger1 = facing * pos x < -150

[state 1120, bounce]
type = turn
trigger1 = facing * pos x < -150

[state 1120, gravity]
type = veladd
y = const(movement.yaccel)
trigger1 = 1

[state 1120, stop moving]
type = velset
value = 0,0
trigger1 = pos y >= 0
trigger1 = vel y > 0

[state 1120, end]
type = selfstate
value = 5101
trigger1 = pos y >= 0
trigger1 = vel y > 0

;--------------------------------
;Power Charge
[Statedef 10001]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 10001

[State 10001, flash]
type = allpalfx
add = 300, 300, 300
trigger1 = power = 3000
time = 3

[State 10001, bang]
type = playsnd
value = 30, 0
trigger1 = power = 3000

[State 10001, cancel]
type = changestate
value = 0
ctrl = 1
trigger1 = command != "holdy"
trigger2 = command != "holdb"
trigger3 = power = 3000

[State 10001, poweradd]
type = poweradd
trigger1 = time > 8
value = 5

[State 10001, glow]
type = palfx
add = 60,60,60
trigger1 = time > 8
trigger1 = gametime%2 = 0
time = 1

;--------------------------------
;Captain Nazi
[Statedef 10002]
type = S
movetype = I
physics = N
anim = 0
velset = 0,0
ctrl = 0
poweradd = -3000

[State 10002, make helper]
type = helper
postype = front
pos = 100, 0
facing = -1
ownpal = 1
stateno = 10003
trigger1 = time = 0

[State 10002, invincible]
type = nothitby
value = SCA
trigger1 = 1

[State 10002, end]
type = changestate
value = 10004
trigger1 = time = 30

;Nazi
[Statedef 10003]
type = S
movetype = A
physics = N
anim = 20006
velset = 6,0

[State 10003, wait]
type = velset
x = 0
trigger1 = time = 25

[State 10003, supersound]
type = playsnd
value = 10,1
trigger1 = time = 29

[State 10003, darken screen]
type = bgpalfx
color = 0
trigger1 = time = 29
time = 90

[State 10003, superpause]
type = superpause
time = 60
darken = 0
trigger1 = time = 29

[State 10003, gogogo]
type = velset
x = 8
trigger1 = time = 30

[State 10003, collision]
type = hitdef
trigger1 = abs(pos x - root, pos x) < 60
attr = S, HA
hitflag = MAFD
damage = 200
p2stateno = 10005

[State 10003, flash]
type = allpalfx
add = 300, 300, 300
time = 5
trigger1 = movehit

[State 10003, bang]
type = playsnd
value = 30, 0
trigger1 = movehit
volume = 64
channel = 1

[State 10003, boom]
type = playsnd
value = 5,8
trigger1 = movehit
channel = 3

[State 10003, fizzle]
type = explod
anim = 10002
postype = left
pos = 160, 100
ontop = 1
scale = 1.75,1.75
ownpal = 1
trigger1 = movehit

[State 10003, destroyself]
type = destroyself
trigger1 = movehit

;BA dash
[Statedef 10004]
type = S
movetype = I
physics = N
velset = 8,0
anim = 1000
ctrl = 0

[State 10004, invincible]
type = nothitby
value = SCA
trigger1 = 1

[State 10004, end]
type = changestate
value = 10006
trigger1 = p2movetype = H

[State 10004, failsafe end]
type = changestate
value = 0
trigger1 = time = 15
ctrl = 1

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



