;---------------------------------------------------------------------------
;------------HYPERS---------------------------------------------------------
;---------------------------------------------------------------------------
;Mongul Insanity
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG
[State 777, superportrait]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -15
ownpal = 1
persistent=0
[State 777, superbg]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -20
ownpal = 1
persistent=0
[State 777, hyperBG2]
type = Helper
trigger1 = Var(55)=1 && !time
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !Var(55) && !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !Var(55)=1 && !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S10, 0
pos = 7, -85
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1


[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

;----------------
[StateDef 3101]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3010

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3101, Snd]
type = PlaySnd
trigger1 = Time = 0
value = S3000, 0

[State 3101, 2]
type = HitDef
trigger1 = !movehit
attr = A, SA
damage = 0, 0
guardflag = HA
hitflag = MAF
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
p1stateno = 3103
fall = 0

[State 3101, 4]
Type = VelSet
trigger1 = MoveHit
y = 0
x = 0

[State 3101, 3]
Type = StateTypeSet
trigger1 = Time = 1
StateType = A

[State 3101, 4]
Type = VelSet
trigger1 = Time = 0
y = 0
x = 10

[State 3101, 5]
Type = VelSet
trigger1 = time = 7
y = .1

[State 3101, 6]
Type = VelSet
trigger1 = time = 13
y = .2

[State 3101, 7]
Type = VelSet
trigger1 = time = 16
y = 1

[State 3101, 9]
type = afterimage
trigger1 = !Time
time = 30
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3101, 9]
Type = ChangeState
triggerall = Time > 10
Trigger1 = pos y >= 0
trigger2 = MoveGuarded
value = 3102

;-------------------------------------------
[StateDef 3102]
type = A
physics = A
anim = 3011

[State 3102, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

;---------------------------------------
[Statedef 3103]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3015
sprpriority = 2


[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3013, pos]
Type = Posset
trigger1 = Time = 0
y = 0

[State 3013, blind]
type = targetbind
trigger1 = time = 0
pos = 20, 0

[State 3000, 9]
type = afterimage
trigger1 = !Time
time = 125
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1


[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 29
attr = S, HA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 1
guard.sparkno = -1
sparkxy = -10, -55
hitsound = S2,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 32
attr = S, HA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 1
guard.sparkno = -1
sparkxy = -10, -55
hitsound = S2,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0


[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 16
trigger2 = AnimElem = 20
trigger3 = AnimElem = 42
attr = S, HA
damage = 20, 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = -1
sparkxy = -10, -55
hitsound = S2,2
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0


[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 25
trigger2 = AnimElem = 34
trigger3 = AnimElem = 38
attr = S, HA
damage = 20, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 1
guard.sparkno = -1
sparkxy = -10, -55
hitsound = S2,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0


[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 46
attr = S, HA
damage = 25, 0
animtype =  Heavy
guardflag = L;MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = -1
sparkxy = -10, -55
hitsound = S2,2
guardsound = 6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 0 ,0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 20
fall = 1
kill = 0
p2stateno = 7897

[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 50
trigger2 = AnimElem = 54
trigger3 = AnimElem = 56
trigger4 = AnimElem = 60
trigger5 = AnimElem = 63
trigger6 = AnimElem = 65
trigger7 = AnimElem = 67
trigger8 = AnimElem = 69
attr = S, HA
animtype =  Heavy
damage = 18, 0
guardflag = L;MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0, 8
sparkno = 0
guard.sparkno = -1
sparkxy = -55, -15
hitsound = S2,2
guardsound = 6, 0
ground.type = Trip
ground.slidetime = 0;6
ground.hittime  = 0;12
ground.velocity = 0 ,0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 20
fall = 0
kill = 0
p2stateno = 7897

[State 3013, 1]
type = HitDef
trigger1 = AnimElem = 71
attr = S, HA
animtype =  Heavy
guardflag = L;MA
hitflag = MAFD
damage = 25, 0
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = -1
sparkxy = -55, -15
hitsound = S2,2
guardsound = 6, 0
ground.type = Trip
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -18,-8
airguard.velocity = -18,-8
air.type = High
air.velocity = -18,-8
air.hittime = 20
fall = 1

[State 1100, Boom]
type = PlaySnd
trigger1 = AnimElem = 71
value = 30,0
volume = 100

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = AnimElem = 50
trigger2 = AnimElem = 54
trigger3 = AnimElem = 56
trigger4 = AnimElem = 60
trigger5 = AnimElem = 63
trigger6 = AnimElem = 65
trigger7 = AnimElem = 67
trigger8 = AnimElem = 69
trigger9 = AnimElem = 71
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, dust]
type = Explod
;triggerall = !NumExplod(918)
trigger1 = AnimElem = 50
trigger2 = AnimElem = 54
trigger3 = AnimElem = 56
trigger4 = AnimElem = 60
trigger5 = AnimElem = 63
trigger6 = AnimElem = 65
trigger7 = AnimElem = 67
trigger8 = AnimElem = 69
trigger9 = AnimElem = 71
anim = 3016
supermove = 1
ontop = 1
pos = 0,-10
removeongethit = 1


[State 1100, Rocks]
type = Explod
trigger1 = AnimElem = 50
trigger2 = AnimElem = 54
trigger3 = AnimElem = 56
trigger4 = AnimElem = 60
trigger5 = AnimElem = 63
trigger6 = AnimElem = 65
trigger7 = AnimElem = 67
trigger8 = AnimElem = 69
trigger9 = AnimElem = 71
id = 1101
anim = 1101
pos = 0,0
postype = p1
sprpriority = -3
ownpal = 1
removeongethit = 1


[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1
under = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1


[State 1010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3016
ctrl = 1
;---------------------------------
[Statedef 3016]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3017

[State 3102,PlaySnd]
type = PlaySnd
trigger1 = time = 1
volume = 200
value = 40, 8

[State 3102,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Mongul Berseker Axe
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------
; DCvM hyper portrait/BG
[State 777, superportrait]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -15
ownpal = 1
persistent=0
[State 777, superbg]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -20
ownpal = 1
persistent=0
[State 777, hyperBG2]
type = Helper
trigger1 = Var(55)=1 && !time
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !Var(55) && !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !Var(55)=1 && !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S10, 0
pos = 7, -85
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 220, 1]
type = PlaySnd
trigger1 = time = 1
value = 40, 9
volume = 1000
channel =6

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3111

;----------------
[StateDef 3111]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3101

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 220, 1]
type = PlaySnd
trigger1 = animelem=2
trigger2 = animelem=4
value = 30, 5

[State 3101,HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = medium
damage    = 15,5
guardflag = MA
hitflag = MAFD
priority = 3
pausetime = 0,9
sparkno = S79
sparkxy = -10,-58
hitsound = S30, 6
guardsound = S3,0
ground.type = high
ground.slidetime = 9
ground.hittime  = 35
ground.velocity = -3.5,-1.5
air.type = high
air.velocity = -3.5,-1.5

[State 3101,HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = medium
damage    = 15,5
guardflag = MA
hitflag = MAFD
priority = 3
pausetime = 0,9
sparkno = S80
sparkxy = -10,-58
hitsound = S30, 6
guardsound = S3,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 35
ground.velocity = -3.5,-1.5
air.type = Low
air.velocity = -3.5,-1.5

[State 3101,Velset]
type = Velset
trigger1 = Time > 0
x = 2.5

[State 1000, Blood1]
type = Explod
triggerall = !NumExplod(1455)
trigger1 = movehit = 1
;trigger1 = animelem = 6
anim = 1455
pos = -110, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 24
ownpal = 1

[State 1000, Blood2]
type = Explod
triggerall = !NumExplod(1456)
trigger1 = movehit = 1
;trigger1 = animelem = 7
anim = 1456
pos = 110, -25
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 26
ownpal = 1

[State 1000, Blood3]
type = Explod
triggerall = !NumExplod(1457)
trigger1 = movehit = 1
;trigger1 = animelem = 7
anim = 1457
pos = 120, -10
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 26
ownpal = 1

[State 3101,ChangeState]
type = ChangeState
trigger1 = Time = 108  ;78
value = 3112

; Barrage Axe final
;----------------------------------------------------------------------------
[Statedef 3112]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3102

[State 3102,Velset]
type = Velset
trigger1 = AnimElem = 2
x = 16

[State 3102,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
volume = 200
value = 220, 3

[State 3102,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
volume = 200
value = 240,4

[State 3102,HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
p2facing = 1
p2turn = 1
animtype  = Back
damage    = 123, 25
guardflag = MA
hitflag = MAFD
pausetime = 12,12
sparkno = S81
sparkxy = -10,-85
hitsound = S30, 6
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 22
ground.velocity = -18,-8
air.velocity = -18,-8
fall.yvelocity = -2.5
fall.recover = 0
fall = 1

[State 3102,EnvShake]
type = EnvShake
Trigger1 = movecontact
time = 12
ampl = 4
freq = 127

[State 3102,ScreenBound]
type = ScreenBound
triggerall = FrontEdgeDist > 50
triggerall = P2movetype = H
trigger1 = Time <= 50
trigger1 = Time >= 10
value = 0
movecamera = 0,0

[State 3102,ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist <= -50
value = 750
ctrl = 0

[State 3102,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;Mongul Mercy
;-----------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3500]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 2

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

;-------------------
; DCvM hyper portrait/BG
[State 777, superportrait]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -15
ownpal = 1
persistent=0
[State 777, superbg]
type = Explod
trigger1 = Var(55)=1 && !time
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = -1
removetime = 70
removeongethit =1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -20
ownpal = 1
persistent=0
[State 777, hyperBG2]
type = Helper
trigger1 = Var(55)=1 && !time
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !Var(55) && !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
;sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !Var(55)=1 && !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S10, 0
pos = 7, -85
movetime = 40
poweradd = -3000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 4, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 3510
p2stateno = 3511
guard.dist = 0
fall = 1
movecamera = 0,0

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
[Statedef 3510]
type = S
movetype = A
physics = S
anim = 3501
velset = 0,0
sprpriority = 18

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =30,1

[State 810, a]
type = Width
trigger1 = 1
value = 80, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 32,-100

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 31,-120

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-130

[State 1000,sound]
type = Playsnd
trigger1 = animelem = 5
value = 30,7

[State 1410, State]
type = sprpriority
trigger1 = 1
value = -2

[State 1000,helper]
type = Helper
triggerall = !NumHelper(3521)
;triggerall = p2stateno !=  3511
trigger1 = animelem = 1
ID = 3521
pos = 0,0
stateno = 3521
helpertype = normal
name = "blackmercy"
keyctrl = 0
ownpal = 1

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 3550
ownpal = 1
id = 3550
pos = 0,0
postype = back
;facing = 1
bindtime = -1
removetime = -1
sprpriority = -25
scale = 1,1
removeongethit = 1

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 3551
id = 3551
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
removetime = -1
sprpriority = -22
scale = 1,1
removeongethit = 1

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 3554
id = 3554
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
removetime = -1
sprpriority = -20
scale = 1,1
removeongethit = 1



[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 3553
id = 3553
ownpal = 1
pos = 0,0
postype = Back
ontop = 1
bindtime = -1
removetime = -1
sprpriority = 9
scale = 1,1
removeongethit = 1

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 3555
id = 3555
ownpal = 1
pos = 0,0
postype = Back
ontop = 1
bindtime = -1
removetime = -1
sprpriority = 10
scale = 1,1
removeongethit = 1

[State 3502, dd]
type = PlaySnd
triggerall = time <=300
trigger1 = time%16=0
value = 70, 1
channel = 6
persistent =1
;ignorehitpause = 1
volume = 255

[State 1000,sound]
type = Playsnd
trigger1 = time = 1
value = 40,18

[State 1410, State]
type = ChangeState
trigger1 = time = 300
value = 3523
ctrl = 1

;---------------------------------
[Statedef 3523]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3017

[State 3102,PlaySnd]
type = PlaySnd
trigger1 = time = 1
volume = 200
value = 40, 8

[State 751, c]
type = removeexplod
trigger1 = !time
id = 3550

[State 751, c]
type = removeexplod
trigger1 = !time
id = 3551

[State 751, c]
type = removeexplod
trigger1 = !time
id = 3553

[State 751, c]
type = removeexplod
trigger1 = !time
id = 3554

[State 751, c]
type = removeexplod
trigger1 = !time
id = 3555


[State 3102,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 250
ctrl = 1


;-----------------------------------------------------------------------------
;B Mercy
;-----------------------------------------------------------------------------
;--------Black Mercy--------
[statedef 3521]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3502
;velset = 8,0
sprpriority = 6

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 1000, glow]
type = Explod
triggerall = !NumExplod(3503)
trigger1 = Time = 0
anim =3503
id= 3503
supermove = 1
ontop = 1
removeongethit = 1
removetime= -1
bindtime = -1

[state 1001, hit]
type = HitDef
trigger1 = movecontact = 0
attr = S, SP
damage = 0,0
hitflag= MAFP
hitsound   = S3,1
sparkno = -1
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,0
p2stateno = 37670

[State 1001, Bmercy]
type = RemoveExplod
trigger1 = movehit = 1 || moveguarded = 1
trigger2 = time = 70
id= 3503

[State 1000, Blood3]
type = Explod
triggerall = !NumExplod(1455)
trigger1 = movehit = 1
;trigger1 = animelem = 7
anim = 1455
pos = -120, 100
postype = p2
sprpriority = 7
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 286
ownpal = 1

[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(3504)
trigger1 = movehit = 1
anim = 3504
pos = -15, 140
postype = p2
sprpriority = 4
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 300
ownpal = 1

[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(3505)
trigger1 = movehit = 1
anim = 3505
pos = -15, 140
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 300
ownpal = 1



[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(1002)
trigger1 = movehit = 1
anim = 1002
pos = 30, 140
postype = p2
sprpriority = 9
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 300
ownpal = 1

[State 1001, Bmercy]
type = Explod
triggerall = !NumExplod(1006)
trigger1 = movehit = 1
anim = 1006
pos = 30, 140
postype = p2
sprpriority = 10
ontop = 1
removeongethit = 1
bindtime = 999
removetime = 300
ownpal = 1

;[state 1210, sndx]
;type = playsnd
;trigger1 = moveguarded = 1
;value = 40,2

[state 1001, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 1001, destroy]
type = Destroyself
trigger1 = time = 70
;------------------------------------------------------------------------------
;P2 State 2
;------------------------------------------------------------------------------
[Statedef 3511]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
;poweradd = 80

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 33509;5051

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

;---------------------------------------------------------------------------
;Hit by Black Mercy
[Statedef 37670]
type    = A
physics = N
movetype = H
ctrl = 0
;anim = 33509

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 33509;5051

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -15


[State 0, ]
type = LifeAdd
trigger1 = 1
value = -2

[State 7697, Blue_FX]
type = PalFX
trigger1 = Anim = 33509
trigger1 = Time = 1
time = 300
add = 0,-200,0
mul = 256,256,256
sinadd = 40,80,40,10
;invertall = 1
color = 0
;invertall = 1

[State 7696, 6]
type = ChangeState
trigger1 = Time = 300
ctrl = 1
value = 37671;5070

;--------------------------------------------------
; (hit state 2)
[Statedef 37671]
type    = A
movetype= H
physics = N
ctrl = 0

[state 1210, sndx]
type = playsnd
trigger1 = Time = 1
value = S2,2

[State 227, VelSet]
type = VelSet
trigger1 = Time = 0
x = -23
;y = -1

[State 227, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 1
value = 33510;5017


[State 227, SelfState]
type = SelfState
trigger1 = Time = 15
value = 5070


